package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.ads.AbstractC2237Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdListener;
import com.mopub.nativeads.CustomEventNative;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p081h.p160h.p161a.p165k.C6219a;
import p081h.p160h.p161a.p165k.C6232c;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/FacebookNative.class */
public class FacebookNative extends BaseCustomEventNative {

    /* renamed from: e */
    public static final String f9060e = "FacebookNative";

    /* renamed from: com.mopub.nativeads.FacebookNative$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/FacebookNative$a.class */
    public class C3951a implements AudienceNetworkAds.InitListener {

        /* renamed from: a */
        public final /* synthetic */ Context f9061a;

        /* renamed from: b */
        public final /* synthetic */ String f9062b;

        /* renamed from: c */
        public final /* synthetic */ boolean f9063c;

        /* renamed from: d */
        public final /* synthetic */ boolean f9064d;

        /* renamed from: e */
        public final /* synthetic */ List f9065e;

        /* renamed from: f */
        public final /* synthetic */ CustomEventNative.CustomEventNativeListener f9066f;

        public C3951a(Context context, String str, boolean z, boolean z2, List list, CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.f9061a = context;
            this.f9062b = str;
            this.f9063c = z;
            this.f9064d = z2;
            this.f9065e = list;
            this.f9066f = customEventNativeListener;
        }

        @Override // com.facebook.ads.AudienceNetworkAds.InitListener
        public void onInitialized(AudienceNetworkAds.InitResult initResult) {
            String unused = FacebookNative.f9060e;
            String str = "AudienceNetworkAdsSDK init result: " + initResult.getMessage();
            if (initResult.isSuccess()) {
                FacebookNative.this.m30186a(this.f9061a, this.f9062b, this.f9063c, this.f9064d, this.f9065e, this.f9066f);
                return;
            }
            String str2 = FacebookNative.f9060e;
            FacebookNative facebookNative = FacebookNative.this;
            C6219a.m23549a(str2, facebookNative.f9010b, facebookNative.f9011c, NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR.toString());
            this.f9066f.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
        }
    }

    /* renamed from: com.mopub.nativeads.FacebookNative$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/FacebookNative$b.class */
    public static class C3952b {
        /* renamed from: a */
        public static MediaView m30181a(@NonNull Context context, @NonNull View view, @IdRes int i) {
            return m30180a(context, (RelativeLayout) view.findViewById(i));
        }

        /* renamed from: a */
        public static MediaView m30180a(@NonNull Context context, @NonNull ViewGroup viewGroup) {
            viewGroup.removeAllViews();
            MediaView mediaView = new MediaView(context);
            mediaView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            viewGroup.addView(mediaView);
            mediaView.setVisibility(0);
            viewGroup.setVisibility(0);
            return mediaView;
        }
    }

    /* renamed from: com.mopub.nativeads.FacebookNative$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/FacebookNative$c.class */
    public static class C3953c extends StaticNativeAd implements NativeAdListener {

        /* renamed from: p */
        public final Context f9068p;
        @NonNull

        /* renamed from: q */
        public final NativeAd f9069q;

        /* renamed from: r */
        public final CustomEventNative.CustomEventNativeListener f9070r;

        /* renamed from: s */
        public boolean f9071s;

        /* renamed from: t */
        public MediaView f9072t = null;

        /* renamed from: u */
        public boolean f9073u;

        /* renamed from: v */
        public C6260a f9074v;
        @Nullable

        /* renamed from: w */
        public List<String> f9075w;
        @NonNull

        /* renamed from: x */
        public String f9076x;
        @NonNull

        /* renamed from: y */
        public String f9077y;

