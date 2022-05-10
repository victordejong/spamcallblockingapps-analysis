package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcli.class */
public final class zzcli implements zzeoy<zzcab<zzbvs>> {

    /* renamed from: a */
    public final zzeph<zzcln> f26214a;

    /* renamed from: b */
    public final zzeph<Executor> f26215b;

    public zzcli(zzeph<zzcln> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26214a = zzephVar;
        this.f26215b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcli m14086a(zzeph<zzcln> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcli(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26214a.get(), this.f26215b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
