package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvp.class */
public final class zzbvp implements zzdxg<zzdaf<zzcaj>> {

    /* renamed from: a */
    private final zzdxp<zzcat> f12469a;

    /* renamed from: b */
    private final zzdxp<zzdhd> f12470b;

    public zzbvp(zzdxp<zzcat> zzdxpVar, zzdxp<zzdhd> zzdxpVar2) {
        this.f12469a = zzdxpVar;
        this.f12470b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzdaf) zzdxm.zza(new zzdaf(this.f12469a.get(), this.f12470b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
