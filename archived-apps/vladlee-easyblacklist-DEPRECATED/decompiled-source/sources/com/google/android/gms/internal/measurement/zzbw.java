package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbw.class */
public class zzbw {

    /* renamed from: c */
    private static HashMap<String, String> f16145c;

    /* renamed from: h */
    private static Object f16150h;

    /* renamed from: i */
    private static boolean f16151i;
    public static final Uri zza = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: a */
    private static final Uri f16143a = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    public static final Pattern zzb = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern zzc = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: b */
    private static final AtomicBoolean f16144b = new AtomicBoolean();

    /* renamed from: d */
    private static final HashMap<String, Boolean> f16146d = new HashMap<>();

    /* renamed from: e */
    private static final HashMap<String, Integer> f16147e = new HashMap<>();

    /* renamed from: f */
    private static final HashMap<String, Long> f16148f = new HashMap<>();

    /* renamed from: g */
    private static final HashMap<String, Float> f16149g = new HashMap<>();

    /* renamed from: j */
    private static String[] f16152j = new String[0];

    /* renamed from: a */
    private static Map<String, String> m2336a(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(f16143a, null, null, strArr, null);
        TreeMap treeMap = new TreeMap();
        if (query == null) {
            return treeMap;
        }
        while (query.moveToNext()) {
            try {
                treeMap.put(query.getString(0), query.getString(1));
            } finally {
                query.close();
            }
        }
        return treeMap;
    }

    /* renamed from: a */
    private static void m2335a(Object obj, String str, String str2) {
        synchronized (zzbw.class) {
            try {
                if (obj == f16150h) {
                    f16145c.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String zza(ContentResolver contentResolver, String str, String str2) {
        synchronized (zzbw.class) {
            try {
                if (f16145c == null) {
                    f16144b.set(false);
                    f16145c = new HashMap<>();
                    f16150h = new Object();
                    f16151i = false;
                    contentResolver.registerContentObserver(zza, true, new C2483as());
                } else if (f16144b.getAndSet(false)) {
                    f16145c.clear();
                    f16146d.clear();
                    f16147e.clear();
                    f16148f.clear();
                    f16149g.clear();
                    f16150h = new Object();
                    f16151i = false;
                }
                Object obj = f16150h;
                if (f16145c.containsKey(str)) {
                    String str3 = f16145c.get(str);
                    if (str3 == null) {
                        str3 = null;
                    }
                    return str3;
                }
                for (String str4 : f16152j) {
                    if (str.startsWith(str4)) {
                        if (!f16151i || f16145c.isEmpty()) {
                            f16145c.putAll(m2336a(contentResolver, f16152j));
                            f16151i = true;
                            if (f16145c.containsKey(str)) {
                                String str5 = f16145c.get(str);
                                if (str5 == null) {
                                    str5 = null;
                                }
                                return str5;
                            }
                        }
                        return null;
                    }
                }
                Cursor query = contentResolver.query(zza, null, null, new String[]{str}, null);
                if (query != null) {
                    try {
                        if (!query.moveToFirst()) {
                            m2335a(obj, str, null);
                            if (query == null) {
                                return null;
                            }
                            query.close();
                            return null;
                        }
                        String string = query.getString(1);
                        String str6 = string;
                        if (string != null) {
                            str6 = string;
                            if (string.equals(null)) {
                                str6 = null;
                            }
                        }
                        m2335a(obj, str, str6);
                        if (str6 == null) {
                            str6 = null;
                        }
                        return str6;
                    } finally {
                        if (query != null) {
                            query.close();
                        }
                    }
                } else if (query == null) {
                    return null;
                } else {
                    query.close();
                    return null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
