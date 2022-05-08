package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.zzd;
import com.google.android.gms.internal.measurement.zzg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfo.class */
public final class zzfo implements ServiceConnection {

    /* renamed from: a */
    final /* synthetic */ zzfl f17177a;

    /* renamed from: b */
    private final String f17178b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfo(zzfl zzflVar, String str) {
        this.f17177a = zzflVar;
        this.f17178b = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f17177a.f17171a.zzr().zzi().zza("Install Referrer connection returned with null binder");
            return;
        }
        try {
            zzd zza = zzg.zza(iBinder);
            if (zza == null) {
                this.f17177a.f17171a.zzr().zzi().zza("Install Referrer Service implementation was not found");
                return;
            }
            this.f17177a.f17171a.zzr().zzv().zza("Install Referrer Service connected");
            this.f17177a.f17171a.zzq().zza(new RunnableC2736dq(this, zza, this));
        } catch (Exception e) {
            this.f17177a.f17171a.zzr().zzi().zza("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f17177a.f17171a.zzr().zzv().zza("Install Referrer Service disconnected");
    }
}
