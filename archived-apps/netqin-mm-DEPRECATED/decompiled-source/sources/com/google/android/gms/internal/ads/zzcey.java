package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcey.class */
public final class zzcey implements zzeoy<zzawp> {

    /* renamed from: a */
    public final zzeph<Context> f25894a;

    /* renamed from: b */
    public final zzeph<zzdok> f25895b;

    public zzcey(zzceu zzceuVar, zzeph<Context> zzephVar, zzeph<zzdok> zzephVar2) {
        this.f25894a = zzephVar;
        this.f25895b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcey m14642a(zzceu zzceuVar, zzeph<Context> zzephVar, zzeph<zzdok> zzephVar2) {
        return new zzcey(zzceuVar, zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzawp zzawpVar = new zzawp(this.f25894a.get(), this.f25895b.get().f27644f);
        zzepe.m12187a(zzawpVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzawpVar;
    }
}
