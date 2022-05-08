package com.vladlee.p076a;

import org.json.JSONObject;
/* renamed from: com.vladlee.a.h */
/* loaded from: classes-dex2jar.jar:com/vladlee/a/h.class */
public final class C3248h {

    /* renamed from: a */
    String f19203a;

    /* renamed from: b */
    String f19204b;

    /* renamed from: c */
    String f19205c;

    /* renamed from: d */
    String f19206d;

    /* renamed from: e */
    long f19207e;

    /* renamed from: f */
    int f19208f;

    /* renamed from: g */
    String f19209g;

    /* renamed from: h */
    String f19210h;

    /* renamed from: i */
    String f19211i;

    /* renamed from: j */
    String f19212j;

    /* renamed from: k */
    boolean f19213k;

    public C3248h(String str, String str2, String str3) {
        this.f19203a = str;
        this.f19211i = str2;
        JSONObject jSONObject = new JSONObject(this.f19211i);
        this.f19204b = jSONObject.optString("orderId");
        this.f19205c = jSONObject.optString("packageName");
        this.f19206d = jSONObject.optString("productId");
        this.f19207e = jSONObject.optLong("purchaseTime");
        this.f19208f = jSONObject.optInt("purchaseState");
        this.f19209g = jSONObject.optString("developerPayload");
        this.f19210h = jSONObject.optString("token", jSONObject.optString("purchaseToken"));
        this.f19213k = jSONObject.optBoolean("autoRenewing");
        this.f19212j = str3;
    }

    /* renamed from: a */
    public final String m400a() {
        return this.f19206d;
    }

    public final String toString() {
        return "PurchaseInfo(type:" + this.f19203a + "):" + this.f19211i;
    }
}
