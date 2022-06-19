package com.android.billingclient.api;

import g.f.a.d.c.k.a;
/* renamed from: com.android.billingclient.api.r0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/r0.class */
final class RunnableC0612r0 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ Exception f2779f;

    /* renamed from: g */
    final /* synthetic */ CallableC0616t0 f2780g;

    public RunnableC0612r0(CallableC0616t0 callableC0616t0, Exception exc) {
        this.f2780g = callableC0616t0;
        this.f2779f = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String valueOf = String.valueOf(this.f2779f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 32);
        sb.append("Error acknowledge purchase; ex: ");
        sb.append(valueOf);
        a.b("BillingClient", sb.toString());
        this.f2780g.f2788g.onAcknowledgePurchaseResponse(C0627z.f2816m);
    }
}
