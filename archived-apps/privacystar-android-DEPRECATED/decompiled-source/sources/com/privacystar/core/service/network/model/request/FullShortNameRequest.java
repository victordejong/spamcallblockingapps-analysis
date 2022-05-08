package com.privacystar.core.service.network.model.request;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/FullShortNameRequest.class */
public class FullShortNameRequest implements Serializable {
    @SerializedName("payload")
    @Expose
    private Payload payload;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/request/FullShortNameRequest$Payload.class */
    public class Payload implements Serializable {
        @SerializedName(SettingsJsonConstants.APP_KEY)
        @Expose
        private String packageName;
        @SerializedName("aol")
        @Expose
        private Boolean useAolDataset;

        public Payload() {
        }

        public String getPackageName() {
            return this.packageName;
        }

        public void setPackageName(String str) {
            this.packageName = str;
        }

        public void setUseAolDataset(Boolean bool) {
            this.useAolDataset = bool;
        }

        public Boolean shouldUseAolDataset() {
            return this.useAolDataset;
        }

        public Payload withPackageName(String str) {
            this.packageName = str;
            return this;
        }

        public Payload withUseAolDataset(Boolean bool) {
            this.useAolDataset = bool;
            return this;
        }
    }

    public Payload getPayload() {
        return this.payload;
    }

    public Payload instantiatePayload() {
        return new Payload();
    }

    public void setPayload(Payload payload) {
        this.payload = payload;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public FullShortNameRequest withPayload(Payload payload) {
        this.payload = payload;
        return this;
    }
}
