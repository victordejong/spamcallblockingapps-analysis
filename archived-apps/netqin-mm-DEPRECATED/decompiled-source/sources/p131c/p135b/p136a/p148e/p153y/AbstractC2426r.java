package p131c.p135b.p136a.p148e.p153y;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import com.applovin.impl.p483a.C6894a;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdk;
import com.mopub.common.AdType;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.lang.reflect.Field;
import java.net.HttpURLConnection;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.AbstractC2355p;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p150c.C2246b;
import p131c.p135b.p136a.p148e.p150c.C2248d;
import p131c.p135b.p136a.p148e.p151e.C2260a;
import p131c.p135b.p136a.p148e.p151e.C2267f;
/* renamed from: c.b.a.e.y.r */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/r.class */
public abstract class AbstractC2426r {
    /* renamed from: a */
    public static double m29827a(long j) {
        double d = j;
        Double.isNaN(d);
        return d / 1000.0d;
    }

    /* renamed from: a */
    public static float m29828a(float f) {
        return f * 1000.0f;
    }

    /* renamed from: a */
    public static int m29794a(JSONObject jSONObject) {
        int b = C2390i.m29916b(jSONObject, "video_completion_percent", -1, (C2341l) null);
        if (b < 0 || b > 100) {
            return 95;
        }
        return b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m29815a(p131c.p135b.p136a.p148e.C2341l r7) {
        /*
            r0 = r7
            c.b.a.e.d$e<java.lang.Long> r1 = p131c.p135b.p136a.p148e.C2251d.C2256e.f8596R3
            java.lang.Object r0 = r0.m30291a(r1)
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r8 = r0
            r0 = r7
            c.b.a.e.d$e<java.lang.Long> r1 = p131c.p135b.p136a.p148e.C2251d.C2256e.f8601S3
            java.lang.Object r0 = r0.m30291a(r1)
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r10 = r0
            long r0 = java.lang.System.currentTimeMillis()
            r12 = r0
            r0 = r12
            r14 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x003d
            r0 = r12
            r14 = r0
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x003d
            r0 = r12
            r1 = r8
            r2 = r10
            long r1 = r1 - r2
            long r0 = r0 + r1
            r14 = r0
        L_0x003d:
            r0 = r14
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p148e.p153y.AbstractC2426r.m29815a(c.b.a.e.l):long");
    }

    /* renamed from: a */
    public static Activity m29818a(View view, C2341l lVar) {
        if (view == null) {
            return null;
        }
        int i = 0;
        while (i < 1000) {
            i++;
            try {
                Context context = view.getContext();
                if (context instanceof Activity) {
                    return (Activity) context;
                }
                ViewParent parent = view.getParent();
                if (!(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } catch (Throwable th) {
                lVar.m30262d0().m30043b("Utils", "Encountered error while retrieving activity from view", th);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static Bitmap m29824a(Context context, int i, int i2) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            int i3 = 1;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeResource(context.getResources(), i);
            if (options.outHeight > i2 || options.outWidth > i2) {
                double d = i2;
                double max = Math.max(options.outHeight, options.outWidth);
                Double.isNaN(d);
                Double.isNaN(max);
                i3 = (int) Math.pow(2.0d, (int) Math.ceil(Math.log(d / max) / Math.log(0.5d)));
            }
            new BitmapFactory.Options().inSampleSize = i3;
            Bitmap decodeResource = BitmapFactory.decodeResource(context.getResources(), i);
            m29810a((Closeable) null, (C2341l) null);
            m29810a((Closeable) null, (C2341l) null);
            return decodeResource;
        } catch (Exception e) {
            m29810a((Closeable) null, (C2341l) null);
            m29810a((Closeable) null, (C2341l) null);
            return null;
        } catch (Throwable th) {
            m29810a((Closeable) null, (C2341l) null);
            m29810a((Closeable) null, (C2341l) null);
            throw th;
        }
    }

    /* renamed from: a */
    public static Bitmap m29809a(File file, int i) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2;
        Throwable th;
        FileInputStream fileInputStream3;
        FileInputStream fileInputStream4;
        BitmapFactory.Options options;
        FileInputStream fileInputStream5;
        try {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            int i2 = 1;
            options2.inJustDecodeBounds = true;
            fileInputStream = new FileInputStream(file);
            try {
                BitmapFactory.decodeStream(fileInputStream, null, options2);
                fileInputStream.close();
                if (options2.outHeight > i || options2.outWidth > i) {
                    double d = i;
                    double max = Math.max(options2.outHeight, options2.outWidth);
                    Double.isNaN(d);
                    Double.isNaN(max);
                    i2 = (int) Math.pow(2.0d, (int) Math.ceil(Math.log(d / max) / Math.log(0.5d)));
                }
                options = new BitmapFactory.Options();
                options.inSampleSize = i2;
                fileInputStream5 = new FileInputStream(file);
            } catch (Exception e) {
                fileInputStream2 = null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream4 = null;
                fileInputStream3 = fileInputStream;
            }
        } catch (Exception e2) {
            fileInputStream2 = null;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream4 = null;
            fileInputStream3 = null;
        }
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(fileInputStream5, null, options);
            fileInputStream5.close();
            m29810a((Closeable) fileInputStream, (C2341l) null);
            m29810a((Closeable) fileInputStream5, (C2341l) null);
            return decodeStream;
        } catch (Exception e3) {
            fileInputStream2 = fileInputStream5;
            m29810a((Closeable) fileInputStream, (C2341l) null);
            m29810a((Closeable) fileInputStream2, (C2341l) null);
            return null;
        } catch (Throwable th4) {
            th = th4;
            fileInputStream4 = fileInputStream5;
            fileInputStream3 = fileInputStream;
            m29810a((Closeable) fileInputStream3, (C2341l) null);
            m29810a((Closeable) fileInputStream4, (C2341l) null);
            throw th;
        }
    }

    /* renamed from: a */
    public static View m29822a(Context context, View view) {
        View c = m29780c(context);
        return c != null ? c : m29821a(view);
    }

    /* renamed from: a */
    public static View m29821a(View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        if (rootView == null) {
            return null;
        }
        View findViewById = rootView.findViewById(16908290);
        if (findViewById != null) {
            rootView = findViewById;
        }
        return rootView;
    }

    /* renamed from: a */
    public static C2246b m29793a(JSONObject jSONObject, C2341l lVar) {
        return C2246b.m30646a(AppLovinAdSize.fromString(C2390i.m29913b(jSONObject, "ad_size", (String) null, lVar)), AppLovinAdType.fromString(C2390i.m29913b(jSONObject, "ad_type", (String) null, lVar)), C2390i.m29913b(jSONObject, "zone_id", (String) null, lVar), lVar);
    }

    /* renamed from: a */
    public static C2341l m29811a(AppLovinSdk appLovinSdk) {
        try {
            Field declaredField = appLovinSdk.getClass().getDeclaredField("mSdkImpl");
            declaredField.setAccessible(true);
            return (C2341l) declaredField.get(appLovinSdk);
        } catch (Throwable th) {
            throw new IllegalStateException("Internal error - unable to retrieve SDK implementation: " + th);
        }
    }

    /* renamed from: a */
    public static AppLovinAd m29814a(AppLovinAd appLovinAd, C2341l lVar) {
        AppLovinAd appLovinAd2 = appLovinAd;
        if (appLovinAd instanceof C2248d) {
            C2248d dVar = (C2248d) appLovinAd;
            AppLovinAd dequeueAd = lVar.m30299W().dequeueAd(dVar.getAdZone());
            C2374t d0 = lVar.m30262d0();
            d0.m30044b("Utils", "Dequeued ad for dummy ad: " + dequeueAd);
            if (dequeueAd != null) {
                dVar.m30611a(dequeueAd);
                ((AppLovinAdBase) dequeueAd).setDummyAd(dVar);
                return dequeueAd;
            }
            appLovinAd2 = dVar.m30612a();
        }
        return appLovinAd2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ea, code lost:
        if (r0.length() > r10) goto L_0x011a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0117, code lost:
        if (r0.length() > r10) goto L_0x011a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x011a, code lost:
        r7 = r0.substring(0, r10);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m29807a(java.lang.Object r5, p131c.p135b.p136a.p148e.C2341l r6) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p148e.p153y.AbstractC2426r.m29807a(java.lang.Object, c.b.a.e.l):java.lang.Object");
    }

    /* renamed from: a */
    public static String m29816a(C2251d.C2258g<String> gVar, C2341l lVar) {
        return (String) lVar.m30273b(gVar, "");
    }

    /* renamed from: a */
    public static String m29805a(String str) {
        return (str == null || str.length() <= 4) ? "NOKEY" : str.substring(str.length() - 4);
    }

    /* renamed from: a */
    public static String m29795a(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append((Object) entry.getKey());
            sb.append('=');
            sb.append((Object) entry.getValue());
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m29791a(boolean z, String str) {
        return str.replace("{PLACEMENT}", "").replace("{SOC}", String.valueOf(z));
    }

    /* renamed from: a */
    public static Field m29808a(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Class superclass = cls.getSuperclass();
            if (superclass == null) {
                return null;
            }
            return m29808a(superclass, str);
        }
    }

    /* renamed from: a */
    public static List<C2260a> m29801a(String str, JSONObject jSONObject, String str2, String str3, C2341l lVar) {
        return m29800a(str, jSONObject, str2, (Map<String, String>) null, str3, lVar);
    }

    /* renamed from: a */
    public static List<C2260a> m29800a(String str, JSONObject jSONObject, String str2, Map<String, String> map, String str3, C2341l lVar) {
        return m29799a(str, jSONObject, str2, map, str3, null, lVar);
    }

    /* renamed from: a */
    public static List<C2260a> m29799a(String str, JSONObject jSONObject, String str2, Map<String, String> map, String str3, Map<String, String> map2, C2341l lVar) {
        if (map == null) {
            map = new HashMap<>(1);
        }
        map.put("{CLCODE}", str2);
        return m29798a(str, jSONObject, map, str3, map2, lVar);
    }

    /* renamed from: a */
    public static List<C2260a> m29798a(String str, JSONObject jSONObject, Map<String, String> map, String str2, Map<String, String> map2, C2341l lVar) {
        JSONObject b = C2390i.m29911b(jSONObject, str, new JSONObject(), lVar);
        ArrayList arrayList = new ArrayList(b.length() + 1);
        if (C2422o.m29851b(str2)) {
            arrayList.add(new C2260a(str2, null, map2));
        }
        if (b.length() > 0) {
            Iterator<String> keys = b.keys();
            while (keys.hasNext()) {
                try {
                    String next = keys.next();
                    if (!TextUtils.isEmpty(next)) {
                        String optString = b.optString(next);
                        String a = C2422o.m29854a(next, map);
                        String str3 = optString;
                        if (!TextUtils.isEmpty(optString)) {
                            str3 = C2422o.m29854a(optString, map);
                        }
                        arrayList.add(new C2260a(a, str3, map2));
                    }
                } catch (Throwable th) {
                    lVar.m30262d0().m30043b("Utils", "Failed to create and add postback url.", th);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static List<Class> m29796a(List<String> list, C2341l lVar) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            try {
                arrayList.add(Class.forName(str));
            } catch (ClassNotFoundException e) {
                C2374t d0 = lVar.m30262d0();
                d0.m30039e("Utils", "Failed to create class for name: " + str);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static List<Uri> m29792a(boolean z, AbstractC7036g gVar, C2341l lVar, Context context) {
        if (gVar instanceof C6894a) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Uri uri : gVar.m18956E0()) {
            if (!lVar.m30239t().m30064b(uri.getLastPathSegment(), context)) {
                C2374t d0 = lVar.m30262d0();
                d0.m30039e("Utils", "Cached HTML asset missing: " + uri);
                arrayList.add(uri);
            }
        }
        if (z) {
            Uri t0 = gVar.mo18871t0();
            if (!lVar.m30239t().m30064b(t0.getLastPathSegment(), context)) {
                C2374t d02 = lVar.m30262d0();
                d02.m30039e("Utils", "Cached video missing: " + t0);
                arrayList.add(t0);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m29817a(C2251d.C2258g<String> gVar, int i, C2341l lVar) {
        if (TextUtils.isEmpty((String) lVar.m30290a(gVar))) {
            double random = Math.random();
            double d = i;
            Double.isNaN(d);
            lVar.m30289a((C2251d.C2258g<C2251d.C2258g<String>>) gVar, (C2251d.C2258g<String>) String.valueOf(((int) (random * d)) + 1));
        }
    }

    /* renamed from: a */
    public static void m29813a(AppLovinAdLoadListener appLovinAdLoadListener, C2246b bVar, int i, C2341l lVar) {
        if (appLovinAdLoadListener != null) {
            try {
                if (appLovinAdLoadListener instanceof AbstractC2355p) {
                    ((AbstractC2355p) appLovinAdLoadListener).mo30032a(bVar, i);
                } else {
                    appLovinAdLoadListener.failedToReceiveAd(i);
                }
            } catch (Throwable th) {
                lVar.m30262d0().m30043b("Utils", "Unable process a failure to receive an ad", th);
            }
        }
    }

    /* renamed from: a */
    public static void m29810a(Closeable closeable, C2341l lVar) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                if (lVar != null) {
                    C2374t d0 = lVar.m30262d0();
                    d0.m30043b("Utils", "Unable to close stream: " + closeable, th);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m29804a(String str, String str2, Map<String, String> map) {
        if (!TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        }
    }

    /* renamed from: a */
    public static void m29802a(String str, JSONObject jSONObject, C2341l lVar) {
        if (jSONObject.has("no_fill_reason")) {
            Object b = C2390i.m29914b(jSONObject, "no_fill_reason", new Object(), lVar);
            C2374t.m30034j(AppLovinSdk.TAG, "\n**************************************************\nNO FILL received:\n..ID: \"" + str + "\"\n..SDK KEY: \"" + lVar.m30269b0() + "\"\n..PACKAGE NAME: \"" + lVar.m30264d().getPackageName() + "\"\n..Reason: " + b + "\n**************************************************\n");
        }
    }

    /* renamed from: a */
    public static void m29797a(HttpURLConnection httpURLConnection, C2341l lVar) {
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Throwable th) {
                if (lVar != null) {
                    C2374t d0 = lVar.m30262d0();
                    d0.m30043b("Utils", "Unable to disconnect connection: " + httpURLConnection, th);
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m29829a() {
        Context i0 = C2341l.m30250i0();
        if (i0 != null) {
            return C2383c.m29991a(i0).m29990a("applovin.sdk.verbose_logging");
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m29826a(long j, long j2) {
        return (j & j2) != 0;
    }

    /* renamed from: a */
    public static boolean m29825a(Context context) {
        Context context2 = context;
        if (context == null) {
            context2 = C2341l.m30250i0();
        }
        if (context2 != null) {
            return C2383c.m29991a(context2).m29988a("applovin.sdk.verbose_logging", false);
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m29823a(Context context, Uri uri, C2341l lVar) {
        boolean z;
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            if (!(context instanceof Activity)) {
                intent.setFlags(268435456);
            }
            if (((Boolean) lVar.m30291a(C2251d.C2256e.f8662e4)).booleanValue() && "market".equals(intent.getScheme())) {
                intent.setPackage("com.android.vending");
            }
            lVar.m30236w().m29744b();
            context.startActivity(intent);
            z = true;
        } catch (Throwable th) {
            C2374t d0 = lVar.m30262d0();
            d0.m30043b("Utils", "Unable to open \"" + uri + "\".", th);
            z = false;
        }
        if (!z) {
            lVar.m30236w().m29742c();
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m29820a(View view, Activity activity) {
        View rootView;
        if (activity == null || view == null) {
            return false;
        }
        Window window = activity.getWindow();
        if (window != null) {
            rootView = window.getDecorView();
        } else {
            View findViewById = activity.findViewById(16908290);
            if (findViewById == null) {
                return false;
            }
            rootView = findViewById.getRootView();
        }
        return m29819a(view, rootView);
    }

    /* renamed from: a */
    public static boolean m29819a(View view, View view2) {
        if (view == view2) {
            return true;
        }
        if (!(view2 instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view2;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            if (m29819a(view, viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m29812a(AppLovinAdSize appLovinAdSize) {
        return appLovinAdSize == AppLovinAdSize.BANNER || appLovinAdSize == AppLovinAdSize.MREC || appLovinAdSize == AppLovinAdSize.LEADER;
    }

    /* renamed from: a */
    public static boolean m29806a(Object obj, List<String> list, C2341l lVar) {
        if (list == null) {
            return false;
        }
        for (Class cls : m29796a(list, lVar)) {
            if (cls.isInstance(obj)) {
                if (obj instanceof Map) {
                    for (Map.Entry entry : ((Map) obj).entrySet()) {
                        if (!(entry.getKey() instanceof String)) {
                            lVar.m30262d0().m30044b("Utils", "Invalid key type used. Map keys should be of type String.");
                            return false;
                        } else if (!m29806a(entry.getValue(), list, lVar)) {
                            return false;
                        }
                    }
                    return true;
                } else if (!(obj instanceof List)) {
                    return true;
                } else {
                    for (Object obj2 : (List) obj) {
                        if (!m29806a(obj2, list, lVar)) {
                            return false;
                        }
                    }
                    return true;
                }
            }
        }
        C2374t d0 = lVar.m30262d0();
        d0.m30044b("Utils", "Object '" + obj + "' does not match any of the required types '" + list + "'.");
        return false;
    }

    /* renamed from: a */
    public static boolean m29803a(String str, List<String> list) {
        for (String str2 : list) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static int m29788b(Context context) {
        Resources resources;
        Configuration configuration;
        if (context == null || (resources = context.getResources()) == null || (configuration = resources.getConfiguration()) == null) {
            return 0;
        }
        return configuration.orientation;
    }

    /* renamed from: b */
    public static long m29789b(float f) {
        return m29781c(m29828a(f));
    }

    /* renamed from: b */
    public static String m29785b(Class cls, String str) {
        try {
            Field a = m29808a(cls, str);
            a.setAccessible(true);
            return (String) a.get(null);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    public static String m29784b(String str) {
        return m29791a(false, str);
    }

    /* renamed from: b */
    public static Map<String, String> m29783b(Map<String, String> map) {
        HashMap hashMap = new HashMap(map);
        for (String str : hashMap.keySet()) {
            String str2 = (String) hashMap.get(str);
            if (str2 != null) {
                hashMap.put(str, C2422o.m29847e(str2));
            }
        }
        return hashMap;
    }

    /* renamed from: b */
    public static void m29786b(AppLovinAd appLovinAd, C2341l lVar) {
        if (appLovinAd instanceof AppLovinAdBase) {
            String b0 = lVar.m30269b0();
            String b02 = ((AppLovinAdBase) appLovinAd).getSdk().m30269b0();
            if (!b0.equals(b02)) {
                C2374t.m30034j("AppLovinAd", "Ad was loaded from sdk with key: " + b02 + ", but is being rendered from sdk with key: " + b0);
                lVar.m30248k().m30522a(C2267f.f8891o);
            }
        }
    }

    /* renamed from: b */
    public static boolean m29790b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: b */
    public static boolean m29787b(C2341l lVar) {
        return (lVar.m30264d().getApplicationInfo().flags & 2) != 0;
    }

    /* renamed from: c */
    public static long m29781c(float f) {
        return Math.round(f);
    }

    /* renamed from: c */
    public static View m29780c(Context context) {
        if (!(context instanceof Activity)) {
            return null;
        }
        return ((Activity) context).getWindow().getDecorView().findViewById(16908290);
    }

    /* renamed from: c */
    public static MaxAdFormat m29779c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.equalsIgnoreCase("banner")) {
            return MaxAdFormat.BANNER;
        }
        if (str.equalsIgnoreCase("mrec")) {
            return MaxAdFormat.MREC;
        }
        if (str.equalsIgnoreCase("leaderboard") || str.equalsIgnoreCase("leader")) {
            return MaxAdFormat.LEADER;
        }
        if (str.equalsIgnoreCase(AdType.INTERSTITIAL) || str.equalsIgnoreCase("inter")) {
            return MaxAdFormat.INTERSTITIAL;
        }
        if (str.equalsIgnoreCase("rewarded") || str.equalsIgnoreCase("reward")) {
            return MaxAdFormat.REWARDED;
        }
        throw new IllegalArgumentException("Unknown format: " + str);
    }

    /* renamed from: c */
    public static boolean m29782c() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        try {
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
        } catch (Throwable th) {
            C2374t.m30041c("Utils", "Exception thrown while getting memory state.", th);
        }
        int i = runningAppProcessInfo.importance;
        return i == 100 || i == 200;
    }

    /* renamed from: d */
    public static String m29777d(Context context) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (!queryIntentActivities.isEmpty()) {
            return queryIntentActivities.get(0).activityInfo.name;
        }
        return null;
    }

    /* renamed from: d */
    public static String m29776d(String str) {
        Uri parse = Uri.parse(str);
        return new Uri.Builder().scheme(parse.getScheme()).authority(parse.getAuthority()).path(parse.getPath()).build().toString();
    }

    /* renamed from: d */
    public static boolean m29778d() {
        String displayName;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            do {
                if (!networkInterfaces.hasMoreElements()) {
                    return false;
                }
                displayName = networkInterfaces.nextElement().getDisplayName();
                if (displayName.contains("tun") || displayName.contains("ppp")) {
                    return true;
                }
            } while (!displayName.contains("ipsec"));
            return true;
        } catch (Throwable th) {
            C2374t.m30041c("Utils", "Unable to check Network Interfaces", th);
            return false;
        }
    }

    /* renamed from: e */
    public static int m29774e(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null) {
            return 0;
        }
        return windowManager.getDefaultDisplay().getRotation();
    }

    /* renamed from: e */
    public static String m29775e() {
        Field[] fields;
        try {
            for (Field field : Build.VERSION_CODES.class.getFields()) {
                if (field.getInt(null) == Build.VERSION.SDK_INT) {
                    return field.getName();
                }
            }
            return "";
        } catch (Throwable th) {
            C2374t.m30041c("Utils", "Unable to get Android SDK codename", th);
            return "";
        }
    }

    /* renamed from: e */
    public static boolean m29773e(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Class.forName(str);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: f */
    public static long m29771f(String str) {
        if (!C2422o.m29851b(str)) {
            return Long.MAX_VALUE;
        }
        try {
            return Color.parseColor(str);
        } catch (Throwable th) {
            return Long.MAX_VALUE;
        }
    }

    /* renamed from: f */
    public static String m29772f() {
        try {
            return (String) Class.forName("com.safedk.android.SafeDK").getMethod("getVersion", new Class[0]).invoke(null, new Object[0]);
        } catch (Throwable th) {
            return "";
        }
    }
}
