package com.appsflyer;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.appsflyer.internal.referrer.Payload;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFDeepLinkManager.class */
public class AFDeepLinkManager {
    public static AFDeepLinkManager instance;
    public static Uri trampolineUri;

    /* renamed from: ı */
    public static String[] f2828;

    /* renamed from: ǃ */
    static final int f2829 = (int) TimeUnit.SECONDS.toMillis(2);

    /* renamed from: ɩ */
    static String[] f2830;

    /* renamed from: Ι */
    static volatile boolean f2831;

    private AFDeepLinkManager() {
    }

    public static AFDeepLinkManager getInstance() {
        if (instance == null) {
            instance = new AFDeepLinkManager();
        }
        return instance;
    }

    /* renamed from: ı */
    static void m4156(final Context context, final Map<String, Object> map, final Uri uri) {
        if (m4153(uri.toString())) {
            f2831 = true;
            AFExecutor aFExecutor = AFExecutor.getInstance();
            if (aFExecutor.f2855 == null) {
                aFExecutor.f2855 = Executors.newSingleThreadScheduledExecutor(aFExecutor.f2852);
            }
            aFExecutor.f2855.execute(new Runnable() { // from class: com.appsflyer.AFDeepLinkManager.2
                /* renamed from: ɩ */
                private static Map<String, Object> m4152(Uri uri2) {
                    HashMap hashMap = new HashMap();
                    try {
                        StringBuilder sb = new StringBuilder("ESP deeplink resolving is started: ");
                        sb.append(uri2.toString());
                        AFLogger.afDebugLog(sb.toString());
                        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri2.toString()).openConnection();
                        httpURLConnection.setInstanceFollowRedirects(false);
                        int i = AFDeepLinkManager.f2829;
                        httpURLConnection.setReadTimeout(i);
                        httpURLConnection.setConnectTimeout(i);
                        httpURLConnection.setRequestProperty("User-agent", "Dalvik/2.1.0 (Linux; U; Android 6.0.1; Nexus 5 Build/M4B30Z)");
                        httpURLConnection.setRequestProperty("af-esp", BuildConfig.VERSION_NAME);
                        int responseCode = httpURLConnection.getResponseCode();
                        hashMap.put("status", Integer.valueOf(responseCode));
                        if (300 <= responseCode && responseCode <= 305) {
                            hashMap.put("res", httpURLConnection.getHeaderField("Location"));
                        }
                        httpURLConnection.disconnect();
                        AFLogger.afDebugLog("ESP deeplink resolving is finished");
                    } catch (Throwable th) {
                        hashMap.put("error", th.getLocalizedMessage());
                        AFLogger.afErrorLog(th.getMessage(), th);
                    }
                    return hashMap;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    String str;
                    Integer num;
                    long currentTimeMillis = System.currentTimeMillis();
                    String obj = uri.toString();
                    ArrayList arrayList = new ArrayList();
                    Integer num2 = null;
                    String str2 = null;
                    int i = 0;
                    while (true) {
                        str = obj;
                        if (i >= 5) {
                            break;
                        }
                        Map<String, Object> m4152 = m4152(Uri.parse(obj));
                        obj = (String) m4152.get("res");
                        num = (Integer) m4152.get("status");
                        str2 = (String) m4152.get("error");
                        if (obj == null || !AFDeepLinkManager.m4153(obj)) {
                            break;
                        }
                        if (i < 4) {
                            arrayList.add(obj);
                        }
                        i++;
                        num2 = num;
                    }
                    num2 = num;
                    str = obj;
                    HashMap hashMap = new HashMap();
                    hashMap.put("res", str != null ? str : "");
                    hashMap.put("status", Integer.valueOf(num2 != null ? num2.intValue() : -1));
                    if (str2 != null) {
                        hashMap.put("error", str2);
                    }
                    if (!arrayList.isEmpty()) {
                        hashMap.put("redirects", arrayList);
                    }
                    hashMap.put(Payload.LATENCY, Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                    synchronized (map) {
                        map.put("af_deeplink_r", hashMap);
                        map.put("af_deeplink", uri.toString());
                    }
                    AppsFlyerLibCore.getInstance().handleDeepLinkCallback(context, map, str != null ? Uri.parse(str) : uri);
                    AFDeepLinkManager.f2831 = false;
                }
            });
        } else {
            AppsFlyerLibCore.getInstance().handleDeepLinkCallback(context, map, uri);
        }
        trampolineUri = null;
    }

    /* renamed from: ι */
    public static boolean m4153(String str) {
        if (f2830 != null && !str.contains("af_tranid=")) {
            StringBuilder sb = new StringBuilder("Validate ESP URLs :");
            sb.append(Arrays.asList(f2830));
            AFLogger.afRDLog(sb.toString());
            try {
                return Arrays.asList(f2830).contains(new URL(str).getHost());
            } catch (MalformedURLException e) {
                return false;
            }
        }
        return false;
    }

    public void collectIntentsFromActivities(Intent intent) {
        if (((intent == null || !"android.intent.action.VIEW".equals(intent.getAction())) ? null : intent.getData()) == null || intent.getData() == trampolineUri) {
            return;
        }
        trampolineUri = intent.getData();
    }

    /* renamed from: ɩ */
    final void m4154(Intent intent, Context context, Map<String, Object> map) {
        Uri data = (intent == null || !"android.intent.action.VIEW".equals(intent.getAction())) ? null : intent.getData();
        Intent intent2 = AppsFlyerLibCore.getInstance().pluginDeeplinkIntent;
        Uri uri = null;
        if (intent2 != null) {
            uri = null;
            if ("android.intent.action.VIEW".equals(intent2.getAction())) {
                uri = intent2.getData();
            }
        }
        if (data != null) {
            if (!intent.hasExtra("af_consumed")) {
                intent.putExtra("af_consumed", System.currentTimeMillis());
                m4156(context, map, data);
                return;
            }
            StringBuilder sb = new StringBuilder("skipping re-use of previously consumed deep link: ");
            sb.append(data.toString());
            sb.append(" w/af_consumed");
            AFLogger.afInfoLog(sb.toString());
        } else if (trampolineUri != null) {
            StringBuilder sb2 = new StringBuilder("using trampoline Intent fallback with URI: ");
            sb2.append(trampolineUri);
            AFLogger.afInfoLog(sb2.toString());
            m4156(context, map, trampolineUri);
        } else if (uri == null) {
            AFLogger.afDebugLog("No deep link detected");
        } else if (intent2.hasExtra("af_consumed")) {
            StringBuilder sb3 = new StringBuilder("skipping re-use of previously consumed plugin deep link: ");
            sb3.append(uri.toString());
            sb3.append(" w/af_consumed");
            AFLogger.afInfoLog(sb3.toString());
        } else {
            intent2.putExtra("af_consumed", System.currentTimeMillis());
            StringBuilder sb4 = new StringBuilder("using Plugin Intent fallback with URI: ");
            sb4.append(uri.toString());
            AFLogger.afInfoLog(sb4.toString());
            m4156(context, map, uri);
        }
    }
}
