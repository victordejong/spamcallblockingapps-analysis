package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.mopub.common.AdType;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfe.class */
public final class zzdfe implements zzdgu<Bundle> {

    /* renamed from: a */
    public final String f27226a;

    public zzdfe(String str) {
        this.f27226a = str;
    }

    /* renamed from: a */
    public static boolean m13627a(Set<String> set) {
        return set.contains("rewarded") || set.contains(AdType.INTERSTITIAL) || set.contains("native") || set.contains("banner");
    }

    @Override // com.google.android.gms.internal.ads.zzdgu
    /* renamed from: a */
    public final /* synthetic */ void mo13578a(Bundle bundle) {
        zzdot.m13393a(bundle, "omid_v", this.f27226a);
    }
}
