package com.privacystar.core.service.network.model.response;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.service.googleplay.IABConstants;
import com.privacystar.core.service.network.model.component.BulkLookupObject;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/BulkLookupStatusResponse.class */
public class BulkLookupStatusResponse implements Serializable {
    @SerializedName(IABConstants.JSON_RESULT)
    @Expose
    private BulkLookupObject lookupResult;
    @SerializedName("status")
    @Expose
    private Boolean status;

    public BulkLookupObject getLookupResult() {
        return this.lookupResult;
    }

    public Boolean getStatus() {
        return this.status;
    }

    public void setLookupResult(BulkLookupObject bulkLookupObject) {
        this.lookupResult = bulkLookupObject;
    }

    public void setStatus(Boolean bool) {
        this.status = bool;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }
}
