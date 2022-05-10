package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbj.class */
public final class zzdbj implements zzeoy<Set<String>> {

    /* renamed from: a */
    public final zzdbd f26875a;

    public zzdbj(zzdbd zzdbdVar) {
        this.f26875a = zzdbdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<String> a = this.f26875a.m13669a();
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
