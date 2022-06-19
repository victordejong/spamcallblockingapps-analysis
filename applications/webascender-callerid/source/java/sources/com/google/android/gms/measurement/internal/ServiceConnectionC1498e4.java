package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.AbstractC1388t3;
import com.google.android.gms.internal.measurement.s2;
/* renamed from: com.google.android.gms.measurement.internal.e4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/e4.class */
public final class ServiceConnectionC1498e4 implements ServiceConnection {

    /* renamed from: a */
    private final String f4220a;

    /* renamed from: b */
    final /* synthetic */ C1512g4 f4221b;

    public ServiceConnectionC1498e4(C1512g4 c1512g4, String str) {
        this.f4221b = c1512g4;
        this.f4220a = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f4221b.f4256a.c().r().m1570a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            AbstractC1388t3 w = s2.w(iBinder);
            if (w == null) {
                this.f4221b.f4256a.c().r().m1570a("Install Referrer Service implementation was not found");
                return;
            }
            this.f4221b.f4256a.c().w().m1570a("Install Referrer Service connected");
            this.f4221b.f4256a.e().r(new RunnableC1491d4(this, w, this));
        } catch (Exception e) {
            this.f4221b.f4256a.c().r().m1569b("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f4221b.f4256a.c().w().m1570a("Install Referrer Service disconnected");
    }
}
