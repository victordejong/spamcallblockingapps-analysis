package com.privacystar.core.service.network.model.component;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.service.googleplay.IABConstants;
import com.privacystar.core.service.network.model.response.LookupResponse;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/component/BulkLookupObject.class */
public class BulkLookupObject implements Serializable {
    @SerializedName(IABConstants.EXTRA_ERROR)
    @Expose
    private Boolean error;
    @SerializedName("lookup")
    @Expose
    private List<LookupResponse> responses;

    public Boolean getError() {
        return this.error;
    }

    public List<LookupResponse> getResponses() {
        return this.responses;
    }

    public void setError(Boolean bool) {
        this.error = bool;
    }

    public void setResponses(List<LookupResponse> list) {
        this.responses = list;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }
}
