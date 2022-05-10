package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.mopub.common.DataKeys;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Numbers;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.NativeImageHelper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative.class */
public class MoPubCustomEventNative extends CustomEventNative {
    public static final String ADAPTER_NAME = "MoPubCustomEventNative";

    /* renamed from: a */
    public MoPubStaticNativeAd f34709a;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd.class */
    public static class MoPubStaticNativeAd extends StaticNativeAd {

        /* renamed from: t */
        public final Context f34710t;

        /* renamed from: u */
        public final CustomEventNative.CustomEventNativeListener f34711u;

        /* renamed from: v */
        public final JSONObject f34712v;

        /* renamed from: w */
        public final ImpressionTracker f34713w;

        /* renamed from: x */
        public final NativeClickHandler f34714x;

        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$Parameter.class */
        public enum Parameter {
            IMPRESSION_TRACKER("imptracker", true),
            CLICK_TRACKER("clktracker", true),
            TITLE("title", false),
            TEXT("text", false),
            MAIN_IMAGE("mainimage", false),
            ICON_IMAGE("iconimage", false),
            CLICK_DESTINATION("clk", false),
            FALLBACK("fallback", false),
            CALL_TO_ACTION("ctatext", false),
            STAR_RATING("starrating", false),
            PRIVACY_INFORMATION_ICON_IMAGE_URL("privacyicon", false),
            PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL("privacyclkurl", false),
            SPONSORED("sponsored", false);
            
            @VisibleForTesting
            public static final Set<String> requiredKeys = new HashSet();
            public final String name;
            public final boolean required;

            static {
                Parameter[] values;
                for (Parameter parameter : values()) {
                    if (parameter.required) {
                        requiredKeys.add(parameter.name);
                    }
                }
            }

            Parameter(String str, boolean z) {
                this.name = str;
                this.required = z;
            }

            public static Parameter from(String str) {
                Parameter[] values;
                for (Parameter parameter : values()) {
                    if (parameter.name.equals(str)) {
                        return parameter;
                    }
                }
                return null;
            }
        }

        /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$MoPubStaticNativeAd$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$MoPubStaticNativeAd$a.class */
        public class C8931a implements NativeImageHelper.ImageListener {
            public C8931a() {
            }

            @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
            public void onImagesCached() {
                if (!MoPubStaticNativeAd.this.isInvalidated()) {
                    MoPubStaticNativeAd.this.f34711u.onNativeAdLoaded(MoPubStaticNativeAd.this);
                }
            }

            @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
            public void onImagesFailedToCache(NativeErrorCode nativeErrorCode) {
                if (!MoPubStaticNativeAd.this.isInvalidated()) {
                    MoPubStaticNativeAd.this.f34711u.onNativeAdFailed(nativeErrorCode);
                }
            }
        }

        public MoPubStaticNativeAd(Context context, JSONObject jSONObject, ImpressionTracker impressionTracker, NativeClickHandler nativeClickHandler, CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.f34712v = jSONObject;
            this.f34710t = context.getApplicationContext();
            this.f34713w = impressionTracker;
            this.f34714x = nativeClickHandler;
            this.f34711u = customEventNativeListener;
        }

