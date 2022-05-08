package com.privacystar.core.service.network.model.response;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/BulkLookupResponse.class */
public class BulkLookupResponse implements Serializable {
    @SerializedName("status_id")
    @Expose
    private String statusId;

    public String getStatusId() {
        return this.statusId;
    }

    public void setStatusId(String str) {
        this.statusId = str;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public BulkLookupResponse withStatusId(String str) {
        this.statusId = str;
        return this;
    }
}
