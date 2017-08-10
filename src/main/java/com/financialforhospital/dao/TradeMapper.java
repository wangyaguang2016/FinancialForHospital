package com.financialforhospital.dao;


import com.financialforhospital.model.Trade;

import java.util.List;

public interface TradeMapper {

    List<Trade> selectTradeByHospitalId(Trade trade);
}