package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.q0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/q0.class */
final class RunnableC0610q0 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC0594j f2774f;

    RunnableC0610q0(d dVar, AbstractC0594j abstractC0594j) {
        this.f2774f = abstractC0594j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2774f.onPurchaseHistoryResponse(C0627z.f2817n, null);
    }
}
