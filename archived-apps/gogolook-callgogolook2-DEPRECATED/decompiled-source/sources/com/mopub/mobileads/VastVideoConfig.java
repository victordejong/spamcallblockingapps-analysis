package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.mopub.common.Constants;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
import p081h.p203i.p384e.AbstractC10117u;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
import p081h.p430l.p433b.C10709j;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfig.class */
public class VastVideoConfig implements Serializable {
    @AbstractC10120c(Constants.VAST_PRIVACY_ICON_IMAGE_URL)
    @AbstractC10118a

    /* renamed from: A */
    public String f8623A;
    @AbstractC10120c(Constants.VAST_PRIVACY_ICON_CLICK_URL)
    @AbstractC10118a

    /* renamed from: B */
    public String f8624B;
    @Nullable
    @AbstractC10120c(Constants.VAST_URL_CLICKTHROUGH)
    @AbstractC10118a

    /* renamed from: k */
    public String f8635k;
    @Nullable
    @AbstractC10120c(Constants.VAST_URL_NETWORK_MEDIA_FILE)
    @AbstractC10118a

    /* renamed from: l */
    public String f8636l;
    @Nullable
    @AbstractC10120c(Constants.VAST_URL_DISK_MEDIA_FILE)
    @AbstractC10118a

    /* renamed from: m */
    public String f8637m;
    @Nullable
    @AbstractC10120c(Constants.VAST_SKIP_OFFSET)
    @AbstractC10118a

    /* renamed from: n */
    public String f8638n;
    @Nullable
    @AbstractC10120c(Constants.VAST_COMPANION_AD_LANDSCAPE)
    @AbstractC10118a

    /* renamed from: o */
    public VastCompanionAdConfig f8639o;
    @Nullable
    @AbstractC10120c(Constants.VAST_COMPANION_AD_PORTRAIT)
    @AbstractC10118a

    /* renamed from: p */
    public VastCompanionAdConfig f8640p;
    @Nullable
    @AbstractC10120c(Constants.VAST_ICON_CONFIG)
    @AbstractC10118a

    /* renamed from: q */
    public C10709j f8641q;
    @Nullable
    @AbstractC10120c(Constants.VAST_CUSTOM_TEXT_CTA)
    @AbstractC10118a

    /* renamed from: s */
    public String f8643s;
    @Nullable
    @AbstractC10120c(Constants.VAST_CUSTOM_TEXT_SKIP)
    @AbstractC10118a

    /* renamed from: t */
    public String f8644t;
    @Nullable
    @AbstractC10120c(Constants.VAST_CUSTOM_CLOSE_ICON_URL)
    @AbstractC10118a

    /* renamed from: u */
    public String f8645u;
    @Nullable
    @AbstractC10120c(Constants.VAST_VIDEO_VIEWABILITY_TRACKER)
    @AbstractC10118a

    /* renamed from: v */
    public VideoViewabilityTracker f8646v;
    @AbstractC10120c(Constants.VAST_DSP_CREATIVE_ID)
    @AbstractC10118a

    /* renamed from: z */
    public String f8650z;
    @NonNull
    @AbstractC10120c(Constants.VAST_TRACKERS_IMPRESSION)
    @AbstractC10118a

    /* renamed from: a */
    public final ArrayList<VastTracker> f8625a = new ArrayList<>();
    @NonNull
    @AbstractC10120c(Constants.VAST_TRACKERS_FRACTIONAL)
    @AbstractC10118a

    /* renamed from: b */
    public final ArrayList<VastFractionalProgressTracker> f8626b = new ArrayList<>();
    @NonNull
    @AbstractC10120c(Constants.VAST_TRACKERS_ABSOLUTE)
    @AbstractC10118a

    /* renamed from: c */
    public final ArrayList<VastAbsoluteProgressTracker> f8627c = new ArrayList<>();
    @NonNull
    @AbstractC10120c(Constants.VAST_TRACKERS_PAUSE)
    @AbstractC10118a

