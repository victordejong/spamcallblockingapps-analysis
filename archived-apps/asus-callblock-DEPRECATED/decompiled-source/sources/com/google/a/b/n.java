package com.google.a.b;

import com.google.a.a.d;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/a/b/n.class */
public abstract class n<K, V> implements Serializable, Map<K, V> {

    /* loaded from: classes-dex2jar.jar:com/google/a/b/n$a.class */
    public static final class a<K, V> {

        /* renamed from: a  reason: collision with root package name */
        public final ArrayList<Map.Entry<K, V>> f3705a = new ArrayList<>();
    }

    public static <K, V> Map.Entry<K, V> a(K k, V v) {
        return s.a(d.a(k, "null key"), d.a(v, "null value"));
    }

    public static <K, V> n<K, V> d() {
        return g.f3696a;
    }

    /* renamed from: a */
    public abstract o<Map.Entry<K, V>> entrySet();

    /* renamed from: b */
    public abstract o<K> keySet();

    /* renamed from: c */
    public abstract k<V> values();

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    public boolean equals(Object obj) {
        return obj == this ? true : obj instanceof Map ? entrySet().equals(((Map) obj).entrySet()) : false;
    }

    public abstract V get(Object obj);

    public int hashCode() {
        return entrySet().hashCode();
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return s.b(this);
    }
}
