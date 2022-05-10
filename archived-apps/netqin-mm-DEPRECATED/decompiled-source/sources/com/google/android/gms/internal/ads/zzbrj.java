package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbrj.class */
public final class zzbrj implements zzeoy<zzcab<zzbuz>> {

    /* renamed from: a */
    public final zzeph<zzbwg> f25403a;

    /* renamed from: b */
    public final zzeph<Executor> f25404b;

    public zzbrj(zzeph<zzbwg> zzephVar, zzeph<Executor> zzephVar2) {
        this.f25403a = zzephVar;
        this.f25404b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbrj m15132a(zzeph<zzbwg> zzephVar, zzeph<Executor> zzephVar2) {
        return new zzbrj(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzcab zzcabVar = new zzcab(this.f25403a.get(), this.f25404b.get());
        zzepe.m12187a(zzcabVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzcabVar;
    }
}
