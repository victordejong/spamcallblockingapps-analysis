package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcst.class */
public final class zzcst implements zzcty<Bundle> {

    /* renamed from: a */
    private final String f13828a;

    public zzcst(String str) {
        this.f13828a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ boolean m3695a(Set set) {
        return set.contains("rewarded") || set.contains("interstitial") || set.contains("native") || set.contains("banner");
    }

    @Override // com.google.android.gms.internal.ads.zzcty
    public final /* synthetic */ void zzr(Bundle bundle) {
        zzdaa.zza(bundle, "omid_v", this.f13828a);
    }
}
