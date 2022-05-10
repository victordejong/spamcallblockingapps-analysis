package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpu.class */
public final class zzdpu implements zzeoy<Context> {

    /* renamed from: a */
    public final zzdpp f27717a;

    /* renamed from: b */
    public final zzeph<zzdpn> f27718b;

    public zzdpu(zzdpp zzdppVar, zzeph<zzdpn> zzephVar) {
        this.f27717a = zzdppVar;
        this.f27718b = zzephVar;
    }

    /* renamed from: a */
    public static Context m13324a(zzdpp zzdppVar, zzdpn zzdpnVar) {
        Context context = zzdpnVar.f27706a;
        zzepe.m12187a(context, "Cannot return null from a non-@Nullable @Provides method");
        return context;
    }

    /* renamed from: a */
    public static zzdpu m13323a(zzdpp zzdppVar, zzeph<zzdpn> zzephVar) {
        return new zzdpu(zzdppVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m13324a(this.f27717a, this.f27718b.get());
    }
}
