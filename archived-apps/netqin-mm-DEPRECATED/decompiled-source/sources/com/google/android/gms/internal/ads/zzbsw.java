package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbsw.class */
public final class zzbsw implements zzeoy<zzcab<zzbuz>> {

    /* renamed from: a */
    public final zzeph<zzcmi> f25473a;

    /* renamed from: b */
    public final zzeph<Executor> f25474b;

    public zzbsw(zzeph<zzcmi> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25473a = zzephVar;
        this.f25474b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbsw m15087a(zzeph<zzcmi> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbsw(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25473a.get(), this.f25474b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
