package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.n0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/n0.class */
final class RunnableC0604n0 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC0592i f2760f;

    /* renamed from: g */
    final /* synthetic */ C0589h f2761g;

    RunnableC0604n0(d dVar, AbstractC0592i abstractC0592i, C0589h c0589h) {
        this.f2760f = abstractC0592i;
        this.f2761g = c0589h;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2760f.onConsumeResponse(C0627z.f2817n, this.f2761g.m4184a());
    }
}
