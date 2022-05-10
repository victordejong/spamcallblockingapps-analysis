package com.mopub.mobileads;

import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/HtmlInterstitial.class */
public class HtmlInterstitial extends ResponseBodyInterstitial {
    public static final String ADAPTER_NAME = "HtmlInterstitial";

    /* renamed from: g */
    public String f34103g;

    /* renamed from: h */
    public CreativeOrientation f34104h;

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    /* renamed from: a */
    public void mo4032a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, ADAPTER_NAME);
        MoPubActivity.m4388a(this, this.f34198c, this.f34199d, customEventInterstitialListener, this.f34103g, this.f34200e);
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial
    /* renamed from: a */
    public void mo4049a(Map<String, String> map) {
        map.get(DataKeys.HTML_RESPONSE_BODY_KEY);
        this.f34103g = map.get(DataKeys.CLICKTHROUGH_URL_KEY);
        this.f34104h = CreativeOrientation.fromString(map.get(DataKeys.CREATIVE_ORIENTATION_KEY));
    }

    @Override // com.mopub.mobileads.ResponseBodyInterstitial, com.mopub.mobileads.CustomEventInterstitial
    public void showInterstitial() {
        MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, ADAPTER_NAME);
        MoPubActivity.start(this.f34198c, this.f34199d, this.f34103g, this.f34104h, this.f34200e);
    }
}
