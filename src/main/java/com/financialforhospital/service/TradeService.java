package com.financialforhospital.service;

import com.financialforhospital.model.Trade;

import java.util.List;

/**
 * Created by Administrator on 2017/8/10.
 */
public interface TradeService {

    List<Trade> selectTradeByHospitalId(Trade trade);
}
