package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcp.class */
public class zzcp {

    /* renamed from: f */
    private static HashMap<String, String> f8313f;

    /* renamed from: k */
    private static Object f8318k;

    /* renamed from: l */
    private static boolean f8319l;

    /* renamed from: a */
    public static final Uri f8308a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b */
    private static final Uri f8309b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c */
    public static final Pattern f8310c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d */
    public static final Pattern f8311d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e */
    private static final AtomicBoolean f8312e = new AtomicBoolean();

    /* renamed from: g */
    private static final HashMap<String, Boolean> f8314g = new HashMap<>();

    /* renamed from: h */
    private static final HashMap<String, Integer> f8315h = new HashMap<>();

    /* renamed from: i */
    private static final HashMap<String, Long> f8316i = new HashMap<>();

    /* renamed from: j */
    private static final HashMap<String, Float> f8317j = new HashMap<>();

    /* renamed from: m */
    private static String[] f8320m = new String[0];

    /* renamed from: a */
    public static String m12803a(ContentResolver contentResolver, String str, String str2) {
        synchronized (zzcp.class) {
            try {
                String str3 = null;
                String str4 = null;
                String str5 = null;
                if (f8313f == null) {
                    f8312e.set(false);
                    f8313f = new HashMap<>();
                    f8318k = new Object();
                    f8319l = false;
                    contentResolver.registerContentObserver(f8308a, true, new zzco(null));
                } else if (f8312e.getAndSet(false)) {
                    f8313f.clear();
                    f8314g.clear();
                    f8315h.clear();
                    f8316i.clear();
                    f8317j.clear();
                    f8318k = new Object();
                    f8319l = false;
                }
                Object obj = f8318k;
                if (f8313f.containsKey(str)) {
                    String str6 = f8313f.get(str);
                    if (str6 != null) {
                        str5 = str6;
                    }
                    return str5;
                }
                for (String str7 : f8320m) {
                    if (str.startsWith(str7)) {
                        if (!f8319l || f8313f.isEmpty()) {
                            f8313f.putAll(m12802b(contentResolver, f8320m));
                            f8319l = true;
                            if (f8313f.containsKey(str)) {
                                String str8 = f8313f.get(str);
                                if (str8 != null) {
                                    str3 = str8;
                                }
                                return str3;
                            }
                        }
                        return null;
                    }
                }
                Cursor query = contentResolver.query(f8308a, null, null, new String[]{str}, null);
                if (query != null) {
                    try {
                        if (!query.moveToFirst()) {
                            m12800d(obj, str, null);
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
                        m12800d(obj, str, str9);
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

    /* renamed from: b */
    private static Map<String, String> m12802b(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(f8309b, null, null, strArr, null);
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

    /* renamed from: d */
    private static void m12800d(Object obj, String str, String str2) {
        synchronized (zzcp.class) {
            try {
                if (obj == f8318k) {
                    f8313f.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
