package com.android.billingclient.api;

import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/SkuDetails.class */
public class SkuDetails {

    /* renamed from: a */
    private final String f2699a;

    /* renamed from: b */
    private final JSONObject f2700b;

    public SkuDetails(String str) throws JSONException {
        this.f2699a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f2700b = jSONObject;
        if (!TextUtils.isEmpty(jSONObject.optString("productId"))) {
            if (TextUtils.isEmpty(jSONObject.optString(Payload.TYPE))) {
                throw new IllegalArgumentException("SkuType cannot be empty.");
            }
            return;
        }
        throw new IllegalArgumentException("SKU cannot be empty.");
    }

    /* renamed from: a */
    public String m4255a() {
        return this.f2700b.optString("freeTrialPeriod");
    }

    /* renamed from: b */
    public String m4254b() {
        return this.f2700b.optString("introductoryPrice");
    }

    /* renamed from: c */
    public long m4253c() {
        return this.f2700b.optLong("introductoryPriceAmountMicros");
    }

    /* renamed from: d */
    public String m4252d() {
        return this.f2700b.optString("introductoryPricePeriod");
    }

    /* renamed from: e */
    public String m4251e() {
        return this.f2699a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SkuDetails) {
            return TextUtils.equals(this.f2699a, ((SkuDetails) obj).f2699a);
        }
        return false;
    }

    /* renamed from: f */
    public long m4250f() {
        return this.f2700b.has("original_price_micros") ? this.f2700b.optLong("original_price_micros") : m4248h();
    }

    /* renamed from: g */
    public String m4249g() {
        return this.f2700b.optString("price");
    }

    /* renamed from: h */
    public long m4248h() {
        return this.f2700b.optLong("price_amount_micros");
    }

    public int hashCode() {
        return this.f2699a.hashCode();
    }

    /* renamed from: i */
    public String m4247i() {
        return this.f2700b.optString("price_currency_code");
    }

    /* renamed from: j */
    public String m4246j() {
        return this.f2700b.optString("productId");
    }

    /* renamed from: k */
    public String m4245k() {
        return this.f2700b.optString("subscriptionPeriod");
    }

    /* renamed from: l */
    public String m4244l() {
        return this.f2700b.optString(Payload.TYPE);
    }

    /* renamed from: m */
    public final String m4243m() {
        return this.f2700b.optString("packageName");
    }

    /* renamed from: n */
    final String m4242n() {
        return this.f2700b.optString("skuDetailsToken");
    }

    /* renamed from: o */
    public String m4241o() {
        return this.f2700b.optString("offer_id");
    }

    /* renamed from: p */
    public int m4240p() {
        return this.f2700b.optInt("offer_type");
    }

    public String toString() {
        String valueOf = String.valueOf(this.f2699a);
        return valueOf.length() != 0 ? "SkuDetails: ".concat(valueOf) : new String("SkuDetails: ");
    }
}
