package com.android.billingclient.api;

import android.os.Bundle;
import java.util.Arrays;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.d1 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/d1.class */
final class CallableC0580d1 implements Callable<Bundle> {

    /* renamed from: f */
    final /* synthetic */ C0583f f2721f;

    /* renamed from: g */
    final /* synthetic */ SkuDetails f2722g;

    /* renamed from: h */
    final /* synthetic */ d f2723h;

    CallableC0580d1(d dVar, C0583f c0583f, SkuDetails skuDetails) {
        this.f2723h = dVar;
        this.f2721f = c0583f;
        this.f2722g = skuDetails;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Bundle call() throws Exception {
        return d.q(this.f2723h).D1(5, d.p(this.f2723h).getPackageName(), Arrays.asList(this.f2721f.m4216a()), this.f2722g.m4246j(), "subs", (String) null);
    }
}
