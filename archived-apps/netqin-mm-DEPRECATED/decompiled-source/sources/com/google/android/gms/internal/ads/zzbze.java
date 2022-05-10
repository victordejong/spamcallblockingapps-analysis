package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbze.class */
public final class zzbze implements zzeoy<Set<zzcab<zzbuz>>> {

    /* renamed from: a */
    public final zzbys f25632a;

    public zzbze(zzbys zzbysVar) {
        this.f25632a = zzbysVar;
    }

    /* renamed from: a */
    public static zzbze m14886a(zzbys zzbysVar) {
        return new zzbze(zzbysVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        Set<zzcab<zzbuz>> h = this.f25632a.m14928h();
        zzepe.m12187a(h, "Cannot return null from a non-@Nullable @Provides method");
        return h;
    }
}