    /* renamed from: d */
    public final ArrayList<VastTracker> f8628d = new ArrayList<>();
    @NonNull
    @AbstractC10120c(Constants.VAST_TRACKERS_RESUME)
    @AbstractC10118a

    /* renamed from: e */
    public final ArrayList<VastTracker> f8629e = new ArrayList<>();
    @NonNull
    @AbstractC10120c(Constants.VAST_TRACKERS_COMPLETE)
    @AbstractC10118a

    /* renamed from: f */
    public final ArrayList<VastTracker> f8630f = new ArrayList<>();
    @NonNull
    @AbstractC10120c(Constants.VAST_TRACKERS_CLOSE)
    @AbstractC10118a

    /* renamed from: g */
    public final ArrayList<VastTracker> f8631g = new ArrayList<>();
    @NonNull
    @AbstractC10120c(Constants.VAST_TRACKERS_SKIP)
    @AbstractC10118a

    /* renamed from: h */
    public final ArrayList<VastTracker> f8632h = new ArrayList<>();
    @NonNull
    @AbstractC10120c(Constants.VAST_TRACKERS_CLICK)
    @AbstractC10118a

    /* renamed from: i */
    public final ArrayList<VastTracker> f8633i = new ArrayList<>();
    @NonNull
    @AbstractC10120c(Constants.VAST_TRACKERS_ERROR)
    @AbstractC10118a

    /* renamed from: j */
    public final ArrayList<VastTracker> f8634j = new ArrayList<>();
    @AbstractC10120c(Constants.VAST_IS_REWARDED)
    @AbstractC10118a

    /* renamed from: r */
    public boolean f8642r = false;
    @NonNull
    @AbstractC10120c(Constants.VAST_EXTERNAL_VIEWABILITY_TRACKERS)
    @AbstractC10118a

    /* renamed from: w */
    public final Map<String, String> f8647w = new HashMap();
    @NonNull
    @AbstractC10120c(Constants.VAST_AVID_JAVASCRIPT_RESOURCES)
    @AbstractC10118a

    /* renamed from: x */
    public final Set<String> f8648x = new HashSet();
    @NonNull
    @AbstractC10120c(Constants.VAST_MOAT_IMPRESSION_PIXELS)
    @AbstractC10118a

    /* renamed from: y */
    public final Set<String> f8649y = new HashSet();

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapter.class */
    public static class VastVideoConfigTypeAdapter extends TypeAdapter<Class<?>> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        @Nullable
        public Class<?> read(@Nullable C10174a aVar) throws IOException {
            if (aVar == null) {
                return null;
            }
            if (aVar.mo13272F() == EnumC10176b.NULL) {
                aVar.mo13241p();
                return null;
            }
            try {
                return Class.forName(aVar.mo13274B());
            } catch (ClassNotFoundException e) {
                throw new IOException(e);
            }
        }

