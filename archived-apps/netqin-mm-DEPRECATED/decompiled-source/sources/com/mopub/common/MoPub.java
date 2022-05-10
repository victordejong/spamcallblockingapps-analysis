package com.mopub.common;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.privacy.PersonalInfoManager;
import com.mopub.common.util.Reflection;
import com.mopub.network.Networking;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import p131c.p421j.p422a.C6634d;
/* loaded from: classes-dex2jar.jar:com/mopub/common/MoPub.class */
public class MoPub {
    public static final String SDK_VERSION = "5.11.1";

    /* renamed from: d */
    public static Method f33748d;

    /* renamed from: g */
    public static AdapterConfigurationManager f33751g;

    /* renamed from: h */
    public static PersonalInfoManager f33752h;

    /* renamed from: a */
    public static volatile BrowserAgent f33745a = BrowserAgent.IN_APP;

    /* renamed from: b */
    public static volatile boolean f33746b = false;

    /* renamed from: c */
    public static boolean f33747c = false;

    /* renamed from: e */
    public static boolean f33749e = false;

    /* renamed from: f */
    public static boolean f33750f = false;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPub$BrowserAgent.class */
    public enum BrowserAgent {
        IN_APP,
        NATIVE;

        public static BrowserAgent fromHeader(Integer num) {
            if (num == null) {
                return IN_APP;
            }
            return num.intValue() == 1 ? NATIVE : IN_APP;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPub$LocationAwareness.class */
    public enum LocationAwareness {
        NORMAL,
        TRUNCATED,
        DISABLED
    }

    /* renamed from: com.mopub.common.MoPub$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPub$a.class */
    public static final class RunnableC8701a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ SdkInitializationListener f33753a;

        public RunnableC8701a(SdkInitializationListener sdkInitializationListener) {
            this.f33753a = sdkInitializationListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            SdkInitializationListener sdkInitializationListener = this.f33753a;
            if (sdkInitializationListener != null) {
                sdkInitializationListener.onInitializationFinished();
            }
        }
    }

    /* renamed from: com.mopub.common.MoPub$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPub$b.class */
    public static class C8702b implements SdkInitializationListener {

        /* renamed from: a */
        public SdkInitializationListener f33754a;

        public C8702b(SdkInitializationListener sdkInitializationListener) {
            this.f33754a = sdkInitializationListener;
        }

        @Override // com.mopub.common.SdkInitializationListener
        public void onInitializationFinished() {
            AdapterConfigurationManager adapterConfigurationManager = MoPub.f33751g;
            if (adapterConfigurationManager != null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.INIT_FINISHED, adapterConfigurationManager.getAdapterConfigurationInfo());
            }
            MoPub.m4627b(this.f33754a);
            this.f33754a = null;
        }
    }

    /* renamed from: a */
    public static String m4629a(Context context) {
        Preconditions.checkNotNull(context);
        AdapterConfigurationManager adapterConfigurationManager = f33751g;
        if (adapterConfigurationManager == null) {
            return null;
        }
        return adapterConfigurationManager.m4719b(context);
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m4631a(Activity activity) {
        if (!f33747c) {
            f33747c = true;
            try {
                f33748d = Reflection.getDeclaredMethodWithTraversal(Class.forName("com.mopub.mobileads.MoPubRewardedVideoManager"), "updateActivity", Activity.class);
            } catch (ClassNotFoundException | NoSuchMethodException e) {
            }
        }
        Method method = f33748d;
        if (method != null) {
            try {
                method.invoke(null, activity);
            } catch (IllegalAccessException e2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error while attempting to access the update activity method - this should not have happened", e2);
            } catch (InvocationTargetException e3) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error while attempting to access the update activity method - this should not have happened", e3);
            }
        }
    }

