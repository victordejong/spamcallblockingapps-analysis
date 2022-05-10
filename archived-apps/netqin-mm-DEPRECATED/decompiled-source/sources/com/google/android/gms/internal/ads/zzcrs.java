package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrs.class */
public final class zzcrs implements zzeoy<zzcab<zzbvs>> {

    /* renamed from: a */
    public final zzeph<zzcsa> f26441a;

    /* renamed from: b */
    public final zzeph<Executor> f26442b;

    public zzcrs(zzeph<zzcsa> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26441a = zzephVar;
        this.f26442b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcrs m13906a(zzeph<zzcsa> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcrs(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26441a.get(), this.f26442b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
