package com.financialforhospital.service.impl;

import com.financialforhospital.dao.TradeMapper;
import com.financialforhospital.model.Trade;
import com.financialforhospital.service.TradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/8/10.
 */
@Service
public class TradeServiceImpl implements TradeService {
    @Autowired
    private TradeMapper tradeMapper;
    public List<Trade> selectTradeByHospitalId(Trade trade) {
        return tradeMapper.selectTradeByHospitalId(trade);
    }
}
