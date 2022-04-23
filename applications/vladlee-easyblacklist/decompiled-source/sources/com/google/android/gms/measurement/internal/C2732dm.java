package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.common.internal.Preconditions;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.dm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dm.class */
public class C2732dm extends BroadcastReceiver {

    /* renamed from: a */
    private static final String f16665a = C2732dm.class.getName();

    /* renamed from: b */
    private final zzke f16666b;

    /* renamed from: c */
    private boolean f16667c;

    /* renamed from: d */
    private boolean f16668d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2732dm(zzke zzkeVar) {
        Preconditions.checkNotNull(zzkeVar);
        this.f16666b = zzkeVar;
    }

    /* renamed from: a */
    public final void m2144a() {
        this.f16666b.m1704b();
        this.f16666b.zzq().zzd();
        if (!this.f16667c) {
            this.f16666b.zzn().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f16668d = this.f16666b.zzd().zzf();
            this.f16666b.zzr().zzx().zza("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.f16668d));
            this.f16667c = true;
        }
    }

    /* renamed from: b */
    public final void m2142b() {
        this.f16666b.m1704b();
        this.f16666b.zzq().zzd();
        this.f16666b.zzq().zzd();
        if (this.f16667c) {
            this.f16666b.zzr().zzx().zza("Unregistering connectivity change receiver");
            this.f16667c = false;
            this.f16668d = false;
            try {
                this.f16666b.zzn().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.f16666b.zzr().zzf().zza("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f16666b.m1704b();
        String action = intent.getAction();
        this.f16666b.zzr().zzx().zza("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean zzf = this.f16666b.zzd().zzf();
            if (this.f16668d != zzf) {
                this.f16668d = zzf;
                this.f16666b.zzq().zza(new RunnableC2735dp(this, zzf));
                return;
            }
            return;
        }
        this.f16666b.zzr().zzi().zza("NetworkBroadcastReceiver received unknown action", action);
    }
}
