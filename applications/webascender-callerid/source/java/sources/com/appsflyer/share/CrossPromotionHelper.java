package com.appsflyer.share;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.ServerConfigHandler;
import com.appsflyer.ServerParameters;
import com.appsflyer.internal.C0660ai;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/share/CrossPromotionHelper.class */
public class CrossPromotionHelper {

    /* renamed from: ι */
    private static String f3101 = "https://%simpression.%s";

    /* renamed from: com.appsflyer.share.CrossPromotionHelper$c */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/share/CrossPromotionHelper$c.class */
    public static final class RunnableC0700c implements Runnable {

        /* renamed from: ı */
        private final boolean f3102;

        /* renamed from: ǃ */
        private final String f3103;

        /* renamed from: Ι */
        private final WeakReference<Context> f3104;

        /* renamed from: ι */
        private final C0660ai f3105;

        RunnableC0700c(String str, C0660ai c0660ai, Context context, boolean z) {
            this.f3103 = str;
            this.f3105 = c0660ai;
            this.f3104 = new WeakReference<>(context);
            this.f3102 = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Throwable th;
            HttpURLConnection httpURLConnection;
            if (this.f3102) {
                return;
            }
            try {
                httpURLConnection = (HttpURLConnection) new URL(this.f3103).openConnection();
                try {
                    r5.setConnectTimeout(10000);
                    r5.setInstanceFollowRedirects(false);
                    int responseCode = r5.getResponseCode();
                    if (responseCode == 200) {
                        StringBuilder sb = new StringBuilder("Cross promotion impressions success: ");
                        sb.append(this.f3103);
                        AFLogger.afInfoLog(sb.toString(), false);
                    } else if (responseCode == 301 || responseCode == 302) {
                        StringBuilder sb2 = new StringBuilder("Cross promotion redirection success: ");
                        sb2.append(this.f3103);
                        AFLogger.afInfoLog(sb2.toString(), false);
                        if (this.f3105 != null && this.f3104.get() != null) {
                            this.f3105.f2986 = r5.getHeaderField("Location");
                            C0660ai c0660ai = this.f3105;
                            Context context = this.f3104.get();
                            if (c0660ai.f2986 != null) {
                                context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(c0660ai.f2986)).setFlags(268435456));
                            }
                        }
                    } else {
                        StringBuilder sb3 = new StringBuilder("call to ");
                        sb3.append(this.f3103);
                        sb3.append(" failed: ");
                        sb3.append(responseCode);
                        AFLogger.afInfoLog(sb3.toString());
                    }
                    if (r5 == null) {
                        return;
                    }
                    r5.disconnect();
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        AFLogger.afErrorLog(th.getMessage(), th, true);
                        if (httpURLConnection == null) {
                            return;
                        }
                        httpURLConnection.disconnect();
                    } finally {
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection = null;
            }
        }
    }

    public static void logAndOpenStore(Context context, String str, String str2) {
        logAndOpenStore(context, str, str2, null);
    }

    public static void logAndOpenStore(Context context, String str, String str2, Map<String, String> map) {
        LinkGenerator m4005 = m4005(context, str, str2, map, ServerConfigHandler.getUrl(Constants.f3100));
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, track And Open Store is disabled", true);
            return;
        }
        HashMap hashMap = map;
        if (map == null) {
            hashMap = new HashMap();
        }
        hashMap.put("af_campaign", str2);
        AppsFlyerLib.getInstance().logEvent(context, "af_cross_promotion", hashMap);
        new Thread(new RunnableC0700c(m4005.generateLink(), new C0660ai(), context, AppsFlyerLib.getInstance().isStopped())).start();
    }

    public static void logCrossPromoteImpression(Context context, String str, String str2) {
        logCrossPromoteImpression(context, str, str2, null);
    }

    public static void logCrossPromoteImpression(Context context, String str, String str2, Map<String, String> map) {
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, Promote Impression is disabled", true);
        } else {
            new Thread(new RunnableC0700c(m4005(context, str, str2, map, ServerConfigHandler.getUrl(f3101)).generateLink(), null, null, AppsFlyerLib.getInstance().isStopped())).start();
        }
    }

    public static void setUrl(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String value = entry.getValue();
            String key = entry.getKey();
            boolean z = true;
            int hashCode = key.hashCode();
            if (hashCode != 96801) {
                if (hashCode == 120623625 && key.equals("impression")) {
                    z = true;
                }
            } else if (key.equals("app")) {
                z = false;
            }
            if (!z) {
                Constants.f3100 = value;
            } else if (z) {
                f3101 = value;
            }
        }
    }

    /* renamed from: Ι */
    private static LinkGenerator m4005(Context context, String str, String str2, Map<String, String> map, String str3) {
        LinkGenerator linkGenerator = new LinkGenerator("af_cross_promotion");
        linkGenerator.f3106 = str3;
        linkGenerator.f3114 = str;
        linkGenerator.addParameter(Constants.URL_SITE_ID, context.getPackageName());
        if (str2 != null) {
            linkGenerator.setCampaign(str2);
        }
        if (map != null) {
            linkGenerator.addParameters(map);
        }
        String string = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
        if (string != null) {
            linkGenerator.addParameter("advertising_id", string);
        }
        return linkGenerator;
    }
}
