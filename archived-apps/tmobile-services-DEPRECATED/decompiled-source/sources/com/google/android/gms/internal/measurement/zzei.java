package com.google.android.gms.internal.measurement;

import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzei.class */
abstract class zzei<K, V> implements Map.Entry<K, V> {
    @Override // java.util.Map.Entry
    public boolean equals(@NullableDecl Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return zzdz.m12745a(getKey(), entry.getKey()) && zzdz.m12745a(getValue(), entry.getValue());
    }

    @Override // java.util.Map.Entry
    public abstract K getKey();

    @Override // java.util.Map.Entry
    public abstract V getValue();

    @Override // java.util.Map.Entry
    public int hashCode() {
        K key = getKey();
        V value = getValue();
        int i = 0;
        int hashCode = key == null ? 0 : key.hashCode();
        if (value != null) {
            i = value.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public V setValue(V v) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        String valueOf = String.valueOf(getKey());
        String valueOf2 = String.valueOf(getValue());
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
