package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/Purchase.class */
public class Purchase {

    /* renamed from: a */
    private final String f2691a;

    /* renamed from: b */
    private final String f2692b;

    /* renamed from: c */
    private final JSONObject f2693c;

    /* renamed from: com.android.billingclient.api.Purchase$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/Purchase$a.class */
    public static class C0566a {

        /* renamed from: a */
        private final List<Purchase> f2694a;

        /* renamed from: b */
        private final C0586g f2695b;

        public C0566a(C0586g c0586g, List<Purchase> list) {
            this.f2694a = list;
            this.f2695b = c0586g;
        }

        /* renamed from: a */
        public C0586g m4263a() {
            return this.f2695b;
        }

        /* renamed from: b */
        public List<Purchase> m4262b() {
            return this.f2694a;
        }

        /* renamed from: c */
        public int m4261c() {
            return m4263a().m4192b();
        }
    }

    public Purchase(String str, String str2) throws JSONException {
        this.f2691a = str;
        this.f2692b = str2;
        this.f2693c = new JSONObject(str);
    }

    /* renamed from: a */
    public String m4271a() {
        return this.f2693c.optString("orderId");
    }

    /* renamed from: b */
    public String m4270b() {
        return this.f2691a;
    }

    /* renamed from: c */
    public int m4269c() {
        return this.f2693c.optInt("purchaseState", 1) != 4 ? 1 : 2;
    }

    /* renamed from: d */
    public long m4268d() {
        return this.f2693c.optLong("purchaseTime");
    }

    /* renamed from: e */
    public String m4267e() {
        JSONObject jSONObject = this.f2693c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        return TextUtils.equals(this.f2691a, purchase.m4270b()) && TextUtils.equals(this.f2692b, purchase.m4266f());
    }

    /* renamed from: f */
    public String m4266f() {
        return this.f2692b;
    }

    /* renamed from: g */
    public String m4265g() {
        return this.f2693c.optString("productId");
    }

    /* renamed from: h */
    public boolean m4264h() {
        return this.f2693c.optBoolean("acknowledged", true);
    }

    public int hashCode() {
        return this.f2691a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f2691a);
        return valueOf.length() != 0 ? "Purchase. Json: ".concat(valueOf) : new String("Purchase. Json: ");
    }
}
