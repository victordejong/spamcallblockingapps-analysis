package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import g.f.a.d.c.k.a;
import g.f.a.d.c.k.c;
import g.f.a.d.c.k.d;
/* renamed from: com.android.billingclient.api.v */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/v.class */
final class ServiceConnectionC0619v implements ServiceConnection {

    /* renamed from: a */
    private final Object f2792a = new Object();

    /* renamed from: b */
    private boolean f2793b = false;

    /* renamed from: c */
    private AbstractC0581e f2794c;

    /* renamed from: d */
    final /* synthetic */ d f2795d;

    /* synthetic */ ServiceConnectionC0619v(d dVar, AbstractC0581e abstractC0581e, CallableC0624x0 callableC0624x0) {
        this.f2795d = dVar;
        this.f2794c = abstractC0581e;
    }

    /* renamed from: f */
    public final void m4159f(C0586g c0586g) {
        d.s(this.f2795d, new RunnableC0613s(this, c0586g));
    }

    /* renamed from: a */
    final void m4164a() {
        synchronized (this.f2792a) {
            this.f2794c = null;
            this.f2793b = true;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        a.a("BillingClient", "Billing service connected.");
        d.w(this.f2795d, c.q(iBinder));
        if (d.J(this.f2795d, new CallableC0615t(this), 30000L, new RunnableC0617u(this)) == null) {
            m4159f(d.K(this.f2795d));
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        a.b("BillingClient", "Billing service disconnected.");
        d.w(this.f2795d, (d) null);
        d.x(this.f2795d, 0);
        synchronized (this.f2792a) {
            AbstractC0581e abstractC0581e = this.f2794c;
            if (abstractC0581e != null) {
                abstractC0581e.onBillingServiceDisconnected();
            }
        }
    }
}
