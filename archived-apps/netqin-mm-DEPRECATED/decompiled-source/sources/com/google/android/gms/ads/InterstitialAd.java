package com.google.android.gms.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzux;
import com.google.android.gms.internal.ads.zzza;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/InterstitialAd.class */
public final class InterstitialAd {

    /* renamed from: a */
    public final zzza f22667a;

    public InterstitialAd(Context context) {
        this.f22667a = new zzza(context);
        Preconditions.m17287a(context, "Context cannot be null");
    }

    /* renamed from: a */
    public final AdListener m18117a() {
        return this.f22667a.m11017a();
    }

    /* renamed from: a */
    public final void m18116a(AdListener adListener) {
        this.f22667a.m11016a(adListener);
        if (adListener != null && (adListener instanceof zzux)) {
            this.f22667a.m11013a((zzux) adListener);
        } else if (adListener == null) {
            this.f22667a.m11013a((zzux) null);
        }
    }

    /* renamed from: a */
    public final void m18115a(AdRequest adRequest) {
        this.f22667a.m11012a(adRequest.m18148a());
    }

    /* renamed from: a */
    public final void m18114a(AdMetadataListener adMetadataListener) {
        this.f22667a.m11015a(adMetadataListener);
    }

    /* renamed from: a */
    public final void m18113a(RewardedVideoAdListener rewardedVideoAdListener) {
        this.f22667a.m11014a(rewardedVideoAdListener);
    }

    /* renamed from: a */
    public final void m18112a(String str) {
        this.f22667a.m11011a(str);
    }

    /* renamed from: a */
    public final void m18111a(boolean z) {
        this.f22667a.m11010a(z);
    }

    /* renamed from: b */
    public final Bundle m18110b() {
        return this.f22667a.m11009b();
    }

    /* renamed from: b */
    public final void m18109b(boolean z) {
        this.f22667a.m11007b(true);
    }

    /* renamed from: c */
    public final boolean m18108c() {
        return this.f22667a.m11006c();
    }

    /* renamed from: d */
    public final void m18107d() {
        this.f22667a.m11005d();
    }
}