        public C3953c(Context context, Boolean bool, Boolean bool2, NativeAd nativeAd, @NonNull String str, @NonNull String str2, C6260a aVar, List<String> list, CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.f9071s = false;
            this.f9073u = false;
            this.f9074v = null;
            this.f9075w = null;
            this.f9068p = context.getApplicationContext();
            this.f9069q = nativeAd;
            this.f9076x = str;
            this.f9077y = str2;
            this.f9074v = aVar;
            this.f9071s = bool.booleanValue();
            this.f9073u = bool2.booleanValue();
            this.f9075w = list;
            this.f9070r = customEventNativeListener;
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void clear(@NonNull View view) {
            this.f9069q.unregisterView();
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            super.destroy();
            MediaView mediaView = this.f9072t;
            if (mediaView != null) {
                mediaView.destroy();
                this.f9072t = null;
            }
            this.f9069q.destroy();
        }

        @NonNull
        public NativeAd getNativeAd() {
            return this.f9069q;
        }

        @Nullable
        public List<String> getUnclickableAreas() {
            return this.f9075w;
        }

        public boolean isVideoAdEnable() {
            return this.f9071s;
        }

        public void loadAd() {
            if (this.f9073u) {
                try {
                    AdSettings.addTestDevice(C6232c.m23510b(this.f9068p));
                } catch (Exception e) {
                }
            }
            C6260a aVar = this.f9074v;
            if (aVar != null) {
                aVar.m23456j();
            }
            this.f9069q.setAdListener(this);
            this.f9069q.loadAd();
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC2237Ad ad) {
            notifyAdClicked();
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC2237Ad ad) {
            if (!this.f9069q.equals(ad) || !this.f9069q.isAdLoaded()) {
                C6260a aVar = this.f9074v;
                if (aVar != null) {
                    aVar.m23467b(C6260a.m23469a(NativeErrorCode.NETWORK_INVALID_STATE.name(), null));
                }
                C6219a.m23549a("FacebookStaticNativeAd", this.f9076x, this.f9077y, NativeErrorCode.NETWORK_INVALID_STATE.toString());
                this.f9070r.onNativeAdFailed(NativeErrorCode.NETWORK_INVALID_STATE);
                return;
            }
            C6260a aVar2 = this.f9074v;
            if (aVar2 != null) {
                aVar2.m23467b(C6262a.EnumC6263a.NETWORK_FILL.name());
            }
            setTitle(this.f9069q.getAdvertiserName());
            setText(this.f9069q.getAdBodyText());
            setCallToAction(this.f9069q.getAdCallToAction());
            addExtra("socialContextForAd", this.f9069q.getAdSocialContext());
            setPrivacyInformationIconImageUrl(this.f9069q.getAdChoicesImageUrl());
            setPrivacyInformationIconClickThroughUrl(this.f9069q.getAdChoicesLinkUrl());
            ArrayList arrayList = new ArrayList();
            if (getMainImageUrl() != null) {
                arrayList.add(getMainImageUrl());
            }
            if (getIconImageUrl() != null) {
                arrayList.add(getIconImageUrl());
            }
            String privacyInformationIconImageUrl = getPrivacyInformationIconImageUrl();
            if (privacyInformationIconImageUrl != null) {
                arrayList.add(privacyInformationIconImageUrl);
            }
            this.f9070r.onNativeAdLoaded(this);
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC2237Ad ad, AdError adError) {
            NativeErrorCode nativeErrorCode = NativeErrorCode.UNSPECIFIED;
            NativeErrorCode nativeErrorCode2 = nativeErrorCode;
            if (adError != null) {
                if (adError.getErrorCode() == AdError.NO_FILL.getErrorCode()) {
                    nativeErrorCode2 = NativeErrorCode.NETWORK_NO_FILL;
                } else {
                    nativeErrorCode2 = nativeErrorCode;
                    if (adError.getErrorCode() == AdError.INTERNAL_ERROR.getErrorCode()) {
                        nativeErrorCode2 = NativeErrorCode.NETWORK_INVALID_STATE;
                    }
                }
            }
            if (this.f9074v != null) {
                String str = null;
                if (nativeErrorCode2 == NativeErrorCode.UNSPECIFIED) {
                    str = null;
                    if (adError != null) {
                        str = "adErrorMessage: " + adError.getErrorMessage() + ", adErrorCode: " + adError.getErrorCode();
                    }
                }
                this.f9074v.m23467b(C6260a.m23469a(nativeErrorCode2.name(), str));
            }
            C6219a.m23549a("FacebookStaticNativeAd", this.f9076x, this.f9077y, nativeErrorCode2.toString());
            this.f9070r.onNativeAdFailed(nativeErrorCode2);
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC2237Ad ad) {
            notifyAdImpressed();
        }

        @Override // com.facebook.ads.NativeAdListener
        public void onMediaDownloaded(AbstractC2237Ad ad) {
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void prepare(@NonNull View view) {
        }
    }

    /* renamed from: c */
    public static boolean m30182c(Map<String, String> map) {
        String str = map.get("video_enabled");
        return TextUtils.isEmpty(str) || Boolean.parseBoolean(str);
    }

    /* renamed from: a */
    public final String m30184a(Map<String, String> map, boolean z) {
        String str = map.get("placement_id");
        String str2 = map.get("new_placement_id");
        if (!TextUtils.isEmpty(str2) && z) {
            return str2;
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        return null;
    }

    /* renamed from: a */
    public final void m30186a(@NonNull Context context, @NonNull String str, boolean z, boolean z2, @Nullable List<String> list, CustomEventNative.CustomEventNativeListener customEventNativeListener) {
        new C3953c(context, Boolean.valueOf(z), Boolean.valueOf(z2), new NativeAd(context, str), this.f9010b, this.f9011c, this.f9009a, list, customEventNativeListener).loadAd();
    }

    @Override // com.mopub.nativeads.BaseCustomEventNative, com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        super.loadNativeAd(context, customEventNativeListener, map, map2);
        C6260a aVar = this.f9009a;
        if (aVar != null) {
            aVar.m23470a(FacebookNative.class.getName());
        }
        boolean c = m30182c(map2);
        String a = m30184a(map2, c);
        boolean isValidUsingTestAdSource = isValidUsingTestAdSource(map2);
        List<String> unclickableAreas = getUnclickableAreas(map2);
        if (a == null) {
            C6219a.m23549a(f9060e, this.f9010b, this.f9011c, NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR.toString());
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
        } else if (!AudienceNetworkAds.isInitialized(context)) {
            AdSettings.setIntegrationErrorMode(AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CALLBACK_MODE);
            AudienceNetworkAds.buildInitSettings(context).withInitListener(new C3951a(context, a, c, isValidUsingTestAdSource, unclickableAreas, customEventNativeListener)).initialize();
        } else {
            m30186a(context, a, c, isValidUsingTestAdSource, unclickableAreas, customEventNativeListener);
        }
    }
}
