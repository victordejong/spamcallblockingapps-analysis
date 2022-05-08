package com.privacystar.core.service.network.model.request;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.data.model.PlayStorePurchase;
import com.privacystar.core.service.network.model.component.BasePayload;
import com.privacystar.core.service.network.model.component.UserObject;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/RegistrationRequest.class */
public class RegistrationRequest implements Serializable {
    @SerializedName("payload")
    @Expose
    private Payload payload;
    @SerializedName("user")
    @Expose
    private UserObject user;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/RegistrationRequest$Payload.class */
    public class Payload extends BasePayload implements Serializable {
        @SerializedName("ag_alert")
        @Expose
        private Boolean agAlertsEnabled;
        @SerializedName("anchorfree_id")
        @Expose
        private String anchorFreeId;
        @SerializedName("anchorfree_version")
        @Expose
        private String anchorFreeVersion;
        @SerializedName("apk")
        @Expose
        private String apk;
        @SerializedName(SettingsJsonConstants.APP_KEY)
        @Expose
        private String app;
        @SerializedName("devmake")
        @Expose
        private String deviceManufacturer;
        @SerializedName("devmodel")
        @Expose
        private String deviceModel;
        @SerializedName("devid")
        @Expose
        private String devid;
        @SerializedName("fcmkey")
        @Expose
        private String fcmkey;
        @SerializedName("mcc")
        @Expose
        private String mcc;
        @SerializedName("mdn")
        @Expose
        private String mdn;
        @SerializedName("mnc")
        @Expose
        private String mnc;
        @SerializedName("os_level")
        @Expose
        private String osVersion;
        @SerializedName("gp_receipt")
        @Expose
        private List<PlayStorePurchase> purchases;
        @SerializedName("ag_state")
        @Expose
        private String state;
        @SerializedName("token")
        @Expose
        private String token;

        public Payload() {
        }

        public Boolean getAgAlertsEnabled() {
            return this.agAlertsEnabled;
        }

        public String getAnchorFreeId() {
            return this.anchorFreeId;
        }

        public String getAnchorFreeVersion() {
            return this.anchorFreeVersion;
        }

        public String getApk() {
            return this.apk;
        }

        public String getApp() {
            return this.app;
        }

        public String getDeviceManufacturer() {
            return this.deviceManufacturer;
        }

        public String getDeviceModel() {
            return this.deviceModel;
        }

        public String getDevid() {
            return this.devid;
        }

        public String getFcmkey() {
            return this.fcmkey;
        }

        public String getMcc() {
            return this.mcc;
        }

        public String getMdn() {
            return this.mdn;
        }

        public String getMnc() {
            return this.mnc;
        }

        public String getOsVersion() {
            return this.osVersion;
        }

        public List<PlayStorePurchase> getPurchases() {
            return this.purchases;
        }

        public String getState() {
            return this.state;
        }

        public String getToken() {
            return this.token;
        }

        public void setAgAlertsEnabled(Boolean bool) {
            this.agAlertsEnabled = bool;
        }

        public void setAnchorFreeId(String str) {
            this.anchorFreeId = str;
        }

        public void setAnchorFreeVersion(String str) {
            this.anchorFreeVersion = str;
        }

        public void setApk(String str) {
            this.apk = str;
        }

        public void setApp(String str) {
            this.app = str;
        }

        public void setDeviceManufacturer(String str) {
            this.deviceManufacturer = str;
        }

        public void setDeviceModel(String str) {
            this.deviceModel = str;
        }

        public void setDevid(String str) {
            this.devid = str;
        }

        public void setFcmkey(String str) {
            this.fcmkey = str;
        }

        public void setMcc(String str) {
            this.mcc = str;
        }

        public void setMdn(String str) {
            this.mdn = str;
        }

        public void setMnc(String str) {
            this.mnc = str;
        }

        public void setOsVersion(String str) {
            this.osVersion = str;
        }

        public void setPurchases(List<PlayStorePurchase> list) {
            this.purchases = list;
        }

        public void setState(String str) {
            this.state = str;
        }

        public void setToken(String str) {
            this.token = str;
        }
    }

    public Payload getPayload() {
        return this.payload;
    }

    public UserObject getUser() {
        return this.user;
    }

    public Payload instantiatePayload() {
        return new Payload();
    }

    public void setPayload(Payload payload) {
        this.payload = payload;
    }

    public void setUser(UserObject userObject) {
        this.user = userObject;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public RegistrationRequest withUser(UserObject userObject) {
        this.user = userObject;
        return this;
    }
}
