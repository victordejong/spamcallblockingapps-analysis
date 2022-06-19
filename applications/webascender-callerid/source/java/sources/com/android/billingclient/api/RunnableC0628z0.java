package com.android.billingclient.api;

import g.f.a.d.c.k.a;
/* renamed from: com.android.billingclient.api.z0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/z0.class */
final class RunnableC0628z0 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC0592i f2822f;

    /* renamed from: g */
    final /* synthetic */ C0586g f2823g;

    /* renamed from: h */
    final /* synthetic */ String f2824h;

    RunnableC0628z0(d dVar, AbstractC0592i abstractC0592i, C0586g c0586g, String str) {
        this.f2822f = abstractC0592i;
        this.f2823g = c0586g;
        this.f2824h = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a("BillingClient", "Successfully consumed purchase.");
        this.f2822f.onConsumeResponse(this.f2823g, this.f2824h);
    }
}
