package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjo.class */
public final class zzjo extends AbstractC2713cu {

    /* renamed from: c */
    private Handler f17269c;

    /* renamed from: a */
    protected C2834hg f17267a = new C2834hg(this);

    /* renamed from: b */
    protected C2832he f17268b = new C2832he(this);

    /* renamed from: d */
    private C2824gx f17270d = new C2824gx(this);

    public zzjo(zzga zzgaVar) {
        super(zzgaVar);
    }

    /* renamed from: a */
    public static /* synthetic */ void m1737a(zzjo zzjoVar, long j) {
        zzjoVar.zzd();
        zzjoVar.m1732f();
        zzjoVar.zzr().zzx().zza("Activity resumed, time", Long.valueOf(j));
        zzjoVar.f17270d.m2043a();
        zzjoVar.f17268b.m2037a(j);
        C2834hg hgVar = zzjoVar.f17267a;
        hgVar.f17017a.zzd();
        if (hgVar.f17017a.f16804x.zzab()) {
            if (hgVar.f17017a.zzt().zza(zzap.zzas)) {
                hgVar.f17017a.zzs().f16696t.zza(false);
            }
            hgVar.m2028a(hgVar.f17017a.zzm().currentTimeMillis(), false);
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m1735b(zzjo zzjoVar, long j) {
        zzjoVar.zzd();
        zzjoVar.m1732f();
        zzjoVar.zzr().zzx().zza("Activity paused, time", Long.valueOf(j));
        zzjoVar.f17270d.m2042b();
        zzjoVar.f17268b.m2033b(j);
        C2834hg hgVar = zzjoVar.f17267a;
        if (hgVar.f17017a.zzt().zza(zzap.zzas)) {
            hgVar.f17017a.zzs().f16696t.zza(true);
        }
    }

    /* renamed from: f */
    public final void m1732f() {
        zzd();
        if (this.f17269c == null) {
            this.f17269c = new zzj(Looper.getMainLooper());
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2713cu
    /* renamed from: c */
    protected final boolean mo1734c() {
        return false;
    }

    /* renamed from: e */
    public final void m1733e() {
        zzq().zza(new RunnableC2823gw(this, zzm().elapsedRealtime()));
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final boolean zza(boolean z, boolean z2) {
        return this.f17268b.m2035a(z, z2);
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
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
