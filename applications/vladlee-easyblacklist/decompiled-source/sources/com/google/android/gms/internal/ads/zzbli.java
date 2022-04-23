package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbli.class */
public final class zzbli implements zzdxg<zzcio<zzbkk>> {

    /* renamed from: a */
    private final zzdxp<zzczu> f12089a;

    /* renamed from: b */
    private final zzdxp<zzcjr> f12090b;

    /* renamed from: c */
    private final zzdxp<zzcix> f12091c;

    public zzbli(zzdxp<zzczu> zzdxpVar, zzdxp<zzcjr> zzdxpVar2, zzdxp<zzcix> zzdxpVar3) {
        this.f12089a = zzdxpVar;
        this.f12090b = zzdxpVar2;
        this.f12091c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        zzczu zzczuVar = this.f12089a.get();
        r7 = this.f12090b.get();
        zzcix zzcixVar = this.f12091c.get();
        zzcjr zzcjrVar = zzcixVar;
        if (zzczuVar.zzaoo() != null) {
            zzcjrVar = zzcixVar;
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcjp)).booleanValue()) {
            }
        }
        return (zzcio) zzdxm.zza(zzcjrVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
