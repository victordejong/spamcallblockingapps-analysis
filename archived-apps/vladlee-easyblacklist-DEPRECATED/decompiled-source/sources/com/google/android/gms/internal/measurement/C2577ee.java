package com.google.android.gms.internal.measurement;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Incorrect field signature: TK; */
/* renamed from: com.google.android.gms.internal.measurement.ee */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ee.class */
public final class C2577ee implements Comparable<C2577ee>, Map.Entry<K, V> {

    /* renamed from: a */
    private final Comparable f16031a;

    /* renamed from: b */
    private V f16032b;

    /* renamed from: c */
    private final /* synthetic */ C2571dz f16033c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public C2577ee(C2571dz dzVar, K k, V v) {
        this.f16033c = dzVar;
        this.f16031a = k;
        this.f16032b = v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2577ee(C2571dz dzVar, Map.Entry<K, V> entry) {
        this(dzVar, (Comparable) entry.getKey(), entry.getValue());
    }

    /* renamed from: a */
    private static boolean m2612a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(C2577ee eeVar) {
        return ((Comparable) getKey()).compareTo((Comparable) eeVar.getKey());
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
        return m2612a(this.f16031a, entry.getKey()) && m2612a(this.f16032b, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f16031a;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f16032b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f16031a;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f16032b;
        if (v != 0) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f16033c.m2617f();
        V v2 = this.f16032b;
        this.f16032b = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f16031a);
        String valueOf2 = String.valueOf(this.f16032b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
