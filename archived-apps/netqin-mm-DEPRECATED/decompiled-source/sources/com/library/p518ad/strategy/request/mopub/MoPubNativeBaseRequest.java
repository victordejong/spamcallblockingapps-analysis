package com.library.p518ad.strategy.request.mopub;

import com.mopub.nativeads.MoPubNative;
import com.mopub.nativeads.MoPubStaticNativeAdRenderer;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p405h.C6552e;
/* renamed from: com.library.ad.strategy.request.mopub.MoPubNativeBaseRequest */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/mopub/MoPubNativeBaseRequest.class */
public class MoPubNativeBaseRequest extends AbstractC6508d<NativeAd> implements MoPubNative.MoPubNativeNetworkListener {

    /* renamed from: com.library.ad.strategy.request.mopub.MoPubNativeBaseRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/mopub/MoPubNativeBaseRequest$a.class */
    public static /* synthetic */ class C8527a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f33192a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[NativeErrorCode.values().length];
            f33192a = iArr;
            try {
                iArr[NativeErrorCode.NETWORK_TIMEOUT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33192a[NativeErrorCode.UNSPECIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33192a[NativeErrorCode.EMPTY_AD_RESPONSE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public MoPubNativeBaseRequest(String str) {
        super("MP", str);
    }

    /* renamed from: a */
    public void m5260a(NativeErrorCode nativeErrorCode) {
        int i = C8527a.f33192a[nativeErrorCode.ordinal()];
        C6549b.m20532a(new C6550c(getAdInfo(), 203, (i != 1 ? i != 2 ? i != 3 ? C6552e.f20335e : C6552e.f20334d : C6552e.f20333c : C6552e.f20332b).toString()));
    }

    @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
    public void onNativeFail(NativeErrorCode nativeErrorCode) {
        m20620a("network_failure", nativeErrorCode.toString());
        m5260a(nativeErrorCode);
    }

    @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
    public void onNativeLoad(NativeAd nativeAd) {
        m20621a("network_success", getAdResult(), m20618a(nativeAd));
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public boolean performLoad(int i) {
        MoPubNative moPubNative = new MoPubNative(C6489a.m20718b(), getUnitId(), this);
        moPubNative.registerAdRenderer(new MoPubStaticNativeAdRenderer(null));
        moPubNative.makeRequest(null, Integer.valueOf(i));
        return true;
    }
}
