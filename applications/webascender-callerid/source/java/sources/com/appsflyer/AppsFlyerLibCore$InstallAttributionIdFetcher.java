package com.appsflyer;

import android.app.Application;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher.class */
public class AppsFlyerLibCore$InstallAttributionIdFetcher implements Runnable {

    /* renamed from: ı */
    private static String f2908 = "https://%sgcdsdk.%s/install_data/v4.0/";

    /* renamed from: ɩ */
    private static final List<String> f2909 = Arrays.asList("googleplay", "playstore", "googleplaystore");

    /* renamed from: Ɩ */
    private final AtomicInteger f2910;

    /* renamed from: ǃ */
    private final String f2911;

    /* renamed from: Ι */
    private final Application f2912;

    /* renamed from: ι */
    final ScheduledExecutorService f2913;

    /* renamed from: і */
    private AppsFlyerLibCore f2914;

    /* renamed from: Ӏ */
    private final int f2915;

    private AppsFlyerLibCore$InstallAttributionIdFetcher(AppsFlyerLibCore$InstallAttributionIdFetcher appsFlyerLibCore$InstallAttributionIdFetcher) {
        this.f2913 = AFExecutor.getInstance().m4147();
        this.f2910 = new AtomicInteger(0);
        this.f2914 = appsFlyerLibCore$InstallAttributionIdFetcher.f2914;
        this.f2912 = appsFlyerLibCore$InstallAttributionIdFetcher.f2912;
        this.f2911 = appsFlyerLibCore$InstallAttributionIdFetcher.f2911;
        this.f2915 = appsFlyerLibCore$InstallAttributionIdFetcher.f2915 + 1;
    }

    private AppsFlyerLibCore$InstallAttributionIdFetcher(AppsFlyerLibCore appsFlyerLibCore, Application application, String str) {
        this.f2913 = AFExecutor.getInstance().m4147();
        this.f2910 = new AtomicInteger(0);
        this.f2914 = appsFlyerLibCore;
        this.f2912 = application;
        this.f2911 = str;
        this.f2915 = 0;
    }

    /* synthetic */ AppsFlyerLibCore$InstallAttributionIdFetcher(AppsFlyerLibCore appsFlyerLibCore, Application application, String str, byte b) {
        this(appsFlyerLibCore, application, str);
    }

    public static void setUrl(Map<String, String> map) {
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if ("gcdsdk".equals(entry.getKey())) {
                f2908 = entry.getValue();
            }
        }
    }

    /* renamed from: ǃ */
    static /* synthetic */ void m4111(Map map) {
        StringBuilder sb = new StringBuilder("[GCD-A02] Calling onConversionDataSuccess with:\n");
        sb.append(map.toString());
        AFLogger.afDebugLog(sb.toString());
        AppsFlyerLibCore.ɩ().onConversionDataSuccess(map);
    }

    /* renamed from: ι */
    public static /* synthetic */ void m4110(String str) {
        if (AppsFlyerLibCore.ɩ() != null) {
            AFLogger.afDebugLog("[GCD-A02] Calling onConversionFailure with:\n".concat(String.valueOf(str)));
            AppsFlyerLibCore.ɩ().onConversionDataFail(str);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:21|(2:23|(12:25|29|30|120|31|32|(2:46|(16:48|49|(1:51)|52|(1:56)|57|58|(2:60|(1:62)(1:63))|64|65|(1:67)|68|69|(1:71)(1:72)|73|(7:118|78|(1:80)|81|82|85|86)))(2:36|(1:42)(2:43|(1:45)))|87|88|(1:90)|106|107)(1:26))|27|28|29|30|120|31|32|(1:34)|46|(0)|87|88|(0)|106|107) */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x040a, code lost:
        com.appsflyer.AFLogger.afDebugLog("[GCD-A02] Calling onConversionFailure with:\n".concat(java.lang.String.valueOf(r0)));
        com.appsflyer.AppsFlyerLibCore.ɩ().onConversionDataFail(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0422, code lost:
        com.appsflyer.AFLogger.afErrorLog(r11.getMessage(), r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x042a, code lost:
        r8.f2910.decrementAndGet();
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0432, code lost:
        if (r9 != null) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0435, code lost:
        r9.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0449, code lost:
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x044a, code lost:
        r8.f2910.decrementAndGet();
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0453, code lost:
        if (r9 != null) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0456, code lost:
        r9.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x045b, code lost:
        throw r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x03d1, code lost:
        r11 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x03d2, code lost:
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x03e0, code lost:
        if (r8.f2915 < 2) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x03e3, code lost:
        r0 = new com.appsflyer.AppsFlyerLibCore$InstallAttributionIdFetcher(r8);
        com.appsflyer.AppsFlyerLibCore.Ι(r0.f2913, r0, java.util.concurrent.TimeUnit.MILLISECONDS);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x03fe, code lost:
        r0 = r11.getMessage();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0407, code lost:
        if (com.appsflyer.AppsFlyerLibCore.ɩ() != null) goto L100;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0233 A[Catch: all -> 0x03d1, TRY_LEAVE, TryCatch #1 {all -> 0x03d1, blocks: (B:31:0x0145, B:40:0x01b1, B:42:0x01b9, B:43:0x01d0, B:45:0x01e2, B:46:0x01fa, B:48:0x0233, B:51:0x024d, B:54:0x027f, B:56:0x0286, B:58:0x0294, B:60:0x02a3, B:62:0x02af, B:63:0x02d2, B:65:0x02ec, B:67:0x02f7, B:69:0x0318, B:71:0x0336, B:72:0x0344, B:73:0x034f, B:75:0x0355, B:78:0x0364, B:80:0x037f, B:84:0x0392, B:85:0x0399, B:86:0x039c), top: B:120:0x0145, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x03c9  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 1151
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore$InstallAttributionIdFetcher.run():void");
    }
}
