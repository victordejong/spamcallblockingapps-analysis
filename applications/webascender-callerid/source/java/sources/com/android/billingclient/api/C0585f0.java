package com.android.billingclient.api;

import android.text.TextUtils;
/* renamed from: com.android.billingclient.api.f0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/f0.class */
public final class C0585f0 {

    /* renamed from: a */
    private String f2739a;

    /* synthetic */ C0585f0(C0582e0 c0582e0) {
    }

    /* renamed from: a */
    public final C0585f0 m4195a(String str) {
        this.f2739a = str;
        return this;
    }

    /* renamed from: b */
    public final C0588g0 m4194b() {
        if (!TextUtils.isEmpty(this.f2739a)) {
            return new C0588g0(this.f2739a, null, null);
        }
        throw new IllegalArgumentException("SKU must be set.");
    }
}
