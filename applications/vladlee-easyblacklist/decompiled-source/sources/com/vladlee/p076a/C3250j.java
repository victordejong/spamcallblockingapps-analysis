package com.vladlee.p076a;

import org.json.JSONObject;
/* renamed from: com.vladlee.a.j */
/* loaded from: classes-dex2jar.jar:com/vladlee/a/j.class */
public final class C3250j {

    /* renamed from: a */
    private final String f19214a;

    /* renamed from: b */
    private final String f19215b;

    /* renamed from: c */
    private final String f19216c;

    /* renamed from: d */
    private final String f19217d;

    /* renamed from: e */
    private final long f19218e;

    /* renamed from: f */
    private final String f19219f;

    /* renamed from: g */
    private final String f19220g;

    /* renamed from: h */
    private final String f19221h;

    /* renamed from: i */
    private final String f19222i;

    public C3250j(String str, String str2) {
        this.f19214a = str;
        this.f19222i = str2;
        JSONObject jSONObject = new JSONObject(this.f19222i);
        this.f19215b = jSONObject.optString("productId");
        this.f19216c = jSONObject.optString("type");
        this.f19217d = jSONObject.optString("price");
        this.f19218e = jSONObject.optLong("price_amount_micros");
        this.f19219f = jSONObject.optString("price_currency_code");
        this.f19220g = jSONObject.optString("title");
        this.f19221h = jSONObject.optString("description");
    }

    /* renamed from: a */
    public final String m396a() {
        return this.f19215b;
    }

    public final String toString() {
        return "SkuDetails:" + this.f19222i;
    }
}
