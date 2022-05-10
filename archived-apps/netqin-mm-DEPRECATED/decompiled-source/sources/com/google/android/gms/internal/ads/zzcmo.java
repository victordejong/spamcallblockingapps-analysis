package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmo.class */
public final class zzcmo implements zzeoy<zzcab<zzbvs>> {

    /* renamed from: a */
    public final zzeph<zzcmk> f26257a;

    /* renamed from: b */
    public final zzeph<Executor> f26258b;

    public zzcmo(zzeph<zzcmk> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26257a = zzephVar;
        this.f26258b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcmo m14056a(zzeph<zzcmk> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcmo(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26257a.get(), this.f26258b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
