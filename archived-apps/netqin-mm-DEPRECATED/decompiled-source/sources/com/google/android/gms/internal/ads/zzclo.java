package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclo.class */
public final class zzclo implements zzeoy<Set<zzcab<zzdso>>> {

    /* renamed from: a */
    public final zzeph<Executor> f26218a;

    /* renamed from: b */
    public final zzeph<zzcme> f26219b;

    public zzclo(zzeph<Executor> zzephVar, zzeph<zzcme> zzephVar2) {
        this.f26218a = zzephVar;
        this.f26219b = zzephVar2;
    }

    /* renamed from: a */
    public static zzclo m14077a(zzeph<Executor> zzephVar, zzeph<zzcme> zzephVar2) {
        return new zzclo(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Executor executor = this.f26218a.get();
        Set singleton = ((Boolean) zzwm.m11166e().m16921a(zzabb.f23865o2)).booleanValue() ? Collections.singleton(new zzcab(this.f26219b.get(), executor)) : Collections.emptySet();
        zzepe.m12187a(singleton, "Cannot return null from a non-@Nullable @Provides method");
        return singleton;
    }
}