        /* renamed from: a */
        public final void m4001a(Parameter parameter, Object obj) throws ClassCastException {
            try {
                switch (C8932a.f34716a[parameter.ordinal()]) {
                    case 1:
                        setMainImageUrl((String) obj);
                        return;
                    case 2:
                        setIconImageUrl((String) obj);
                        return;
                    case 3:
                        m4026b(obj);
                        return;
                    case 4:
                        setClickDestinationUrl((String) obj);
                        return;
                    case 5:
                        m3997c(obj);
                        return;
                    case 6:
                        setCallToAction((String) obj);
                        return;
                    case 7:
                        setTitle((String) obj);
                        return;
                    case 8:
                        setText((String) obj);
                        return;
                    case 9:
                        setStarRating(Numbers.parseDouble(obj));
                        return;
                    case 10:
                        setPrivacyInformationIconImageUrl((String) obj);
                        return;
                    case 11:
                        setPrivacyInformationIconClickThroughUrl((String) obj);
                        return;
                    case 12:
                        setSponsored((String) obj);
                        break;
                }
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
                String str = MoPubCustomEventNative.ADAPTER_NAME;
                MoPubLog.log(adapterLogEvent, str, "Unable to add JSON key to internal mapping: " + parameter.name);
            } catch (ClassCastException e) {
                if (!parameter.required) {
                    MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str2 = MoPubCustomEventNative.ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent2, str2, "Ignoring class cast exception for optional key: " + parameter.name);
                    return;
                }
                throw e;
            }
        }

        /* renamed from: a */
        public final boolean m3999a(String str) {
            return str != null && str.toLowerCase(Locale.US).endsWith("image");
        }

