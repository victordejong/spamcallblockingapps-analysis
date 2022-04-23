package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.internal.measurement.zzkt;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fa */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fa.class */
public final class RunnableC2774fa implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ long f16841a;

    /* renamed from: b */
    private final /* synthetic */ zzhb f16842b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2774fa(zzhb zzhbVar, long j) {
        this.f16842b = zzhbVar;
        this.f16841a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhb zzhbVar = this.f16842b;
        long j = this.f16841a;
        zzhbVar.zzd();
        zzhbVar.zzb();
        zzhbVar.m2146b();
        zzhbVar.zzr().zzw().zza("Resetting analytics data (FE)");
        zzjo zzk = zzhbVar.zzk();
        zzk.zzd();
        zzk.f17268b.m2038a();
        boolean zzab = zzhbVar.f16804x.zzab();
        C2734do zzs = zzhbVar.zzs();
        zzs.f16684h.zza(j);
        if (!TextUtils.isEmpty(zzs.zzs().f16699w.zza())) {
            zzs.f16699w.zza(null);
        }
        if (zzkt.zzb() && zzs.zzt().zza(zzap.zzcm)) {
            zzs.f16693q.zza(0L);
        }
        if (!zzs.zzt().zzg()) {
            zzs.m2134c(!zzab);
        }
        zzhbVar.zzh().m1750f();
        if (zzkt.zzb() && zzhbVar.zzt().zza(zzap.zzcm)) {
            zzhbVar.zzk().f17267a.m2029a();
        }
        zzhbVar.f17235b = !zzab;
        this.f16842b.zzh().zza(new AtomicReference<>());
    }
}
