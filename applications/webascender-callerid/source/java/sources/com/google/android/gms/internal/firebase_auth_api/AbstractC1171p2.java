package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.fa;
import com.google.android.gms.internal.firebase-auth-api.zzaal;
import com.google.android.gms.internal.firebase_auth_api.f0;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.p2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/p2.class */
public abstract class AbstractC1171p2<KeyProtoT extends f0> {

    /* renamed from: a */
    private final Class<KeyProtoT> f3768a;

    /* renamed from: b */
    private final Map<Class<?>, AbstractC1160o2<?, KeyProtoT>> f3769b;

    /* renamed from: c */
    private final Class<?> f3770c;

    @SafeVarargs
    protected AbstractC1171p2(Class<KeyProtoT> cls, AbstractC1160o2<?, KeyProtoT>... abstractC1160o2Arr) {
        this.f3768a = cls;
        HashMap hashMap = new HashMap();
        for (int i = 0; i <= 0; i++) {
            AbstractC1160o2<?, KeyProtoT> abstractC1160o2 = abstractC1160o2Arr[i];
            if (hashMap.containsKey(abstractC1160o2.m2704a())) {
                String valueOf = String.valueOf(abstractC1160o2.m2704a().getCanonicalName());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "KeyTypeManager constructed with duplicate factories for primitive ".concat(valueOf) : new String("KeyTypeManager constructed with duplicate factories for primitive "));
            }
            hashMap.put(abstractC1160o2.m2704a(), abstractC1160o2);
        }
        this.f3770c = abstractC1160o2Arr[0].m2704a();
        this.f3769b = Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    public final Class<KeyProtoT> m2630a() {
        return this.f3768a;
    }

    /* renamed from: b */
    public abstract String m2629b();

    /* renamed from: c */
    public abstract fa m2628c();

    /* renamed from: d */
    public abstract KeyProtoT m2627d(AbstractC1151mp abstractC1151mp) throws zzaal;

    /* renamed from: e */
    public abstract void m2626e(KeyProtoT keyprotot) throws GeneralSecurityException;

    /* renamed from: f */
    public final <P> P m2625f(KeyProtoT keyprotot, Class<P> cls) throws GeneralSecurityException {
        AbstractC1160o2<?, KeyProtoT> abstractC1160o2 = this.f3769b.get(cls);
        if (abstractC1160o2 != null) {
            return (P) abstractC1160o2.m2703b(keyprotot);
        }
        String canonicalName = cls.getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 41);
        sb.append("Requested primitive class ");
        sb.append(canonicalName);
        sb.append(" not supported.");
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: g */
    public final Set<Class<?>> m2624g() {
        return this.f3769b.keySet();
    }

    /* renamed from: h */
    final Class<?> m2623h() {
        return this.f3770c;
    }

    /* renamed from: i */
    public AbstractC1153n2<?, KeyProtoT> m2622i() {
        throw new UnsupportedOperationException("Creating keys is not supported.");
    }
}
