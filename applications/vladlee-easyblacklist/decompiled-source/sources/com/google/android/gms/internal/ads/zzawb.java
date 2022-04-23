package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.PopupWindow;
import com.google.android.gms.ads.impl.C1542R;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.io.ByteArrayInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawb.class */
public final class zzawb {
    public static final zzddu zzdsr = new zzavv(Looper.getMainLooper());

    /* renamed from: e */
    private String f11470e;

    /* renamed from: a */
    private AtomicReference<Pattern> f11466a = new AtomicReference<>(null);

    /* renamed from: b */
    private AtomicReference<Pattern> f11467b = new AtomicReference<>(null);

    /* renamed from: c */
    private boolean f11468c = true;

    /* renamed from: d */
    private final Object f11469d = new Object();

    /* renamed from: f */
    private boolean f11471f = false;

    /* renamed from: g */
    private boolean f11472g = false;

    /* renamed from: a */
    private static int m4256a(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'A';
        if (c < 'A' || c > 'F') {
            c2 = 'a';
            if (c < 'a' || c > 'f') {
                throw new IllegalArgumentException("Invalid Hex.");
            }
        }
        return (c - c2) + 10;
    }

    /* renamed from: a */
    private static Bitmap m4254a(View view) {
        try {
            int width = view.getWidth();
            int height = view.getHeight();
            if (width == 0 || height == 0) {
                zzavs.zzez("Width or height of view is zero");
                return null;
            }
            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
            Canvas canvas = new Canvas(createBitmap);
            view.layout(0, 0, width, height);
            view.draw(canvas);
            return createBitmap;
        } catch (RuntimeException e) {
            zzavs.zzc("Fail to capture the webview", e);
            return null;
        }
    }

    /* renamed from: a */
    private static String m4257a() {
        StringBuilder sb = new StringBuilder(256);
        sb.append("Mozilla/5.0 (Linux; U; Android");
        if (Build.VERSION.RELEASE != null) {
            sb.append(" ");
            sb.append(Build.VERSION.RELEASE);
        }
        sb.append("; ");
        sb.append(Locale.getDefault());
        if (Build.DEVICE != null) {
            sb.append("; ");
            sb.append(Build.DEVICE);
            if (Build.DISPLAY != null) {
                sb.append(" Build/");
                sb.append(Build.DISPLAY);
            }
        }
        sb.append(") AppleWebKit/533 Version/4.0 Safari/533");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static String m4255a(Context context) {
        try {
            return new WebView(context).getSettings().getUserAgentString();
        } catch (Throwable th) {
            return m4257a();
        }
    }

    /* renamed from: a */
    private final JSONArray m4249a(Collection<?> collection) {
        JSONArray jSONArray = new JSONArray();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            m4248a(jSONArray, it.next());
        }
        return jSONArray;
    }

    /* renamed from: a */
    private final void m4248a(JSONArray jSONArray, Object obj) {
        Object a;
        if (obj instanceof Bundle) {
            a = zzd((Bundle) obj);
        } else if (obj instanceof Map) {
            a = zzi((Map) obj);
        } else if (obj instanceof Collection) {
            a = m4249a((Collection) obj);
        } else if (obj instanceof Object[]) {
            JSONArray jSONArray2 = new JSONArray();
            for (Object obj2 : (Object[]) obj) {
                m4248a(jSONArray2, obj2);
            }
            jSONArray.put(jSONArray2);
            return;
        } else {
            jSONArray.put(obj);
            return;
        }
        jSONArray.put(a);
    }

