package com.privacystar.core.data.model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import io.realm.AbstractC1921xe78bd8e1;
import io.realm.RealmObject;
import io.realm.annotations.Index;
import io.realm.internal.RealmObjectProxy;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/PlayStoreReceipt.class */
public class PlayStoreReceipt extends RealmObject implements Serializable, AbstractC1921xe78bd8e1 {
    @SerializedName("signed_data")
    @Expose
    private String data;
    @SerializedName("sku")
    @Expose
    @Index
    private String productId;
    @SerializedName("signature")
    @Expose
    private String signature;

    public PlayStoreReceipt() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PlayStoreReceipt playStoreReceipt = (PlayStoreReceipt) obj;
        if (getProductId().equals(playStoreReceipt.getProductId()) && getData().equals(playStoreReceipt.getData())) {
            return getSignature().equals(playStoreReceipt.getSignature());
        }
        return false;
    }

    public String getData() {
        return realmGet$data();
    }

    public String getProductId() {
        return realmGet$productId();
    }

    public String getSignature() {
        return realmGet$signature();
    }

    public int hashCode() {
        return (((getProductId().hashCode() * 31) + getData().hashCode()) * 31) + getSignature().hashCode();
    }

    public boolean realmEquals(Object obj) {
        if (this == obj) {
            return true;
        }
        PlayStoreReceipt playStoreReceipt = (PlayStoreReceipt) obj;
        if (getProductId().equals(playStoreReceipt.getProductId()) && getData().equals(playStoreReceipt.getData())) {
            return getSignature().equals(playStoreReceipt.getSignature());
        }
        return false;
    }

    @Override // io.realm.AbstractC1921xe78bd8e1
    public String realmGet$data() {
        return this.data;
    }

    @Override // io.realm.AbstractC1921xe78bd8e1
    public String realmGet$productId() {
        return this.productId;
    }

    @Override // io.realm.AbstractC1921xe78bd8e1
    public String realmGet$signature() {
        return this.signature;
    }

    @Override // io.realm.AbstractC1921xe78bd8e1
    public void realmSet$data(String str) {
        this.data = str;
    }

    @Override // io.realm.AbstractC1921xe78bd8e1
    public void realmSet$productId(String str) {
        this.productId = str;
    }

    @Override // io.realm.AbstractC1921xe78bd8e1
    public void realmSet$signature(String str) {
        this.signature = str;
    }

    public void setData(String str) {
        realmSet$data(str);
    }

    public void setProductId(String str) {
        realmSet$productId(str);
    }

    public void setSignature(String str) {
        realmSet$signature(str);
    }

    public String toString() {
        return "PlayStoreReceipt{productId='" + realmGet$productId() + "', data='" + realmGet$data() + "', signature='" + realmGet$signature() + "'}";
    }
}
