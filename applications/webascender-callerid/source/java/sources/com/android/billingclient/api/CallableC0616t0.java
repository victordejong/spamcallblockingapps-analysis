package com.android.billingclient.api;

import android.os.Bundle;
import g.f.a.d.c.k.a;
import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.t0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/t0.class */
public final class CallableC0616t0 implements Callable<Void> {

    /* renamed from: f */
    final /* synthetic */ C0567a f2787f;

    /* renamed from: g */
    final /* synthetic */ AbstractC0571b f2788g;

    /* renamed from: h */
    final /* synthetic */ d f2789h;

    CallableC0616t0(d dVar, C0567a c0567a, AbstractC0571b abstractC0571b) {
        this.f2789h = dVar;
        this.f2787f = c0567a;
        this.f2788g = abstractC0571b;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Void call() throws Exception {
        try {
            Bundle L = d.q(this.f2789h).L(9, d.p(this.f2789h).getPackageName(), this.f2787f.m4239a(), a.k(this.f2787f, d.v(this.f2789h)));
            d.s(this.f2789h, new RunnableC0614s0(this, a.d(L, "BillingClient"), a.e(L, "BillingClient")));
            return null;
        } catch (Exception e) {
            d.s(this.f2789h, new RunnableC0612r0(this, e));
            return null;
        }
    }
}
