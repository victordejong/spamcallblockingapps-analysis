package com.android.billingclient.api;

import g.f.a.d.c.k.a;
import java.util.concurrent.Future;
/* renamed from: com.android.billingclient.api.w0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/w0.class */
final class RunnableC0622w0 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ Future f2800f;

    /* renamed from: g */
    final /* synthetic */ Runnable f2801g;

    RunnableC0622w0(d dVar, Future future, Runnable runnable) {
        this.f2800f = future;
        this.f2801g = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f2800f.isDone() || this.f2800f.isCancelled()) {
            return;
        }
        this.f2800f.cancel(true);
        a.b("BillingClient", "Async task is taking too long, cancel it!");
        Runnable runnable = this.f2801g;
        if (runnable == null) {
            return;
        }
        runnable.run();
    }
}
