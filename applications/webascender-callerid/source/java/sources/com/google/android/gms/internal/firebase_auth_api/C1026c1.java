package com.google.android.gms.internal.firebase_auth_api;

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
/* renamed from: com.google.android.gms.internal.firebase_auth_api.c1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/c1.class */
public class C1026c1<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: f */
    private final int f3677f;

    /* renamed from: i */
    private boolean f3680i;

    /* renamed from: j */
    private volatile C1013b1 f3681j;

    /* renamed from: g */
    private List<C1258y0> f3678g = Collections.emptyList();

    /* renamed from: h */
    private Map<K, V> f3679h = Collections.emptyMap();

    /* renamed from: k */
    private Map<K, V> f3682k = Collections.emptyMap();

    /* renamed from: l */
    public final V m2967l(int i) {
        m2965n();
        V v = (V) this.f3678g.remove(i).getValue();
        if (!this.f3679h.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m2964o().entrySet().iterator();
            List<C1258y0> list = this.f3678g;
            Map.Entry<K, V> next = it.next();
            list.add(new C1258y0(this, next.getKey(), next.getValue()));
            it.remove();
        }
        return v;
    }

    /* renamed from: m */
    private final int m2966m(K k) {
        int size = this.f3678g.size() - 1;
        int i = size;
        int i2 = 0;
        if (size >= 0) {
            int compareTo = k.compareTo(this.f3678g.get(size).m2323c());
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
            int compareTo2 = k.compareTo(this.f3678g.get(i3).m2323c());
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
    public final void m2965n() {
        if (!this.f3680i) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: o */
    private final SortedMap<K, V> m2964o() {
        m2965n();
        if (this.f3679h.isEmpty() && !(this.f3679h instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f3679h = treeMap;
            this.f3682k = treeMap.descendingMap();
        }
        return (SortedMap) this.f3679h;
    }

    /* renamed from: a */
    public void m2977a() {
        if (!this.f3680i) {
            this.f3679h = this.f3679h.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f3679h);
            this.f3682k = this.f3682k.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f3682k);
            this.f3680i = true;
        }
    }

    /* renamed from: b */
    public final boolean m2976b() {
        return this.f3680i;
    }

    /* renamed from: c */
    public final int m2975c() {
        return this.f3678g.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        m2965n();
        if (!this.f3678g.isEmpty()) {
            this.f3678g.clear();
        }
        if (!this.f3679h.isEmpty()) {
            this.f3679h.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m2966m(comparable) >= 0 || this.f3679h.containsKey(comparable);
    }

    /* renamed from: e */
    public final Map.Entry<K, V> m2974e(int i) {
        return this.f3678g.get(i);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f3681j == null) {
            this.f3681j = new C1013b1(this, null);
        }
        return this.f3681j;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1026c1)) {
            return super.equals(obj);
        }
        C1026c1 c1026c1 = (C1026c1) obj;
        int size = size();
        if (size != c1026c1.size()) {
            return false;
        }
        int m2975c = m2975c();
        if (m2975c != c1026c1.m2975c()) {
            return entrySet().equals(c1026c1.entrySet());
        }
        for (int i = 0; i < m2975c; i++) {
            if (!m2974e(i).equals(c1026c1.m2974e(i))) {
                return false;
            }
        }
        if (m2975c == size) {
            return true;
        }
        return this.f3679h.equals(c1026c1.f3679h);
    }

    /* renamed from: f */
    public final Iterable<Map.Entry<K, V>> m2973f() {
        return this.f3679h.isEmpty() ? C1246x0.m2332a() : this.f3679h.entrySet();
    }

    /* renamed from: g */
    public final V put(K k, V v) {
        m2965n();
        int m2966m = m2966m(k);
        if (m2966m >= 0) {
            return (V) this.f3678g.get(m2966m).setValue(v);
        }
        m2965n();
        if (this.f3678g.isEmpty() && !(this.f3678g instanceof ArrayList)) {
            this.f3678g = new ArrayList(this.f3677f);
        }
        int i = -(m2966m + 1);
        if (i >= this.f3677f) {
            return m2964o().put(k, v);
        }
        int size = this.f3678g.size();
        int i2 = this.f3677f;
        if (size == i2) {
            C1258y0 remove = this.f3678g.remove(i2 - 1);
            m2964o().put((K) remove.m2323c(), (V) remove.getValue());
        }
        this.f3678g.add(i, new C1258y0(this, k, v));
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m2966m = m2966m(comparable);
        return m2966m >= 0 ? (V) this.f3678g.get(m2966m).getValue() : this.f3679h.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int m2975c = m2975c();
        int i = 0;
        for (int i2 = 0; i2 < m2975c; i2++) {
            i += this.f3678g.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f3679h.size() > 0) {
            i3 = i + this.f3679h.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m2965n();
        Comparable comparable = (Comparable) obj;
        int m2966m = m2966m(comparable);
        if (m2966m >= 0) {
            return (V) m2967l(m2966m);
        }
        if (!this.f3679h.isEmpty()) {
            return this.f3679h.remove(comparable);
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f3678g.size() + this.f3679h.size();
    }
}
