package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
import p131c.p161d.p170b.p224d.p252g.p258f.C4570q0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcp.class */
public class zzcp {

    /* renamed from: f */
    public static HashMap<String, String> f29434f;

    /* renamed from: k */
    public static Object f29439k;

    /* renamed from: l */
    public static boolean f29440l;

    /* renamed from: a */
    public static final Uri f29429a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b */
    public static final Uri f29430b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c */
    public static final Pattern f29431c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d */
    public static final Pattern f29432d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e */
    public static final AtomicBoolean f29433e = new AtomicBoolean();

    /* renamed from: g */
    public static final HashMap<String, Boolean> f29435g = new HashMap<>();

    /* renamed from: h */
    public static final HashMap<String, Integer> f29436h = new HashMap<>();

    /* renamed from: i */
    public static final HashMap<String, Long> f29437i = new HashMap<>();

    /* renamed from: j */
    public static final HashMap<String, Float> f29438j = new HashMap<>();

    /* renamed from: m */
    public static String[] f29441m = new String[0];

    /* renamed from: a */
    public static String m9867a(ContentResolver contentResolver, String str, String str2) {
        synchronized (zzcp.class) {
            try {
                String str3 = null;
                String str4 = null;
                String str5 = null;
                if (f29434f == null) {
                    f29433e.set(false);
                    f29434f = new HashMap<>();
                    f29439k = new Object();
                    f29440l = false;
                    contentResolver.registerContentObserver(f29429a, true, new C4570q0(null));
                } else if (f29433e.getAndSet(false)) {
                    f29434f.clear();
                    f29435g.clear();
                    f29436h.clear();
                    f29437i.clear();
                    f29438j.clear();
                    f29439k = new Object();
                    f29440l = false;
                }
                Object obj = f29439k;
                if (f29434f.containsKey(str)) {
                    String str6 = f29434f.get(str);
                    if (str6 != null) {
                        str5 = str6;
                    }
                    return str5;
                }
                for (String str7 : f29441m) {
                    if (str.startsWith(str7)) {
                        if (!f29440l || f29434f.isEmpty()) {
                            f29434f.putAll(m9866a(contentResolver, f29441m));
                            f29440l = true;
                            if (f29434f.containsKey(str)) {
                                String str8 = f29434f.get(str);
                                if (str8 != null) {
                                    str3 = str8;
                                }
                                return str3;
                            }
                        }
                        return null;
                    }
                }
                Cursor query = contentResolver.query(f29429a, null, null, new String[]{str}, null);
                if (query != null) {
                    try {
                        if (!query.moveToFirst()) {
                            m9865a(obj, str, (String) null);
                            if (query == null) {
                                return null;
                            }
                            query.close();
                            return null;
                        }
                        String string = query.getString(1);
                        String str9 = string;
                        if (string != null) {
                            str9 = string;
                            if (string.equals(null)) {
                                str9 = null;
                            }
                        }
                        m9865a(obj, str, str9);
                        if (str9 != null) {
                            str4 = str9;
                        }
                        return str4;
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

    /* renamed from: a */
    public static Map<String, String> m9866a(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(f29430b, null, null, strArr, null);
        TreeMap treeMap = new TreeMap();
        if (query == null) {
            return treeMap;
        }
        while (query.moveToNext()) {
            try {
                treeMap.put(query.getString(0), query.getString(1));
            } catch (Throwable th) {
                query.close();
                throw th;
            }
        }
        query.close();
        return treeMap;
    }

    /* renamed from: a */
    public static void m9865a(Object obj, String str, String str2) {
        synchronized (zzcp.class) {
            try {
                if (obj == f29439k) {
                    f29434f.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