    /* renamed from: a */
    private final void m4247a(JSONObject jSONObject, String str, Object obj) {
        Collection<?> asList;
        Object a;
        if (obj instanceof Bundle) {
            a = zzd((Bundle) obj);
        } else if (obj instanceof Map) {
            a = zzi((Map) obj);
        } else {
            if (obj instanceof Collection) {
                if (str == null) {
                    str = "null";
                }
                asList = (Collection) obj;
            } else if (obj instanceof Object[]) {
                asList = Arrays.asList((Object[]) obj);
            } else {
                jSONObject.put(str, obj);
                return;
            }
            a = m4249a(asList);
        }
        jSONObject.put(str, a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0020, code lost:
        if (r5.equals(r0.pattern()) == false) goto L_0x0023;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m4250a(java.lang.String r3, java.util.concurrent.atomic.AtomicReference<java.util.regex.Pattern> r4, java.lang.String r5) {
        /*
            r0 = r3
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0009
            r0 = 0
            return r0
        L_0x0009:
            r0 = r4
            java.lang.Object r0 = r0.get()     // Catch: PatternSyntaxException -> 0x003d
            java.util.regex.Pattern r0 = (java.util.regex.Pattern) r0     // Catch: PatternSyntaxException -> 0x003d
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0023
            r0 = r6
            r7 = r0
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.pattern()     // Catch: PatternSyntaxException -> 0x003d
            boolean r0 = r0.equals(r1)     // Catch: PatternSyntaxException -> 0x003d
            if (r0 != 0) goto L_0x002f
        L_0x0023:
            r0 = r5
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)     // Catch: PatternSyntaxException -> 0x003d
            r7 = r0
            r0 = r4
            r1 = r7
            r0.set(r1)     // Catch: PatternSyntaxException -> 0x003d
        L_0x002f:
            r0 = r7
            r1 = r3
            java.util.regex.Matcher r0 = r0.matcher(r1)     // Catch: PatternSyntaxException -> 0x003d
            boolean r0 = r0.matches()     // Catch: PatternSyntaxException -> 0x003d
            r8 = r0
            r0 = r8
            return r0
        L_0x003d:
            r3 = move-exception
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzawb.m4250a(java.lang.String, java.util.concurrent.atomic.AtomicReference, java.lang.String):boolean");
    }

    /* renamed from: b */
    private static KeyguardManager m4246b(Context context) {
        Object systemService = context.getSystemService("keyguard");
        return (systemService == null || !(systemService instanceof KeyguardManager)) ? null : (KeyguardManager) systemService;
    }

    /* renamed from: b */
    private static Bitmap m4245b(View view) {
        Bitmap bitmap = null;
        bitmap = null;
        try {
            boolean isDrawingCacheEnabled = view.isDrawingCacheEnabled();
            view.setDrawingCacheEnabled(true);
            Bitmap drawingCache = view.getDrawingCache();
            if (drawingCache != null) {
                bitmap = Bitmap.createBitmap(drawingCache);
            }
            bitmap = bitmap;
            view.setDrawingCacheEnabled(isDrawingCacheEnabled);
        } catch (RuntimeException e) {
            zzavs.zzc("Fail to capture the web view", e);
        }
        return bitmap;
    }

    public static DisplayMetrics zza(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static PopupWindow zza(View view, int i, int i2, boolean z) {
        return new PopupWindow(view, i, i2, false);
    }

    public static String zza(InputStreamReader inputStreamReader) {
        StringBuilder sb = new StringBuilder(8192);
        char[] cArr = new char[2048];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read == -1) {
                return sb.toString();
            }
            sb.append(cArr, 0, read);
        }
    }

    public static void zza(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable th) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    public static void zza(Context context, Uri uri) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            zzb(context, intent);
            bundle.putString("com.android.browser.application_id", context.getPackageName());
            context.startActivity(intent);
            String uri2 = uri.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(uri2).length() + 26);
            sb.append("Opening ");
            sb.append(uri2);
            sb.append(" in a new browser.");
            zzavs.zzea(sb.toString());
        } catch (ActivityNotFoundException e) {
            zzavs.zzc("No browser is found.", e);
        }
    }

    public static void zza(Context context, Throwable th) {
        if (context != null) {
            boolean z = false;
            try {
                z = zzabi.zzcuk.get().booleanValue();
            } catch (IllegalStateException e) {
            }
            if (z) {
                CrashUtils.addDynamiteErrorToDropBox(context, th);
            }
        }
    }

    public static AlertDialog.Builder zzar(Context context) {
        return new AlertDialog.Builder(context);
    }

    public static zzyy zzas(Context context) {
        return new zzyy(context);
    }

    public static String zzat(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager == null || (runningTasks = activityManager.getRunningTasks(1)) == null || runningTasks.isEmpty() || (runningTaskInfo = runningTasks.get(0)) == null || runningTaskInfo.topActivity == null) {
                return null;
            }
            return runningTaskInfo.topActivity.getClassName();
        } catch (Exception e) {
            return null;
        }
    }

    public static boolean zzau(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ActivityManager.RunningAppProcessInfo next;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
            do {
                if (!it.hasNext()) {
                    return true;
                }
                next = it.next();
            } while (Process.myPid() != next.pid);
            if (next.importance != 100 || keyguardManager.inKeyguardRestrictedInputMode()) {
                return true;
            }
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            return !(powerManager == null ? false : powerManager.isScreenOn());
        } catch (Throwable th) {
            return false;
        }
    }

    public static int zzav(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null) {
            return 0;
        }
        return applicationInfo.targetSdkVersion;
    }

    public static boolean zzax(Context context) {
        KeyguardManager b;
        return context != null && PlatformVersion.isAtLeastJellyBean() && (b = m4246b(context)) != null && b.isKeyguardLocked();
    }

    public static boolean zzay(Context context) {
        try {
            context.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi");
            return false;
        } catch (ClassNotFoundException e) {
            return true;
        } catch (Throwable th) {
            zzavs.zzc("Error loading class.", th);
            zzq.zzku().zza(th, "AdUtil.isLiteSdk");
            return false;
        }
    }

    public static String zzaz(Context context) {
        return !((Boolean) zzve.zzoy().zzd(zzzn.zzcpw)).booleanValue() ? "" : context.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
    }

    public static void zzb(Context context, Intent intent) {
        if (intent != null && PlatformVersion.isAtLeastJellyBeanMR2()) {
            Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
            extras.putBinder("android.support.customtabs.extra.SESSION", null);
            extras.putString("com.android.browser.application_id", context.getPackageName());
            intent.putExtras(extras);
        }
    }

    public static void zzb(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            new zzayb(context, str, (String) obj).zzvr();
        }
    }

    public static Bundle zzba(Context context) {
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcpx)).booleanValue()) {
            return null;
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        Bundle bundle = new Bundle();
        if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
            bundle.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
        }
        for (int i = 0; i < 4; i++) {
            String str = new String[]{"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"}[i];
            if (defaultSharedPreferences.contains(str)) {
                bundle.putString(str, defaultSharedPreferences.getString(str, null));
            }
        }
        return bundle;
    }

    public static boolean zzbb(Context context) {
        Window window;
        if (!(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null || window.getDecorView() == null) {
            return false;
        }
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        window.getDecorView().getGlobalVisibleRect(rect, null);
        window.getDecorView().getWindowVisibleDisplayFrame(rect2);
        return (rect.bottom == 0 || rect2.bottom == 0 || rect.top != rect2.top) ? false : true;
    }

    public static void zzc(Context context, String str, String str2) {
        try {
            FileOutputStream openFileOutput = context.openFileOutput(str, 0);
            openFileOutput.write(str2.getBytes("UTF-8"));
            openFileOutput.close();
        } catch (Exception e) {
            zzavs.zzc("Error writing to file in internal storage.", e);
        }
    }

    public static void zzc(Runnable runnable) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            runnable.run();
        } else {
            zzazd.zzdwe.execute(runnable);
        }
    }

    public static WebResourceResponse zzd(Context context, String str, String str2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put(AbstractC0007a.HEADER_USER_AGENT, zzq.zzkq().zzr(context, str));
            hashMap.put("Cache-Control", "max-stale=3600");
            String str3 = new zzaxk(context).zzc(str2, hashMap).get(60L, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
            }
            return null;
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            zzavs.zzd("Could not fetch MRAID JS.", e);
            return null;
        }
    }

    public static WebResourceResponse zzd(HttpURLConnection httpURLConnection) {
        zzq.zzkq();
        String contentType = httpURLConnection.getContentType();
        String trim = TextUtils.isEmpty(contentType) ? "" : contentType.split(";")[0].trim();
        zzq.zzkq();
        String contentType2 = httpURLConnection.getContentType();
        String str = "";
        if (!TextUtils.isEmpty(contentType2)) {
            String[] split = contentType2.split(";");
            str = "";
            if (split.length != 1) {
                int i = 1;
                while (true) {
                    str = "";
                    if (i >= split.length) {
                        break;
                    }
                    if (split[i].trim().startsWith("charset")) {
                        String[] split2 = split[i].trim().split("=");
                        if (split2.length > 1) {
                            str = split2[1].trim();
                            break;
                        }
                    }
                    i++;
                }
            }
        }
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        HashMap hashMap = new HashMap(headerFields.size());
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null || entry.getValue().size() <= 0)) {
                hashMap.put(entry.getKey(), entry.getValue().get(0));
            }
        }
        return zzq.zzks().zza(trim, str, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), hashMap, httpURLConnection.getInputStream());
    }

    public static int[] zzd(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        return (window == null || (findViewById = window.findViewById(16908290)) == null) ? new int[]{0, 0} : new int[]{findViewById.getWidth(), findViewById.getHeight()};
    }

    public static int zzei(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
            sb.append("Could not parse value:");
            sb.append(valueOf);
            zzavs.zzez(sb.toString());
            return 0;
        }
    }

    public static boolean zzej(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("([^\\s]+(\\.(?i)(jpg|png|gif|bmp|webp))$)");
    }

    public static boolean zzem(String str) {
        if (!zzayo.isEnabled()) {
            return false;
        }
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcny)).booleanValue()) {
            return false;
        }
        String str2 = (String) zzve.zzoy().zzd(zzzn.zzcoa);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(";")) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) zzve.zzoy().zzd(zzzn.zzcnz);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(";")) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static Map<String, String> zzi(Uri uri) {
        int i;
        char c;
        int i2;
        if (!zzaay.zzctg.get().booleanValue()) {
            if (uri == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            zzq.zzks();
            for (String str : uri.getQueryParameterNames()) {
                hashMap.put(str, uri.getQueryParameter(str));
            }
            return hashMap;
        } else if (uri == null) {
            return null;
        } else {
            HashMap hashMap2 = new HashMap(20);
            String encodedQuery = uri.getEncodedQuery();
            if (encodedQuery == null) {
                return hashMap2;
            }
            int length = encodedQuery.length();
            StringBuilder sb = new StringBuilder(100);
            StringBuilder sb2 = new StringBuilder(length);
            StringBuilder sb3 = sb;
            int i3 = 0;
            while (i3 < length) {
                char charAt = encodedQuery.charAt(i3);
                if (charAt == '%') {
                    byte[] bArr = new byte[(length - i3) / 3];
                    int i4 = 0;
                    while (i3 < length - 2 && charAt == '%') {
                        try {
                            bArr[i4] = (byte) ((m4256a(encodedQuery.charAt(i3 + 1)) << 4) + m4256a(encodedQuery.charAt(i3 + 2)));
                            i2 = i4 + 1;
                        } catch (IllegalArgumentException e) {
                            i2 = i4;
                        }
                        int i5 = i3 + 3;
                        i3 = i5;
                        i4 = i2;
                        if (i5 < length) {
                            charAt = encodedQuery.charAt(i5);
                            i3 = i5;
                            i4 = i2;
                        }
                    }
                    try {
                        sb3.append(new String(bArr, 0, i4, "UTF-8"));
                    } catch (UnsupportedEncodingException e2) {
                    }
                    i = i3;
                    sb3 = sb3;
                    if (charAt != '%') {
                    }
                } else if (charAt != '&') {
                    if (charAt == '+') {
                        c = ' ';
                    } else if (charAt != '=') {
                        c = charAt;
                    } else {
                        c = charAt;
                        if (sb3 != sb2) {
                            sb3 = sb2;
                            i = i3;
                        }
                    }
                    sb3.append(c);
                    i = i3;
                    sb3 = sb3;
                } else {
                    if (sb.length() > 0 && sb3 != sb) {
                        hashMap2.put(sb.toString(), sb2.toString());
                        sb.setLength(0);
                        sb2.setLength(0);
                    }
                    sb3 = sb;
                    i = i3;
                }
                i3 = i + 1;
            }
            if (sb.length() > 0 && sb3 != sb) {
                hashMap2.put(sb.toString(), sb2.toString());
            }
            return hashMap2;
        }
    }

    public static Bitmap zzk(View view) {
        view.setDrawingCacheEnabled(true);
        Bitmap createBitmap = Bitmap.createBitmap(view.getDrawingCache());
        view.setDrawingCacheEnabled(false);
        return createBitmap;
    }

    public static Bitmap zzl(View view) {
        if (view == null) {
            return null;
        }
        Bitmap b = m4245b(view);
        Bitmap bitmap = b;
        if (b == null) {
            bitmap = m4254a(view);
        }
        return bitmap;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zzo(android.view.View r3) {
        /*
            r0 = r3
            android.view.View r0 = r0.getRootView()
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L_0x001f
            r0 = r3
            android.content.Context r0 = r0.getContext()
            r3 = r0
            r0 = r3
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L_0x001f
            r0 = r3
            android.app.Activity r0 = (android.app.Activity) r0
            r3 = r0
            goto L_0x0021
        L_0x001f:
            r0 = 0
            r3 = r0
        L_0x0021:
            r0 = r3
            if (r0 != 0) goto L_0x0027
            r0 = 0
            return r0
        L_0x0027:
            r0 = r3
            android.view.Window r0 = r0.getWindow()
            r3 = r0
            r0 = r3
            if (r0 != 0) goto L_0x0035
            r0 = r4
            r3 = r0
            goto L_0x003a
        L_0x0035:
            r0 = r3
            android.view.WindowManager$LayoutParams r0 = r0.getAttributes()
            r3 = r0
        L_0x003a:
            r0 = r3
            if (r0 == 0) goto L_0x004b
            r0 = r3
            int r0 = r0.flags
            r1 = 524288(0x80000, float:7.34684E-40)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x004b
            r0 = 1
            return r0
        L_0x004b:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzawb.zzo(android.view.View):boolean");
    }

    public static int zzp(View view) {
        if (view == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof AdapterView)) {
            parent = parent.getParent();
        }
        if (parent == null) {
            return -1;
        }
        return ((AdapterView) parent).getPositionForView(view);
    }

    public static boolean zzq(Context context, String str) {
        Context zzaa = zzarf.zzaa(context);
        return Wrappers.packageManager(zzaa).checkPermission(str, zzaa.getPackageName()) == 0;
    }

    public static String zzs(Context context, String str) {
        try {
            return new String(IOUtils.readInputStreamFully(context.openFileInput(str), true), "UTF-8");
        } catch (IOException e) {
            zzavs.zzea("Error reading from internal storage.");
            return "";
        }
    }

    public static String zzwk() {
        return UUID.randomUUID().toString();
    }

    public static String zzwl() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(" ");
        sb.append(str2);
        return sb.toString();
    }

    public static String zzwn() {
        Resources resources = zzq.zzku().getResources();
        return resources != null ? resources.getString(C1542R.string.f5899s7) : "Test Ad";
    }

    public final JSONObject zza(Bundle bundle, JSONObject jSONObject) {
        if (bundle == null) {
            return null;
        }
        try {
            return zzd(bundle);
        } catch (JSONException e) {
            zzavs.zzc("Error converting Bundle to JSON", e);
            return null;
        }
    }

    public final void zza(Context context, String str, WebSettings webSettings) {
        webSettings.setUserAgentString(zzr(context, str));
    }

    public final void zza(Context context, String str, String str2, Bundle bundle, boolean z) {
        zzq.zzkq();
        bundle.putString("device", zzwl());
        bundle.putString("eids", TextUtils.join(",", zzzn.zzqg()));
        zzve.zzou();
        zzayk.zza(context, str, str2, bundle, true, new C1856eu(context, str));
    }

    public final void zza(Context context, String str, boolean z, HttpURLConnection httpURLConnection) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestProperty(AbstractC0007a.HEADER_USER_AGENT, zzr(context, str));
        httpURLConnection.setUseCaches(false);
    }

    public final boolean zza(View view, Context context) {
        Context applicationContext = context.getApplicationContext();
        return zza(view, applicationContext != null ? (PowerManager) applicationContext.getSystemService("power") : null, m4246b(context));
    }

    public final boolean zza(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z;
        if (!zzq.zzkq().f11468c) {
            if ((keyguardManager == null ? false : keyguardManager.inKeyguardRestrictedInputMode()) && !zzo(view)) {
                z = false;
                if (view.getVisibility() != 0 && view.isShown()) {
                    if (!(powerManager == null || powerManager.isScreenOn()) || !z) {
                        return false;
                    }
                    return !((Boolean) zzve.zzoy().zzd(zzzn.zzckg)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect());
                }
            }
        }
        z = true;
        return view.getVisibility() != 0 ? false : false;
    }

    public final boolean zzao(Context context) {
        if (this.f11471f) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        context.getApplicationContext().registerReceiver(new C1858ew(this, (byte) 0), intentFilter);
        this.f11471f = true;
        return true;
    }

    public final boolean zzap(Context context) {
        if (this.f11472g) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.google.android.ads.intent.DEBUG_LOGGING_ENABLEMENT_CHANGED");
        context.getApplicationContext().registerReceiver(new C1859ex((byte) 0), intentFilter);
        this.f11472g = true;
        return true;
    }

    public final JSONObject zzd(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            m4247a(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    public final int[] zze(Activity activity) {
        int[] zzd = zzd(activity);
        return new int[]{zzve.zzou().zzb(activity, zzd[0]), zzve.zzou().zzb(activity, zzd[1])};
    }

    public final boolean zzek(String str) {
        return m4250a(str, this.f11466a, (String) zzve.zzoy().zzd(zzzn.zzcia));
    }

    public final boolean zzel(String str) {
        return m4250a(str, this.f11467b, (String) zzve.zzoy().zzd(zzzn.zzcib));
    }

    public final int[] zzf(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        int[] iArr = (window == null || (findViewById = window.findViewById(16908290)) == null) ? new int[]{0, 0} : new int[]{findViewById.getTop(), findViewById.getBottom()};
        return new int[]{zzve.zzou().zzb(activity, iArr[0]), zzve.zzou().zzb(activity, iArr[1])};
    }

    public final JSONObject zzi(Map<String, ?> map) {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                m4247a(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e) {
            String valueOf = String.valueOf(e.getMessage());
            throw new JSONException(valueOf.length() != 0 ? "Could not convert map to JSON: ".concat(valueOf) : new String("Could not convert map to JSON: "));
        }
    }

    public final String zzr(Context context, String str) {
        synchronized (this.f11469d) {
            if (this.f11470e != null) {
                return this.f11470e;
            } else if (str == null) {
                return m4257a();
            } else {
                try {
                    this.f11470e = zzq.zzks().getDefaultUserAgent(context);
                } catch (Exception e) {
                }
                if (TextUtils.isEmpty(this.f11470e)) {
                    zzve.zzou();
                    if (!zzayk.zzxe()) {
                        this.f11470e = null;
                        zzdsr.post(new RunnableC1857ev(this, context));
                        while (this.f11470e == null) {
                            try {
                                this.f11469d.wait();
                            } catch (InterruptedException e2) {
                                this.f11470e = m4257a();
                                String valueOf = String.valueOf(this.f11470e);
                                zzavs.zzez(valueOf.length() != 0 ? "Interrupted, use default user agent: ".concat(valueOf) : new String("Interrupted, use default user agent: "));
                            }
                        }
                    } else {
                        this.f11470e = m4255a(context);
                    }
                }
                String valueOf2 = String.valueOf(this.f11470e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 10 + String.valueOf(str).length());
                sb.append(valueOf2);
                sb.append(" (Mobile; ");
                sb.append(str);
                this.f11470e = sb.toString();
                try {
                    if (Wrappers.packageManager(context).isCallerInstantApp()) {
                        this.f11470e = String.valueOf(this.f11470e).concat(";aia");
                    }
                } catch (Exception e3) {
                    zzq.zzku().zza(e3, "AdUtil.getUserAgent");
                }
                this.f11470e = String.valueOf(this.f11470e).concat(")");
                return this.f11470e;
            }
        }
    }
}
