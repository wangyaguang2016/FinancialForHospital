package com.financialforhospital.model;

import java.math.BigDecimal;
import java.util.Date;

public class Trade {
    private Integer id;

    private String hosptialName;

    private String hosptailId;

    private String patientName;

    private String cardNum;

    private String outpatientAndHosptialDep;

    private String comsumptionProject;

    private String hosptialNum;

    private BigDecimal tradeMoney;

    private String orderNum;

    private String tradeType;

    private Date tradeTime;

    private String tradeSource;

    private String sourceId;

    private String states;

    private Integer age;

    private String phone;

    private String address;

    private String diagnosis;

    private String gender;

    private Long underlineamount;

    private Long uplineamount;

    private String uplinrOrUnderline;

    private String patientId;

    private String idNo;

    private String receiptNo;

    private String month;

    private String year;

    private String type;

    private String startTime;

    private String endTime;



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHosptialName() {
        return hosptialName;
    }

    public void setHosptialName(String hosptialName) {
        this.hosptialName = hosptialName == null ? null : hosptialName.trim();
    }

    public String getHosptailId() {
        return hosptailId;
    }

    public void setHosptailId(String hosptailId) {
        this.hosptailId = hosptailId == null ? null : hosptailId.trim();
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName == null ? null : patientName.trim();
    }

    public String getCardNum() {
        return cardNum;
    }

    public void setCardNum(String cardNum) {
        this.cardNum = cardNum == null ? null : cardNum.trim();
    }

    public String getOutpatientAndHosptialDep() {
        return outpatientAndHosptialDep;
    }

    public void setOutpatientAndHosptialDep(String outpatientAndHosptialDep) {
        this.outpatientAndHosptialDep = outpatientAndHosptialDep == null ? null : outpatientAndHosptialDep.trim();
    }

    public String getComsumptionProject() {
        return comsumptionProject;
    }

    public void setComsumptionProject(String comsumptionProject) {
        this.comsumptionProject = comsumptionProject == null ? null : comsumptionProject.trim();
    }

    public String getHosptialNum() {
        return hosptialNum;
    }

    public void setHosptialNum(String hosptialNum) {
        this.hosptialNum = hosptialNum == null ? null : hosptialNum.trim();
    }

    public BigDecimal getTradeMoney() {
        return tradeMoney;
    }

    public void setTradeMoney(BigDecimal tradeMoney) {
        this.tradeMoney = tradeMoney;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum == null ? null : orderNum.trim();
    }

    public String getTradeType() {
        return tradeType;
    }

    public void setTradeType(String tradeType) {
        this.tradeType = tradeType == null ? null : tradeType.trim();
    }

    public Date getTradeTime() {
        return tradeTime;
    }

    public void setTradeTime(Date tradeTime) {
        this.tradeTime = tradeTime;
    }

    public String getTradeSource() {
        return tradeSource;
    }

    public void setTradeSource(String tradeSource) {
        this.tradeSource = tradeSource == null ? null : tradeSource.trim();
    }

    public String getSourceId() {
        return sourceId;
    }

    public void setSourceId(String sourceId) {
        this.sourceId = sourceId == null ? null : sourceId.trim();
    }

    public String getStates() {
        return states;
    }

    public void setStates(String states) {
        this.states = states == null ? null : states.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis == null ? null : diagnosis.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public Long getUnderlineamount() {
        return underlineamount;
    }

    public void setUnderlineamount(Long underlineamount) {
        this.underlineamount = underlineamount;
    }

    public Long getUplineamount() {
        return uplineamount;
    }

    public void setUplineamount(Long uplineamount) {
        this.uplineamount = uplineamount;
    }

    public String getUplinrOrUnderline() {
        return uplinrOrUnderline;
    }

    public void setUplinrOrUnderline(String uplinrOrUnderline) {
        this.uplinrOrUnderline = uplinrOrUnderline == null ? null : uplinrOrUnderline.trim();
    }

    public String getPatientId() {
        return patientId;
    }

    public void setPatientId(String patientId) {
        this.patientId = patientId == null ? null : patientId.trim();
    }

    public String getIdNo() {
        return idNo;
    }

    public void setIdNo(String idNo) {
        this.idNo = idNo == null ? null : idNo.trim();
    }

    public String getReceiptNo() {
        return receiptNo;
    }

    public void setReceiptNo(String receiptNo) {
        this.receiptNo = receiptNo == null ? null : receiptNo.trim();
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month == null ? null : month.trim();
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year == null ? null : year.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getStartTime() {
        return startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }
}