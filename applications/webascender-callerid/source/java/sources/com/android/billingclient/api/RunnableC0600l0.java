package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.l0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/l0.class */
final class RunnableC0600l0 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC0601m f2756f;

    RunnableC0600l0(d dVar, AbstractC0601m abstractC0601m) {
        this.f2756f = abstractC0601m;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2756f.onSkuDetailsResponse(C0627z.f2817n, null);
    }
}
