package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.em;
import com.google.firebase.c;
import f.e.a;
import java.lang.ref.WeakReference;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.fm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/fm.class */
public final class C1061fm {

    /* renamed from: a */
    private static final Map<String, C1038dm> f3703a = new a();

    /* renamed from: b */
    private static final Map<String, WeakReference<AbstractC1048em>> f3704b = new a();

    /* renamed from: a */
    public static boolean m2874a(c cVar) {
        return f3703a.containsKey(cVar.l().b());
    }

    /* renamed from: b */
    public static void m2873b(String str, em emVar) {
        Map<String, WeakReference<AbstractC1048em>> map = f3704b;
        synchronized (map) {
            map.put(str, new WeakReference<>(emVar));
        }
    }

    /* renamed from: c */
    public static String m2872c(String str) {
        C1038dm c1038dm;
        String str2;
        Map<String, C1038dm> map = f3703a;
        synchronized (map) {
            c1038dm = map.get(str);
        }
        if (c1038dm != null) {
            String valueOf = String.valueOf(m2868g(c1038dm.m2952a(), c1038dm.m2951b(), c1038dm.m2952a().contains(":")));
            str2 = valueOf.length() != 0 ? "".concat(valueOf) : new String("");
        } else {
            str2 = "https://";
        }
        return String.valueOf(str2).concat("securetoken.googleapis.com/v1");
    }

    /* renamed from: d */
    public static String m2871d(String str) {
        C1038dm c1038dm;
        String str2;
        Map<String, C1038dm> map = f3703a;
        synchronized (map) {
            c1038dm = map.get(str);
        }
        if (c1038dm != null) {
            String valueOf = String.valueOf(m2868g(c1038dm.m2952a(), c1038dm.m2951b(), c1038dm.m2952a().contains(":")));
            str2 = valueOf.length() != 0 ? "".concat(valueOf) : new String("");
        } else {
            str2 = "https://";
        }
        return String.valueOf(str2).concat("www.googleapis.com/identitytoolkit/v3/relyingparty");
    }

    /* renamed from: e */
    public static String m2870e(String str) {
        C1038dm c1038dm;
        String str2;
        Map<String, C1038dm> map = f3703a;
        synchronized (map) {
            c1038dm = map.get(str);
        }
        if (c1038dm != null) {
            String valueOf = String.valueOf(m2868g(c1038dm.m2952a(), c1038dm.m2951b(), c1038dm.m2952a().contains(":")));
            str2 = valueOf.length() != 0 ? "".concat(valueOf) : new String("");
        } else {
            str2 = "https://";
        }
        return String.valueOf(str2).concat("identitytoolkit.googleapis.com/v2/accounts");
    }

    /* renamed from: f */
    public static String m2869f(String str) {
        C1038dm c1038dm;
        Map<String, C1038dm> map = f3703a;
        synchronized (map) {
            c1038dm = map.get(str);
        }
        if (c1038dm != null) {
            return String.valueOf(m2868g(c1038dm.m2952a(), c1038dm.m2951b(), c1038dm.m2952a().contains(":"))).concat("emulator/auth/handler");
        }
        throw new IllegalStateException("Tried to get the emulator widget endpoint, but no emulator endpoint overrides found.");
    }

    /* renamed from: g */
    private static String m2868g(String str, int i, boolean z) {
        if (z) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
            sb.append("http://[");
            sb.append(str);
            sb.append("]:");
            sb.append(i);
            sb.append("/");
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 20);
        sb2.append("http://");
        sb2.append(str);
        sb2.append(":");
        sb2.append(i);
        sb2.append("/");
        return sb2.toString();
    }
}
