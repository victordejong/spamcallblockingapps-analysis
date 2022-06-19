package com.android.billingclient.api;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.c1 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/c1.class */
final class CallableC0578c1 implements Callable<Bundle> {

    /* renamed from: f */
    final /* synthetic */ int f2716f;

    /* renamed from: g */
    final /* synthetic */ SkuDetails f2717g;

    /* renamed from: h */
    final /* synthetic */ String f2718h;

    /* renamed from: i */
    final /* synthetic */ Bundle f2719i;

    /* renamed from: j */
    final /* synthetic */ d f2720j;

    CallableC0578c1(d dVar, int i, SkuDetails skuDetails, String str, C0583f c0583f, Bundle bundle) {
        this.f2720j = dVar;
        this.f2716f = i;
        this.f2717g = skuDetails;
        this.f2718h = str;
        this.f2719i = bundle;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Bundle call() throws Exception {
        return d.q(this.f2720j).G1(this.f2716f, d.p(this.f2720j).getPackageName(), this.f2717g.m4246j(), this.f2718h, (String) null, this.f2719i);
    }
}
