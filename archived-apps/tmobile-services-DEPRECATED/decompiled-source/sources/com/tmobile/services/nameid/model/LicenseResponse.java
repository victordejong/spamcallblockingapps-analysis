package com.tmobile.services.nameid.model;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/LicenseResponse.class */
public class LicenseResponse implements Serializable {
    @SerializedName("ads_available")
    @Expose
    private Boolean adsAvailable;
    @SerializedName("soc")
    @Expose
    private String billingSoc;
    @SerializedName("licExpireDate")
    @Expose
    private Date licenseExpireDate;
    @SerializedName("licFeatures")
    @Expose
    private String licenseFeatures;
    @SerializedName("licState")
    @Expose
    private LicenseState licenseState;
    @SerializedName("licTrialEnd")
    @Expose
    private Date licenseTrialEnd;
    @SerializedName("token")
    @Expose
    private String token;
    @SerializedName("tokenTTL")
    @Expose
    private Integer tokenTtl;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/LicenseResponse$JsonBoolean.class */
    public enum JsonBoolean {
        TRUE(true),
        FALSE(false);
        
        private final boolean value;

        JsonBoolean(boolean z) {
            this.value = z;
        }

        public boolean getValue() {
            return this.value;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/LicenseResponse$LicenseState.class */
    public enum LicenseState {
        ACTIVE("active"),
        INACTIVE("inactive"),
        EXPIRED("expired"),
        TRIAL("trial"),
        TEMP("temp");
        
        private String displayName;

        LicenseState(String str) {
            this.displayName = str;
        }

        public static LicenseState fromString(String str) {
            if (TRIAL.displayName.equalsIgnoreCase(str)) {
                return TRIAL;
            }
            if (ACTIVE.displayName.equalsIgnoreCase(str)) {
                return ACTIVE;
            }
            if (!INACTIVE.displayName.equalsIgnoreCase(str) && EXPIRED.displayName.equalsIgnoreCase(str)) {
                return EXPIRED;
            }
            return INACTIVE;
        }

        public String getDisplayName() {
            return this.displayName;
        }

        @Override // java.lang.Enum
        public String toString() {
            return getDisplayName();
        }
    }

    public Boolean getAdsAvailable() {
        return this.adsAvailable;
    }

    public String getBillingSoc() {
        return this.billingSoc;
    }

    public Date getLicExpireDate() {
        return this.licenseExpireDate;
    }

    public String getLicFeatures() {
        return this.licenseFeatures;
    }

    public LicenseState getLicState() {
        return this.licenseState;
    }

    public Date getLicTrialEnd() {
        return this.licenseTrialEnd;
    }

    public String getToken() {
        return this.token;
    }

    public Integer getTokenTtl() {
        return this.tokenTtl;
    }

    public void setAdsAvailable(Boolean bool) {
        this.adsAvailable = bool;
    }

    public void setBillingSoc(String str) {
        this.billingSoc = str;
    }

    public void setLicExpireDate(Date date) {
        this.licenseExpireDate = date;
    }

    public void setLicFeatures(String str) {
        this.licenseFeatures = str;
    }

    public void setLicState(LicenseState licenseState) {
        this.licenseState = licenseState;
    }

    public void setLicTrialEnd(Date date) {
        this.licenseTrialEnd = date;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setTokenTtl(Integer num) {
        this.tokenTtl = num;
    }

    public String toString() {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gsonBuilder.m8397d();
        return gsonBuilder.m8399b().m8417r(this);
    }
}
