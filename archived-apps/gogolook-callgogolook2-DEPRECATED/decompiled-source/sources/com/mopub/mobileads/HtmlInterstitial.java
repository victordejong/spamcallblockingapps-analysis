package com.mopub.mobileads;

import androidx.annotation.NonNull;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.mobileads.CustomEventInterstitial;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/HtmlInterstitial.class */
public class HtmlInterstitial extends ResponseBodyInterstitial {

    /* renamed from: e */
    public String f8468e;

    /* renamed from: f */
    public boolean f8469f;

    /* renamed from: g */
    public String f8470g;

    /* renamed from: h */
    public String f8471h;
    @NonNull

    /* renamed from: i */
    public CreativeOrientation f8472i;

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    /* renamed from: a */
    public void mo30254a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        MoPubActivity.m30549a(this, this.f8521b, this.f8522c, customEventInterstitialListener, this.f8468e, this.f8469f, this.f8470g, this.f8471h, this.f8523d);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    /* renamed from: a */
    public void mo30253a(Map<String, String> map) {
        this.f8468e = map.get("Html-Response-Body");
        this.f8469f = Boolean.valueOf(map.get("Scrollable")).booleanValue();
        this.f8470g = map.get("Redirect-Url");
        this.f8471h = map.get("Clickthrough-Url");
        this.f8472i = CreativeOrientation.fromHeader(map.get(DataKeys.CREATIVE_ORIENTATION_KEY));
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MoPubActivity.start(this.f8521b, this.f8468e, this.f8522c, this.f8469f, this.f8470g, this.f8471h, this.f8472i, this.f8523d);
    }
}
