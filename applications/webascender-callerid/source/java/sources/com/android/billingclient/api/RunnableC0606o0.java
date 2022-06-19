package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.o0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/o0.class */
final class RunnableC0606o0 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ C0621w f2765f;

    /* renamed from: g */
    final /* synthetic */ CallableC0608p0 f2766g;

    public RunnableC0606o0(CallableC0608p0 callableC0608p0, C0621w c0621w) {
        this.f2766g = callableC0608p0;
        this.f2765f = c0621w;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2766g.f2770g.onPurchaseHistoryResponse(this.f2765f.m4158a(), this.f2765f.m4157b());
    }
}
