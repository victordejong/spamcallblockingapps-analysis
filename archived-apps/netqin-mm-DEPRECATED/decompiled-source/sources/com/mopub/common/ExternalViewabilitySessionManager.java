package com.mopub.common;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionContext;
import com.mopub.common.ExternalViewabilitySession;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.VastVideoConfig;
import com.mopub.mobileads.VastVideoConfigTwo;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import p131c.p421j.p422a.C6630b;
import p131c.p421j.p422a.C6638f;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/ExternalViewabilitySessionManager.class */
public class ExternalViewabilitySessionManager {

    /* renamed from: a */
    public final Set<ExternalViewabilitySession> f33733a;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor.class */
    public enum ViewabilityVendor {
        AVID,
        MOAT,
        ALL;

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public static ViewabilityVendor fromKey(String str) {
            char c;
            Preconditions.checkNotNull(str);
            switch (str.hashCode()) {
                case 49:
                    if (str.equals("1")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 50:
                    if (str.equals(InternalAvidAdSessionContext.AVID_API_LEVEL)) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 51:
                    if (str.equals("3")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            if (c == 0) {
                return AVID;
            }
            if (c == 1) {
                return MOAT;
            }
            if (c != 2) {
                return null;
            }
            return ALL;
        }

        public static String getEnabledVendorKey() {
            boolean d = C6630b.m20266d();
            boolean b = C6638f.m20256b();
            return (!d || !b) ? d ? "1" : b ? InternalAvidAdSessionContext.AVID_API_LEVEL : "0" : "3";
        }

        public void disable() {
            int i = C8698a.f33734a[ordinal()];
            if (i == 1) {
                C6630b.m20271a();
            } else if (i == 2) {
                C6638f.m20259a();
            } else if (i != 3) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Attempted to disable an invalid viewability vendor: " + this);
                return;
            } else {
                C6630b.m20271a();
                C6638f.m20259a();
            }
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "Disabled viewability for " + this);
        }
    }

    /* renamed from: com.mopub.common.ExternalViewabilitySessionManager$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/ExternalViewabilitySessionManager$a.class */
    public static /* synthetic */ class C8698a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f33734a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ViewabilityVendor.values().length];
            f33734a = iArr;
            try {
                iArr[ViewabilityVendor.AVID.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33734a[ViewabilityVendor.MOAT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33734a[ViewabilityVendor.ALL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public ExternalViewabilitySessionManager(Context context) {
        Preconditions.checkNotNull(context);
        HashSet hashSet = new HashSet();
        this.f33733a = hashSet;
        hashSet.add(new C6630b());
        this.f33733a.add(new C6638f());
        m4650a(context);
    }

    /* renamed from: a */
    public final void m4650a(Context context) {
        Preconditions.checkNotNull(context);
        for (ExternalViewabilitySession externalViewabilitySession : this.f33733a) {
            m4649a(externalViewabilitySession, "initialize", externalViewabilitySession.initialize(context), false);
        }
    }

    /* renamed from: a */
    public final void m4649a(ExternalViewabilitySession externalViewabilitySession, String str, Boolean bool, boolean z) {
        Preconditions.checkNotNull(externalViewabilitySession);
        Preconditions.checkNotNull(str);
        if (bool != null) {
            String format = String.format(Locale.US, "%s viewability event: %s%s.", externalViewabilitySession.getName(), bool.booleanValue() ? "" : "failed to ", str);
            if (z) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, format);
            }
        }
    }

    public void createDisplaySession(Context context, WebView webView) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(webView);
        createDisplaySession(context, webView, false);
    }

    public void createDisplaySession(Context context, WebView webView, boolean z) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(webView);
        for (ExternalViewabilitySession externalViewabilitySession : this.f33733a) {
            m4649a(externalViewabilitySession, "start display session", externalViewabilitySession.createDisplaySession(context, webView, z), true);
        }
    }

    public void createVideoSession(Activity activity, View view, VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(activity);
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(vastVideoConfig);
        for (ExternalViewabilitySession externalViewabilitySession : this.f33733a) {
            HashSet hashSet = new HashSet();
            if (externalViewabilitySession instanceof C6630b) {
                hashSet.addAll(vastVideoConfig.getAvidJavascriptResources());
            } else if (externalViewabilitySession instanceof C6638f) {
                hashSet.addAll(vastVideoConfig.getMoatImpressionPixels());
            }
            m4649a(externalViewabilitySession, "start video session", externalViewabilitySession.createVideoSession(activity, view, hashSet, vastVideoConfig.getExternalViewabilityTrackers()), true);
        }
    }

    public void createVideoSession(Activity activity, View view, VastVideoConfigTwo vastVideoConfigTwo) {
        Preconditions.checkNotNull(activity);
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(vastVideoConfigTwo);
        for (ExternalViewabilitySession externalViewabilitySession : this.f33733a) {
            HashSet hashSet = new HashSet();
            if (externalViewabilitySession instanceof C6630b) {
                hashSet.addAll(vastVideoConfigTwo.getAvidJavascriptResources());
            } else if (externalViewabilitySession instanceof C6638f) {
                hashSet.addAll(vastVideoConfigTwo.getMoatImpressionPixels());
            }
            m4649a(externalViewabilitySession, "start video session", externalViewabilitySession.createVideoSession(activity, view, hashSet, vastVideoConfigTwo.getExternalViewabilityTrackers()), true);
        }
    }

    public void endDisplaySession() {
        for (ExternalViewabilitySession externalViewabilitySession : this.f33733a) {
            m4649a(externalViewabilitySession, "end display session", externalViewabilitySession.endDisplaySession(), true);
        }
    }

    public void endVideoSession() {
        for (ExternalViewabilitySession externalViewabilitySession : this.f33733a) {
            m4649a(externalViewabilitySession, "end video session", externalViewabilitySession.endVideoSession(), true);
        }
    }

    public void invalidate() {
        for (ExternalViewabilitySession externalViewabilitySession : this.f33733a) {
            m4649a(externalViewabilitySession, "invalidate", externalViewabilitySession.invalidate(), false);
        }
    }

    public void onVideoPrepared(View view, int i) {
        Preconditions.checkNotNull(view);
        for (ExternalViewabilitySession externalViewabilitySession : this.f33733a) {
            m4649a(externalViewabilitySession, "on video prepared", externalViewabilitySession.onVideoPrepared(view, i), true);
        }
    }

    public void recordVideoEvent(ExternalViewabilitySession.VideoEvent videoEvent, int i) {
        Preconditions.checkNotNull(videoEvent);
        for (ExternalViewabilitySession externalViewabilitySession : this.f33733a) {
            Boolean recordVideoEvent = externalViewabilitySession.recordVideoEvent(videoEvent, i);
            m4649a(externalViewabilitySession, "record video event (" + videoEvent.name() + ")", recordVideoEvent, true);
        }
    }

    public void registerVideoObstruction(View view) {
        Preconditions.checkNotNull(view);
        for (ExternalViewabilitySession externalViewabilitySession : this.f33733a) {
            m4649a(externalViewabilitySession, "register friendly obstruction", externalViewabilitySession.registerVideoObstruction(view), true);
        }
    }

    public void startDeferredDisplaySession(Activity activity) {
        for (ExternalViewabilitySession externalViewabilitySession : this.f33733a) {
            m4649a(externalViewabilitySession, "record deferred session", externalViewabilitySession.startDeferredDisplaySession(activity), true);
        }
    }
}
