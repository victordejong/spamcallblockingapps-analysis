package com.facebook.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.view.autofill.AutofillManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.ads.ExtraHints;
import com.facebook.appevents.C2288p;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import io.realm.internal.async.RealmThreadPoolExecutor;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
import p081h.p154f.C6131k;
import p081h.p154f.C6135n;
import p081h.p154f.C6148s;
import p081h.p154f.EnumC6149t;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: com.facebook.internal.g0 */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/g0.class */
public final class C2408g0 {

    /* renamed from: a */
    public static int f3000a = 0;

    /* renamed from: b */
    public static long f3001b = -1;

    /* renamed from: c */
    public static long f3002c = -1;

    /* renamed from: d */
    public static long f3003d = -1;

    /* renamed from: e */
    public static String f3004e = "";

    /* renamed from: f */
    public static String f3005f = "";

    /* renamed from: g */
    public static String f3006g = "NoCarrier";

    /* renamed from: com.facebook.internal.g0$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/g0$a.class */
    public static final class C2409a implements GraphRequest.AbstractC2230f {

        /* renamed from: a */
        public final /* synthetic */ AbstractC2411c f3007a;

        /* renamed from: b */
        public final /* synthetic */ String f3008b;

        public C2409a(AbstractC2411c cVar, String str) {
            this.f3007a = cVar;
            this.f3008b = str;
        }

        @Override // com.facebook.GraphRequest.AbstractC2230f
        /* renamed from: a */
        public void mo23821a(C6148s sVar) {
            if (sVar.m23705a() != null) {
                this.f3007a.mo2366a(sVar.m23705a().m35471q());
                return;
            }
            C2397c0.m34905a(this.f3008b, sVar.m23698b());
            this.f3007a.onSuccess(sVar.m23698b());
        }
    }

