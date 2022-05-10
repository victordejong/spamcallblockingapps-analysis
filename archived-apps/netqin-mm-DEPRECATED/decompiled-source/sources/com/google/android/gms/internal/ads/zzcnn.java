package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnn.class */
public final class zzcnn implements zzeoy<Set<zzcab<zzux>>> {

    /* renamed from: a */
    public final zzeph<zzcns> f26305a;

    /* renamed from: b */
    public final zzeph<Executor> f26306b;

    public zzcnn(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26305a = zzephVar;
        this.f26306b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcnn m14008a(zzcni zzcniVar, zzeph<zzcns> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcnn(zzcniVar, zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<zzux>> g = zzcni.m14016g(this.f26305a.get(), this.f26306b.get());
        zzepe.m12187a(g, "Cannot return null from a non-@Nullable @Provides method");
        return g;
    }
}
