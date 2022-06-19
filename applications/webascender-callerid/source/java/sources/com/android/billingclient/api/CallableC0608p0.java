package com.android.billingclient.api;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.android.billingclient.api.p0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/p0.class */
public final class CallableC0608p0 implements Callable<Void> {

    /* renamed from: f */
    final /* synthetic */ String f2769f;

    /* renamed from: g */
    final /* synthetic */ AbstractC0594j f2770g;

    /* renamed from: h */
    final /* synthetic */ d f2771h;

    CallableC0608p0(d dVar, String str, AbstractC0594j abstractC0594j) {
        this.f2771h = dVar;
        this.f2769f = str;
        this.f2770g = abstractC0594j;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Void call() throws Exception {
        d.s(this.f2771h, new RunnableC0606o0(this, d.u(this.f2771h, this.f2769f)));
        return null;
    }
}