    /* renamed from: com.facebook.internal.g0$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/g0$b.class */
    public static final class C2410b implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return Pattern.matches("cpu[0-9]+", str);
        }
    }

    /* renamed from: com.facebook.internal.g0$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/g0$c.class */
    public interface AbstractC2411c {
        /* renamed from: a */
        void mo2366a(C6131k kVar);

        void onSuccess(JSONObject jSONObject);
    }

    /* renamed from: com.facebook.internal.g0$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/g0$d.class */
    public interface AbstractC2412d<T, K> {
        K apply(T t);
    }

    /* renamed from: com.facebook.internal.g0$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/g0$e.class */
    public static class C2413e {

        /* renamed from: a */
        public List<String> f3009a;

        /* renamed from: b */
        public List<String> f3010b;

        /* renamed from: c */
        public List<String> f3011c;

        public C2413e(List<String> list, List<String> list2, List<String> list3) {
            this.f3009a = list;
            this.f3010b = list2;
            this.f3011c = list3;
        }

        /* renamed from: a */
        public List<String> m34802a() {
            return this.f3010b;
        }

        /* renamed from: b */
        public List<String> m34801b() {
            return this.f3011c;
        }

        /* renamed from: c */
        public List<String> m34800c() {
            return this.f3009a;
        }
    }

    /* renamed from: a */
    public static int m34860a(InputStream inputStream, OutputStream outputStream) throws IOException {
        Throwable th;
        BufferedInputStream bufferedInputStream;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream);
            try {
                byte[] bArr = new byte[8192];
                int i = 0;
                while (true) {
                    int read = bufferedInputStream2.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    outputStream.write(bArr, 0, read);
                    i += read;
                }
                bufferedInputStream2.close();
                if (inputStream != null) {
                    inputStream.close();
                }
                return i;
            } catch (Throwable th2) {
                th = th2;
                bufferedInputStream = bufferedInputStream2;
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedInputStream = null;
        }
    }

    /* renamed from: a */
    public static long m34875a(double d) {
        return Math.round(d / 1.073741824E9d);
    }

    /* renamed from: a */
    public static long m34871a(Uri uri) {
        Cursor cursor = null;
        try {
            Cursor query = C6135n.m23746e().getContentResolver().query(uri, null, null, null, null);
            int columnIndex = query.getColumnIndex("_size");
            query.moveToFirst();
            cursor = query;
            long j = query.getLong(columnIndex);
            if (query != null) {
                query.close();
            }
            return j;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static Uri m34851a(String str, String str2, Bundle bundle) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        builder.authority(str);
        builder.path(str2);
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    builder.appendQueryParameter(str3, (String) obj);
                }
            }
        }
        return builder.build();
    }

    /* renamed from: a */
    public static Object m34857a(Object obj, Method method, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static Object m34837a(JSONObject jSONObject, String str, String str2) throws JSONException {
        Object opt = jSONObject.opt(str);
        Object obj = opt;
        if (opt != null) {
            obj = opt;
            if (opt instanceof String) {
                obj = new JSONTokener((String) opt).nextValue();
            }
        }
        if (obj == null || (obj instanceof JSONObject) || (obj instanceof JSONArray)) {
            return obj;
        }
        if (str2 != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt(str2, obj);
            return jSONObject2;
        }
        throw new C6131k("Got an unexpected non-JSON object.");
    }

    /* renamed from: a */
    public static String m34874a(int i) {
        return new BigInteger(i * 5, new Random()).toString(32);
    }

    /* renamed from: a */
    public static String m34861a(InputStream inputStream) throws IOException {
        InputStreamReader inputStreamReader;
        BufferedInputStream bufferedInputStream;
        Throwable th;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                inputStreamReader = new InputStreamReader(bufferedInputStream);
                try {
                    StringBuilder sb = new StringBuilder();
                    char[] cArr = new char[2048];
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read != -1) {
                            sb.append(cArr, 0, read);
                        } else {
                            String sb2 = sb.toString();
                            m34863a((Closeable) bufferedInputStream);
                            m34863a(inputStreamReader);
                            return sb2;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    m34863a((Closeable) bufferedInputStream);
                    m34863a(inputStreamReader);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStreamReader = null;
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedInputStream = null;
            inputStreamReader = null;
        }
    }

    /* renamed from: a */
    public static String m34852a(String str, String str2) {
        return m34816d(str) ? str2 : str;
    }

    /* renamed from: a */
    public static String m34848a(String str, byte[] bArr) {
        try {
            return m34846a(MessageDigest.getInstance(str), bArr);
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static String m34846a(MessageDigest messageDigest, byte[] bArr) {
        messageDigest.update(bArr);
        byte[] digest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b : digest) {
            sb.append(Integer.toHexString((b >> 4) & 15));
            sb.append(Integer.toHexString((b >> 0) & 15));
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static String m34843a(Map<String, String> map) {
        if (map.isEmpty()) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            return "";
        }
    }

    /* renamed from: a */
    public static String m34838a(JSONObject jSONObject, String str) {
        String str2 = "";
        if (jSONObject != null) {
            str2 = jSONObject.optString(str, "");
        }
        return str2;
    }

    /* renamed from: a */
    public static String m34836a(byte[] bArr) {
        return m34848a("SHA-1", bArr);
    }

    /* renamed from: a */
    public static Method m34859a(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static Method m34849a(String str, String str2, Class<?>... clsArr) {
        try {
            return m34859a(Class.forName(str), str2, clsArr);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static Date m34867a(Bundle bundle, String str, Date date) {
        Date date2;
        long j;
        if (bundle == null) {
            return null;
        }
        Object obj = bundle.get(str);
        if (obj instanceof Long) {
            j = ((Long) obj).longValue();
        } else {
            date2 = null;
            if (obj instanceof String) {
                try {
                    j = Long.parseLong((String) obj);
                } catch (NumberFormatException e) {
                    date2 = null;
                }
            }
            return date2;
        }
        if (j == 0) {
            return new Date(Long.MAX_VALUE);
        }
        date2 = new Date(date.getTime() + (j * 1000));
        return date2;
    }

    /* renamed from: a */
    public static <T, K> List<K> m34844a(List<T> list, AbstractC2412d<T, K> dVar) {
        ArrayList arrayList = null;
        if (list == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        for (T t : list) {
            K apply = dVar.apply(t);
            if (apply != null) {
                arrayList2.add(apply);
            }
        }
        if (arrayList2.size() != 0) {
            arrayList = arrayList2;
        }
        return arrayList;
    }

    /* renamed from: a */
    public static <T> List<T> m34835a(T... tArr) {
        ArrayList arrayList = new ArrayList();
        for (T t : tArr) {
            if (t != null) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static Map<String, String> m34866a(Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < readInt; i++) {
            hashMap.put(parcel.readString(), parcel.readString());
        }
        return hashMap;
    }

    /* renamed from: a */
    public static Map<String, String> m34855a(String str) {
        if (str.isEmpty()) {
            return new HashMap();
        }
        try {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
            return hashMap;
        } catch (JSONException e) {
            return new HashMap();
        }
    }

    /* renamed from: a */
    public static Map<String, String> m34841a(@NonNull JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString = jSONObject.optString(next);
            if (optString != null) {
                hashMap.put(next, optString);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static Set<String> m34842a(JSONArray jSONArray) throws JSONException {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            hashSet.add(jSONArray.getString(i));
        }
        return hashSet;
    }

    /* renamed from: a */
    public static void m34873a(Context context) {
        m34872a(context, "facebook.com");
        m34872a(context, ".facebook.com");
        m34872a(context, "https://facebook.com");
        m34872a(context, "https://.facebook.com");
    }

    /* renamed from: a */
    public static void m34872a(Context context, String str) {
        String[] split;
        CookieSyncManager.createInstance(context).sync();
        CookieManager instance = CookieManager.getInstance();
        String cookie = instance.getCookie(str);
        if (cookie != null) {
            for (String str2 : cookie.split(ExtraHints.KEYWORD_SEPARATOR)) {
                if (str2.split("=").length > 0) {
                    instance.setCookie(str, split[0].trim() + "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
                }
            }
            instance.removeExpiredCookie();
        }
    }

    /* renamed from: a */
    public static void m34870a(Bundle bundle, String str, Uri uri) {
        if (uri != null) {
            m34868a(bundle, str, uri.toString());
        }
    }

    /* renamed from: a */
    public static void m34868a(Bundle bundle, String str, String str2) {
        if (!m34816d(str2)) {
            bundle.putString(str, str2);
        }
    }

    /* renamed from: a */
    public static void m34865a(Parcel parcel, Map<String, String> map) {
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    /* renamed from: a */
    public static void m34863a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public static void m34862a(File file) {
        File[] listFiles;
        if (file.exists()) {
            if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    m34862a(file2);
                }
            }
            file.delete();
        }
    }

    /* renamed from: a */
    public static void m34856a(Runnable runnable) {
        try {
            C6135n.m23737n().execute(runnable);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static void m34854a(String str, AbstractC2411c cVar) {
        JSONObject a = C2397c0.m34906a(str);
        if (a != null) {
            cVar.onSuccess(a);
            return;
        }
        C2409a aVar = new C2409a(cVar, str);
        GraphRequest c = m34822c(str);
        c.m35459a((GraphRequest.AbstractC2230f) aVar);
        c.m35430c();
    }

    /* renamed from: a */
    public static void m34853a(String str, Exception exc) {
        if (C6135n.m23732s() && str != null && exc != null) {
            String str2 = exc.getClass().getSimpleName() + ": " + exc.getMessage();
        }
    }

    /* renamed from: a */
    public static void m34850a(String str, String str2, Throwable th) {
        if (C6135n.m23732s()) {
            m34816d(str);
        }
    }

    /* renamed from: a */
    public static void m34847a(URLConnection uRLConnection) {
        if (uRLConnection != null && (uRLConnection instanceof HttpURLConnection)) {
            ((HttpURLConnection) uRLConnection).disconnect();
        }
    }

    /* renamed from: a */
    public static void m34840a(JSONObject jSONObject, Context context) throws JSONException {
        String str;
        Locale locale;
        int i;
        WindowManager windowManager;
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("a2");
        m34803i(context);
        String packageName = context.getPackageName();
        r12 = 0;
        int i2 = 0;
        int i3 = -1;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            int i4 = packageInfo.versionCode;
            i3 = i4;
            str = packageInfo.versionName;
            i3 = i4;
        } catch (PackageManager.NameNotFoundException e) {
            str = "";
        }
        jSONArray.put(packageName);
        jSONArray.put(i3);
        jSONArray.put(str);
        jSONArray.put(Build.VERSION.RELEASE);
        jSONArray.put(Build.MODEL);
        try {
            locale = context.getResources().getConfiguration().locale;
        } catch (Exception e2) {
            locale = Locale.getDefault();
        }
        jSONArray.put(locale.getLanguage() + "_" + locale.getCountry());
        jSONArray.put(f3004e);
        jSONArray.put(f3006g);
        double d = 0.0d;
        try {
            windowManager = (WindowManager) context.getSystemService("window");
        } catch (Exception e3) {
        }
        if (windowManager != null) {
            Display defaultDisplay = windowManager.getDefaultDisplay();
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            int i5 = displayMetrics.widthPixels;
            try {
                int i6 = displayMetrics.heightPixels;
                i2 = i6;
                d = displayMetrics.density;
                i2 = i6;
                i = i5;
            } catch (Exception e4) {
                i = i5;
            }
            jSONArray.put(i);
            jSONArray.put(i2);
            jSONArray.put(new DecimalFormat("#.##").format(d));
            jSONArray.put(m34811f());
            jSONArray.put(f3002c);
            jSONArray.put(f3003d);
            jSONArray.put(f3005f);
            jSONObject.put("extinfo", jSONArray.toString());
        }
        i = 0;
        jSONArray.put(i);
        jSONArray.put(i2);
        jSONArray.put(new DecimalFormat("#.##").format(d));
        jSONArray.put(m34811f());
        jSONArray.put(f3002c);
        jSONArray.put(f3003d);
        jSONArray.put(f3005f);
        jSONObject.put("extinfo", jSONArray.toString());
    }

    /* renamed from: a */
    public static void m34839a(JSONObject jSONObject, C2381b bVar, String str, boolean z) throws JSONException {
        jSONObject.put("anon_id", str);
        jSONObject.put("application_tracking_enabled", !z);
        if (bVar != null) {
            if (bVar.m34926c() != null) {
                jSONObject.put("attribution", bVar.m34926c());
            }
            if (bVar.m34931a() != null) {
                jSONObject.put("advertiser_id", bVar.m34931a());
                jSONObject.put("advertiser_tracking_enabled", !bVar.m34924d());
            }
            if (!bVar.m34924d()) {
                String d = C2288p.m35273d();
                if (!d.isEmpty()) {
                    jSONObject.put("ud", d);
                }
            }
            if (bVar.m34928b() != null) {
                jSONObject.put("installer_package", bVar.m34928b());
            }
        }
    }

    /* renamed from: a */
    public static boolean m34876a() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    /* renamed from: a */
    public static boolean m34869a(Bundle bundle, String str, Object obj) {
        if (obj == null) {
            bundle.remove(str);
            return true;
        } else if (obj instanceof Boolean) {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            return true;
        } else if (obj instanceof boolean[]) {
            bundle.putBooleanArray(str, (boolean[]) obj);
            return true;
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
            return true;
        } else if (obj instanceof double[]) {
            bundle.putDoubleArray(str, (double[]) obj);
            return true;
        } else if (obj instanceof Integer) {
            bundle.putInt(str, ((Integer) obj).intValue());
            return true;
        } else if (obj instanceof int[]) {
            bundle.putIntArray(str, (int[]) obj);
            return true;
        } else if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return true;
        } else if (obj instanceof long[]) {
            bundle.putLongArray(str, (long[]) obj);
            return true;
        } else if (obj instanceof String) {
            bundle.putString(str, (String) obj);
            return true;
        } else if (obj instanceof JSONArray) {
            bundle.putString(str, obj.toString());
            return true;
        } else if (!(obj instanceof JSONObject)) {
            return false;
        } else {
            bundle.putString(str, obj.toString());
            return true;
        }
    }

    /* renamed from: a */
    public static boolean m34864a(AccessToken accessToken) {
        return accessToken != null && accessToken.equals(AccessToken.m35507B());
    }

    /* renamed from: a */
    public static <T> boolean m34858a(T t, T t2) {
        if (t != null) {
            return t.equals(t2);
        }
        return t2 == null;
    }

    /* renamed from: a */
    public static <T> boolean m34845a(Collection<T> collection) {
        return collection == null || collection.size() == 0;
    }

    /* renamed from: b */
    public static C2413e m34828b(JSONObject jSONObject) throws JSONException {
        String optString;
        JSONArray jSONArray = jSONObject.getJSONObject("permissions").getJSONArray("data");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        ArrayList arrayList2 = new ArrayList(jSONArray.length());
        ArrayList arrayList3 = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            String optString2 = optJSONObject.optString("permission");
            if (!(optString2 == null || optString2.equals("installed") || (optString = optJSONObject.optString("status")) == null)) {
                if (optString.equals("granted")) {
                    arrayList.add(optString2);
                } else if (optString.equals("declined")) {
                    arrayList2.add(optString2);
                } else if (optString.equals("expired")) {
                    arrayList3.add(optString2);
                }
            }
        }
        return new C2413e(arrayList, arrayList2, arrayList3);
    }

    @Nullable
    /* renamed from: b */
    public static String m34834b() {
        Context e = C6135n.m23746e();
        if (e == null) {
            return null;
        }
        try {
            return e.getPackageManager().getPackageInfo(e.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            return null;
        }
    }

    /* renamed from: b */
    public static String m34833b(Context context) {
        return context == null ? C14247d.f31851f : context == context.getApplicationContext() ? "unknown" : context.getClass().getSimpleName();
    }

    /* renamed from: b */
    public static String m34832b(Uri uri) {
        return uri == null ? null : uri.toString();
    }

    /* renamed from: b */
    public static String m34830b(String str, String str2) {
        return m34848a(str, str2.getBytes());
    }

    /* renamed from: b */
    public static <T> Collection<T> m34826b(T... tArr) {
        return Collections.unmodifiableCollection(Arrays.asList(tArr));
    }

    /* renamed from: b */
    public static List<String> m34829b(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        return arrayList;
    }

    /* renamed from: b */
    public static JSONArray m34827b(JSONObject jSONObject, String str) {
        return jSONObject != null ? jSONObject.optJSONArray(str) : null;
    }

    /* renamed from: b */
    public static JSONObject m34831b(String str) {
        JSONObject a = C2397c0.m34906a(str);
        if (a != null) {
            return a;
        }
        C6148s b = m34822c(str).m35437b();
        if (b.m23705a() != null) {
            return null;
        }
        return b.m23698b();
    }

    /* renamed from: c */
    public static GraphRequest m34822c(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", "id,name,first_name,middle_name,last_name,link");
        bundle.putString("access_token", str);
        return new GraphRequest(null, "me", bundle, EnumC6149t.GET, null);
    }

    /* renamed from: c */
    public static String m34824c(Context context) {
        try {
            String g = C6135n.m23744g();
            if (g != null) {
                return g;
            }
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            int i = applicationInfo.labelRes;
            return i == 0 ? applicationInfo.nonLocalizedLabel.toString() : context.getString(i);
        } catch (Exception e) {
            return "";
        }
    }

    /* renamed from: c */
    public static Locale m34825c() {
        Locale d = m34819d();
        if (d == null) {
            d = Locale.getDefault();
        }
        return d;
    }

    /* renamed from: c */
    public static JSONObject m34820c(JSONObject jSONObject, String str) {
        return jSONObject != null ? jSONObject.optJSONObject(str) : null;
    }

    /* renamed from: c */
    public static void m34821c(String str, String str2) {
        C6135n.m23732s();
    }

    /* renamed from: c */
    public static boolean m34823c(Uri uri) {
        return uri != null && "content".equalsIgnoreCase(uri.getScheme());
    }

    /* renamed from: d */
    public static String m34818d(Context context) {
        C2416h0.m34791a(context, "context");
        C6135n.m23747d(context);
        return C6135n.m23745f();
    }

    @Nullable
    /* renamed from: d */
    public static Locale m34819d() {
        try {
            return C6135n.m23746e().getResources().getConfiguration().locale;
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: d */
    public static boolean m34817d(Uri uri) {
        return uri != null && "file".equalsIgnoreCase(uri.getScheme());
    }

    /* renamed from: d */
    public static boolean m34816d(String str) {
        return str == null || str.length() == 0;
    }

    /* renamed from: e */
    public static String m34812e(String str) {
        return m34830b("MD5", str);
    }

    /* renamed from: e */
    public static void m34815e() {
        try {
            if (m34876a()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                f3003d = statFs.getAvailableBlocks() * statFs.getBlockSize();
            }
            f3003d = m34875a(f3003d);
        } catch (Exception e) {
        }
    }

    /* renamed from: e */
    public static boolean m34814e(Context context) {
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        AutofillManager autofillManager = (AutofillManager) context.getSystemService(AutofillManager.class);
        boolean z = false;
        if (autofillManager != null) {
            z = false;
            if (autofillManager.isAutofillSupported()) {
                z = false;
                if (autofillManager.isEnabled()) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: e */
    public static boolean m34813e(Uri uri) {
        return uri != null && ("http".equalsIgnoreCase(uri.getScheme()) || "https".equalsIgnoreCase(uri.getScheme()) || "fbstaging".equalsIgnoreCase(uri.getScheme()));
    }

    /* renamed from: f */
    public static int m34811f() {
        int i = f3000a;
        if (i > 0) {
            return i;
        }
        try {
            File[] listFiles = new File(RealmThreadPoolExecutor.SYS_CPU_DIR).listFiles(new C2410b());
            if (listFiles != null) {
                f3000a = listFiles.length;
            }
        } catch (Exception e) {
        }
        if (f3000a <= 0) {
            f3000a = Math.max(Runtime.getRuntime().availableProcessors(), 1);
        }
        return f3000a;
    }

    /* renamed from: f */
    public static Bundle m34809f(String str) {
        Bundle bundle = new Bundle();
        if (!m34816d(str)) {
            for (String str2 : str.split(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR)) {
                String[] split = str2.split("=");
                try {
                    if (split.length == 2) {
                        bundle.putString(URLDecoder.decode(split[0], "UTF-8"), URLDecoder.decode(split[1], "UTF-8"));
                    } else if (split.length == 1) {
                        bundle.putString(URLDecoder.decode(split[0], "UTF-8"), "");
                    }
                } catch (UnsupportedEncodingException e) {
                    m34853a("FacebookSDK", (Exception) e);
                }
            }
        }
        return bundle;
    }

    /* renamed from: f */
    public static boolean m34810f(Context context) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 27) {
            z = context.getPackageManager().hasSystemFeature("android.hardware.type.pc");
        } else {
            String str = Build.DEVICE;
            z = str != null && str.matches(".+_cheets|cheets_.+");
        }
        return z;
    }

    @Nullable
    /* renamed from: g */
    public static String m34806g(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return m34830b("SHA-256", str);
    }

    /* renamed from: g */
    public static void m34808g() {
        try {
            TimeZone timeZone = TimeZone.getDefault();
            f3004e = timeZone.getDisplayName(timeZone.inDaylightTime(new Date()), 0);
            f3005f = timeZone.getID();
        } catch (AssertionError | Exception e) {
        }
    }

    /* renamed from: g */
    public static boolean m34807g(Context context) {
        return m34814e(context);
    }

    /* renamed from: h */
    public static void m34805h() {
        try {
            if (m34876a()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                f3002c = statFs.getBlockCount() * statFs.getBlockSize();
            }
            f3002c = m34875a(f3002c);
        } catch (Exception e) {
        }
    }

    /* renamed from: h */
    public static void m34804h(Context context) {
        if (f3006g.equals("NoCarrier")) {
            try {
                f3006g = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: i */
    public static void m34803i(Context context) {
        if (f3001b == -1 || System.currentTimeMillis() - f3001b >= 1800000) {
            f3001b = System.currentTimeMillis();
            m34808g();
            m34804h(context);
            m34805h();
            m34815e();
        }
    }
}
