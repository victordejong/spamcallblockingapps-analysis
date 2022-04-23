package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.ShouldDelayBannerRenderingListener;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyu.class */
public final class zzyu extends zzadz {

    /* renamed from: a */
    private final ShouldDelayBannerRenderingListener f15694a;

    public zzyu(ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
        this.f15694a = shouldDelayBannerRenderingListener;
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final boolean zzm(IObjectWrapper iObjectWrapper) {
        return this.f15694a.shouldDelayBannerRendering((Runnable) ObjectWrapper.unwrap(iObjectWrapper));
    }
}
