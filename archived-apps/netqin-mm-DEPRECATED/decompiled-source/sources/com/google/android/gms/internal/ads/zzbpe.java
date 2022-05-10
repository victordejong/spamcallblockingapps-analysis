package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpe.class */
public final class zzbpe implements zzeoy<Set<zzcab<zzbvs>>> {

    /* renamed from: a */
    public final zzbot f25316a;

    /* renamed from: b */
    public final zzeph<zzbqf> f25317b;

    public zzbpe(zzbot zzbotVar, zzeph<zzbqf> zzephVar) {
        this.f25316a = zzbotVar;
        this.f25317b = zzephVar;
    }

    /* renamed from: a */
    public static Set<zzcab<zzbvs>> m15216a(zzbot zzbotVar, zzbqf zzbqfVar) {
        Set<zzcab<zzbvs>> singleton = Collections.singleton(new zzcab(zzbqfVar, zzbbz.f24769f));
        zzepe.m12187a(singleton, "Cannot return null from a non-@Nullable @Provides method");
        return singleton;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m15216a(this.f25316a, this.f25317b.get());
    }
}
