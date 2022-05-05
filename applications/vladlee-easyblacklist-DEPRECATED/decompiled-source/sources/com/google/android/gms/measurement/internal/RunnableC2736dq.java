package com.google.android.gms.measurement.internal;

import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.internal.measurement.zzd;
/* renamed from: com.google.android.gms.measurement.internal.dq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dq.class */
final class RunnableC2736dq implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzd f16704a;

    /* renamed from: b */
    private final /* synthetic */ ServiceConnection f16705b;

    /* renamed from: c */
    private final /* synthetic */ zzfo f16706c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2736dq(zzfo zzfoVar, zzd zzdVar, ServiceConnection serviceConnection) {
        this.f16706c = zzfoVar;
        this.f16704a = zzdVar;
        this.f16705b = serviceConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        zzey zzf;
        String str2;
        zzfl zzflVar = this.f16706c.f17177a;
        str = this.f16706c.f17178b;
        zzd zzdVar = this.f16704a;
        ServiceConnection serviceConnection = this.f16705b;
        Bundle a = zzflVar.m1842a(str, zzdVar);
        zzflVar.f17171a.zzq().zzd();
        if (a != null) {
            long j = a.getLong("install_begin_timestamp_seconds", 0L) * 1000;
            if (j == 0) {
                zzf = zzflVar.f17171a.zzr().zzf();
                str2 = "Service response is missing Install Referrer install timestamp";
            } else {
                String string = a.getString("install_referrer");
                if (string == null || string.isEmpty()) {
                    zzf = zzflVar.f17171a.zzr().zzf();
                    str2 = "No referrer defined in install referrer response";
                } else {
                    zzflVar.f17171a.zzr().zzx().zza("InstallReferrer API result", string);
                    zzkm zzi = zzflVar.f17171a.zzi();
                    String valueOf = String.valueOf(string);
                    Bundle a2 = zzi.m1640a(Uri.parse(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")));
                    if (a2 == null) {
                        zzf = zzflVar.f17171a.zzr().zzf();
                        str2 = "No campaign params defined in install referrer result";
                    } else {
                        String string2 = a2.getString("medium");
                        if (string2 != null && !"(not set)".equalsIgnoreCase(string2) && !"organic".equalsIgnoreCase(string2)) {
                            long j2 = a.getLong("referrer_click_timestamp_seconds", 0L) * 1000;
                            if (j2 == 0) {
                                zzf = zzflVar.f17171a.zzr().zzf();
                                str2 = "Install Referrer is missing click timestamp for ad campaign";
                            } else {
                                a2.putLong("click_timestamp", j2);
                            }
                        }
                        if (j == zzflVar.f17171a.zzc().f16685i.zza()) {
                            zzflVar.f17171a.zzu();
                            zzf = zzflVar.f17171a.zzr().zzx();
                            str2 = "Campaign has already been logged";
                        } else {
                            zzflVar.f17171a.zzc().f16685i.zza(j);
                            zzflVar.f17171a.zzu();
                            zzflVar.f17171a.zzr().zzx().zza("Logging Install Referrer campaign from sdk with ", "referrer API");
                            a2.putString("_cis", "referrer API");
                            zzflVar.f17171a.zzh().zza("auto", "_cmp", a2);
                        }
                    }
                }
            }
            zzf.zza(str2);
        }
        if (serviceConnection != null) {
            ConnectionTracker.getInstance().unbindService(zzflVar.f17171a.zzn(), serviceConnection);
        }
    }
}
