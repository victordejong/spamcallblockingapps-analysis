package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnh.class */
public final class zzbnh implements zzdxg<zzavd> {

    /* renamed from: a */
    private final zzdxp<Clock> f12177a;

    /* renamed from: b */
    private final zzdxp<zzavp> f12178b;

    /* renamed from: c */
    private final zzdxp<zzczu> f12179c;

    private zzbnh(zzdxp<Clock> zzdxpVar, zzdxp<zzavp> zzdxpVar2, zzdxp<zzczu> zzdxpVar3) {
        this.f12177a = zzdxpVar;
        this.f12178b = zzdxpVar2;
        this.f12179c = zzdxpVar3;
    }

    public static zzbnh zzg(zzdxp<Clock> zzdxpVar, zzdxp<zzavp> zzdxpVar2, zzdxp<zzczu> zzdxpVar3) {
        return new zzbnh(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzavd) zzdxm.zza(this.f12178b.get().zza(this.f12177a.get(), this.f12179c.get().zzgmm), "Cannot return null from a non-@Nullable @Provides method");
    }
}
