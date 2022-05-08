package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmz.class */
public final class zzbmz<T> {

    /* renamed from: a */
    private final zzcfx f12158a;

    /* renamed from: b */
    private final zzcge f12159b;

    /* renamed from: c */
    private final zzdxp<zzdhe<zzaqk>> f12160c;

    /* renamed from: d */
    private final zzczu f12161d;

    /* renamed from: e */
    private final zzdcr f12162e;

    /* renamed from: f */
    private final zzbim f12163f;

    /* renamed from: g */
    private final zzclu<T> f12164g;

    /* renamed from: h */
    private final zzbrf f12165h;

    /* renamed from: i */
    private final zzczt f12166i;

    /* renamed from: j */
    private final zzcgu f12167j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbmz(zzcfx zzcfxVar, zzcge zzcgeVar, zzdxp<zzdhe<zzaqk>> zzdxpVar, zzczu zzczuVar, zzdcr zzdcrVar, zzbim zzbimVar, zzclu<T> zzcluVar, zzbrf zzbrfVar, zzczt zzcztVar, zzcgu zzcguVar) {
        this.f12158a = zzcfxVar;
        this.f12159b = zzcgeVar;
        this.f12160c = zzdxpVar;
        this.f12161d = zzczuVar;
        this.f12162e = zzdcrVar;
        this.f12163f = zzbimVar;
        this.f12164g = zzcluVar;
        this.f12165h = zzbrfVar;
        this.f12166i = zzcztVar;
        this.f12167j = zzcguVar;
    }

    public final zzdhe<T> zza(zzdhe<zzczt> zzdheVar) {
        zzdcj zza;
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcow)).booleanValue()) {
            zza = this.f12162e.zza((zzdcr) zzdco.RENDERER, (zzdhe) zzdheVar).zza(this.f12163f).zza(this.f12164g);
        } else {
            zza = this.f12162e.zza((zzdcr) zzdco.RENDERER, (zzdhe) zzdheVar).zza(this.f12163f).zza(this.f12164g).zza(((Integer) zzve.zzoy().zzd(zzzn.zzcox)).intValue(), TimeUnit.SECONDS);
        }
        return zza.zzaqg();
    }

    public final zzdhe<zzczt> zzagz() {
        zzdcj zza;
        zzdch zzu;
        zzdhe<zzczt> zzalt;
        zzdhe<zzaqk> zzdheVar = this.f12160c.get();
        if (this.f12166i != null) {
            zzu = this.f12162e.zzu(zzdco.SERVER_TRANSACTION);
            zzalt = zzdgs.zzaj(this.f12166i);
        } else {
            zzq.zzkw().zzmo();
            if (this.f12161d.zzgml.zzccm != null) {
                zzu = this.f12162e.zzu(zzdco.SERVER_TRANSACTION);
                zzalt = this.f12159b.zzalt();
            } else {
                zza = this.f12162e.zza((zzdcr) zzdco.SERVER_TRANSACTION, (zzdhe) zzdheVar).zza(this.f12158a);
                return zza.zzaqg();
            }
        }
        zza = zzu.zzc(zzalt);
        return zza.zzaqg();
    }

    public final zzdhe<T> zzaha() {
        return zza(zzagz());
    }

    public final zzbrf zzahb() {
        return this.f12165h;
    }
}
