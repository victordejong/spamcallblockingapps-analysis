package com.criteo.mediation.mopub;

import android.content.Context;
import androidx.annotation.NonNull;
import com.criteo.publisher.CriteoBannerView;
import com.criteo.publisher.model.AdSize;
import com.criteo.publisher.model.BannerAdUnit;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventBanner;
import com.mopub.mobileads.MoPubErrorCode;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/criteo/mediation/mopub/CriteoBannerAdapter.class */
public class CriteoBannerAdapter extends CustomEventBanner {
    public static final String ADUNIT_ID = "adUnitId";
    public static final String CRITEO_PUBLISHER_ID = "cpId";
    public static final String MOPUB_HEIGHT = "com_mopub_ad_height";
    public static final String MOPUB_WIDTH = "com_mopub_ad_width";

    /* renamed from: c */
    public static final String f1956c = "CriteoBannerAdapter";

    /* renamed from: a */
    public CriteoBannerView f1957a;

    /* renamed from: b */
    public final C1892b f1958b;

    public CriteoBannerAdapter() {
        this(new C1892b());
    }

    @VisibleForTesting
    public CriteoBannerAdapter(@NonNull C1892b bVar) {
        this.f1958b = bVar;
    }

    /* renamed from: a */
    private AdSize m36076a(Map<String, Object> map) {
        Object obj = map.get("com_mopub_ad_height");
        Object obj2 = map.get("com_mopub_ad_width");
        if (obj == null || obj2 == null) {
            return null;
        }
        return new AdSize(((Integer) obj2).intValue(), ((Integer) obj).intValue());
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    public void loadBanner(Context context, CustomEventBanner.CustomEventBannerListener customEventBannerListener, Map<String, Object> map, Map<String, String> map2) {
        MoPubErrorCode moPubErrorCode;
        boolean z = map == null || map.isEmpty();
        boolean z2 = map2 == null || map2.isEmpty();
        if (z || z2) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, f1956c, "Server parameters are empty");
        } else {
            AdSize a = m36076a(map);
            String str = map2.get("cpId");
            if (a == null || str == null) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, f1956c, "CriteoPublisherId cannot be null");
            } else {
                String str2 = map2.get("adUnitId");
                if (str2 == null) {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, f1956c, "Missing adUnit Id");
                    moPubErrorCode = MoPubErrorCode.MISSING_AD_UNIT_ID;
                    customEventBannerListener.onBannerFailed(moPubErrorCode);
                }
                this.f1958b.m36071b(context, str);
                try {
                    this.f1957a = new CriteoBannerView(context, new BannerAdUnit(str2, a));
                    this.f1957a.setCriteoBannerAdListener(new C1889a(customEventBannerListener));
                    this.f1957a.loadAd();
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f1956c, "BannerView is loading");
                    return;
                } catch (Exception e) {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, f1956c, "Initialization failed");
                    customEventBannerListener.onBannerFailed(MoPubErrorCode.INTERNAL_ERROR);
                    return;
                }
            }
        }
        moPubErrorCode = MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR;
        customEventBannerListener.onBannerFailed(moPubErrorCode);
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    public void onInvalidate() {
        CriteoBannerView criteoBannerView = this.f1957a;
        if (criteoBannerView != null) {
            criteoBannerView.destroy();
        }
    }
}
