package com.google.android.gms.gass;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.gass.internal.zzc;
import com.google.android.gms.gass.internal.zzd;
import com.google.android.gms.gass.internal.zzg;
import com.google.android.gms.internal.ads.zzbs;
import com.google.android.gms.internal.ads.zzdrt;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.gass.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gass/c.class */
public final class C1711c implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    private zzd f7072a;

    /* renamed from: b */
    private final String f7073b;

    /* renamed from: c */
    private final String f7074c;

    /* renamed from: e */
    private final HandlerThread f7076e = new HandlerThread("GassClient");

    /* renamed from: d */
    private final LinkedBlockingQueue<zzbs.zza> f7075d = new LinkedBlockingQueue<>();

    public C1711c(Context context, String str, String str2) {
        this.f7073b = str;
        this.f7074c = str2;
        this.f7076e.start();
        this.f7072a = new zzd(context, this.f7076e.getLooper(), this, this);
        this.f7072a.checkAvailabilityAndConnect();
    }

    /* renamed from: b */
    private final zzg m5522b() {
        try {
            return this.f7072a.zzaqp();
        } catch (DeadObjectException | IllegalStateException e) {
            return null;
        }
    }

    /* renamed from: c */
    private final void m5521c() {
        zzd zzdVar = this.f7072a;
        if (zzdVar == null) {
            return;
        }
        if (zzdVar.isConnected() || this.f7072a.isConnecting()) {
            this.f7072a.disconnect();
        }
    }

    /* renamed from: d */
    private static zzbs.zza m5520d() {
        return (zzbs.zza) ((zzdrt) zzbs.zza.zzan().zzau(32768L).zzbaf());
    }

    /* renamed from: a */
    public final zzbs.zza m5523a() {
        zzbs.zza zzaVar;
        try {
            zzaVar = this.f7075d.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            zzaVar = null;
        }
        zzbs.zza zzaVar2 = zzaVar;
        if (zzaVar == null) {
            zzaVar2 = m5520d();
        }
        return zzaVar2;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzg b = m5522b();
        if (b != null) {
            try {
                this.f7075d.put(b.zza(new zzc(this.f7073b, this.f7074c)).zzaqq());
            } catch (Throwable th) {
                try {
                    this.f7075d.put(m5520d());
                } catch (InterruptedException e) {
                } catch (Throwable th2) {
                    m5521c();
                    this.f7076e.quit();
                    throw th2;
                }
            }
            m5521c();
            this.f7076e.quit();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            this.f7075d.put(m5520d());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            this.f7075d.put(m5520d());
        } catch (InterruptedException e) {
        }
    }
}
