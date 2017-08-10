package com.financialforhospital.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.financialforhospital.model.Trade;
import com.financialforhospital.service.TradeService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/8/10.
 */
@Controller
@RequestMapping(value = "trade")
public class TradeController {

    @Autowired
    private TradeService tradeService;

    @RequestMapping("/selectTradeByHospitalId")
    @ResponseBody
    public void selectTradeByHospitalId(HttpServletRequest request, HttpServletResponse response, @ModelAttribute Trade trade,
                                        ModelAndView mlv) throws IOException {
        Map<String, Object> map = new HashMap<String, Object>();
        ObjectMapper mapper = new ObjectMapper();
        try {
            String pageStart = request.getParameter("pageStart");
            String pageSize = request.getParameter("pageSize");
            // PageHelper.startPage(1, 2, true);
            // 测试时需传入分页条件
            PageHelper.startPage(Integer.parseInt(pageStart), Integer.parseInt(pageSize), true);
            if (trade.getStartTime() != "" && trade.getEndTime() != "") {
                String a = trade.getStartTime() + " 00:00:00";
                String b = trade.getEndTime() + " 23:59:59";
                trade.setStartTime(a);
                trade.setEndTime(b);
            }else if(trade.getStartTime() != "" && trade.getEndTime() == ""){
                String a = trade.getStartTime() + " 00:00:00";
                Date date = new Date();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                //String b = simpleDateFormat.format(date) + " 23:59:59";
                String b = null;
                trade.setStartTime(a);
                trade.setEndTime(b);
            }else if(trade.getStartTime() == "" && trade.getEndTime() != ""){
                String a = "2016-01-01 00:00:00";
                String b = trade.getEndTime()+ " 23:59:59";
                trade.setStartTime(a);
                trade.setEndTime(b);
            }
            List<Trade> tradeLike = tradeService.selectTradeByHospitalId(trade);
            for (int i = 0; i < tradeLike.size(); i++) {
                Trade trade3 = tradeLike.get(i);
                String cardNum=trade3.getCardNum();
                String hosptialNum=trade3.getHosptialNum();
                String tradeSource=trade3.getTradeSource();
                if(tradeSource==null||tradeSource.equals("")||tradeSource.equals("null")){
                    trade3.setTradeSource("-");
                }
                if(cardNum==null||cardNum.equals("null")||cardNum.equals("")){
                    trade3.setCardNum("-");
                }
                if(hosptialNum==null||hosptialNum.equals("")||hosptialNum.equals("null")){
                    trade3.setHosptialNum("-");
                }
                String state = trade3.getStates();
                if (state == null) {
                    trade3.setStates("-");
                } else {
                    if (state.equals("0")) {
                        trade3.setStates("成功");
                    } else {
                        trade3.setStates("失败");
                    }
                }
            }
            for (int i = 0; i < tradeLike.size(); i++) {
                Trade tradeSource = tradeLike.get(i);
                String tradeSource2 = tradeSource.getTradeSource();
                if (tradeSource2 == null) {
                    tradeSource.setTradeSource("-");
                } else {
                    if (tradeSource2.equals("0")) {
                        tradeSource.setTradeSource("支付宝");
                    }
                    if (tradeSource2.equals("1")) {
                        tradeSource.setTradeSource("微信");
                    }
                    if (tradeSource2.equals("2")) {
                        tradeSource.setTradeSource("免费订单");
                    }
                    if (tradeSource2.equals("3")) {
                        tradeSource.setTradeSource("微信公众号");
                    }
                }
            }
            map.put("list", tradeLike);
            map.put("totalPage", ((Page) tradeLike).getPages());
            map.put("result", "success");
            mapper.writeValue(response.getWriter(), map);
        } catch (Exception e) {
            map.put("result", "fail");
            mapper.writeValue(response.getWriter(), map);
            e.printStackTrace();
        }
    }

}
