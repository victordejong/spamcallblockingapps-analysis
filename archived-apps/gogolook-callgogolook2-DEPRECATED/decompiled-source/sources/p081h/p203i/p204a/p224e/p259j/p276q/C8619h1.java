package p081h.p203i.p204a.p224e.p259j.p276q;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* renamed from: h.i.a.e.j.q.h1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/h1.class */
public class C8619h1 {

    /* renamed from: f */
    public static HashMap<String, String> f19738f;

    /* renamed from: k */
    public static Object f19743k;

    /* renamed from: l */
    public static boolean f19744l;

    /* renamed from: a */
    public static final Uri f19733a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b */
    public static final Uri f19734b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c */
    public static final Pattern f19735c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d */
    public static final Pattern f19736d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e */
    public static final AtomicBoolean f19737e = new AtomicBoolean();

    /* renamed from: g */
    public static final HashMap<String, Boolean> f19739g = new HashMap<>();

    /* renamed from: h */
    public static final HashMap<String, Integer> f19740h = new HashMap<>();

    /* renamed from: i */
    public static final HashMap<String, Long> f19741i = new HashMap<>();

    /* renamed from: j */
    public static final HashMap<String, Float> f19742j = new HashMap<>();

    /* renamed from: m */
    public static String[] f19745m = new String[0];

    /* renamed from: a */
    public static <T> T m17566a(HashMap<String, T> hashMap, String str, T t) {
        synchronized (C8619h1.class) {
            try {
                if (!hashMap.containsKey(str)) {
                    return null;
                }
                T t2 = hashMap.get(str);
                if (t2 == null) {
                    t2 = t;
                }
                return t2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static String m17571a(ContentResolver contentResolver, String str, String str2) {
        synchronized (C8619h1.class) {
            try {
                m17572a(contentResolver);
                Object obj = f19743k;
                if (f19738f.containsKey(str)) {
                    String str3 = f19738f.get(str);
                    if (str3 == null) {
                        str3 = null;
                    }
                    return str3;
                }
                for (String str4 : f19745m) {
                    if (str.startsWith(str4)) {
                        if (!f19744l || f19738f.isEmpty()) {
                            f19738f.putAll(m17569a(contentResolver, f19745m));
                            f19744l = true;
                            if (f19738f.containsKey(str)) {
                                String str5 = f19738f.get(str);
                                if (str5 == null) {
                                    str5 = null;
                                }
                                return str5;
                            }
                        }
                        return null;
                    }
                }
                Cursor query = contentResolver.query(f19733a, null, null, new String[]{str}, null);
                if (query != null) {
                    try {
                        if (!query.moveToFirst()) {
                            m17568a(obj, str, (String) null);
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
                        m17568a(obj, str, str6);
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

    /* renamed from: a */
    public static Map<String, String> m17569a(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(f19734b, null, null, strArr, null);
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
    public static void m17572a(ContentResolver contentResolver) {
        if (f19738f == null) {
            f19737e.set(false);
            f19738f = new HashMap<>();
            f19743k = new Object();
            f19744l = false;
            contentResolver.registerContentObserver(f19733a, true, new C8630i1(null));
        } else if (f19737e.getAndSet(false)) {
            f19738f.clear();
            f19739g.clear();
            f19740h.clear();
            f19741i.clear();
            f19742j.clear();
            f19743k = new Object();
            f19744l = false;
        }
    }

    /* renamed from: a */
    public static void m17568a(Object obj, String str, String str2) {
        synchronized (C8619h1.class) {
            try {
                if (obj == f19743k) {
                    f19738f.put(str, str2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static <T> void m17567a(Object obj, HashMap<String, T> hashMap, String str, T t) {
        synchronized (C8619h1.class) {
            try {
                if (obj == f19743k) {
                    hashMap.put(str, t);
                    f19738f.remove(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static boolean m17570a(ContentResolver contentResolver, String str, boolean z) {
        Object b = m17565b(contentResolver);
        Boolean bool = (Boolean) m17566a(f19739g, str, Boolean.valueOf(z));
        if (bool != null) {
            return bool.booleanValue();
        }
        String a = m17571a(contentResolver, str, (String) null);
        Boolean bool2 = bool;
        boolean z2 = z;
        if (a != null) {
            if (a.equals("")) {
                bool2 = bool;
                z2 = z;
            } else if (f19735c.matcher(a).matches()) {
                bool2 = true;
                z2 = true;
            } else if (f19736d.matcher(a).matches()) {
                bool2 = false;
                z2 = false;
            } else {
                String str2 = "attempt to read gservices key " + str + " (value \"" + a + "\") as boolean";
                z2 = z;
                bool2 = bool;
            }
        }
        m17567a(b, f19739g, str, bool2);
        return z2;
    }

    /* renamed from: b */
    public static Object m17565b(ContentResolver contentResolver) {
        Object obj;
        synchronized (C8619h1.class) {
            try {
                m17572a(contentResolver);
                obj = f19743k;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
