package com.google.android.gms.internal.firebase_auth_api;

import android.app.Activity;
import com.google.android.gms.common.util.i;
import com.google.android.gms.internal.firebase-auth-api.ll;
import com.google.firebase.auth.s;
import f.e.a;
import java.util.Map;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.vl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/vl.class */
public final class C1234vl {

    /* renamed from: a */
    private static final Map<String, C1224ul> f3824a = new a();

    /* renamed from: a */
    public static void m2389a() {
        f3824a.clear();
    }

    /* renamed from: b */
    public static boolean m2388b(String str, s.b bVar, Activity activity, Executor executor) {
        Map<String, C1224ul> map = f3824a;
        if (!map.containsKey(str)) {
            m2385e(str, null);
            return false;
        }
        C1224ul c1224ul = map.get(str);
        if (i.d().m3166b() - c1224ul.f3821b >= 120000) {
            m2385e(str, null);
            return false;
        }
        ll llVar = c1224ul.f3820a;
        if (llVar == null) {
            return true;
        }
        llVar.g(bVar, activity, executor, str);
        return true;
    }

    /* renamed from: c */
    public static s.b m2387c(String str, s.b bVar, ll llVar) {
        m2385e(str, llVar);
        return new tl(bVar, str);
    }

    /* renamed from: e */
    private static void m2385e(String str, ll llVar) {
        f3824a.put(str, new C1224ul(llVar, i.d().m3166b()));
    }
}
