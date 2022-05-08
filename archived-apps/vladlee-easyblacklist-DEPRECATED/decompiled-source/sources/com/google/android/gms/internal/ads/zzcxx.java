package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxx.class */
public final class zzcxx implements zzdxg<zzcxt<zzcbi, zzcbb>> {

    /* renamed from: a */
    private final zzdxp<Context> f14041a;

    /* renamed from: b */
    private final zzdxp<zzdax> f14042b;

    /* renamed from: c */
    private final zzdxp<zzdbn> f14043c;

    public zzcxx(zzdxp<Context> zzdxpVar, zzdxp<zzdax> zzdxpVar2, zzdxp<zzdbn> zzdxpVar3) {
        this.f14041a = zzdxpVar;
        this.f14042b = zzdxpVar2;
        this.f14043c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        Context context = this.f14041a.get();
        return (zzcxt) zzdxm.zza(((Integer) zzve.zzoy().zzd(zzzn.zzcql)).intValue() > 0 ? new zzcxg(this.f14043c.get().zzb(zzdbh.Rewarded, context), this.f14042b.get(), new zzcxr(), new zzcxf(), zzazd.zzdwe) : new zzcxr(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
