package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeContentAd.class */
public abstract class NativeContentAd extends NativeAd {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener.class */
    public interface OnContentAdLoadedListener {
        /* renamed from: a */
        void mo18042a(NativeContentAd nativeContentAd);
    }

    /* renamed from: b */
    public abstract CharSequence mo16817b();

    /* renamed from: c */
    public abstract CharSequence mo16816c();

    /* renamed from: d */
    public abstract CharSequence mo16815d();

    /* renamed from: e */
    public abstract CharSequence mo16814e();

    /* renamed from: f */
    public abstract List<NativeAd.Image> mo16813f();

    /* renamed from: g */
    public abstract NativeAd.Image mo16812g();

    /* renamed from: h */
    public abstract VideoController mo16811h();
}
