package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.u0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/u0.class */
final class RunnableC0618u0 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC0571b f2791f;

    RunnableC0618u0(d dVar, AbstractC0571b abstractC0571b) {
        this.f2791f = abstractC0571b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2791f.onAcknowledgePurchaseResponse(C0627z.f2817n);
    }
}
