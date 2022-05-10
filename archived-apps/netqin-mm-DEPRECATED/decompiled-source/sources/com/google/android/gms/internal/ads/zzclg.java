package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclg.class */
public final class zzclg implements zzeoy<zzcab<zzbuz>> {

    /* renamed from: a */
    public final zzeph<zzcln> f26210a;

    /* renamed from: b */
    public final zzeph<Executor> f26211b;

    public zzclg(zzeph<zzcln> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26210a = zzephVar;
        this.f26211b = zzephVar2;
    }

    /* renamed from: a */
    public static zzclg m14088a(zzeph<zzcln> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzclg(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26210a.get(), this.f26211b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
