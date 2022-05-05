package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyn.class */
public final class zzyn extends zzwy {

    /* renamed from: a */
    private final OnAdMetadataChangedListener f15690a;

    public zzyn(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.f15690a = onAdMetadataChangedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzwv
    public final void onAdMetadataChanged() {
        OnAdMetadataChangedListener onAdMetadataChangedListener = this.f15690a;
        if (onAdMetadataChangedListener != null) {
            onAdMetadataChangedListener.onAdMetadataChanged();
        }
    }
}
