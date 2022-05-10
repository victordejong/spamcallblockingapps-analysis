package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeju;
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
/* renamed from: c.d.b.d.g.a.k90 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/k90.class */
public class k90<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    public final int f13847a;

    /* renamed from: b */
    public List<p90> f13848b;

    /* renamed from: c */
    public Map<K, V> f13849c;

    /* renamed from: d */
    public boolean f13850d;

    /* renamed from: e */
    public volatile r90 f13851e;

    /* renamed from: f */
    public Map<K, V> f13852f;

    /* renamed from: g */
    public volatile l90 f13853g;

    public k90(int i) {
        this.f13847a = i;
        this.f13848b = Collections.emptyList();
        this.f13849c = Collections.emptyMap();
        this.f13852f = Collections.emptyMap();
    }

    public /* synthetic */ k90(int i, j90 j90Var) {
        this(i);
    }

    /* renamed from: c */
    public static <FieldDescriptorType extends zzeju<FieldDescriptorType>> k90<FieldDescriptorType, Object> m26722c(int i) {
        return new j90(i);
    }

    /* renamed from: a */
    public final int m26728a(K k) {
        int size = this.f13848b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.f13848b.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.f13848b.get(i2).getKey());
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

    /* renamed from: a */
    public final V m26727a(K k, V v) {
        m26717f();
        int a = m26728a((k90<K, V>) k);
        if (a >= 0) {
            return (V) this.f13848b.get(a).setValue(v);
        }
        m26717f();
        if (this.f13848b.isEmpty() && !(this.f13848b instanceof ArrayList)) {
            this.f13848b = new ArrayList(this.f13847a);
        }
        int i = -(a + 1);
        if (i >= this.f13847a) {
            return m26716g().put(k, v);
        }
        int size = this.f13848b.size();
        int i2 = this.f13847a;
        if (size == i2) {
            p90 remove = this.f13848b.remove(i2 - 1);
            m26716g().put((K) ((Comparable) remove.getKey()), (V) remove.getValue());
        }
        this.f13848b.add(i, new p90(this, k, v));
        return null;
    }

    /* renamed from: a */
    public final Map.Entry<K, V> m26731a(int i) {
        return this.f13848b.get(i);
    }

    /* renamed from: a */
    public final boolean m26732a() {
        return this.f13850d;
    }

    /* renamed from: b */
    public final V m26725b(int i) {
        m26717f();
        V v = (V) this.f13848b.remove(i).getValue();
        if (!this.f13849c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m26716g().entrySet().iterator();
            this.f13848b.add(new p90(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* renamed from: b */
    public void mo26726b() {
        if (!this.f13850d) {
            this.f13849c = this.f13849c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f13849c);
            this.f13852f = this.f13852f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f13852f);
            this.f13850d = true;
        }
    }

    /* renamed from: c */
    public final int m26723c() {
        return this.f13848b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m26717f();
        if (!this.f13848b.isEmpty()) {
            this.f13848b.clear();
        }
        if (!this.f13849c.isEmpty()) {
            this.f13849c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m26728a((k90<K, V>) comparable) >= 0 || this.f13849c.containsKey(comparable);
    }

    /* renamed from: d */
    public final Iterable<Map.Entry<K, V>> m26720d() {
        return this.f13849c.isEmpty() ? o90.m26600a() : this.f13849c.entrySet();
    }

    /* renamed from: e */
    public final Set<Map.Entry<K, V>> m26718e() {
        if (this.f13853g == null) {
            this.f13853g = new l90(this, null);
        }
        return this.f13853g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f13851e == null) {
            this.f13851e = new r90(this, null);
        }
        return this.f13851e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k90)) {
            return super.equals(obj);
        }
        k90 k90Var = (k90) obj;
        int size = size();
        if (size != k90Var.size()) {
            return false;
        }
        int c = m26723c();
        if (c != k90Var.m26723c()) {
            return entrySet().equals(k90Var.entrySet());
        }
        for (int i = 0; i < c; i++) {
            if (!m26731a(i).equals(k90Var.m26731a(i))) {
                return false;
            }
        }
        if (c != size) {
            return this.f13849c.equals(k90Var.f13849c);
        }
        return true;
    }

    /* renamed from: f */
    public final void m26717f() {
        if (this.f13850d) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: g */
    public final SortedMap<K, V> m26716g() {
        m26717f();
        if (this.f13849c.isEmpty() && !(this.f13849c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f13849c = treeMap;
            this.f13852f = treeMap.descendingMap();
        }
        return (SortedMap) this.f13849c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a = m26728a((k90<K, V>) comparable);
        return a >= 0 ? (V) this.f13848b.get(a).getValue() : this.f13849c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int c = m26723c();
        int i = 0;
        for (int i2 = 0; i2 < c; i2++) {
            i += this.f13848b.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f13849c.size() > 0) {
            i3 = i + this.f13849c.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return m26727a((k90<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m26717f();
        Comparable comparable = (Comparable) obj;
        int a = m26728a((k90<K, V>) comparable);
        if (a >= 0) {
            return (V) m26725b(a);
        }
        if (this.f13849c.isEmpty()) {
            return null;
        }
        return this.f13849c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f13848b.size() + this.f13849c.size();
    }
}
