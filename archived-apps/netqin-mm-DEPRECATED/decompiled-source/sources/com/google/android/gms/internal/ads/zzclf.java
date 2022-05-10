package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclf.class */
public final class zzclf implements zzeoy<zzcab<zzbyo>> {

    /* renamed from: a */
    public final zzeph<zzcln> f26208a;

    /* renamed from: b */
    public final zzeph<Executor> f26209b;

    public zzclf(zzeph<zzcln> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26208a = zzephVar;
        this.f26209b = zzephVar2;
    }

    /* renamed from: a */
    public static zzclf m14089a(zzeph<zzcln> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzclf(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26208a.get(), this.f26209b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
