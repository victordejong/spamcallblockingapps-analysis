package com.android.billingclient.api;

import java.util.concurrent.Callable;
/* renamed from: com.android.billingclient.api.m0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/m0.class */
final class CallableC0602m0 implements Callable<Void> {

    /* renamed from: f */
    final /* synthetic */ C0589h f2757f;

    /* renamed from: g */
    final /* synthetic */ AbstractC0592i f2758g;

    /* renamed from: h */
    final /* synthetic */ d f2759h;

    CallableC0602m0(d dVar, C0589h c0589h, AbstractC0592i abstractC0592i) {
        this.f2759h = dVar;
        this.f2757f = c0589h;
        this.f2758g = abstractC0592i;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Void call() throws Exception {
        d.t(this.f2759h, this.f2757f, this.f2758g);
        return null;
    }
}
