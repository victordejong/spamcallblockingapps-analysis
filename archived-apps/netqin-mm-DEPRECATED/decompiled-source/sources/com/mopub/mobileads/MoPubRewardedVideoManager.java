package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowInsets;
import com.applovin.sdk.AppLovinEventParameters;
import com.mopub.common.AdReport;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.DataKeys;
import com.mopub.common.MediationSettings;
import com.mopub.common.MoPub;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.SharedPreferencesHelper;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import com.mopub.common.util.MoPubCollections;
import com.mopub.common.util.Reflection;
import com.mopub.common.util.ReflectionTarget;
import com.mopub.common.util.Utils;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.NoConnectionError;
import com.mopub.volley.VolleyError;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p421j.p424b.C6656h;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager.class */
public class MoPubRewardedVideoManager {
    public static final int API_VERSION = 1;

    /* renamed from: k */
    public static MoPubRewardedVideoManager f34141k;

    /* renamed from: l */
    public static SharedPreferences f34142l;

    /* renamed from: b */
    public WeakReference<Activity> f34144b;

    /* renamed from: c */
    public final Context f34145c;

    /* renamed from: e */
    public MoPubRewardedVideoListener f34147e;

    /* renamed from: f */
    public final Set<MediationSettings> f34148f;

    /* renamed from: d */
    public final C6656h f34146d = new C6656h();

    /* renamed from: a */
    public final Handler f34143a = new Handler(Looper.getMainLooper());

    /* renamed from: g */
    public final Map<String, Set<MediationSettings>> f34149g = new HashMap();

    /* renamed from: h */
    public final Handler f34150h = new Handler();

    /* renamed from: i */
    public final Map<String, Runnable> f34151i = new HashMap();

    /* renamed from: j */
    public final RewardedAdsLoaders f34152j = new RewardedAdsLoaders(this);

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters.class */
    public static final class RequestParameters {
        public final String mCustomerId;
        public final String mKeywords;
        public final Location mLocation;
        public final String mUserDataKeywords;

        public RequestParameters(String str) {
            this(str, null);
        }

        public RequestParameters(String str, String str2) {
            this(str, str2, null);
        }

        public RequestParameters(String str, String str2, Location location) {
            this(str, str2, location, null);
        }

