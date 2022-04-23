package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import androidx.p026b.C0529a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzb.class */
public final class zzb extends C2729dj {

    /* renamed from: c */
    private long f17113c;

    /* renamed from: b */
    private final Map<String, Integer> f17112b = new C0529a();

    /* renamed from: a */
    private final Map<String, Long> f17111a = new C0529a();

    public zzb(zzga zzgaVar) {
        super(zzgaVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m1891a(long j) {
        for (String str : this.f17111a.keySet()) {
            this.f17111a.put(str, Long.valueOf(j));
        }
        if (!this.f17111a.isEmpty()) {
            this.f17113c = j;
        }
    }

    /* renamed from: a */
    private final void m1890a(long j, zzif zzifVar) {
        if (zzifVar == null) {
            zzr().zzx().zza("Not logging ad exposure. No active activity");
        } else if (j < 1000) {
            zzr().zzx().zza("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putLong("_xt", j);
            zzii.zza(zzifVar, bundle, true);
            zzf().zza("am", "_xa", bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m1888a(zzb zzbVar, String str, long j) {
        zzbVar.zzb();
        zzbVar.zzd();
        Preconditions.checkNotEmpty(str);
        if (zzbVar.f17112b.isEmpty()) {
            zzbVar.f17113c = j;
        }
        Integer num = zzbVar.f17112b.get(str);
        if (num != null) {
            zzbVar.f17112b.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (zzbVar.f17112b.size() >= 100) {
            zzbVar.zzr().zzi().zza("Too many ads visible");
        } else {
            zzbVar.f17112b.put(str, 1);
            zzbVar.f17111a.put(str, Long.valueOf(j));
        }
    }

    /* renamed from: a */
    private final void m1887a(String str, long j, zzif zzifVar) {
        if (zzifVar == null) {
            zzr().zzx().zza("Not logging ad unit exposure. No active activity");
        } else if (j < 1000) {
            zzr().zzx().zza("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str);
            bundle.putLong("_xt", j);
            zzii.zza(zzifVar, bundle, true);
            zzf().zza("am", "_xu", bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ void m1886b(zzb zzbVar, String str, long j) {
        zzbVar.zzb();
        zzbVar.zzd();
        Preconditions.checkNotEmpty(str);
        Integer num = zzbVar.f17112b.get(str);
        if (num != null) {
            zzif zzab = zzbVar.zzi().zzab();
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                zzbVar.f17112b.remove(str);
                Long l = zzbVar.f17111a.get(str);
                if (l == null) {
                    zzbVar.zzr().zzf().zza("First ad unit exposure time was never set");
                } else {
                    long longValue = l.longValue();
                    zzbVar.f17111a.remove(str);
                    zzbVar.m1887a(str, j - longValue, zzab);
                }
                if (zzbVar.f17112b.isEmpty()) {
                    long j2 = zzbVar.f17113c;
                    if (j2 == 0) {
                        zzbVar.zzr().zzf().zza("First ad exposure time was never set");
                        return;
                    }
                    zzbVar.m1890a(j - j2, zzab);
                    zzbVar.f17113c = 0L;
                    return;
                }
                return;
            }
            zzbVar.f17112b.put(str, Integer.valueOf(intValue));
            return;
        }
        zzbVar.zzr().zzf().zza("Call to endAdUnitExposure for unknown ad unit id", str);
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(long j) {
        zzif zzab = zzi().zzab();
        for (String str : this.f17111a.keySet()) {
            m1887a(str, j - this.f17111a.get(str).longValue(), zzab);
        }
        if (!this.f17111a.isEmpty()) {
            m1890a(j - this.f17113c, zzab);
        }
        m1891a(j);
    }

    public final void zza(String str, long j) {
        if (str == null || str.length() == 0) {
            zzr().zzf().zza("Ad unit id must be a non-empty string");
        } else {
            zzq().zza(new RunnableC2638a(this, str, j));
        }
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    public final void zzb(String str, long j) {
        if (str == null || str.length() == 0) {
            zzr().zzf().zza("Ad unit id must be a non-empty string");
        } else {
            zzq().zza(new RunnableC2685bt(this, str, j));
        }
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzb zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzhb zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzep zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzij zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzii zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzes zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzjo zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ C2734do zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }
}