        /* renamed from: a */
        public final boolean m3998a(JSONObject jSONObject) {
            HashSet hashSet = new HashSet();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                hashSet.add(keys.next());
            }
            return hashSet.containsAll(Parameter.requiredKeys);
        }

        /* renamed from: c */
        public final void m3997c(Object obj) {
            if (obj instanceof JSONArray) {
                m4028a(obj);
            } else {
                addClickTracker((String) obj);
            }
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void clear(View view) {
            this.f34713w.removeView(view);
            this.f34714x.clearOnClickListener(view);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            this.f34713w.destroy();
            super.destroy();
        }

        /* renamed from: e */
        public List<String> m3996e() {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(getMainImageUrl())) {
                arrayList.add(getMainImageUrl());
            }
            if (!TextUtils.isEmpty(getIconImageUrl())) {
                arrayList.add(getIconImageUrl());
            }
            if (!TextUtils.isEmpty(getPrivacyInformationIconImageUrl())) {
                arrayList.add(getPrivacyInformationIconImageUrl());
            }
            arrayList.addAll(m3995f());
            return arrayList;
        }

        /* renamed from: f */
        public List<String> m3995f() {
            ArrayList arrayList = new ArrayList(getExtras().size());
            for (Map.Entry<String, Object> entry : getExtras().entrySet()) {
                if (m3999a(entry.getKey()) && (entry.getValue() instanceof String)) {
                    arrayList.add((String) entry.getValue());
                }
            }
            return arrayList;
        }

        /* renamed from: g */
        public void m3994g() throws IllegalArgumentException {
            if (m3998a(this.f34712v)) {
                Iterator<String> keys = this.f34712v.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    Parameter from = Parameter.from(next);
                    if (from != null) {
                        try {
                            m4001a(from, this.f34712v.opt(next));
                        } catch (ClassCastException e) {
                            throw new IllegalArgumentException("JSONObject key (" + next + ") contained unexpected value.");
                        }
                    } else {
                        addExtra(next, this.f34712v.opt(next));
                    }
                }
                if (TextUtils.isEmpty(getPrivacyInformationIconClickThroughUrl())) {
                    setPrivacyInformationIconClickThroughUrl("https://www.mopub.com/optout");
                }
                NativeImageHelper.preCacheImages(this.f34710t, m3996e(), new C8931a());
                return;
            }
            throw new IllegalArgumentException("JSONObject did not contain required keys.");
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ClickInterface
        public void handleClick(View view) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, MoPubCustomEventNative.ADAPTER_NAME);
            m4025c();
            this.f34714x.openClickDestinationUrl(getClickDestinationUrl(), view);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void prepare(View view) {
            this.f34713w.addView(view, this);
            this.f34714x.setOnClickListener(view, this);
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ImpressionInterface
        public void recordImpression(View view) {
            m4024d();
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubCustomEventNative$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventNative$a.class */
    public static /* synthetic */ class C8932a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34716a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:49:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:43:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:61:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:53:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:47:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:41:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:59:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:51:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:45:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:39:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:57:0x0088). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubStaticNativeAd.Parameter.values().length];
            f34716a = iArr;
            try {
                iArr[MoPubStaticNativeAd.Parameter.MAIN_IMAGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34716a[MoPubStaticNativeAd.Parameter.ICON_IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34716a[MoPubStaticNativeAd.Parameter.IMPRESSION_TRACKER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34716a[MoPubStaticNativeAd.Parameter.CLICK_DESTINATION.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f34716a[MoPubStaticNativeAd.Parameter.CLICK_TRACKER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f34716a[MoPubStaticNativeAd.Parameter.CALL_TO_ACTION.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f34716a[MoPubStaticNativeAd.Parameter.TITLE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f34716a[MoPubStaticNativeAd.Parameter.TEXT.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f34716a[MoPubStaticNativeAd.Parameter.STAR_RATING.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f34716a[MoPubStaticNativeAd.Parameter.PRIVACY_INFORMATION_ICON_IMAGE_URL.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f34716a[MoPubStaticNativeAd.Parameter.PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f34716a[MoPubStaticNativeAd.Parameter.SPONSORED.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    /* renamed from: a */
    public void mo3993a() {
        MoPubStaticNativeAd moPubStaticNativeAd = this.f34709a;
        if (moPubStaticNativeAd != null) {
            moPubStaticNativeAd.invalidate();
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    /* renamed from: a */
    public void mo3992a(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, ADAPTER_NAME);
        MoPubStaticNativeAd moPubStaticNativeAd = this.f34709a;
        if (moPubStaticNativeAd == null || moPubStaticNativeAd.isInvalidated()) {
            Object obj = map.get(DataKeys.JSON_BODY_KEY);
            if (!(obj instanceof JSONObject)) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(NativeErrorCode.INVALID_RESPONSE.getIntCode()), NativeErrorCode.INVALID_RESPONSE);
                customEventNativeListener.onNativeAdFailed(NativeErrorCode.INVALID_RESPONSE);
                return;
            }
            this.f34709a = new MoPubStaticNativeAd(context, (JSONObject) obj, new ImpressionTracker(context), new NativeClickHandler(context), customEventNativeListener);
            if (map2.containsKey(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT)) {
                try {
                    this.f34709a.setImpressionMinPercentageViewed(Integer.parseInt(map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT)));
                } catch (NumberFormatException e) {
                    MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str = ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent, str, "Unable to format min visible percent: " + map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT));
                }
            }
            if (map2.containsKey(DataKeys.IMPRESSION_VISIBLE_MS)) {
                try {
                    this.f34709a.setImpressionMinTimeViewed(Integer.parseInt(map2.get(DataKeys.IMPRESSION_VISIBLE_MS)));
                } catch (NumberFormatException e2) {
                    MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str2 = ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent2, str2, "Unable to format min time: " + map2.get(DataKeys.IMPRESSION_VISIBLE_MS));
                }
            }
            if (map2.containsKey(DataKeys.IMPRESSION_MIN_VISIBLE_PX)) {
                try {
                    this.f34709a.setImpressionMinVisiblePx(Integer.valueOf(Integer.parseInt(map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PX))));
                } catch (NumberFormatException e3) {
                    MoPubLog.AdapterLogEvent adapterLogEvent3 = MoPubLog.AdapterLogEvent.CUSTOM;
                    String str3 = ADAPTER_NAME;
                    MoPubLog.log(adapterLogEvent3, str3, "Unable to format min visible px: " + map2.get(DataKeys.IMPRESSION_MIN_VISIBLE_PX));
                }
            }
            try {
                this.f34709a.m3994g();
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, ADAPTER_NAME);
            } catch (IllegalArgumentException e4) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(NativeErrorCode.UNSPECIFIED.getIntCode()), NativeErrorCode.UNSPECIFIED);
                customEventNativeListener.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
            }
        }
    }
}
