package com.google.android.gms.internal.ads;

import java.util.Set;
import p131c.p161d.p170b.p224d.p252g.p253a.C3971qz;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsq.class */
public final class zzdsq implements zzeoy<C3971qz> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<zzdso>>> f27789a;

    public zzdsq(zzeph<Set<zzcab<zzdso>>> zzephVar) {
        this.f27789a = zzephVar;
    }

    /* renamed from: a */
    public static zzdsq m13243a(zzeph<Set<zzcab<zzdso>>> zzephVar) {
        return new zzdsq(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new C3971qz(this.f27789a.get());
    }
}
