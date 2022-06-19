package com.android.billingclient.api;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/PurchaseHistoryRecord.class */
public class PurchaseHistoryRecord {

    /* renamed from: a */
    private final String f2696a;

    /* renamed from: b */
    private final String f2697b;

    /* renamed from: c */
    private final JSONObject f2698c;

    public PurchaseHistoryRecord(String str, String str2) throws JSONException {
        this.f2696a = str;
        this.f2697b = str2;
        this.f2698c = new JSONObject(str);
    }

    /* renamed from: a */
    public String m4260a() {
        return this.f2696a;
    }

    /* renamed from: b */
    public long m4259b() {
        return this.f2698c.optLong("purchaseTime");
    }

    /* renamed from: c */
    public String m4258c() {
        JSONObject jSONObject = this.f2698c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    /* renamed from: d */
    public String m4257d() {
        return this.f2697b;
    }

    /* renamed from: e */
    public String m4256e() {
        return this.f2698c.optString("productId");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PurchaseHistoryRecord)) {
            return false;
        }
        PurchaseHistoryRecord purchaseHistoryRecord = (PurchaseHistoryRecord) obj;
        return TextUtils.equals(this.f2696a, purchaseHistoryRecord.m4260a()) && TextUtils.equals(this.f2697b, purchaseHistoryRecord.m4257d());
    }

    public int hashCode() {
        return this.f2696a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f2696a);
        return valueOf.length() != 0 ? "PurchaseHistoryRecord. Json: ".concat(valueOf) : new String("PurchaseHistoryRecord. Json: ");
    }
}
