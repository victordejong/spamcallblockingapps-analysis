package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmn.class */
public final class zzcmn implements zzeoy<zzcab<zzdso>> {

    /* renamed from: a */
    public final zzeph<zzcmy> f26255a;

    /* renamed from: b */
    public final zzeph<Executor> f26256b;

    public zzcmn(zzeph<zzcmy> zzephVar, zzeph<Executor> zzephVar2) {
        this.f26255a = zzephVar;
        this.f26256b = zzephVar2;
    }

    /* renamed from: a */
    public static zzcmn m14057a(zzeph<zzcmy> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzcmn(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f26255a.get(), this.f26256b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
