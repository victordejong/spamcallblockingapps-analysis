package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.c1;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.y0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/y0.class */
public final class C1258y0 implements Map.Entry, Comparable<C1258y0> {

    /* renamed from: f */
    private final Comparable f3841f;

    /* renamed from: g */
    private Object f3842g;

    /* renamed from: h */
    final /* synthetic */ c1 f3843h;

    public C1258y0(c1 c1Var, Comparable comparable, Object obj) {
        this.f3843h = c1Var;
        this.f3841f = comparable;
        this.f3842g = obj;
    }

    /* renamed from: d */
    private static final boolean m2322d(Object obj, Object obj2) {
        boolean z;
        if (obj != null) {
            z = obj.equals(obj2);
        } else if (obj2 == null) {
            return true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public final Comparable m2323c() {
        return this.f3841f;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(C1258y0 c1258y0) {
        return this.f3841f.compareTo(c1258y0.f3841f);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return m2322d(this.f3841f, entry.getKey()) && m2322d(this.f3842g, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* bridge */ /* synthetic */ Object getKey() {
        return this.f3841f;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f3842g;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f3841f;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f3842g;
        if (obj != null) {
            i = obj.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f3843h.m2965n();
        Object obj2 = this.f3842g;
        this.f3842g = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f3841f);
        String valueOf2 = String.valueOf(this.f3842g);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
