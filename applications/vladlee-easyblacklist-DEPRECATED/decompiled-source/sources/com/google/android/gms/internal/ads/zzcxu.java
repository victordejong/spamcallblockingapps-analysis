package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxu.class */
public final class zzcxu implements zzdxg<zzcxt<zzbka, zzbke>> {

    /* renamed from: a */
    private final zzdxp<Context> f14038a;

    /* renamed from: b */
    private final zzdxp<zzdax> f14039b;

    /* renamed from: c */
    private final zzdxp<zzdbn> f14040c;

    public zzcxu(zzdxp<Context> zzdxpVar, zzdxp<zzdax> zzdxpVar2, zzdxp<zzdbn> zzdxpVar3) {
        this.f14038a = zzdxpVar;
        this.f14039b = zzdxpVar2;
        this.f14040c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        Context context = this.f14038a.get();
        return (zzcxt) zzdxm.zza(((Integer) zzve.zzoy().zzd(zzzn.zzcqz)).intValue() > 0 ? new zzcxg(this.f14040c.get().zzb(zzdbh.AppOpen, context), this.f14039b.get(), new zzcxr(), new zzcxf(), zzazd.zzdwe) : new zzcxr(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
