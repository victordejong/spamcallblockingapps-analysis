package com.google.android.gms.internal.ads;

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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajp.class */
public class ajp<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    private final int f7491a;

    /* renamed from: b */
    private List<ajy> f7492b;

    /* renamed from: c */
    private Map<K, V> f7493c;

    /* renamed from: d */
    private boolean f7494d;

    /* renamed from: e */
    private volatile aka f7495e;

    /* renamed from: f */
    private Map<K, V> f7496f;

    /* renamed from: g */
    private volatile aju f7497g;

    private ajp(int i) {
        this.f7491a = i;
        this.f7492b = Collections.emptyList();
        this.f7493c = Collections.emptyMap();
        this.f7496f = Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ajp(int i, byte b) {
        this(i);
    }

    /* renamed from: a */
    private final int m5171a(K k) {
        int size = this.f7492b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.f7492b.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.f7492b.get(i2).getKey());
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
    public static <FieldDescriptorType extends zzdro<FieldDescriptorType>> ajp<FieldDescriptorType, Object> m5174a(int i) {
        return new ajs(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public final V m5165c(int i) {
        m5160f();
        V v = (V) this.f7492b.remove(i).getValue();
        if (!this.f7493c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m5159g().entrySet().iterator();
            this.f7492b.add(new ajy(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public final void m5160f() {
        if (this.f7494d) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: g */
    private final SortedMap<K, V> m5159g() {
        m5160f();
        if (this.f7493c.isEmpty() && !(this.f7493c instanceof TreeMap)) {
            this.f7493c = new TreeMap();
            this.f7496f = ((TreeMap) this.f7493c).descendingMap();
        }
        return (SortedMap) this.f7493c;
    }

    /* renamed from: a */
    public final V m5170a(K k, V v) {
        m5160f();
        int a = m5171a((ajp<K, V>) k);
        if (a >= 0) {
            return (V) this.f7492b.get(a).setValue(v);
        }
        m5160f();
        if (this.f7492b.isEmpty() && !(this.f7492b instanceof ArrayList)) {
            this.f7492b = new ArrayList(this.f7491a);
        }
        int i = -(a + 1);
        if (i >= this.f7491a) {
            return m5159g().put(k, v);
        }
        int size = this.f7492b.size();
        int i2 = this.f7491a;
        if (size == i2) {
            ajy remove = this.f7492b.remove(i2 - 1);
            m5159g().put((K) ((Comparable) remove.getKey()), (V) remove.getValue());
        }
        this.f7492b.add(i, new ajy(this, k, v));
        return null;
    }

    /* renamed from: a */
    public void mo5101a() {
        if (!this.f7494d) {
            this.f7493c = this.f7493c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f7493c);
            this.f7496f = this.f7496f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f7496f);
            this.f7494d = true;
        }
    }

    /* renamed from: b */
    public final Map.Entry<K, V> m5168b(int i) {
        return this.f7492b.get(i);
    }

    /* renamed from: b */
    public final boolean m5169b() {
        return this.f7494d;
    }

    /* renamed from: c */
    public final int m5166c() {
        return this.f7492b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m5160f();
        if (!this.f7492b.isEmpty()) {
            this.f7492b.clear();
        }
        if (!this.f7493c.isEmpty()) {
            this.f7493c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m5171a((ajp<K, V>) comparable) >= 0 || this.f7493c.containsKey(comparable);
    }

    /* renamed from: d */
    public final Iterable<Map.Entry<K, V>> m5163d() {
        return this.f7493c.isEmpty() ? ajt.m5100a() : this.f7493c.entrySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final Set<Map.Entry<K, V>> m5161e() {
        if (this.f7497g == null) {
            this.f7497g = new aju(this, (byte) 0);
        }
        return this.f7497g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f7495e == null) {
            this.f7495e = new aka(this, (byte) 0);
        }
        return this.f7495e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ajp)) {
            return super.equals(obj);
        }
        ajp ajpVar = (ajp) obj;
        int size = size();
        if (size != ajpVar.size()) {
            return false;
        }
        int c = m5166c();
        if (c != ajpVar.m5166c()) {
            return entrySet().equals(ajpVar.entrySet());
        }
        for (int i = 0; i < c; i++) {
            if (!m5168b(i).equals(ajpVar.m5168b(i))) {
                return false;
            }
        }
        if (c != size) {
            return this.f7493c.equals(ajpVar.f7493c);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a = m5171a((ajp<K, V>) comparable);
        return a >= 0 ? (V) this.f7492b.get(a).getValue() : this.f7493c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int c = m5166c();
        int i = 0;
        for (int i2 = 0; i2 < c; i2++) {
            i += this.f7492b.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f7493c.size() > 0) {
            i3 = i + this.f7493c.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return m5170a((ajp<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m5160f();
        Comparable comparable = (Comparable) obj;
        int a = m5171a((ajp<K, V>) comparable);
        if (a >= 0) {
            return (V) m5165c(a);
        }
        if (this.f7493c.isEmpty()) {
            return null;
        }
        return this.f7493c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f7492b.size() + this.f7493c.size();
    }
}
