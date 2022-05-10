package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpi.class */
public final class zzbpi implements zzeoy<zzawp> {

    /* renamed from: a */
    public final zzeph<Context> f25323a;

    /* renamed from: b */
    public final zzeph<zzdok> f25324b;

    public zzbpi(zzbot zzbotVar, zzeph<Context> zzephVar, zzeph<zzdok> zzephVar2) {
        this.f25323a = zzephVar;
        this.f25324b = zzephVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzawp zzawpVar = new zzawp(this.f25323a.get(), this.f25324b.get().f27644f);
        zzepe.m12187a(zzawpVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzawpVar;
    }
}
