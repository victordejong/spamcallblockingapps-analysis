package com.android.billingclient.api;

import g.f.a.d.c.k.a;
/* renamed from: com.android.billingclient.api.a1 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/a1.class */
final class RunnableC0570a1 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ int f2703f;

    /* renamed from: g */
    final /* synthetic */ AbstractC0592i f2704g;

    /* renamed from: h */
    final /* synthetic */ C0586g f2705h;

    /* renamed from: i */
    final /* synthetic */ String f2706i;

    RunnableC0570a1(d dVar, int i, AbstractC0592i abstractC0592i, C0586g c0586g, String str) {
        this.f2703f = i;
        this.f2704g = abstractC0592i;
        this.f2705h = c0586g;
        this.f2706i = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f2703f;
        StringBuilder sb = new StringBuilder(63);
        sb.append("Error consuming purchase with token. Response code: ");
        sb.append(i);
        a.b("BillingClient", sb.toString());
        this.f2704g.onConsumeResponse(this.f2705h, this.f2706i);
    }
}
