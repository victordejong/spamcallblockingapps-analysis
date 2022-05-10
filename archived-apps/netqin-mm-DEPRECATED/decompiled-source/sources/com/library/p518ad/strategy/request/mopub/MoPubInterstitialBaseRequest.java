package com.library.p518ad.strategy.request.mopub;

import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p405h.C6549b;
import p131c.p396i.p397a.p405h.C6550c;
import p131c.p396i.p397a.p405h.C6552e;
/* renamed from: com.library.ad.strategy.request.mopub.MoPubInterstitialBaseRequest */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/mopub/MoPubInterstitialBaseRequest.class */
public class MoPubInterstitialBaseRequest extends AbstractC6508d implements MoPubInterstitial.InterstitialAdListener {

    /* renamed from: t */
    public MoPubInterstitialImpl f33190t;

    /* renamed from: com.library.ad.strategy.request.mopub.MoPubInterstitialBaseRequest$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/mopub/MoPubInterstitialBaseRequest$a.class */
    public static /* synthetic */ class C8526a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f33191a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubErrorCode.values().length];
            f33191a = iArr;
            try {
                iArr[MoPubErrorCode.NETWORK_TIMEOUT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33191a[MoPubErrorCode.INTERNAL_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33191a[MoPubErrorCode.NO_FILL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public MoPubInterstitialBaseRequest(String str) {
        super("MP", str);
    }

    /* renamed from: a */
    public void m5262a(MoPubErrorCode moPubErrorCode) {
        if (!this.f20267r) {
            int i = C8526a.f33191a[moPubErrorCode.ordinal()];
            C6549b.m20532a(new C6550c(getAdInfo(), 203, (i != 1 ? i != 2 ? i != 3 ? C6552e.f20335e : C6552e.f20334d : C6552e.f20333c : C6552e.f20332b).toString()));
        }
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
        m20620a("network_failure", moPubErrorCode.toString());
        m5262a(moPubErrorCode);
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
        m20622a("network_success", m20618a(moPubInterstitial));
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
    }

    @Override // p131c.p396i.p397a.p398e.AbstractC6508d
    public boolean performLoad(int i) {
        MoPubInterstitialImpl moPubInterstitialImpl = new MoPubInterstitialImpl(getUnitId());
        this.f33190t = moPubInterstitialImpl;
        moPubInterstitialImpl.setInterstitialAdListener(this);
        this.f33190t.load();
        return true;
    }
}
