package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.z;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.z */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/z.class */
public final class C1272z<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: g */
    private static final z f3855g;

    /* renamed from: f */
    private boolean f3856f = true;

    static {
        C1272z c1272z = new C1272z();
        f3855g = c1272z;
        c1272z.f3856f = false;
    }

    private C1272z() {
    }

    private C1272z(Map<K, V> map) {
        super(map);
    }

    /* renamed from: a */
    public static <K, V> C1272z<K, V> m2284a() {
        return f3855g;
    }

    /* renamed from: h */
    private static int m2279h(Object obj) {
        if (obj instanceof byte[]) {
            return C1117k.m2781g((byte[]) obj);
        }
        if (obj instanceof AbstractC1065g) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    /* renamed from: i */
    private final void m2278i() {
        if (this.f3856f) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: b */
    public final void m2283b(C1272z<K, V> c1272z) {
        m2278i();
        if (!c1272z.isEmpty()) {
            putAll(c1272z);
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m2278i();
        super.clear();
    }

    /* renamed from: e */
    public final C1272z<K, V> m2282e() {
        return isEmpty() ? new C1272z<>() : new C1272z<>(this);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (this == map) {
                return true;
            }
            if (size() != map.size()) {
                return false;
            }
            for (Map.Entry<K, V> entry : entrySet()) {
                if (!map.containsKey(entry.getKey())) {
                    return false;
                }
                V value = entry.getValue();
                Object obj2 = map.get(entry.getKey());
                if (!((!(value instanceof byte[]) || !(obj2 instanceof byte[])) ? value.equals(obj2) : Arrays.equals((byte[]) value, (byte[]) obj2))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: f */
    public final void m2281f() {
        this.f3856f = false;
    }

    /* renamed from: g */
    public final boolean m2280g() {
        return this.f3856f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                i = i2 + (m2279h(next.getValue()) ^ m2279h(next.getKey()));
            } else {
                return i2;
            }
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m2278i();
        C1117k.m2787a(k);
        C1117k.m2787a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m2278i();
        for (K k : map.keySet()) {
            C1117k.m2787a(k);
            C1117k.m2787a(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m2278i();
        return (V) super.remove(obj);
    }
}
