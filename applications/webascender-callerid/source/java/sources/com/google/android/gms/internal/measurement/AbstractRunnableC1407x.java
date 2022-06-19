package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.measurement.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/x.class */
public abstract class AbstractRunnableC1407x implements Runnable {

    /* renamed from: f */
    final long f3971f;

    /* renamed from: g */
    final long f3972g;

    /* renamed from: h */
    final boolean f3973h;

    /* renamed from: i */
    final /* synthetic */ C1323h0 f3974i;

    AbstractRunnableC1407x(C1323h0 c1323h0, boolean z) {
        this.f3974i = c1323h0;
        this.f3971f = c1323h0.f3910b.m3166b();
        this.f3972g = c1323h0.f3910b.m3165c();
        this.f3973h = z;
    }

    /* renamed from: a */
    abstract void m1888a() throws RemoteException;

    /* renamed from: b */
    protected void m1887b() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        z = this.f3974i.f3915g;
        if (z) {
            m1887b();
            return;
        }
        try {
            m1888a();
        } catch (Exception e) {
            this.f3974i.m2099q(e, false, this.f3973h);
            m1887b();
        }
    }
}
