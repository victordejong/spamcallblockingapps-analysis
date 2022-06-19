package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.measurement.b3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/b3.class */
public final class C1291b3 {

    /* renamed from: f */
    static HashMap<String, String> f3880f;

    /* renamed from: k */
    private static Object f3885k;

    /* renamed from: l */
    private static boolean f3886l;

    /* renamed from: a */
    public static final Uri f3875a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b */
    public static final Uri f3876b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c */
    public static final Pattern f3877c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d */
    public static final Pattern f3878d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e */
    private static final AtomicBoolean f3879e = new AtomicBoolean();

    /* renamed from: g */
    static final HashMap<String, Boolean> f3881g = new HashMap<>();

    /* renamed from: h */
    static final HashMap<String, Integer> f3882h = new HashMap<>();

    /* renamed from: i */
    static final HashMap<String, Long> f3883i = new HashMap<>();

    /* renamed from: j */
    static final HashMap<String, Float> f3884j = new HashMap<>();

    /* renamed from: m */
    static final String[] f3887m = new String[0];

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static String m2227a(ContentResolver contentResolver, String str, String str2) {
        synchronized (C1291b3.class) {
            try {
                if (f3880f == null) {
                    f3879e.set(false);
                    f3880f = new HashMap<>();
                    f3885k = new Object();
                    f3886l = false;
                    contentResolver.registerContentObserver(f3875a, true, new C1284a3(null));
                } else if (f3879e.getAndSet(false)) {
                    f3880f.clear();
                    f3881g.clear();
                    f3882h.clear();
                    f3883i.clear();
                    f3884j.clear();
                    f3885k = new Object();
                    f3886l = false;
                }
                Object obj = f3885k;
                if (f3880f.containsKey(str)) {
                    String str3 = f3880f.get(str);
                    if (str3 == null) {
                        str3 = null;
                    }
                    return str3;
                }
                int length = f3887m.length;
                Cursor query = contentResolver.query(f3875a, null, null, new String[]{str}, null);
                if (query == null) {
                    return null;
                }
                try {
                    if (!query.moveToFirst()) {
                        m2225c(obj, str, null);
                        query.close();
                        return null;
                    }
                    String string = query.getString(1);
                    String str4 = string;
                    if (string != null) {
                        str4 = string;
                        if (string.equals(null)) {
                            str4 = null;
                        }
                    }
                    m2225c(obj, str, str4);
                    if (str4 == null) {
                        str4 = null;
                    }
                    query.close();
                    return str4;
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* renamed from: c */
    private static void m2225c(Object obj, String str, String str2) {
        synchronized (C1291b3.class) {
            try {
                if (obj == f3885k) {
                    f3880f.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
