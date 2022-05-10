package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/UnifiedNativeAd.class */
public abstract class UnifiedNativeAd {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener.class */
    public interface OnUnifiedNativeAdLoadedListener {
        void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener.class */
    public interface UnconfirmedClickListener {
        /* renamed from: g */
        void m18035g(String str);

        /* renamed from: s0 */
        void m18034s0();
    }

    /* renamed from: a */
    public abstract void mo16794a();

    /* renamed from: b */
    public abstract String mo16793b();

    /* renamed from: c */
    public abstract String mo16792c();

    /* renamed from: d */
    public abstract String mo16791d();

    /* renamed from: e */
    public abstract String mo16790e();

    /* renamed from: f */
    public abstract NativeAd.Image mo16789f();

    /* renamed from: g */
    public abstract List<NativeAd.Image> mo16788g();

    /* renamed from: h */
    public abstract String mo16787h();

    /* renamed from: i */
    public abstract Double mo16786i();

    /* renamed from: j */
    public abstract String mo16785j();

    @Deprecated
    /* renamed from: k */
    public abstract VideoController mo16784k();

    /* renamed from: l */
    public abstract Object mo16783l();

    /* renamed from: m */
    public abstract Object mo16782m();
}
