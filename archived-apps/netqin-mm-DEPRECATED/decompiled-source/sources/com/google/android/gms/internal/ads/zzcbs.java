package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbs.class */
public final class zzcbs implements zzeoy<Set<zzcab<zzbuh>>> {

    /* renamed from: a */
    public final zzcbf f25685a;

    /* renamed from: b */
    public final zzeph<zzbtd> f25686b;

    public zzcbs(zzcbf zzcbfVar, zzeph<zzbtd> zzephVar) {
        this.f25685a = zzcbfVar;
        this.f25686b = zzephVar;
    }

    /* renamed from: a */
    public static zzcbs m14829a(zzcbf zzcbfVar, zzeph<zzbtd> zzephVar) {
        return new zzcbs(zzcbfVar, zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<zzbuh>> a = this.f25685a.mo14847a(this.f25686b.get());
        zzepe.m12187a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }
}
