package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfv.class */
public abstract class zzcfv implements zzdgf<zzaqk, zzczt> {

    /* renamed from: a */
    private final zzbqs f13099a;

    public zzcfv(zzbqs zzbqsVar) {
        this.f13099a = zzbqsVar;
    }

    protected abstract zzdhe<zzczt> zze(zzaqk zzaqkVar);

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final /* synthetic */ zzdhe<zzczt> zzf(zzaqk zzaqkVar) {
        zzaqk zzaqkVar2 = zzaqkVar;
        this.f13099a.zzb(zzaqkVar2);
        zzdhe<zzczt> zze = zze(zzaqkVar2);
        zzdgs.zza(zze, new C2197rk(this), zzazd.zzdwj);
        return zze;
    }
}
