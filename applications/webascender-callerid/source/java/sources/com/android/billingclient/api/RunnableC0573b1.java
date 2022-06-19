package com.android.billingclient.api;

import g.f.a.d.c.k.a;
/* renamed from: com.android.billingclient.api.b1 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/b1.class */
final class RunnableC0573b1 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ Exception f2707f;

    /* renamed from: g */
    final /* synthetic */ AbstractC0592i f2708g;

    /* renamed from: h */
    final /* synthetic */ String f2709h;

    RunnableC0573b1(d dVar, Exception exc, AbstractC0592i abstractC0592i, String str) {
        this.f2707f = exc;
        this.f2708g = abstractC0592i;
        this.f2709h = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String valueOf = String.valueOf(this.f2707f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 30);
        sb.append("Error consuming purchase; ex: ");
        sb.append(valueOf);
        a.b("BillingClient", sb.toString());
        this.f2708g.onConsumeResponse(C0627z.f2816m, this.f2709h);
    }
}
