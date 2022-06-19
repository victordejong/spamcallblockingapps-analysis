package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.measurement.i7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/i7.class */
public final class C1334i7<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: g */
    private static final C1334i7 f3920g;

    /* renamed from: f */
    private boolean f3921f = true;

    static {
        C1334i7 c1334i7 = new C1334i7();
        f3920g = c1334i7;
        c1334i7.f3921f = false;
    }

    private C1334i7() {
    }

    private C1334i7(Map<K, V> map) {
        super(map);
    }

    /* renamed from: a */
    public static <K, V> C1334i7<K, V> m2084a() {
        return f3920g;
    }

    /* renamed from: h */
    private static int m2079h(Object obj) {
        if (obj instanceof byte[]) {
            return C1396u6.m1902g((byte[]) obj);
        }
        if (obj instanceof AbstractC1359n6) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    /* renamed from: i */
    private final void m2078i() {
        if (this.f3921f) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: b */
    public final void m2083b(C1334i7<K, V> c1334i7) {
        m2078i();
        if (!c1334i7.isEmpty()) {
            putAll(c1334i7);
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m2078i();
        super.clear();
    }

    /* renamed from: e */
    public final C1334i7<K, V> m2082e() {
        return isEmpty() ? new C1334i7<>() : new C1334i7<>(this);
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
    public final void m2081f() {
        this.f3921f = false;
    }

    /* renamed from: g */
    public final boolean m2080g() {
        return this.f3921f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        Iterator<Map.Entry<K, V>> it = entrySet().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                i = i2 + (m2079h(next.getValue()) ^ m2079h(next.getKey()));
            } else {
                return i2;
            }
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m2078i();
        C1396u6.m1908a(k);
        C1396u6.m1908a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m2078i();
        for (K k : map.keySet()) {
            C1396u6.m1908a(k);
            C1396u6.m1908a(map.get(k));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m2078i();
        return (V) super.remove(obj);
    }
}
