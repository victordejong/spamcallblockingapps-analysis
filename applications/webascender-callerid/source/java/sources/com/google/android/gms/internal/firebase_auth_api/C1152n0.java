package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.n0;
import com.google.android.gms.internal.firebase-auth-api.r0;
import com.google.android.gms.internal.firebase-auth-api.s0;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.n0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/n0.class */
final class C1152n0 {

    /* renamed from: c */
    private static final n0 f3759c = new C1152n0();

    /* renamed from: b */
    private final ConcurrentMap<Class<?>, AbstractC1187r0<?>> f3761b = new ConcurrentHashMap();

    /* renamed from: a */
    private final s0 f3760a = new w();

    private C1152n0() {
    }

    /* renamed from: a */
    public static n0 m2715a() {
        return f3759c;
    }

    /* renamed from: b */
    public final <T> AbstractC1187r0<T> m2714b(Class<T> cls) {
        C1117k.m2786b(cls, "messageType");
        AbstractC1187r0<?> abstractC1187r0 = this.f3761b.get(cls);
        r0 r0Var = abstractC1187r0;
        if (abstractC1187r0 == null) {
            r0Var = this.f3760a.m2465e(cls);
            C1117k.m2786b(cls, "messageType");
            C1117k.m2786b(r0Var, "schema");
            AbstractC1187r0<T> abstractC1187r02 = (AbstractC1187r0<T>) this.f3761b.putIfAbsent(cls, r0Var);
            if (abstractC1187r02 != null) {
                return abstractC1187r02;
            }
        }
        return r0Var;
    }
}
