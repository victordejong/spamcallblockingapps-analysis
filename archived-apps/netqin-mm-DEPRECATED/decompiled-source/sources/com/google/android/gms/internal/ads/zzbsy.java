package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.C3727kd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsy.class */
public final class zzbsy implements zzeoy<zzcab<zzbvs>> {

    /* renamed from: a */
    public final zzeph<C3727kd> f25480a;

    public zzbsy(zzbsj zzbsjVar, zzeph<C3727kd> zzephVar) {
        this.f25480a = zzephVar;
    }

    /* renamed from: a */
    public static zzbsy m15086a(zzbsj zzbsjVar, zzeph<C3727kd> zzephVar) {
        return new zzbsy(zzbsjVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25480a.get(), zzbbz.f24769f);
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
