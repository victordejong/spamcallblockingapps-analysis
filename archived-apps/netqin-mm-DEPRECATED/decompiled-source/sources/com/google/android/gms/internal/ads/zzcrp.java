package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrp.class */
public final class zzcrp implements zzeoy<zzcab<zzbui>> {

    /* renamed from: a */
    public final zzeph<zzcsa> f26433a;

    /* renamed from: b */
    public final zzeph<Executor> f26434b;

    public zzcrp(zzeph<zzcsa> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26433a = zzephVar;
        this.f26434b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcrp m13908a(zzeph<zzcsa> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcrp(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26433a.get(), this.f26434b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
