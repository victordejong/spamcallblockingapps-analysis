package com.tmobile.services.nameid.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/UserPreferenceTransaction.class */
public class UserPreferenceTransaction implements Serializable {
    @SerializedName("transactionId")
    @Expose
    private String transactionId;

    /* renamed from: id */
    public String m6469id() {
        return this.transactionId;
    }

    public void setTransactionId(String str) {
        this.transactionId = str;
    }
}
