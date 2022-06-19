package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.s */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/s.class */
public final class RunnableC0613s implements Runnable {

    /* renamed from: f */
    final /* synthetic */ C0586g f2781f;

    /* renamed from: g */
    final /* synthetic */ ServiceConnectionC0619v f2782g;

    public RunnableC0613s(ServiceConnectionC0619v serviceConnectionC0619v, C0586g c0586g) {
        this.f2782g = serviceConnectionC0619v;
        this.f2781f = c0586g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC0581e abstractC0581e;
        AbstractC0581e abstractC0581e2;
        obj = this.f2782g.f2792a;
        synchronized (obj) {
            abstractC0581e = this.f2782g.f2794c;
            if (abstractC0581e != null) {
                abstractC0581e2 = this.f2782g.f2794c;
                abstractC0581e2.onBillingSetupFinished(this.f2781f);
            }
        }
    }
}
