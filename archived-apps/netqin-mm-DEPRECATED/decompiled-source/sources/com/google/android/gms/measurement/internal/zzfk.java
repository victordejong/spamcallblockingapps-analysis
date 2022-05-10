package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.zzd;
import com.google.android.gms.internal.measurement.zzg;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4764n3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfk.class */
public final class zzfk implements ServiceConnection {

    /* renamed from: a */
    public final String f29978a;

    /* renamed from: b */
    public final /* synthetic */ zzfl f29979b;

    public zzfk(zzfl zzflVar, String str) {
        this.f29979b = zzflVar;
        this.f29978a = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f29979b.f29980a.mo8789p().m9149t().m9143a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            zzd a = zzg.m9800a(iBinder);
            if (a == null) {
                this.f29979b.f29980a.mo8789p().m9149t().m9143a("Install Referrer Service implementation was not found");
                return;
            }
            this.f29979b.f29980a.mo8789p().m9144y().m9143a("Install Referrer Service connected");
            this.f29979b.f29980a.mo8795j().m9093a(new RunnableC4764n3(this, a, this));
        } catch (Exception e) {
            this.f29979b.f29980a.mo8789p().m9149t().m9142a("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f29979b.f29980a.mo8789p().m9144y().m9143a("Install Referrer Service disconnected");
    }
}
