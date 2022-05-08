package com.criteo.mediation.mopub.advancednative;

import android.view.View;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.advancednative.CriteoNativeAd;
import com.criteo.publisher.advancednative.CriteoNativeAdListener;
import com.mopub.nativeads.BaseNativeAd;
/* loaded from: classes-dex2jar.jar:com/criteo/mediation/mopub/advancednative/CriteoBaseNativeAd.class */
public class CriteoBaseNativeAd extends BaseNativeAd {
    @NonNull

    /* renamed from: a */
    public final CriteoNativeAd f1968a;
    @Nullable
    @Keep
    public CriteoNativeAdListener listener;

    public CriteoBaseNativeAd(@NonNull CriteoNativeAd criteoNativeAd, @NonNull C1890a aVar) {
        this.f1968a = criteoNativeAd;
        this.listener = aVar;
    }

    @NonNull
    /* renamed from: a */
    public CriteoNativeAd m36075a() {
        return this.f1968a;
    }

    /* renamed from: b */
    public void m36074b() {
        notifyAdClicked();
    }

    /* renamed from: c */
    public void m36073c() {
        notifyAdImpressed();
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void clear(@NonNull View view) {
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void destroy() {
        this.listener = null;
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void prepare(@NonNull View view) {
    }
}
