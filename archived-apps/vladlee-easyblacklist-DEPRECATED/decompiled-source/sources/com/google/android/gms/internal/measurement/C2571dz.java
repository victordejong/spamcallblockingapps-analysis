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
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.dz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dz.class */
public class C2571dz<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    private final int f16014a;

    /* renamed from: b */
    private List<C2577ee> f16015b;

    /* renamed from: c */
    private Map<K, V> f16016c;

    /* renamed from: d */
    private boolean f16017d;

    /* renamed from: e */
    private volatile C2579eg f16018e;

    /* renamed from: f */
    private Map<K, V> f16019f;

    /* renamed from: g */
    private volatile C2573ea f16020g;

    private C2571dz(int i) {
        this.f16014a = i;
        this.f16015b = Collections.emptyList();
        this.f16016c = Collections.emptyMap();
        this.f16019f = Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2571dz(int i, byte b) {
        this(i);
    }

    /* renamed from: a */
    private final int m2628a(K k) {
        int size = this.f16015b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.f16015b.get(size).getKey());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int compareTo2 = k.compareTo((Comparable) this.f16015b.get(i2).getKey());
            if (compareTo2 < 0) {
                size = i2 - 1;
            } else if (compareTo2 <= 0) {
                return i2;
            } else {
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <FieldDescriptorType extends zzey<FieldDescriptorType>> C2571dz<FieldDescriptorType, Object> m2631a(int i) {
        return new C2570dy(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public final V m2622c(int i) {
        m2617f();
        V v = (V) this.f16015b.remove(i).getValue();
        if (!this.f16016c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m2616g().entrySet().iterator();
            this.f16015b.add(new C2577ee(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public final void m2617f() {
        if (this.f16017d) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: g */
    private final SortedMap<K, V> m2616g() {
        m2617f();
        if (this.f16016c.isEmpty() && !(this.f16016c instanceof TreeMap)) {
            this.f16016c = new TreeMap();
            this.f16019f = ((TreeMap) this.f16016c).descendingMap();
        }
        return (SortedMap) this.f16016c;
    }

    /* renamed from: a */
    public final V m2627a(K k, V v) {
        m2617f();
        int a = m2628a((C2571dz<K, V>) k);
        if (a >= 0) {
            return (V) this.f16015b.get(a).setValue(v);
        }
        m2617f();
        if (this.f16015b.isEmpty() && !(this.f16015b instanceof ArrayList)) {
            this.f16015b = new ArrayList(this.f16014a);
        }
        int i = -(a + 1);
        if (i >= this.f16014a) {
            return m2616g().put(k, v);
        }
        int size = this.f16015b.size();
        int i2 = this.f16014a;
        if (size == i2) {
            C2577ee remove = this.f16015b.remove(i2 - 1);
            m2616g().put((K) ((Comparable) remove.getKey()), (V) remove.getValue());
        }
        this.f16015b.add(i, new C2577ee(this, k, v));
        return null;
    }

    /* renamed from: a */
    public void mo2632a() {
        if (!this.f16017d) {
            this.f16016c = this.f16016c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f16016c);
            this.f16019f = this.f16019f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f16019f);
            this.f16017d = true;
        }
    }

    /* renamed from: b */
    public final Map.Entry<K, V> m2625b(int i) {
        return this.f16015b.get(i);
    }

    /* renamed from: b */
    public final boolean m2626b() {
        return this.f16017d;
    }

    /* renamed from: c */
    public final int m2623c() {
        return this.f16015b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m2617f();
        if (!this.f16015b.isEmpty()) {
            this.f16015b.clear();
        }
        if (!this.f16016c.isEmpty()) {
            this.f16016c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m2628a((C2571dz<K, V>) comparable) >= 0 || this.f16016c.containsKey(comparable);
    }

    /* renamed from: d */
    public final Iterable<Map.Entry<K, V>> m2620d() {
        return this.f16016c.isEmpty() ? C2576ed.m2614a() : this.f16016c.entrySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final Set<Map.Entry<K, V>> m2618e() {
        if (this.f16020g == null) {
            this.f16020g = new C2573ea(this, (byte) 0);
        }
        return this.f16020g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f16018e == null) {
            this.f16018e = new C2579eg(this, (byte) 0);
        }
        return this.f16018e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2571dz)) {
            return super.equals(obj);
        }
        C2571dz dzVar = (C2571dz) obj;
        int size = size();
        if (size != dzVar.size()) {
            return false;
        }
        int c = m2623c();
        if (c != dzVar.m2623c()) {
            return entrySet().equals(dzVar.entrySet());
        }
        for (int i = 0; i < c; i++) {
            if (!m2625b(i).equals(dzVar.m2625b(i))) {
                return false;
            }
        }
        if (c != size) {
            return this.f16016c.equals(dzVar.f16016c);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a = m2628a((C2571dz<K, V>) comparable);
        return a >= 0 ? (V) this.f16015b.get(a).getValue() : this.f16016c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int c = m2623c();
        int i = 0;
        for (int i2 = 0; i2 < c; i2++) {
            i += this.f16015b.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f16016c.size() > 0) {
            i3 = i + this.f16016c.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return m2627a((C2571dz<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m2617f();
        Comparable comparable = (Comparable) obj;
        int a = m2628a((C2571dz<K, V>) comparable);
        if (a >= 0) {
            return (V) m2622c(a);
        }
        if (this.f16016c.isEmpty()) {
            return null;
        }
        return this.f16016c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f16015b.size() + this.f16016c.size();
    }
}