        public void write(@Nullable C10177c cVar, @Nullable Class<?> cls) throws IOException {
            if (cVar != null) {
                if (cls == null) {
                    cVar.mo13214k();
                } else {
                    cVar.mo13223d(cls.getName());
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$VastVideoConfigTypeAdapterFactory.class */
    public static class VastVideoConfigTypeAdapterFactory implements AbstractC10117u {
        @Override // p081h.p203i.p384e.AbstractC10117u
        public <T> TypeAdapter<T> create(@Nullable Gson gson, @Nullable C10173a<T> aVar) {
            if (aVar == null || !Class.class.isAssignableFrom(aVar.m13280a())) {
                return null;
            }
            return new VastVideoConfigTypeAdapter();
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoConfig$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$a.class */
    public class C3849a implements UrlHandler.ResultActions {

        /* renamed from: a */
        public final /* synthetic */ Context f8651a;

        /* renamed from: b */
        public final /* synthetic */ Integer f8652b;

        public C3849a(Context context, Integer num) {
            this.f8651a = context;
            this.f8652b = num;
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(@NonNull String str, @NonNull UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(@NonNull String str, @NonNull UrlAction urlAction) {
            if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                Bundle bundle = new Bundle();
                bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, str);
                bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, VastVideoConfig.this.f8650z);
                Intent startActivityIntent = Intents.getStartActivityIntent(this.f8651a, MoPubBrowser.class, bundle);
                try {
                    if (this.f8651a instanceof Activity) {
                        Preconditions.checkNotNull(this.f8652b);
                        ((Activity) this.f8651a).startActivityForResult(startActivityIntent, this.f8652b.intValue());
                    } else {
                        Intents.startActivity(this.f8651a, startActivityIntent);
                    }
                } catch (ActivityNotFoundException e) {
                    MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                    MoPubLog.log(sdkLogEvent, "Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                } catch (IntentNotResolvableException e2) {
                    MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
                    MoPubLog.log(sdkLogEvent2, "Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                }
            }
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoConfig$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoConfig$b.class */
    public static /* synthetic */ class C3850b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8654a = new int[VideoTrackingEvent.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            try {
                f8654a[VideoTrackingEvent.START.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f8654a[VideoTrackingEvent.FIRST_QUARTILE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f8654a[VideoTrackingEvent.MIDPOINT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f8654a[VideoTrackingEvent.THIRD_QUARTILE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f8654a[VideoTrackingEvent.COMPLETE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f8654a[VideoTrackingEvent.COMPANION_AD_VIEW.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f8654a[VideoTrackingEvent.COMPANION_AD_CLICK.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f8654a[VideoTrackingEvent.UNKNOWN.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    @Nullable
    /* renamed from: a */
    public final List<String> m30460a(@Nullable String str, @NonNull JSONArray jSONArray) {
        Preconditions.checkNotNull(jSONArray);
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            String optString = jSONArray.optString(i);
            if (optString != null) {
                arrayList.add(optString.replace(Constants.VIDEO_TRACKING_URL_MACRO, str));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m30462a(@NonNull Context context, int i, @Nullable Integer num) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.f8633i, null, Integer.valueOf(i), this.f8636l, context);
        if (!TextUtils.isEmpty(this.f8635k)) {
            new UrlHandler.Builder().withDspCreativeId(this.f8650z).withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new C3849a(context, num)).withoutMoPubBrowser().build().handleUrl(context, this.f8635k);
        }
    }

    /* renamed from: a */
    public final void m30459a(@NonNull List<String> list) {
        Preconditions.checkNotNull(list);
        if (hasCompanionAd()) {
            List<VastTracker> e = m30454e(list);
            this.f8639o.addClickTrackers(e);
            this.f8640p.addClickTrackers(e);
        }
    }

    /* renamed from: a */
    public final void m30458a(@NonNull List<String> list, float f) {
        Preconditions.checkNotNull(list);
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(new VastFractionalProgressTracker(str, f));
        }
        addFractionalTrackers(arrayList);
    }

    public void addAbsoluteTrackers(@NonNull List<VastAbsoluteProgressTracker> list) {
        Preconditions.checkNotNull(list, "absoluteTrackers cannot be null");
        this.f8627c.addAll(list);
        Collections.sort(this.f8627c);
    }

    public void addAvidJavascriptResources(@Nullable Set<String> set) {
        if (set != null) {
            this.f8648x.addAll(set);
        }
    }

    public void addClickTrackers(@NonNull List<VastTracker> list) {
        Preconditions.checkNotNull(list, "clickTrackers cannot be null");
        this.f8633i.addAll(list);
    }

    public void addCloseTrackers(@NonNull List<VastTracker> list) {
        Preconditions.checkNotNull(list, "closeTrackers cannot be null");
        this.f8631g.addAll(list);
    }

    public void addCompleteTrackers(@NonNull List<VastTracker> list) {
        Preconditions.checkNotNull(list, "completeTrackers cannot be null");
        this.f8630f.addAll(list);
    }

    public void addErrorTrackers(@NonNull List<VastTracker> list) {
        Preconditions.checkNotNull(list, "errorTrackers cannot be null");
        this.f8634j.addAll(list);
    }

    public void addExternalViewabilityTrackers(@Nullable Map<String, String> map) {
        if (map != null) {
            this.f8647w.putAll(map);
        }
    }

    public void addFractionalTrackers(@NonNull List<VastFractionalProgressTracker> list) {
        Preconditions.checkNotNull(list, "fractionalTrackers cannot be null");
        this.f8626b.addAll(list);
        Collections.sort(this.f8626b);
    }

    public void addImpressionTrackers(@NonNull List<VastTracker> list) {
        Preconditions.checkNotNull(list, "impressionTrackers cannot be null");
        this.f8625a.addAll(list);
    }

    public void addMoatImpressionPixels(@Nullable Set<String> set) {
        if (set != null) {
            this.f8649y.addAll(set);
        }
    }

    public void addPauseTrackers(@NonNull List<VastTracker> list) {
        Preconditions.checkNotNull(list, "pauseTrackers cannot be null");
        this.f8628d.addAll(list);
    }

    public void addResumeTrackers(@NonNull List<VastTracker> list) {
        Preconditions.checkNotNull(list, "resumeTrackers cannot be null");
        this.f8629e.addAll(list);
    }

    public void addSkipTrackers(@NonNull List<VastTracker> list) {
        Preconditions.checkNotNull(list, "skipTrackers cannot be null");
        this.f8632h.addAll(list);
    }

    public void addVideoTrackers(@Nullable JSONObject jSONObject) {
        if (jSONObject != null) {
            JSONArray optJSONArray = jSONObject.optJSONArray(Constants.VIDEO_TRACKING_URLS_KEY);
            JSONArray optJSONArray2 = jSONObject.optJSONArray(Constants.VIDEO_TRACKING_EVENTS_KEY);
            if (!(optJSONArray == null || optJSONArray2 == null)) {
                for (int i = 0; i < optJSONArray2.length(); i++) {
                    String optString = optJSONArray2.optString(i);
                    List<String> a = m30460a(optString, optJSONArray);
                    VideoTrackingEvent fromString = VideoTrackingEvent.Companion.fromString(optString);
                    if (!(optString == null || a == null)) {
                        switch (C3850b.f8654a[fromString.ordinal()]) {
                            case 1:
                                m30455d(a);
                                continue;
                            case 2:
                                m30458a(a, 0.25f);
                                continue;
                            case 3:
                                m30458a(a, 0.5f);
                                continue;
                            case 4:
                                m30458a(a, 0.75f);
                                continue;
                            case 5:
                                m30456c(a);
                                continue;
                            case 6:
                                m30457b(a);
                                continue;
                            case 7:
                                m30459a(a);
                                continue;
                            default:
                                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                                MoPubLog.log(sdkLogEvent, "Encountered unknown video tracking event: " + optString);
                                continue;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final void m30457b(@NonNull List<String> list) {
        Preconditions.checkNotNull(list);
        if (hasCompanionAd()) {
            List<VastTracker> e = m30454e(list);
            this.f8639o.addCreativeViewTrackers(e);
            this.f8640p.addCreativeViewTrackers(e);
        }
    }

    /* renamed from: c */
    public final void m30456c(@NonNull List<String> list) {
        Preconditions.checkNotNull(list);
        addCompleteTrackers(m30454e(list));
    }

    /* renamed from: d */
    public final void m30455d(@NonNull List<String> list) {
        Preconditions.checkNotNull(list);
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(new VastAbsoluteProgressTracker(str, 0));
        }
        addAbsoluteTrackers(arrayList);
    }

    /* renamed from: e */
    public final List<VastTracker> m30454e(@NonNull List<String> list) {
        Preconditions.checkNotNull(list);
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(new VastTracker(str));
        }
        return arrayList;
    }

    @NonNull
    public ArrayList<VastAbsoluteProgressTracker> getAbsoluteTrackers() {
        return this.f8627c;
    }

    @NonNull
    public Set<String> getAvidJavascriptResources() {
        return this.f8648x;
    }

    @Nullable
    public String getClickThroughUrl() {
        return this.f8635k;
    }

    @NonNull
    public List<VastTracker> getClickTrackers() {
        return this.f8633i;
    }

    @NonNull
    public List<VastTracker> getCloseTrackers() {
        return this.f8631g;
    }

    @NonNull
    public List<VastTracker> getCompleteTrackers() {
        return this.f8630f;
    }

    @Nullable
    public String getCustomCloseIconUrl() {
        return this.f8645u;
    }

    @Nullable
    public String getCustomCtaText() {
        return this.f8643s;
    }

    @Nullable
    public String getCustomSkipText() {
        return this.f8644t;
    }

    @Nullable
    public String getDiskMediaFileUrl() {
        return this.f8637m;
    }

    public String getDspCreativeId() {
        return this.f8650z;
    }

    @NonNull
    public List<VastTracker> getErrorTrackers() {
        return this.f8634j;
    }

    @NonNull
    public Map<String, String> getExternalViewabilityTrackers() {
        return this.f8647w;
    }

    @NonNull
    public ArrayList<VastFractionalProgressTracker> getFractionalTrackers() {
        return this.f8626b;
    }

    @NonNull
    public List<VastTracker> getImpressionTrackers() {
        return this.f8625a;
    }

    @NonNull
    public Set<String> getMoatImpressionPixels() {
        return this.f8649y;
    }

    @Nullable
    public String getNetworkMediaFileUrl() {
        return this.f8636l;
    }

    @NonNull
    public List<VastTracker> getPauseTrackers() {
        return this.f8628d;
    }

    @Nullable
    public String getPrivacyInformationIconClickthroughUrl() {
        return this.f8624B;
    }

    @Nullable
    public String getPrivacyInformationIconImageUrl() {
        return this.f8623A;
    }

    public int getRemainingProgressTrackerCount() {
        return getUntriggeredTrackersBefore(Integer.MAX_VALUE, Integer.MAX_VALUE).size();
    }

    @NonNull
    public List<VastTracker> getResumeTrackers() {
        return this.f8629e;
    }

    @Nullable
    public Integer getSkipOffsetMillis(int i) {
        Integer num;
        String str = this.f8638n;
        if (str == null) {
            return null;
        }
        if (VastAbsoluteProgressTracker.isAbsoluteTracker(str)) {
            num = VastAbsoluteProgressTracker.parseAbsoluteOffset(this.f8638n);
        } else if (VastFractionalProgressTrackerTwo.Companion.isPercentageTracker(this.f8638n)) {
            num = Integer.valueOf(Math.round(i * (Float.parseFloat(this.f8638n.replace("%", "")) / 100.0f)));
        } else {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Invalid VAST skipoffset format: %s", this.f8638n));
            return null;
        }
        if (num != null) {
            return num.intValue() < i ? num : Integer.valueOf(i);
        }
        return null;
    }

    @Nullable
    public String getSkipOffsetString() {
        return this.f8638n;
    }

    @NonNull
    public List<VastTracker> getSkipTrackers() {
        return this.f8632h;
    }

    @NonNull
    public List<VastTracker> getUntriggeredTrackersBefore(int i, int i2) {
        if (!Preconditions.NoThrow.checkArgument(i2 > 0) || i < 0) {
            return Collections.emptyList();
        }
        float f = i / i2;
        ArrayList arrayList = new ArrayList();
        VastAbsoluteProgressTracker vastAbsoluteProgressTracker = new VastAbsoluteProgressTracker("", i);
        int size = this.f8627c.size();
        for (int i3 = 0; i3 < size; i3++) {
            VastAbsoluteProgressTracker vastAbsoluteProgressTracker2 = this.f8627c.get(i3);
            if (vastAbsoluteProgressTracker2.compareTo(vastAbsoluteProgressTracker) > 0) {
                break;
            }
            if (!vastAbsoluteProgressTracker2.isTracked()) {
                arrayList.add(vastAbsoluteProgressTracker2);
            }
        }
        VastFractionalProgressTracker vastFractionalProgressTracker = new VastFractionalProgressTracker("", f);
        int size2 = this.f8626b.size();
        for (int i4 = 0; i4 < size2; i4++) {
            VastFractionalProgressTracker vastFractionalProgressTracker2 = this.f8626b.get(i4);
            if (vastFractionalProgressTracker2.compareTo(vastFractionalProgressTracker) > 0) {
                break;
            }
            if (!vastFractionalProgressTracker2.isTracked()) {
                arrayList.add(vastFractionalProgressTracker2);
            }
        }
        return arrayList;
    }

    @Nullable
    public VastCompanionAdConfig getVastCompanionAd(int i) {
        return i != 1 ? i != 2 ? this.f8639o : this.f8639o : this.f8640p;
    }

    @Nullable
    public C10709j getVastIconConfig() {
        return this.f8641q;
    }

    @Nullable
    public VideoViewabilityTracker getVideoViewabilityTracker() {
        return this.f8646v;
    }

    public void handleClickForResult(@NonNull Activity activity, int i, int i2) {
        m30462a(activity, i, Integer.valueOf(i2));
    }

    public void handleClickWithoutResult(@NonNull Context context, int i) {
        m30462a(context.getApplicationContext(), i, null);
    }

    public void handleClose(@NonNull Context context, int i) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.f8631g, null, Integer.valueOf(i), this.f8636l, context);
    }

    public void handleComplete(@NonNull Context context, int i) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.f8630f, null, Integer.valueOf(i), this.f8636l, context);
    }

    public void handleError(@NonNull Context context, @Nullable VastErrorCode vastErrorCode, int i) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.f8634j, vastErrorCode, Integer.valueOf(i), this.f8636l, context);
    }

    public void handleImpression(@NonNull Context context, int i) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.f8625a, null, Integer.valueOf(i), this.f8636l, context);
    }

    public void handlePause(@NonNull Context context, int i) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.f8628d, null, Integer.valueOf(i), this.f8636l, context);
    }

    public void handleResume(@NonNull Context context, int i) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.f8629e, null, Integer.valueOf(i), this.f8636l, context);
    }

    public void handleSkip(@NonNull Context context, int i) {
        Preconditions.checkNotNull(context, "context cannot be null");
        TrackingRequest.makeVastTrackingHttpRequest(this.f8632h, null, Integer.valueOf(i), this.f8636l, context);
    }

    public boolean hasCompanionAd() {
        return (this.f8639o == null || this.f8640p == null) ? false : true;
    }

    public boolean isRewardedVideo() {
        return this.f8642r;
    }

    public void setClickThroughUrl(@Nullable String str) {
        this.f8635k = str;
    }

    public void setCustomCloseIconUrl(@Nullable String str) {
        if (str != null) {
            this.f8645u = str;
        }
    }

    public void setCustomCtaText(@Nullable String str) {
        if (str != null) {
            this.f8643s = str;
        }
    }

    public void setCustomSkipText(@Nullable String str) {
        if (str != null) {
            this.f8644t = str;
        }
    }

    public void setDiskMediaFileUrl(@Nullable String str) {
        this.f8637m = str;
    }

    public void setDspCreativeId(@NonNull String str) {
        this.f8650z = str;
    }

    public void setIsRewardedVideo(boolean z) {
        this.f8642r = z;
    }

    public void setNetworkMediaFileUrl(@Nullable String str) {
        this.f8636l = str;
    }

    public void setPrivacyInformationIconClickthroughUrl(@Nullable String str) {
        this.f8624B = str;
    }

    public void setPrivacyInformationIconImageUrl(@Nullable String str) {
        this.f8623A = str;
    }

    public void setSkipOffset(@Nullable String str) {
        if (str != null) {
            this.f8638n = str;
        }
    }

    public void setVastCompanionAd(@Nullable VastCompanionAdConfig vastCompanionAdConfig, @Nullable VastCompanionAdConfig vastCompanionAdConfig2) {
        this.f8639o = vastCompanionAdConfig;
        this.f8640p = vastCompanionAdConfig2;
    }

    public void setVastIconConfig(@Nullable C10709j jVar) {
        this.f8641q = jVar;
    }

    public void setVideoViewabilityTracker(@Nullable VideoViewabilityTracker videoViewabilityTracker) {
        if (videoViewabilityTracker != null) {
            this.f8646v = videoViewabilityTracker;
        }
    }
}
