package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzht;
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
/* renamed from: c.d.b.d.g.f.p4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/p4.class */
public class C4567p4<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    public final int f16837a;

    /* renamed from: b */
    public List<C4625y4> f16838b;

    /* renamed from: c */
    public Map<K, V> f16839c;

    /* renamed from: d */
    public boolean f16840d;

    /* renamed from: e */
    public volatile C4459a5 f16841e;

    /* renamed from: f */
    public Map<K, V> f16842f;

    /* renamed from: g */
    public volatile C4601u4 f16843g;

    public C4567p4(int i) {
        this.f16837a = i;
        this.f16838b = Collections.emptyList();
        this.f16839c = Collections.emptyMap();
        this.f16842f = Collections.emptyMap();
    }

    public /* synthetic */ C4567p4(int i, C4588s4 s4Var) {
        this(i);
    }

    /* renamed from: c */
    public static <FieldDescriptorType extends zzht<FieldDescriptorType>> C4567p4<FieldDescriptorType, Object> m25327c(int i) {
        return new C4588s4(i);
    }

    /* renamed from: a */
    public final int m25333a(K k) {
        int size = this.f16838b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.f16838b.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.f16838b.get(i2).getKey());
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
    public final V m25332a(K k, V v) {
        m25322f();
        int a = m25333a((C4567p4<K, V>) k);
        if (a >= 0) {
            return (V) this.f16838b.get(a).setValue(v);
        }
        m25322f();
        if (this.f16838b.isEmpty() && !(this.f16838b instanceof ArrayList)) {
            this.f16838b = new ArrayList(this.f16837a);
        }
        int i = -(a + 1);
        if (i >= this.f16837a) {
            return m25321g().put(k, v);
        }
        int size = this.f16838b.size();
        int i2 = this.f16837a;
        if (size == i2) {
            C4625y4 remove = this.f16838b.remove(i2 - 1);
            m25321g().put((K) ((Comparable) remove.getKey()), (V) remove.getValue());
        }
        this.f16838b.add(i, new C4625y4(this, k, v));
        return null;
    }

    /* renamed from: a */
    public final Map.Entry<K, V> m25336a(int i) {
        return this.f16838b.get(i);
    }

    /* renamed from: a */
    public void mo25240a() {
        if (!this.f16840d) {
            this.f16839c = this.f16839c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f16839c);
            this.f16842f = this.f16842f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f16842f);
            this.f16840d = true;
        }
    }

    /* renamed from: b */
    public final V m25330b(int i) {
        m25322f();
        V v = (V) this.f16838b.remove(i).getValue();
        if (!this.f16839c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m25321g().entrySet().iterator();
            this.f16838b.add(new C4625y4(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* renamed from: b */
    public final boolean m25331b() {
        return this.f16840d;
    }

    /* renamed from: c */
    public final int m25328c() {
        return this.f16838b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m25322f();
        if (!this.f16838b.isEmpty()) {
            this.f16838b.clear();
        }
        if (!this.f16839c.isEmpty()) {
            this.f16839c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m25333a((C4567p4<K, V>) comparable) >= 0 || this.f16839c.containsKey(comparable);
    }

    /* renamed from: d */
    public final Iterable<Map.Entry<K, V>> m25325d() {
        return this.f16839c.isEmpty() ? C4595t4.m25238a() : this.f16839c.entrySet();
    }

    /* renamed from: e */
    public final Set<Map.Entry<K, V>> m25323e() {
        if (this.f16843g == null) {
            this.f16843g = new C4601u4(this, null);
        }
        return this.f16843g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f16841e == null) {
            this.f16841e = new C4459a5(this, null);
        }
        return this.f16841e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4567p4)) {
            return super.equals(obj);
        }
        C4567p4 p4Var = (C4567p4) obj;
        int size = size();
        if (size != p4Var.size()) {
            return false;
        }
        int c = m25328c();
        if (c != p4Var.m25328c()) {
            return entrySet().equals(p4Var.entrySet());
        }
        for (int i = 0; i < c; i++) {
            if (!m25336a(i).equals(p4Var.m25336a(i))) {
                return false;
            }
        }
        if (c != size) {
            return this.f16839c.equals(p4Var.f16839c);
        }
        return true;
    }

    /* renamed from: f */
    public final void m25322f() {
        if (this.f16840d) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: g */
    public final SortedMap<K, V> m25321g() {
        m25322f();
        if (this.f16839c.isEmpty() && !(this.f16839c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f16839c = treeMap;
            this.f16842f = treeMap.descendingMap();
        }
        return (SortedMap) this.f16839c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a = m25333a((C4567p4<K, V>) comparable);
        return a >= 0 ? (V) this.f16838b.get(a).getValue() : this.f16839c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int c = m25328c();
        int i = 0;
        for (int i2 = 0; i2 < c; i2++) {
            i += this.f16838b.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f16839c.size() > 0) {
            i3 = i + this.f16839c.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return m25332a((C4567p4<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m25322f();
        Comparable comparable = (Comparable) obj;
        int a = m25333a((C4567p4<K, V>) comparable);
        if (a >= 0) {
            return (V) m25330b(a);
        }
        if (this.f16839c.isEmpty()) {
            return null;
        }
        return this.f16839c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f16838b.size() + this.f16839c.size();
    }
}
