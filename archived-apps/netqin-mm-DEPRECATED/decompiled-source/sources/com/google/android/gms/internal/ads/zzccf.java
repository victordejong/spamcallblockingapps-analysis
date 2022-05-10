package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzua;
import p131c.p161d.p170b.p224d.p252g.p253a.C3396bh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccf.class */
public final class zzccf implements zzeoy<zzua.zza.EnumC10505zza> {
    /* renamed from: a */
    public static zzccf m14812a() {
        zzccf zzccfVar;
        zzccfVar = C3396bh.f12476a;
        return zzccfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzua.zza.EnumC10505zza zzaVar = zzua.zza.EnumC10505zza.INTERSTITIAL;
        zzepe.m12187a(zzaVar, "Cannot return null from a non-@Nullable @Provides method");
        return zzaVar;
    }
}