    /* renamed from: a */
    public static void m4630a(Activity activity, SdkConfiguration sdkConfiguration) {
        Preconditions.checkNotNull(activity);
        Preconditions.checkNotNull(sdkConfiguration);
        try {
            new Reflection.MethodBuilder(null, "initializeRewardedVideo").setStatic(Class.forName("com.mopub.mobileads.MoPubRewardedVideos")).setAccessible().addParam((Class<Class>) Activity.class, (Class) activity).addParam((Class<Class>) SdkConfiguration.class, (Class) sdkConfiguration).execute();
        } catch (ClassNotFoundException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "initializeRewardedVideo was called without the rewarded video module");
        } catch (NoSuchMethodException e2) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "initializeRewardedVideo was called without the rewarded video module");
        } catch (Exception e3) {
            MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error while initializing rewarded video", e3);
        }
    }

    /* renamed from: b */
    public static void m4627b(SdkInitializationListener sdkInitializationListener) {
        f33750f = false;
        f33749e = true;
        new Handler(Looper.getMainLooper()).post(new RunnableC8701a(sdkInitializationListener));
    }

    public static boolean canCollectPersonalInformation() {
        PersonalInfoManager personalInfoManager = f33752h;
        return personalInfoManager != null && personalInfoManager.canCollectPersonalInformation();
    }

    public static void disableViewability(ExternalViewabilitySessionManager.ViewabilityVendor viewabilityVendor) {
        Preconditions.checkNotNull(viewabilityVendor);
        viewabilityVendor.disable();
    }

    public static List<String> getAdapterConfigurationInfo() {
        AdapterConfigurationManager adapterConfigurationManager = f33751g;
        if (adapterConfigurationManager != null) {
            return adapterConfigurationManager.getAdapterConfigurationInfo();
        }
        return null;
    }

    public static BrowserAgent getBrowserAgent() {
        Preconditions.checkNotNull(f33745a);
        return f33745a;
    }

    public static LocationAwareness getLocationAwareness() {
        return LocationService.m4634d().m4642a();
    }

    public static int getLocationPrecision() {
        return LocationService.m4634d().m4636b();
    }

    public static long getMinimumLocationRefreshTimeMillis() {
        return LocationService.m4634d().m4635c();
    }

    public static PersonalInfoManager getPersonalInformationManager() {
        return f33752h;
    }

    public static void initializeSdk(Context context, SdkConfiguration sdkConfiguration, SdkInitializationListener sdkInitializationListener) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(sdkConfiguration);
        MoPubLog.setLogLevel(sdkConfiguration.m4607a());
        MoPubLog.log(MoPubLog.SdkLogEvent.INIT_STARTED, new Object[0]);
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "SDK initialize has been called with ad unit: " + sdkConfiguration.getAdUnitId());
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo != null) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, context.getPackageName() + " was built with target SDK version of " + applicationInfo.targetSdkVersion);
        }
        if (context instanceof Activity) {
            m4630a((Activity) context, sdkConfiguration);
        }
        if (f33749e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub SDK is already initialized");
            m4627b(sdkInitializationListener);
        } else if (f33750f) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub SDK is currently initializing.");
        } else if (Looper.getMainLooper() != Looper.myLooper()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPub can only be initialized on the main thread.");
        } else {
            f33750f = true;
            Networking.getRequestQueue(context);
            C6634d dVar = new C6634d(new C8702b(sdkInitializationListener), 2);
            PersonalInfoManager personalInfoManager = new PersonalInfoManager(context, sdkConfiguration.getAdUnitId(), dVar);
            f33752h = personalInfoManager;
            personalInfoManager.setAllowLegitimateInterest(sdkConfiguration.getLegitimateInterestAllowed());
            ClientMetadata.getInstance(context);
            AdapterConfigurationManager adapterConfigurationManager = new AdapterConfigurationManager(dVar);
            f33751g = adapterConfigurationManager;
            adapterConfigurationManager.initialize(context, sdkConfiguration.getAdapterConfigurationClasses(), sdkConfiguration.getMediatedNetworkConfigurations(), sdkConfiguration.getMoPubRequestOptions());
        }
    }

    public static boolean isSdkInitialized() {
        return f33749e;
    }

    public static void onBackPressed(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onBackPressed(activity);
    }

    public static void onCreate(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onCreate(activity);
        m4631a(activity);
    }

    public static void onDestroy(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onDestroy(activity);
    }

    public static void onPause(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onPause(activity);
    }

    public static void onRestart(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onRestart(activity);
        m4631a(activity);
    }

    public static void onResume(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onResume(activity);
        m4631a(activity);
    }

    public static void onStart(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStart(activity);
        m4631a(activity);
    }

    public static void onStop(Activity activity) {
        MoPubLifecycleManager.getInstance(activity).onStop(activity);
    }

    @Deprecated
    @VisibleForTesting
    public static void resetBrowserAgent() {
        f33745a = BrowserAgent.IN_APP;
        f33746b = false;
    }

    public static void setAllowLegitimateInterest(boolean z) {
        PersonalInfoManager personalInfoManager = f33752h;
        if (personalInfoManager != null) {
            personalInfoManager.setAllowLegitimateInterest(z);
        }
    }

    public static void setBrowserAgent(BrowserAgent browserAgent) {
        Preconditions.checkNotNull(browserAgent);
        f33745a = browserAgent;
        f33746b = true;
    }

    public static void setBrowserAgentFromAdServer(BrowserAgent browserAgent) {
        Preconditions.checkNotNull(browserAgent);
        if (f33746b) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Browser agent already overridden by client with value " + f33745a);
            return;
        }
        f33745a = browserAgent;
    }

    public static void setEngineInformation(AppEngineInfo appEngineInfo) {
        Preconditions.checkNotNull(appEngineInfo);
        if (!TextUtils.isEmpty(appEngineInfo.f33646a) && !TextUtils.isEmpty(appEngineInfo.f33647b)) {
            BaseUrlGenerator.setAppEngineInfo(appEngineInfo);
        }
    }

    public static void setLocationAwareness(LocationAwareness locationAwareness) {
        Preconditions.checkNotNull(locationAwareness);
        LocationService.m4634d().m4637a(locationAwareness);
    }

    public static void setLocationPrecision(int i) {
        LocationService.m4634d().m4641a(i);
    }

    public static void setMinimumLocationRefreshTimeMillis(long j) {
        LocationService.m4634d().m4640a(j);
    }

    public static void setWrapperVersion(String str) {
        Preconditions.checkNotNull(str);
        BaseUrlGenerator.setWrapperVersion(str);
    }

    public static boolean shouldAllowLegitimateInterest() {
        PersonalInfoManager personalInfoManager = f33752h;
        return personalInfoManager != null && personalInfoManager.shouldAllowLegitimateInterest();
    }
}
