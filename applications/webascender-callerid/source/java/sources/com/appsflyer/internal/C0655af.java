package com.appsflyer.internal;

import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.ServerConfigHandler;
import com.appsflyer.ServerParameters;
import com.appsflyer.internal.model.event.BackgroundEvent;
import com.appsflyer.internal.model.event.ProxyEvent;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.appsflyer.internal.af */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/af.class */
public final class C0655af {

    /* renamed from: ı */
    private static String f2962 = "https://%smonitorsdk.%s/remote-debug?app_id=";

    /* renamed from: Ι */
    private static C0655af f2963;

    /* renamed from: ǃ */
    private JSONObject f2965;

    /* renamed from: ɹ */
    private boolean f2967;

    /* renamed from: ι */
    public boolean f2968;

    /* renamed from: і */
    private int f2970;

    /* renamed from: ɩ */
    private boolean f2966 = true;

    /* renamed from: Ɩ */
    private final List<String> f2964 = new ArrayList();

    /* renamed from: І */
    private String f2969 = "-1";

    /* renamed from: Ӏ */
    private boolean f2971 = false;

    private C0655af() {
        this.f2970 = 0;
        boolean z = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DPM, false);
        this.f2967 = z;
        this.f2968 = true ^ z;
        this.f2970 = 0;
    }

    /* renamed from: ı */
    public static void m4074(String str, PackageManager packageManager) {
        try {
            if (f2963 == null) {
                f2963 = new C0655af();
            }
            f2963.m4062(str, packageManager);
            if (f2963 == null) {
                f2963 = new C0655af();
            }
            BackgroundEvent trackingStopped = new ProxyEvent().body(f2963.m4071()).trackingStopped(AppsFlyerLib.getInstance().isStopped());
            StringBuilder sb = new StringBuilder();
            sb.append(ServerConfigHandler.getUrl(f2962));
            sb.append(str);
            new Thread(new RunnableC0692w(trackingStopped.urlString(sb.toString()))).start();
        } catch (Throwable th) {
            AFLogger.afErrorLog(th);
        }
    }

    /* renamed from: ı */
    private void m4073(String str, String str2, String str3, String str4) {
        synchronized (this) {
            if (str != null) {
                try {
                    if (str.length() > 0) {
                        this.f2965.put("app_id", str);
                    }
                } catch (Throwable th) {
                    return;
                }
            }
            if (str2 != null && str2.length() > 0) {
                this.f2965.put("app_version", str2);
            }
            if (str3 != null && str3.length() > 0) {
                this.f2965.put(AppsFlyerProperties.CHANNEL, str3);
            }
            if (str4 != null && str4.length() > 0) {
                this.f2965.put("preInstall", str4);
            }
        }
    }

    /* renamed from: Ɩ */
    private String m4071() {
        String str;
        synchronized (this) {
            try {
                this.f2965.put("data", new JSONArray((Collection) this.f2964));
                str = this.f2965.toString();
                try {
                    m4066();
                } catch (JSONException e) {
                }
            } catch (JSONException e2) {
                str = null;
            }
        }
        return str;
    }

    /* renamed from: ǃ */
    private void m4069(String str, String str2, String str3, String str4) {
        synchronized (this) {
            try {
                this.f2965.put("sdk_version", str);
                if (str2 != null && str2.length() > 0) {
                    this.f2965.put("devkey", str2);
                }
                if (str3 != null && str3.length() > 0) {
                    this.f2965.put("originalAppsFlyerId", str3);
                }
                if (str4 != null && str4.length() > 0) {
                    this.f2965.put("uid", str4);
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: ɩ */
    private void m4067(String str, String str2, String str3, String str4, String str5, String str6) {
        synchronized (this) {
            try {
                this.f2965.put("brand", str);
                this.f2965.put("model", str2);
                this.f2965.put("platform", "Android");
                this.f2965.put("platform_version", str3);
                if (str4 != null && str4.length() > 0) {
                    this.f2965.put(ServerParameters.ADVERTISING_ID_PARAM, str4);
                }
                if (str5 != null && str5.length() > 0) {
                    this.f2965.put("imei", str5);
                }
                if (str6 != null && str6.length() > 0) {
                    this.f2965.put("android_id", str6);
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: ɹ */
    private void m4066() {
        synchronized (this) {
            this.f2964.clear();
            this.f2970 = 0;
        }
    }

    /* renamed from: Ι */
    public static C0655af m4065() {
        if (f2963 == null) {
            f2963 = new C0655af();
        }
        return f2963;
    }

    /* renamed from: ι */
    private void m4062(String str, PackageManager packageManager) {
        synchronized (this) {
            AppsFlyerProperties appsFlyerProperties = AppsFlyerProperties.getInstance();
            AppsFlyerLibCore appsFlyerLibCore = AppsFlyerLibCore.getInstance();
            String string = appsFlyerProperties.getString("remote_debug_static_data");
            if (string != null) {
                try {
                    this.f2965 = new JSONObject(string);
                } catch (Throwable th) {
                }
            } else {
                this.f2965 = new JSONObject();
                m4067(Build.BRAND, Build.MODEL, Build.VERSION.RELEASE, appsFlyerProperties.getString(ServerParameters.ADVERTISING_ID_PARAM), appsFlyerLibCore.ɩ, appsFlyerLibCore.ǃ);
                StringBuilder sb = new StringBuilder("6.0.0.");
                sb.append(AppsFlyerLibCore.ı);
                m4069(sb.toString(), appsFlyerProperties.getString(AppsFlyerProperties.AF_KEY), appsFlyerProperties.getString("KSAppsFlyerId"), appsFlyerProperties.getString("uid"));
                try {
                    m4073(str, String.valueOf(packageManager.getPackageInfo(str, 0).versionCode), appsFlyerProperties.getString(AppsFlyerProperties.CHANNEL), appsFlyerProperties.getString("preInstallName"));
                } catch (Throwable th2) {
                }
                appsFlyerProperties.set("remote_debug_static_data", this.f2965.toString());
            }
            try {
                this.f2965.put("launch_counter", this.f2969);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: ι */
    public static String[] m4061(String str, StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr == null) {
            return new String[]{str};
        }
        String[] strArr = new String[stackTraceElementArr.length + 1];
        strArr[0] = str;
        for (int i = 1; i < stackTraceElementArr.length; i++) {
            strArr[i] = stackTraceElementArr[i].toString();
        }
        return strArr;
    }

    /* renamed from: Ӏ */
    private boolean m4059() {
        if (this.f2968) {
            return this.f2966 || this.f2971;
        }
        return false;
    }

    /* renamed from: ı */
    public final void m4075() {
        synchronized (this) {
            m4072("r_debugging_off", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
            this.f2971 = false;
            this.f2966 = false;
        }
    }

    /* renamed from: ı */
    public final void m4072(String str, String str2, String... strArr) {
        String str3;
        synchronized (this) {
            if (m4059()) {
                if (this.f2970 < 98304) {
                    try {
                        long currentTimeMillis = System.currentTimeMillis();
                        String join = TextUtils.join(", ", strArr);
                        if (str != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(currentTimeMillis);
                            sb.append(" ");
                            sb.append(Thread.currentThread().getId());
                            sb.append(" _/AppsFlyer_6.0.0 [");
                            sb.append(str);
                            sb.append("] ");
                            sb.append(str2);
                            sb.append(" ");
                            sb.append(join);
                            str3 = sb.toString();
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(currentTimeMillis);
                            sb2.append(" ");
                            sb2.append(Thread.currentThread().getId());
                            sb2.append(" ");
                            sb2.append(str2);
                            sb2.append("/AppsFlyer_6.0.0 ");
                            sb2.append(join);
                            str3 = sb2.toString();
                        }
                        this.f2964.add(str3);
                        this.f2970 += str3.length() << 1;
                    } catch (Throwable th) {
                    }
                }
            }
        }
    }

    /* renamed from: ǃ */
    public final void m4070() {
        synchronized (this) {
            this.f2966 = false;
            m4066();
        }
    }

    /* renamed from: ɩ */
    public final void m4068() {
        synchronized (this) {
            this.f2965 = null;
            f2963 = null;
        }
    }

    /* renamed from: ι */
    public final void m4064() {
        synchronized (this) {
            this.f2971 = true;
            m4072("r_debugging_on", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
        }
    }

    /* renamed from: ι */
    public final void m4063(String str) {
        synchronized (this) {
            this.f2969 = str;
        }
    }

    /* renamed from: І */
    public final boolean m4060() {
        return this.f2971;
    }
}
