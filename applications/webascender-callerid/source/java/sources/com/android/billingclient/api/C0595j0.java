package com.android.billingclient.api;

import android.content.Context;
import android.content.IntentFilter;
/* renamed from: com.android.billingclient.api.j0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/j0.class */
public final class C0595j0 {

    /* renamed from: a */
    private final Context f2750a;

    /* renamed from: b */
    private final C0593i0 f2751b;

    C0595j0(Context context, AbstractC0596k abstractC0596k) {
        this.f2750a = context;
        this.f2751b = new C0593i0(this, abstractC0596k, null);
    }

    /* renamed from: a */
    final void m4176a() {
        this.f2751b.m4179a(this.f2750a, new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED"));
    }

    /* renamed from: b */
    final AbstractC0596k m4175b() {
        AbstractC0596k abstractC0596k;
        abstractC0596k = this.f2751b.f2747a;
        return abstractC0596k;
    }

    /* renamed from: c */
    final void m4174c() {
        this.f2751b.m4178b(this.f2750a);
    }
}
