package p081h.p430l.p431a;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.ExternalViewabilitySession;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Reflection;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.Map;
import java.util.Set;
/* renamed from: h.l.a.b */
/* loaded from: classes2-dex2jar.jar:h/l/a/b.class */
public class C10681b implements ExternalViewabilitySession {

    /* renamed from: c */
    public static Object f24313c;

    /* renamed from: d */
    public static Object f24314d;

    /* renamed from: e */
    public static Boolean f24315e;

    /* renamed from: f */
    public static boolean f24316f;
    @Nullable

    /* renamed from: a */
    public Object f24317a;
    @Nullable

    /* renamed from: b */
    public Object f24318b;

    /* renamed from: h.l.a.b$a */
    /* loaded from: classes2-dex2jar.jar:h/l/a/b$a.class */
    public static /* synthetic */ class C10682a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f24319a = new int[ExternalViewabilitySession.VideoEvent.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a1 -> B:62:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a5 -> B:48:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a9 -> B:44:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00ad -> B:54:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b1 -> B:50:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b5 -> B:58:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00bd -> B:64:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c1 -> B:60:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c5 -> B:46:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00c9 -> B:42:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00cd -> B:52:0x0094). Please submit an issue!!! */
        static {
            try {
                f24319a[ExternalViewabilitySession.VideoEvent.AD_LOADED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f24319a[ExternalViewabilitySession.VideoEvent.AD_STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f24319a[ExternalViewabilitySession.VideoEvent.AD_STOPPED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f24319a[ExternalViewabilitySession.VideoEvent.AD_PAUSED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f24319a[ExternalViewabilitySession.VideoEvent.AD_PLAYING.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f24319a[ExternalViewabilitySession.VideoEvent.AD_SKIPPED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f24319a[ExternalViewabilitySession.VideoEvent.AD_IMPRESSED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f24319a[ExternalViewabilitySession.VideoEvent.AD_CLICK_THRU.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f24319a[ExternalViewabilitySession.VideoEvent.AD_VIDEO_FIRST_QUARTILE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f24319a[ExternalViewabilitySession.VideoEvent.AD_VIDEO_MIDPOINT.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f24319a[ExternalViewabilitySession.VideoEvent.AD_VIDEO_THIRD_QUARTILE.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f24319a[ExternalViewabilitySession.VideoEvent.AD_COMPLETE.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f24319a[ExternalViewabilitySession.VideoEvent.RECORD_AD_ERROR.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    /* renamed from: a */
    public static void m10952a() {
        f24316f = true;
    }

    @Nullable
    /* renamed from: b */
    public static Object m10949b() {
        if (f24313c == null) {
            try {
                f24313c = Reflection.instantiateClassWithConstructor("com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext", Object.class, new Class[]{String.class, Boolean.TYPE}, new Object[]{"5.11.1", true});
            } catch (Exception e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Unable to generate Avid deferred ad session context: " + e.getMessage());
            }
        }
        return f24313c;
    }

    @Nullable
    /* renamed from: c */
    public static Object m10948c() {
        if (f24314d == null) {
            try {
                f24314d = Reflection.instantiateClassWithConstructor("com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext", Object.class, new Class[]{String.class}, new Object[]{"5.11.1"});
            } catch (Exception e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Unable to generate Avid ad session context: " + e.getMessage());
            }
        }
        return f24314d;
    }

    /* renamed from: d */
    public static boolean m10947d() {
        return !f24316f && m10946e();
    }

    /* renamed from: e */
    public static boolean m10946e() {
        if (f24315e == null) {
            f24315e = Boolean.valueOf(Reflection.classFound("com.integralads.avid.library.mopub.session.AvidAdSessionManager"));
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            StringBuilder sb = new StringBuilder();
            sb.append("Avid is ");
            sb.append(f24315e.booleanValue() ? "" : "un");
            sb.append("available via reflection.");
            MoPubLog.log(sdkLogEvent, sb.toString());
        }
        return f24315e.booleanValue();
    }

    /* renamed from: a */
    public final void m10951a(@NonNull ExternalViewabilitySession.VideoEvent videoEvent) throws Exception {
        m10950a(videoEvent, null);
    }

    /* renamed from: a */
    public final void m10950a(@NonNull ExternalViewabilitySession.VideoEvent videoEvent, @Nullable String str) throws Exception {
        Reflection.MethodBuilder methodBuilder = new Reflection.MethodBuilder(new Reflection.MethodBuilder(this.f24318b, "getAvidVideoPlaybackListener").execute(), videoEvent.getAvidMethodName());
        if (!TextUtils.isEmpty(str)) {
            methodBuilder.addParam((Class<Class>) String.class, (Class) str);
        }
        methodBuilder.execute();
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean createDisplaySession(@NonNull Context context, @NonNull WebView webView, boolean z) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(webView);
        if (!m10947d()) {
            return null;
        }
        Object b = z ? m10949b() : m10948c();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        try {
            this.f24317a = new Reflection.MethodBuilder(null, "startAvidDisplayAdSession").setStatic("com.integralads.avid.library.mopub.session.AvidAdSessionManager").addParam((Class<Class>) Context.class, (Class) context).addParam("com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext", b).execute();
            new Reflection.MethodBuilder(this.f24317a, "registerAdView").addParam((Class<Class>) View.class, (Class) webView).addParam((Class<Class>) Activity.class, (Class) activity).execute();
            return true;
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Unable to execute Avid start display session: " + e.getMessage());
            return false;
        }
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean createVideoSession(@NonNull Activity activity, @NonNull View view, @NonNull Set<String> set, @NonNull Map<String, String> map) {
        Preconditions.checkNotNull(activity);
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(set);
        Preconditions.checkNotNull(map);
        if (!m10947d()) {
            return null;
        }
        try {
            this.f24318b = new Reflection.MethodBuilder(null, "startAvidManagedVideoAdSession").setStatic("com.integralads.avid.library.mopub.session.AvidAdSessionManager").addParam((Class<Class>) Context.class, (Class) activity).addParam("com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext", m10948c()).execute();
            new Reflection.MethodBuilder(this.f24318b, "registerAdView").addParam((Class<Class>) View.class, (Class) view).addParam((Class<Class>) Activity.class, (Class) activity).execute();
            if (!TextUtils.isEmpty(map.get("avid"))) {
                new Reflection.MethodBuilder(this.f24318b, "injectJavaScriptResource").addParam((Class<Class>) String.class, (Class) map.get("avid")).execute();
            }
            for (String str : set) {
                if (!TextUtils.isEmpty(str)) {
                    new Reflection.MethodBuilder(this.f24318b, "injectJavaScriptResource").addParam((Class<Class>) String.class, (Class) str).execute();
                }
            }
            return true;
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Unable to execute Avid start video session: " + e.getMessage());
            return false;
        }
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean endDisplaySession() {
        if (!m10947d()) {
            return null;
        }
        Object obj = this.f24317a;
        if (obj == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Avid DisplayAdSession unexpectedly null.");
            return false;
        }
        try {
            new Reflection.MethodBuilder(obj, "endSession").execute();
            return true;
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Unable to execute Avid end session: " + e.getMessage());
            return false;
        }
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean endVideoSession() {
        if (!m10947d()) {
            return null;
        }
        Object obj = this.f24318b;
        if (obj == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Avid VideoAdSession unexpectedly null.");
            return false;
        }
        try {
            new Reflection.MethodBuilder(obj, "endSession").execute();
            return true;
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Unable to execute Avid end video session: " + e.getMessage());
            return false;
        }
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @NonNull
    public String getName() {
        return VastExtensionXmlManager.AVID;
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean initialize(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        return !m10947d() ? null : true;
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean invalidate() {
        if (!m10947d()) {
            return null;
        }
        this.f24317a = null;
        this.f24318b = null;
        return true;
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean onVideoPrepared(@NonNull View view, int i) {
        Preconditions.checkNotNull(view);
        return !m10947d() ? null : true;
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean recordVideoEvent(@NonNull ExternalViewabilitySession.VideoEvent videoEvent, int i) {
        Preconditions.checkNotNull(videoEvent);
        if (!m10947d()) {
            return null;
        }
        if (this.f24318b == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Avid VideoAdSession unexpectedly null.");
            return false;
        }
        try {
            switch (C10682a.f24319a[videoEvent.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                    m10951a(videoEvent);
                    return true;
                case 13:
                    m10950a(videoEvent, "error");
                    return true;
                default:
                    MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                    MoPubLog.log(sdkLogEvent, "Unexpected video event type: " + videoEvent);
                    return false;
            }
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "Unable to execute Avid video event for " + videoEvent.getAvidMethodName() + ": " + e.getMessage());
            return false;
        }
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean registerVideoObstruction(@NonNull View view) {
        Preconditions.checkNotNull(view);
        if (!m10947d()) {
            return null;
        }
        Object obj = this.f24318b;
        if (obj == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Avid VideoAdSession unexpectedly null.");
            return false;
        }
        try {
            new Reflection.MethodBuilder(obj, "registerFriendlyObstruction").addParam((Class<Class>) View.class, (Class) view).execute();
            return true;
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Unable to register Avid video obstructions: " + e.getMessage());
            return false;
        }
    }

    @Override // com.mopub.common.ExternalViewabilitySession
    @Nullable
    public Boolean startDeferredDisplaySession(@NonNull Activity activity) {
        if (!m10947d()) {
            return null;
        }
        if (this.f24317a == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Avid DisplayAdSession unexpectedly null.");
            return false;
        }
        try {
            new Reflection.MethodBuilder(new Reflection.MethodBuilder(null, "getInstance").setStatic("com.integralads.avid.library.mopub.AvidManager").execute(), "registerActivity").addParam((Class<Class>) Activity.class, (Class) activity).execute();
            Object execute = new Reflection.MethodBuilder(this.f24317a, "getAvidDeferredAdSessionListener").execute();
            if (execute == null) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Avid AdSessionListener unexpectedly null.");
                return false;
            }
            new Reflection.MethodBuilder(execute, "recordReadyEvent").execute();
            return true;
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Unable to execute Avid record deferred session: " + e.getMessage());
            return false;
        }
    }
}
