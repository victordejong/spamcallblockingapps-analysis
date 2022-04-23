package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.MuteThisAdListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzws.class */
public final class zzws extends zzwq {

    /* renamed from: a */
    private final MuteThisAdListener f15605a;

    public zzws(MuteThisAdListener muteThisAdListener) {
        this.f15605a = muteThisAdListener;
    }

    @Override // com.google.android.gms.internal.ads.zzwn
    public final void onAdMuted() {
        this.f15605a.onAdMuted();
    }
}
