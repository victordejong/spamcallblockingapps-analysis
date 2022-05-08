package com.google.android.gms.internal.ads;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Incorrect field signature: TK; */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajy.class */
public final class ajy implements Comparable<ajy>, Map.Entry<K, V> {

    /* renamed from: a */
    private final Comparable f7512a;

    /* renamed from: b */
    private V f7513b;

    /* renamed from: c */
    private final /* synthetic */ ajp f7514c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public ajy(ajp ajpVar, K k, V v) {
        this.f7514c = ajpVar;
        this.f7512a = k;
        this.f7513b = v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ajy(ajp ajpVar, Map.Entry<K, V> entry) {
        this(ajpVar, (Comparable) entry.getKey(), entry.getValue());
    }

    /* renamed from: a */
    private static boolean m5097a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ajy ajyVar) {
        return ((Comparable) getKey()).compareTo((Comparable) ajyVar.getKey());
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
        return m5097a(this.f7512a, entry.getKey()) && m5097a(this.f7513b, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f7512a;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f7513b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f7512a;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f7513b;
        if (v != 0) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f7514c.m5160f();
        V v2 = this.f7513b;
        this.f7513b = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f7512a);
        String valueOf2 = String.valueOf(this.f7513b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
