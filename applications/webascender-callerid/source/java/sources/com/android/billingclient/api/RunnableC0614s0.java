package com.android.billingclient.api;

import com.android.billingclient.api.C0586g;
/* renamed from: com.android.billingclient.api.s0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/s0.class */
final class RunnableC0614s0 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ int f2783f;

    /* renamed from: g */
    final /* synthetic */ String f2784g;

    /* renamed from: h */
    final /* synthetic */ CallableC0616t0 f2785h;

    public RunnableC0614s0(CallableC0616t0 callableC0616t0, int i, String str) {
        this.f2785h = callableC0616t0;
        this.f2783f = i;
        this.f2784g = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC0571b abstractC0571b = this.f2785h.f2788g;
        C0586g.C0587a m4191c = C0586g.m4191c();
        m4191c.m4186c(this.f2783f);
        m4191c.m4187b(this.f2784g);
        abstractC0571b.onAcknowledgePurchaseResponse(m4191c.m4188a());
    }
}