        public RequestParameters(String str, String str2, Location location, String str3) {
            this.mKeywords = str;
            this.mCustomerId = str3;
            boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
            this.mUserDataKeywords = !canCollectPersonalInformation ? null : str2;
            this.mLocation = !canCollectPersonalInformation ? null : location;
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$a.class */
    public static final class RunnableC8784a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f34153a;

        public RunnableC8784a(String str) {
            this.f34153a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubRewardedVideoManager.m4335e(this.f34153a);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$b.class */
    public static final class C8785b extends AbstractRunnableC8799p {
        public C8785b(Class cls, String str) {
            super(cls, str);
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoManager.AbstractRunnableC8799p
        /* renamed from: a */
        public void mo4331a(String str) {
            MoPubRewardedVideoManager.m4334f(str);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$c.class */
    public static final class RunnableC8786c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f34154a;

        public RunnableC8786c(String str) {
            this.f34154a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubRewardedVideoManager.m4334f(this.f34154a);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$d.class */
    public static final class RunnableC8787d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f34155a;

        /* renamed from: b */
        public final /* synthetic */ String f34156b;

        public RunnableC8787d(String str, String str2) {
            this.f34155a = str;
            this.f34156b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubReward d = MoPubRewardedVideoManager.f34141k.f34146d.m20168d(this.f34155a);
            String label = d == null ? "" : d.getLabel();
            String num = d == null ? Integer.toString(0) : Integer.toString(d.getAmount());
            CustomEventRewardedAd c = MoPubRewardedVideoManager.f34141k.f34146d.m20169c(this.f34155a);
            RewardedVideoCompletionRequestHandler.makeRewardedVideoCompletionRequest(MoPubRewardedVideoManager.f34141k.f34145c, this.f34156b, MoPubRewardedVideoManager.f34141k.f34146d.m20173b(), label, num, (c == null || c.getClass() == null) ? null : c.getClass().getName(), MoPubRewardedVideoManager.f34141k.f34146d.m20172b(this.f34155a));
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$e.class */
    public static final class RunnableC8788e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Class f34157a;

        /* renamed from: b */
        public final /* synthetic */ MoPubReward f34158b;

        /* renamed from: c */
        public final /* synthetic */ String f34159c;

        /* renamed from: d */
        public final /* synthetic */ String f34160d;

        public RunnableC8788e(Class cls, MoPubReward moPubReward, String str, String str2) {
            this.f34157a = cls;
            this.f34158b = moPubReward;
            this.f34159c = str;
            this.f34160d = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubReward a = MoPubRewardedVideoManager.m4358a(MoPubRewardedVideoManager.f34141k.f34146d.m20182a(this.f34157a), this.f34158b);
            HashSet hashSet = new HashSet();
            if (TextUtils.isEmpty(this.f34159c)) {
                hashSet.addAll(MoPubRewardedVideoManager.f34141k.f34146d.m20180a(this.f34157a, this.f34160d));
            } else {
                hashSet.add(this.f34159c);
            }
            if (MoPubRewardedVideoManager.f34141k.f34147e != null) {
                MoPubRewardedVideoManager.f34141k.f34147e.onRewardedVideoCompleted(hashSet, a);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$f */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$f.class */
    public static /* synthetic */ class C8789f {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34161a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubNetworkError.Reason.values().length];
            f34161a = iArr;
            try {
                iArr[MoPubNetworkError.Reason.NO_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34161a[MoPubNetworkError.Reason.WARMING_UP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34161a[MoPubNetworkError.Reason.BAD_BODY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34161a[MoPubNetworkError.Reason.BAD_HEADER_DATA.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$g */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$g.class */
    public static final class RunnableC8790g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f34162a;

        public RunnableC8790g(String str) {
            this.f34162a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MoPubRewardedVideoManager.f34141k.f34147e != null) {
                MoPubRewardedVideoManager.f34141k.f34147e.onRewardedVideoLoadSuccess(this.f34162a);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$h */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$h.class */
    public class RunnableC8791h implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ CustomEventRewardedAd f34163a;

        public RunnableC8791h(MoPubRewardedVideoManager moPubRewardedVideoManager, CustomEventRewardedAd customEventRewardedAd) {
            this.f34163a = customEventRewardedAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Custom Event failed to load rewarded ad in a timely fashion.");
            MoPubRewardedVideoManager.onRewardedVideoLoadFailure(this.f34163a.getClass(), this.f34163a.mo4330a(), MoPubErrorCode.NETWORK_TIMEOUT);
            this.f34163a.mo4328d();
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$i */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$i.class */
    public static final class C8792i extends AbstractRunnableC8799p {
        public C8792i(Class cls, String str) {
            super(cls, str);
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoManager.AbstractRunnableC8799p
        /* renamed from: a */
        public void mo4331a(String str) {
            MoPubRewardedVideoManager.f34141k.m4350a(str);
            MoPubRewardedVideoManager.f34141k.f34152j.m4294b(str);
            if (MoPubRewardedVideoManager.f34141k.f34147e != null) {
                MoPubRewardedVideoManager.f34141k.f34147e.onRewardedVideoLoadSuccess(str);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$j */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$j.class */
    public static final class C8793j extends AbstractRunnableC8799p {

        /* renamed from: c */
        public final /* synthetic */ MoPubErrorCode f34164c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8793j(Class cls, String str, MoPubErrorCode moPubErrorCode) {
            super(cls, str);
            this.f34164c = moPubErrorCode;
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoManager.AbstractRunnableC8799p
        /* renamed from: a */
        public void mo4331a(String str) {
            MoPubRewardedVideoManager.f34141k.m4350a(str);
            MoPubRewardedVideoManager.f34141k.m4348a(str, this.f34164c);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$k */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$k.class */
    public static final class C8794k extends AbstractRunnableC8799p {
        public C8794k(Class cls, String str) {
            super(cls, str);
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoManager.AbstractRunnableC8799p
        /* renamed from: a */
        public void mo4331a(String str) {
            MoPubRewardedVideoManager.m4333g(str);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$l */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$l.class */
    public static final class RunnableC8795l implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f34165a;

        public RunnableC8795l(String str) {
            this.f34165a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubRewardedVideoManager.m4333g(this.f34165a);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$m */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$m.class */
    public static final class C8796m extends AbstractRunnableC8799p {

        /* renamed from: c */
        public final /* synthetic */ MoPubErrorCode f34166c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8796m(Class cls, String str, MoPubErrorCode moPubErrorCode) {
            super(cls, str);
            this.f34166c = moPubErrorCode;
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoManager.AbstractRunnableC8799p
        /* renamed from: a */
        public void mo4331a(String str) {
            MoPubRewardedVideoManager.m4338c(str, this.f34166c);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$n */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$n.class */
    public static final class RunnableC8797n implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f34167a;

        /* renamed from: b */
        public final /* synthetic */ MoPubErrorCode f34168b;

        public RunnableC8797n(String str, MoPubErrorCode moPubErrorCode) {
            this.f34167a = str;
            this.f34168b = moPubErrorCode;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubRewardedVideoManager.m4338c(this.f34167a, this.f34168b);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$o */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$o.class */
    public static final class C8798o extends AbstractRunnableC8799p {
        public C8798o(Class cls, String str) {
            super(cls, str);
        }

        @Override // com.mopub.mobileads.MoPubRewardedVideoManager.AbstractRunnableC8799p
        /* renamed from: a */
        public void mo4331a(String str) {
            MoPubRewardedVideoManager.m4335e(str);
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubRewardedVideoManager$p */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubRewardedVideoManager$p.class */
    public static abstract class AbstractRunnableC8799p implements Runnable {

        /* renamed from: a */
        public final Class<? extends CustomEventRewardedAd> f34169a;

        /* renamed from: b */
        public final String f34170b;

        public AbstractRunnableC8799p(Class<? extends CustomEventRewardedAd> cls, String str) {
            Preconditions.checkNotNull(cls);
            Preconditions.checkNotNull(str);
            this.f34169a = cls;
            this.f34170b = str;
        }

        /* renamed from: a */
        public abstract void mo4331a(String str);

        @Override // java.lang.Runnable
        public void run() {
            for (String str : MoPubRewardedVideoManager.f34141k.f34146d.m20180a(this.f34169a, this.f34170b)) {
                mo4331a(str);
            }
        }
    }

    public MoPubRewardedVideoManager(Activity activity, MediationSettings... mediationSettingsArr) {
        this.f34144b = new WeakReference<>(activity);
        this.f34145c = activity.getApplicationContext();
        HashSet hashSet = new HashSet();
        this.f34148f = hashSet;
        MoPubCollections.addAllNonNull(hashSet, mediationSettingsArr);
        f34142l = SharedPreferencesHelper.getSharedPreferences(this.f34145c, "mopubCustomEventSettings");
    }

    @VisibleForTesting
    /* renamed from: a */
    public static MoPubReward m4358a(MoPubReward moPubReward, MoPubReward moPubReward2) {
        if (!moPubReward2.isSuccessful()) {
            return moPubReward2;
        }
        if (moPubReward == null) {
            moPubReward = moPubReward2;
        }
        return moPubReward;
    }

    /* renamed from: a */
    public static void m4359a(AdUrlGenerator adUrlGenerator) {
        Window window;
        WindowInsets rootWindowInsets;
        Preconditions.checkNotNull(adUrlGenerator);
        adUrlGenerator.withRequestedAdSize(ClientMetadata.getInstance(f34141k.f34145c).getDeviceDimensions());
        if (Build.VERSION.SDK_INT >= 28 && f34141k.f34144b.get() != null && (window = f34141k.f34144b.get().getWindow()) != null && (rootWindowInsets = window.getDecorView().getRootWindowInsets()) != null) {
            adUrlGenerator.withWindowInsets(rootWindowInsets);
        }
    }

    /* renamed from: a */
    public static <T extends CustomEventRewardedAd> void m4352a(Class<T> cls, String str, MoPubReward moPubReward, String str2) {
        m4351a(new RunnableC8788e(cls, moPubReward, str2, str));
    }

    /* renamed from: a */
    public static void m4351a(Runnable runnable) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f34141k;
        if (moPubRewardedVideoManager != null) {
            moPubRewardedVideoManager.f34143a.post(runnable);
        }
    }

    /* renamed from: a */
    public static boolean m4349a(String str, CustomEventRewardedAd customEventRewardedAd) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f34141k;
        return moPubRewardedVideoManager != null && moPubRewardedVideoManager.f34152j.m4296a(str) && customEventRewardedAd != null && customEventRewardedAd.mo4363c();
    }

    /* renamed from: b */
    public static void m4345b() {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub rewarded ad was not initialized. You must call MoPub.initializeSdk() with an Activity Context before loading or attempting to play rewarded ads.");
    }

    /* renamed from: b */
    public static void m4341b(String str, String str2, MoPubErrorCode moPubErrorCode) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f34141k;
        if (moPubRewardedVideoManager == null) {
            m4345b();
        } else {
            moPubRewardedVideoManager.m4346a(str, str2, moPubErrorCode);
        }
    }

    /* renamed from: c */
    public static void m4338c(String str, MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(moPubErrorCode);
        f34141k.f34152j.m4290e(str);
        MoPubRewardedVideoListener moPubRewardedVideoListener = f34141k.f34147e;
        if (moPubRewardedVideoListener != null) {
            moPubRewardedVideoListener.onRewardedVideoPlaybackError(str, moPubErrorCode);
        }
    }

    /* renamed from: e */
    public static void m4335e(String str) {
        Preconditions.checkNotNull(str);
        MoPubRewardedVideoListener moPubRewardedVideoListener = f34141k.f34147e;
        if (moPubRewardedVideoListener != null) {
            moPubRewardedVideoListener.onRewardedVideoClicked(str);
        }
        MoPubRewardedVideoManager moPubRewardedVideoManager = f34141k;
        moPubRewardedVideoManager.f34152j.m4295a(str, moPubRewardedVideoManager.f34145c);
    }

    /* renamed from: f */
    public static void m4334f(String str) {
        Preconditions.checkNotNull(str);
        f34141k.f34152j.m4289f(str);
        MoPubRewardedVideoListener moPubRewardedVideoListener = f34141k.f34147e;
        if (moPubRewardedVideoListener != null) {
            moPubRewardedVideoListener.onRewardedVideoClosed(str);
        }
    }

    /* renamed from: g */
    public static void m4333g(String str) {
        Preconditions.checkNotNull(str);
        MoPubRewardedVideoListener moPubRewardedVideoListener = f34141k.f34147e;
        if (moPubRewardedVideoListener != null) {
            moPubRewardedVideoListener.onRewardedVideoStarted(str);
        }
        MoPubRewardedVideoManager moPubRewardedVideoManager = f34141k;
        moPubRewardedVideoManager.f34152j.m4293b(str, moPubRewardedVideoManager.f34145c);
    }

    public static Set<MoPubReward> getAvailableRewards(String str) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f34141k;
        if (moPubRewardedVideoManager != null) {
            return moPubRewardedVideoManager.f34146d.m20178a(str);
        }
        m4345b();
        return Collections.emptySet();
    }

    public static <T extends MediationSettings> T getGlobalMediationSettings(Class<T> cls) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f34141k;
        if (moPubRewardedVideoManager == null) {
            m4345b();
            return null;
        }
        for (MediationSettings mediationSettings : moPubRewardedVideoManager.f34148f) {
            if (cls.equals(mediationSettings.getClass())) {
                return cls.cast(mediationSettings);
            }
        }
        return null;
    }

    public static <T extends MediationSettings> T getInstanceMediationSettings(Class<T> cls, String str) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f34141k;
        if (moPubRewardedVideoManager == null) {
            m4345b();
            return null;
        }
        Set<MediationSettings> set = moPubRewardedVideoManager.f34149g.get(str);
        if (set == null) {
            return null;
        }
        for (MediationSettings mediationSettings : set) {
            if (cls.equals(mediationSettings.getClass())) {
                return cls.cast(mediationSettings);
            }
        }
        return null;
    }

    /* renamed from: h */
    public static void m4332h(String str) {
        String e = f34141k.f34146d.m20167e(str);
        if (!TextUtils.isEmpty(e)) {
            m4351a(new RunnableC8787d(str, e));
        }
    }

    public static boolean hasVideo(String str) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f34141k;
        if (moPubRewardedVideoManager != null) {
            return m4349a(str, moPubRewardedVideoManager.f34146d.m20169c(str));
        }
        m4345b();
        return false;
    }

    public static void init(Activity activity, MediationSettings... mediationSettingsArr) {
        synchronized (MoPubRewardedVideoManager.class) {
            try {
                if (f34141k == null) {
                    f34141k = new MoPubRewardedVideoManager(activity, mediationSettingsArr);
                } else {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Tried to call initializeRewardedVideo more than once. Only the first initialization call has any effect.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void loadVideo(String str, RequestParameters requestParameters, MediationSettings... mediationSettingsArr) {
        Preconditions.checkNotNull(str);
        MoPubRewardedVideoManager moPubRewardedVideoManager = f34141k;
        if (moPubRewardedVideoManager == null) {
            m4345b();
        } else if (str.equals(moPubRewardedVideoManager.f34146d.m20183a())) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Did not queue rewarded ad request for ad unit %s. The ad is already showing.", str));
        } else if (f34141k.f34152j.m4296a(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Did not queue rewarded ad request for ad unit %s. This ad unit already finished loading and is ready to show.", str));
            m4351a(new RunnableC8790g(str));
        } else {
            HashSet hashSet = new HashSet();
            MoPubCollections.addAllNonNull(hashSet, mediationSettingsArr);
            f34141k.f34149g.put(str, hashSet);
            String str2 = requestParameters == null ? null : requestParameters.mCustomerId;
            if (!TextUtils.isEmpty(str2)) {
                f34141k.f34146d.m20163i(str2);
            }
            WebViewAdUrlGenerator webViewAdUrlGenerator = new WebViewAdUrlGenerator(f34141k.f34145c, false);
            webViewAdUrlGenerator.withAdUnitId(str).withKeywords(requestParameters == null ? null : requestParameters.mKeywords).withUserDataKeywords((requestParameters == null || !MoPub.canCollectPersonalInformation()) ? null : requestParameters.mUserDataKeywords).withLocation(requestParameters == null ? null : requestParameters.mLocation);
            m4359a(webViewAdUrlGenerator);
            m4341b(str, webViewAdUrlGenerator.generateUrlString(Constants.HOST), null);
        }
    }

    public static <T extends CustomEventRewardedAd> void onRewardedVideoClicked(Class<T> cls, String str) {
        String a = f34141k.f34146d.m20183a();
        if (TextUtils.isEmpty(a)) {
            m4351a(new C8798o(cls, str));
        } else {
            m4351a(new RunnableC8784a(a));
        }
    }

    public static <T extends CustomEventRewardedAd> void onRewardedVideoClosed(Class<T> cls, String str) {
        String a = f34141k.f34146d.m20183a();
        if (TextUtils.isEmpty(a)) {
            m4351a(new C8785b(cls, str));
        } else {
            m4351a(new RunnableC8786c(a));
        }
        f34141k.f34146d.m20164h(null);
    }

    public static <T extends CustomEventRewardedAd> void onRewardedVideoCompleted(Class<T> cls, String str, MoPubReward moPubReward) {
        String a = f34141k.f34146d.m20183a();
        m4352a(cls, str, moPubReward, a);
        m4332h(a);
    }

    public static <T extends CustomEventRewardedAd> void onRewardedVideoLoadFailure(Class<T> cls, String str, MoPubErrorCode moPubErrorCode) {
        m4351a(new C8793j(cls, str, moPubErrorCode));
    }

    public static <T extends CustomEventRewardedAd> void onRewardedVideoLoadSuccess(Class<T> cls, String str) {
        m4351a(new C8792i(cls, str));
    }

    public static <T extends CustomEventRewardedAd> void onRewardedVideoPlaybackError(Class<T> cls, String str, MoPubErrorCode moPubErrorCode) {
        String a = f34141k.f34146d.m20183a();
        if (TextUtils.isEmpty(a)) {
            m4351a(new C8796m(cls, str, moPubErrorCode));
        } else {
            m4351a(new RunnableC8797n(a, moPubErrorCode));
        }
        f34141k.f34146d.m20164h(null);
    }

    public static <T extends CustomEventRewardedAd> void onRewardedVideoStarted(Class<T> cls, String str) {
        String a = f34141k.f34146d.m20183a();
        if (TextUtils.isEmpty(a)) {
            m4351a(new C8794k(cls, str));
        } else {
            m4351a(new RunnableC8795l(a));
        }
    }

    public static void selectReward(String str, MoPubReward moPubReward) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f34141k;
        if (moPubRewardedVideoManager != null) {
            moPubRewardedVideoManager.f34146d.m20177a(str, moPubReward);
        } else {
            m4345b();
        }
    }

    public static void setVideoListener(MoPubRewardedVideoListener moPubRewardedVideoListener) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f34141k;
        if (moPubRewardedVideoManager != null) {
            moPubRewardedVideoManager.f34147e = moPubRewardedVideoListener;
        } else {
            m4345b();
        }
    }

    public static void showVideo(String str) {
        showVideo(str, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void showVideo(String str, String str2) {
        if (f34141k == null) {
            m4345b();
            return;
        }
        if (str2 != null && str2.length() > 8192) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Provided rewarded ad custom data parameter longer than supported(%d bytes, %d maximum)", Integer.valueOf(str2.length()), 8192));
        }
        CustomEventRewardedAd c = f34141k.f34146d.m20169c(str);
        if (!m4349a(str, c)) {
            if (f34141k.f34152j.m4291d(str)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Rewarded ad is not ready to be shown yet.");
            } else {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "No rewarded ad loading or loaded.");
            }
            f34141k.m4348a(str, MoPubErrorCode.VIDEO_NOT_AVAILABLE);
        } else if (f34141k.f34146d.m20178a(str).isEmpty() || f34141k.f34146d.m20168d(str) != null) {
            f34141k.f34146d.m20181a((Class<? extends CustomEventRewardedAd>) c.getClass(), f34141k.f34146d.m20168d(str));
            f34141k.f34146d.m20175a(str, str2);
            f34141k.f34146d.m20164h(str);
            c.mo4327e();
        } else {
            f34141k.m4348a(str, MoPubErrorCode.REWARD_NOT_SELECTED);
        }
    }

    @ReflectionTarget
    public static void updateActivity(Activity activity) {
        MoPubRewardedVideoManager moPubRewardedVideoManager = f34141k;
        if (moPubRewardedVideoManager != null) {
            moPubRewardedVideoManager.f34144b = new WeakReference<>(activity);
        } else {
            m4345b();
        }
    }

    /* renamed from: a */
    public void m4354a(AdResponse adResponse) {
        String adUnitId = adResponse.getAdUnitId();
        Integer adTimeoutMillis = adResponse.getAdTimeoutMillis(30000);
        String customEventClassName = adResponse.getCustomEventClassName();
        if (customEventClassName == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Couldn't create custom event, class name was null.");
            m4348a(adUnitId, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        CustomEventRewardedAd c = this.f34146d.m20169c(adUnitId);
        if (c != null) {
            c.mo4328d();
        }
        try {
            CustomEventRewardedAd customEventRewardedAd = (CustomEventRewardedAd) Reflection.instantiateClassWithEmptyConstructor(customEventClassName, CustomEventRewardedAd.class);
            TreeMap treeMap = new TreeMap();
            treeMap.put(DataKeys.AD_UNIT_ID_KEY, adUnitId);
            treeMap.put(DataKeys.REWARDED_AD_CURRENCY_NAME_KEY, adResponse.getRewardedVideoCurrencyName());
            treeMap.put(DataKeys.REWARDED_AD_CURRENCY_AMOUNT_STRING_KEY, adResponse.getRewardedVideoCurrencyAmount());
            treeMap.put(DataKeys.REWARDED_AD_DURATION_KEY, adResponse.getRewardedDuration());
            treeMap.put(DataKeys.SHOULD_REWARD_ON_CLICK_KEY, Boolean.valueOf(adResponse.shouldRewardOnClick()));
            treeMap.put(DataKeys.AD_REPORT_KEY, new AdReport(adUnitId, ClientMetadata.getInstance(this.f34145c), adResponse));
            treeMap.put(DataKeys.BROADCAST_IDENTIFIER_KEY, Long.valueOf(Utils.generateUniqueId()));
            treeMap.put("rewarded-ad-customer-id", this.f34146d.m20173b());
            String rewardedCurrencies = adResponse.getRewardedCurrencies();
            this.f34146d.m20166f(adUnitId);
            this.f34146d.m20165g(adUnitId);
            if (TextUtils.isEmpty(rewardedCurrencies)) {
                this.f34146d.m20170b(adUnitId, adResponse.getRewardedVideoCurrencyName(), adResponse.getRewardedVideoCurrencyAmount());
            } else {
                try {
                    m4347a(adUnitId, rewardedCurrencies);
                } catch (Exception e) {
                    MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                    MoPubLog.log(sdkLogEvent, "Error parsing rewarded currencies JSON header: " + rewardedCurrencies);
                    m4348a(adUnitId, MoPubErrorCode.REWARDED_CURRENCIES_PARSING_ERROR);
                    return;
                }
            }
            this.f34146d.m20171b(adUnitId, adResponse.getRewardedVideoCompletionUrl());
            Activity activity = this.f34144b.get();
            if (activity == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Could not load custom event because Activity reference was null. Call MoPub#updateActivity before requesting more rewarded ads.");
                this.f34152j.m4290e(adUnitId);
                return;
            }
            RunnableC8791h hVar = new RunnableC8791h(this, customEventRewardedAd);
            this.f34150h.postDelayed(hVar, adTimeoutMillis.intValue());
            this.f34151i.put(adUnitId, hVar);
            Map<String, String> serverExtras = adResponse.getServerExtras();
            if (customEventRewardedAd instanceof CustomEventRewardedVideo) {
                String jSONObject = new JSONObject(serverExtras).toString();
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Updating init settings for custom event %s with params %s", customEventClassName, jSONObject));
                f34142l.edit().putString(customEventClassName, jSONObject).apply();
            }
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Loading custom event with class name %s", customEventClassName));
            customEventRewardedAd.m4393b(activity, treeMap, serverExtras);
            this.f34146d.m20176a(adUnitId, customEventRewardedAd, customEventRewardedAd.mo4330a());
        } catch (Exception e2) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Couldn't create custom event with class name %s", customEventClassName));
            m4348a(adUnitId, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
        }
    }

    /* renamed from: a */
    public void m4353a(VolleyError volleyError, String str) {
        MoPubErrorCode moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
        if (volleyError instanceof MoPubNetworkError) {
            int i = C8789f.f34161a[((MoPubNetworkError) volleyError).getReason().ordinal()];
            moPubErrorCode = (i == 1 || i == 2) ? MoPubErrorCode.NO_FILL : MoPubErrorCode.INTERNAL_ERROR;
        }
        if (volleyError instanceof NoConnectionError) {
            moPubErrorCode = MoPubErrorCode.NO_CONNECTION;
        }
        m4348a(str, moPubErrorCode);
    }

    /* renamed from: a */
    public final void m4350a(String str) {
        Runnable remove = this.f34151i.remove(str);
        if (remove != null) {
            this.f34150h.removeCallbacks(remove);
        }
    }

    /* renamed from: a */
    public final void m4348a(String str, MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(moPubErrorCode);
        if (!this.f34152j.m4292c(str) || moPubErrorCode.equals(MoPubErrorCode.EXPIRED)) {
            MoPubRewardedVideoListener moPubRewardedVideoListener = f34141k.f34147e;
            if (moPubRewardedVideoListener != null) {
                moPubRewardedVideoListener.onRewardedVideoLoadFailure(str, moPubErrorCode);
                return;
            }
            return;
        }
        m4341b(str, "", moPubErrorCode);
    }

    /* renamed from: a */
    public final void m4347a(String str, String str2) throws JSONException {
        String[] jsonArrayToStringArray = Json.jsonArrayToStringArray(Json.jsonStringToMap(str2).get("rewards"));
        if (jsonArrayToStringArray.length == 1) {
            Map<String, String> jsonStringToMap = Json.jsonStringToMap(jsonArrayToStringArray[0]);
            this.f34146d.m20170b(str, jsonStringToMap.get("name"), jsonStringToMap.get(AppLovinEventParameters.REVENUE_AMOUNT));
        }
        for (String str3 : jsonArrayToStringArray) {
            Map<String, String> jsonStringToMap2 = Json.jsonStringToMap(str3);
            this.f34146d.m20174a(str, jsonStringToMap2.get("name"), jsonStringToMap2.get(AppLovinEventParameters.REVENUE_AMOUNT));
        }
    }

    /* renamed from: a */
    public final void m4346a(String str, String str2, MoPubErrorCode moPubErrorCode) {
        if (this.f34152j.m4291d(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Did not queue rewarded ad request for ad unit %s. A request is already pending.", str));
            return;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Loading rewarded ad request for ad unit %s with URL %s", str, str2));
        this.f34152j.m4298a(this.f34145c, str, str2, moPubErrorCode);
    }
}
