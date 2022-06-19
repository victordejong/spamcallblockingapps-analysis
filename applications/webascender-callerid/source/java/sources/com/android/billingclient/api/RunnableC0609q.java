package com.android.billingclient.api;

import com.android.billingclient.api.C0586g;
/* renamed from: com.android.billingclient.api.q */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/q.class */
final class RunnableC0609q implements Runnable {

    /* renamed from: f */
    final /* synthetic */ C0577c0 f2772f;

    /* renamed from: g */
    final /* synthetic */ CallableC0611r f2773g;

    public RunnableC0609q(CallableC0611r callableC0611r, C0577c0 c0577c0) {
        this.f2773g = callableC0611r;
        this.f2772f = c0577c0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC0601m abstractC0601m = this.f2773g.f2777h;
        C0586g.C0587a m4191c = C0586g.m4191c();
        m4191c.m4186c(this.f2772f.m4218b());
        m4191c.m4187b(this.f2772f.m4217c());
        abstractC0601m.onSkuDetailsResponse(m4191c.m4188a(), this.f2772f.m4219a());
    }
}
