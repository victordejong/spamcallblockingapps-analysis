package com.google.android.gms.internal.ads;

import com.mopub.common.AdType;
import p131c.p161d.p170b.p224d.p252g.p253a.C3434ch;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcch.class */
public final class zzcch implements zzeoy<String> {
    /* renamed from: a */
    public static zzcch m14811a() {
        zzcch zzcchVar;
        zzcchVar = C3434ch.f12559a;
        return zzcchVar;
    }

    /* renamed from: b */
    public static String m14810b() {
        zzepe.m12187a(AdType.INTERSTITIAL, "Cannot return null from a non-@Nullable @Provides method");
        return AdType.INTERSTITIAL;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return m14810b();
    }
}
