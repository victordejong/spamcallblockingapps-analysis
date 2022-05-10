package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnl.class */
public final class zzbnl implements zzeoy<Set<zzcab<zzbvs>>> {

    /* renamed from: a */
    public final zzeph<zzbqf> f25255a;

    public zzbnl(zzbnj zzbnjVar, zzeph<zzbqf> zzephVar) {
        this.f25255a = zzephVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set singleton = Collections.singleton(new zzcab(this.f25255a.get(), zzbbz.f24769f));
        zzepe.m12187a(singleton, "Cannot return null from a non-@Nullable @Provides method");
        return singleton;
    }
}
