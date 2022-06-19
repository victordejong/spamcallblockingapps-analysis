package com.google.android.gms.internal.measurement;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
/* renamed from: com.google.android.gms.internal.measurement.k8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/k8.class */
public class C1345k8<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: f */
    private final int f3929f;

    /* renamed from: i */
    private boolean f3932i;

    /* renamed from: j */
    private volatile C1340j8 f3933j;

    /* renamed from: g */
    private List<C1327h8> f3930g = Collections.emptyList();

    /* renamed from: h */
    private Map<K, V> f3931h = Collections.emptyMap();

    /* renamed from: k */
    private Map<K, V> f3934k = Collections.emptyMap();

    /* renamed from: l */
    public final V m2058l(int i) {
        m2056n();
        V v = (V) this.f3930g.remove(i).getValue();
        if (!this.f3931h.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m2055o().entrySet().iterator();
            List<C1327h8> list = this.f3930g;
            Map.Entry<K, V> next = it.next();
            list.add(new C1327h8(this, next.getKey(), next.getValue()));
            it.remove();
        }
        return v;
    }

    /* renamed from: m */
    private final int m2057m(K k) {
        int size = this.f3930g.size() - 1;
        int i = size;
        int i2 = 0;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f3930g.get(size).m2088c());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
            i = size;
            i2 = 0;
        }
        while (i2 <= i) {
            int i3 = (i2 + i) / 2;
            int compareTo2 = k.compareTo(this.f3930g.get(i3).m2088c());
            if (compareTo2 < 0) {
                i = i3 - 1;
            } else if (compareTo2 <= 0) {
                return i3;
            } else {
                i2 = i3 + 1;
            }
        }
        return -(i2 + 1);
    }

    /* renamed from: n */
    public final void m2056n() {
        if (!this.f3932i) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: o */
    private final SortedMap<K, V> m2055o() {
        m2056n();
        if (this.f3931h.isEmpty() && !(this.f3931h instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f3931h = treeMap;
            this.f3934k = treeMap.descendingMap();
        }
        return (SortedMap) this.f3931h;
    }

    /* renamed from: a */
    public void m2068a() {
        if (!this.f3932i) {
            this.f3931h = this.f3931h.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f3931h);
            this.f3934k = this.f3934k.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f3934k);
            this.f3932i = true;
        }
    }

    /* renamed from: b */
    public final boolean m2067b() {
        return this.f3932i;
    }

    /* renamed from: c */
    public final int m2066c() {
        return this.f3930g.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        m2056n();
        if (!this.f3930g.isEmpty()) {
            this.f3930g.clear();
        }
        if (!this.f3931h.isEmpty()) {
            this.f3931h.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m2057m(comparable) >= 0 || this.f3931h.containsKey(comparable);
    }

    /* renamed from: e */
    public final Map.Entry<K, V> m2065e(int i) {
        return this.f3930g.get(i);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f3933j == null) {
            this.f3933j = new C1340j8(this, null);
        }
        return this.f3933j;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1345k8)) {
            return super.equals(obj);
        }
        C1345k8 c1345k8 = (C1345k8) obj;
        int size = size();
        if (size != c1345k8.size()) {
            return false;
        }
        int m2066c = m2066c();
        if (m2066c != c1345k8.m2066c()) {
            return entrySet().equals(c1345k8.entrySet());
        }
        for (int i = 0; i < m2066c; i++) {
            if (!m2065e(i).equals(c1345k8.m2065e(i))) {
                return false;
            }
        }
        if (m2066c == size) {
            return true;
        }
        return this.f3931h.equals(c1345k8.f3931h);
    }

    /* renamed from: f */
    public final Iterable<Map.Entry<K, V>> m2064f() {
        return this.f3931h.isEmpty() ? C1320g8.m2129a() : this.f3931h.entrySet();
    }

    /* renamed from: g */
    public final V put(K k, V v) {
        m2056n();
        int m2057m = m2057m(k);
        if (m2057m >= 0) {
            return (V) this.f3930g.get(m2057m).setValue(v);
        }
        m2056n();
        if (this.f3930g.isEmpty() && !(this.f3930g instanceof ArrayList)) {
            this.f3930g = new ArrayList(this.f3929f);
        }
        int i = -(m2057m + 1);
        if (i >= this.f3929f) {
            return m2055o().put(k, v);
        }
        int size = this.f3930g.size();
        int i2 = this.f3929f;
        if (size == i2) {
            C1327h8 remove = this.f3930g.remove(i2 - 1);
            m2055o().put((K) remove.m2088c(), (V) remove.getValue());
        }
        this.f3930g.add(i, new C1327h8(this, k, v));
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m2057m = m2057m(comparable);
        return m2057m >= 0 ? (V) this.f3930g.get(m2057m).getValue() : this.f3931h.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int m2066c = m2066c();
        int i = 0;
        for (int i2 = 0; i2 < m2066c; i2++) {
            i += this.f3930g.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f3931h.size() > 0) {
            i3 = i + this.f3931h.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m2056n();
        Comparable comparable = (Comparable) obj;
        int m2057m = m2057m(comparable);
        if (m2057m >= 0) {
            return (V) m2058l(m2057m);
        }
        if (!this.f3931h.isEmpty()) {
            return this.f3931h.remove(comparable);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f3930g.size() + this.f3931h.size();
    }
}
