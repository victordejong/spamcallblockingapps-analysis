package com.google.android.gms.internal.measurement;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.h8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/h8.class */
public final class C1327h8 implements Map.Entry, Comparable<C1327h8> {

    /* renamed from: f */
    private final Comparable f3917f;

    /* renamed from: g */
    private Object f3918g;

    /* renamed from: h */
    final /* synthetic */ C1345k8 f3919h;

    public C1327h8(C1345k8 c1345k8, Comparable comparable, Object obj) {
        this.f3919h = c1345k8;
        this.f3917f = comparable;
        this.f3918g = obj;
    }

    /* renamed from: d */
    private static final boolean m2087d(Object obj, Object obj2) {
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
    public final Comparable m2088c() {
        return this.f3917f;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(C1327h8 c1327h8) {
        return this.f3917f.compareTo(c1327h8.f3917f);
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
        return m2087d(this.f3917f, entry.getKey()) && m2087d(this.f3918g, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* bridge */ /* synthetic */ Object getKey() {
        return this.f3917f;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f3918g;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f3917f;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f3918g;
        if (obj != null) {
            i = obj.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f3919h.m2056n();
        Object obj2 = this.f3918g;
        this.f3918g = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f3917f);
        String valueOf2 = String.valueOf(this.f3918g);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
