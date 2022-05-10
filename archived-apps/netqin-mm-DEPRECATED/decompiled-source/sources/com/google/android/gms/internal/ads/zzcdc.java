package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdc.class */
public final class zzcdc implements zzeoy<Set<String>> {

    /* renamed from: a */
    public final zzeph<zzcep> f25737a;

    public zzcdc(zzeph<zzcep> zzephVar) {
        this.f25737a = zzephVar;
    }

    /* renamed from: a */
    public static Set<String> m14787a(zzcep zzcepVar) {
        Set<String> singleton = zzcepVar.m14657d() != null ? Collections.singleton("banner") : Collections.emptySet();
        zzepe.m12187a(singleton, "Cannot return null from a non-@Nullable @Provides method");
        return singleton;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m14787a(this.f25737a.get());
    }
}
