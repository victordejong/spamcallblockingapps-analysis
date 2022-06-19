package com.google.android.gms.internal.firebase_auth_api;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.a0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/a0.class */
final class C0998a0 {
    /* renamed from: a */
    public static final int m3043a(int i, Object obj, Object obj2) {
        C1272z c1272z = (C1272z) obj;
        C1245x c1245x = (C1245x) obj2;
        if (c1272z.isEmpty()) {
            return 0;
        }
        Iterator it = c1272z.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    /* renamed from: b */
    public static final boolean m3042b(Object obj) {
        return !((C1272z) obj).m2280g();
    }

    /* renamed from: c */
    public static final Object m3041c(Object obj, Object obj2) {
        C1272z c1272z = (C1272z) obj;
        C1272z c1272z2 = (C1272z) obj2;
        C1272z c1272z3 = c1272z;
        if (!c1272z2.isEmpty()) {
            c1272z3 = c1272z;
            if (!c1272z.m2280g()) {
                c1272z3 = c1272z.m2282e();
            }
            c1272z3.m2283b(c1272z2);
        }
        return c1272z3;
    }
}
