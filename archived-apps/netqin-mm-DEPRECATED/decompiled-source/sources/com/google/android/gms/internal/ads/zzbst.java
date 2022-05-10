package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbst.class */
public final class zzbst implements zzeoy<zzcab<zzux>> {

    /* renamed from: a */
    public final zzeph<zzcmi> f25468a;

    /* renamed from: b */
    public final zzeph<Executor> f25469b;

    public zzbst(zzeph<zzcmi> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25468a = zzephVar;
        this.f25469b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbst m15090a(zzeph<zzcmi> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbst(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25468a.get(), this.f25469b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
