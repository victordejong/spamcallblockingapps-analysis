package com.tmobile.services.nameid.model;

import com.tmobile.services.nameid.model.LicenseResponse;
import io.realm.AbstractC2160x8b277f9a;
import io.realm.RealmObject;
import io.realm.annotations.PrimaryKey;
import io.realm.internal.RealmObjectProxy;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/LicenseResponseItem.class */
public class LicenseResponseItem extends RealmObject implements AbstractC2160x8b277f9a {
    private boolean adsAvailable;
    private String billingSoc;
    private Date lastUpdated;
    private Date licenseExpireDate;
    private String licenseFeatures;
    private String licenseState;
    private Date licenseTrialEnd;
    private boolean pending;
    private boolean pendingCheckError;
    @PrimaryKey
    private String token;
    private Integer tokenTtl;

    public LicenseResponseItem() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        realmSet$pending(false);
        realmSet$pendingCheckError(false);
    }

    public LicenseResponseItem copy() {
        LicenseResponseItem licenseResponseItem = new LicenseResponseItem();
        licenseResponseItem.setToken(getToken());
        licenseResponseItem.setTokenTtl(getTokenTtl());
        licenseResponseItem.setLicenseState(getLicenseState());
        licenseResponseItem.setLicenseTrialEnd(getLicenseTrialEnd());
        licenseResponseItem.setLicenseExpireDate(getLicenseExpireDate());
        licenseResponseItem.setLicenseFeatures(getLicenseFeatures());
        licenseResponseItem.setBillingSoc(getBillingSoc());
        licenseResponseItem.setAdsAvailable(isAdsAvailable());
        licenseResponseItem.setPending(isPending());
        licenseResponseItem.setPendingCheckError(isPendingCheckError());
        return licenseResponseItem;
    }

    public String getBillingSoc() {
        return realmGet$billingSoc();
    }

    public Date getLastUpdated() {
        return realmGet$lastUpdated();
    }

    public Date getLicenseExpireDate() {
        return realmGet$licenseExpireDate();
    }

    public String getLicenseFeatures() {
        return realmGet$licenseFeatures();
    }

    public String getLicenseState() {
        return realmGet$licenseState();
    }

    public Date getLicenseTrialEnd() {
        return realmGet$licenseTrialEnd();
    }

    public String getToken() {
        return realmGet$token();
    }

    public Integer getTokenTtl() {
        return realmGet$tokenTtl();
    }

    public boolean isAdsAvailable() {
        return realmGet$adsAvailable();
    }

    public boolean isPending() {
        return realmGet$pending();
    }

    public boolean isPendingCheckError() {
        return realmGet$pendingCheckError();
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public boolean realmGet$adsAvailable() {
        return this.adsAvailable;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public String realmGet$billingSoc() {
        return this.billingSoc;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public Date realmGet$lastUpdated() {
        return this.lastUpdated;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public Date realmGet$licenseExpireDate() {
        return this.licenseExpireDate;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public String realmGet$licenseFeatures() {
        return this.licenseFeatures;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public String realmGet$licenseState() {
        return this.licenseState;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public Date realmGet$licenseTrialEnd() {
        return this.licenseTrialEnd;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public boolean realmGet$pending() {
        return this.pending;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public boolean realmGet$pendingCheckError() {
        return this.pendingCheckError;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public String realmGet$token() {
        return this.token;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public Integer realmGet$tokenTtl() {
        return this.tokenTtl;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public void realmSet$adsAvailable(boolean z) {
        this.adsAvailable = z;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public void realmSet$billingSoc(String str) {
        this.billingSoc = str;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public void realmSet$lastUpdated(Date date) {
        this.lastUpdated = date;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public void realmSet$licenseExpireDate(Date date) {
        this.licenseExpireDate = date;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public void realmSet$licenseFeatures(String str) {
        this.licenseFeatures = str;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public void realmSet$licenseState(String str) {
        this.licenseState = str;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public void realmSet$licenseTrialEnd(Date date) {
        this.licenseTrialEnd = date;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public void realmSet$pending(boolean z) {
        this.pending = z;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public void realmSet$pendingCheckError(boolean z) {
        this.pendingCheckError = z;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public void realmSet$token(String str) {
        this.token = str;
    }

    @Override // io.realm.AbstractC2160x8b277f9a
    public void realmSet$tokenTtl(Integer num) {
        this.tokenTtl = num;
    }

    public void setAdsAvailable(boolean z) {
        realmSet$adsAvailable(z);
    }

    public void setBillingSoc(String str) {
        realmSet$billingSoc(str);
    }

    public void setLastUpdated(Date date) {
        realmSet$lastUpdated(date);
    }

    public void setLicenseExpireDate(Date date) {
        realmSet$licenseExpireDate(date);
    }

    public void setLicenseFeatures(String str) {
        realmSet$licenseFeatures(str);
    }

    public void setLicenseState(String str) {
        realmSet$licenseState(str);
    }

    public void setLicenseTrialEnd(Date date) {
        realmSet$licenseTrialEnd(date);
    }

    public void setPending(boolean z) {
        realmSet$pending(z);
    }

    public void setPendingCheckError(boolean z) {
        realmSet$pendingCheckError(z);
    }

    public void setToken(String str) {
        realmSet$token(str);
    }

    public void setTokenTtl(Integer num) {
        realmSet$tokenTtl(num);
    }

    public LicenseResponse toLicenseResponse() {
        LicenseResponse licenseResponse = new LicenseResponse();
        licenseResponse.setLicState(LicenseResponse.LicenseState.fromString(getLicenseState()));
        licenseResponse.setBillingSoc(getBillingSoc());
        licenseResponse.setLicExpireDate(getLicenseExpireDate());
        licenseResponse.setLicTrialEnd(getLicenseTrialEnd());
        licenseResponse.setLicFeatures(getLicenseFeatures());
        licenseResponse.setAdsAvailable(Boolean.FALSE);
        licenseResponse.setToken(getToken());
        licenseResponse.setTokenTtl(getTokenTtl());
        return licenseResponse;
    }
}
