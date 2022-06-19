package com.android.billingclient.api;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.o */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/o.class */
final class CallableC0605o implements Callable<Bundle> {

    /* renamed from: f */
    final /* synthetic */ SkuDetails f2762f;

    /* renamed from: g */
    final /* synthetic */ String f2763g;

    /* renamed from: h */
    final /* synthetic */ d f2764h;

    CallableC0605o(d dVar, SkuDetails skuDetails, String str) {
        this.f2764h = dVar;
        this.f2762f = skuDetails;
        this.f2763g = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Bundle call() throws Exception {
        return d.q(this.f2764h).b0(3, d.p(this.f2764h).getPackageName(), this.f2762f.m4246j(), this.f2763g, (String) null);
    }
}
