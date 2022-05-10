package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzca;
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
/* renamed from: c.d.b.d.g.c.r1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/r1.class */
public class C4406r1<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    public final int f16620a;

    /* renamed from: b */
    public List<C4437y1> f16621b;

    /* renamed from: c */
    public Map<K, V> f16622c;

    /* renamed from: d */
    public boolean f16623d;

    /* renamed from: e */
    public volatile C4318a2 f16624e;

    /* renamed from: f */
    public Map<K, V> f16625f;

    /* renamed from: g */
    public volatile C4421u1 f16626g;

    public C4406r1(int i) {
        this.f16620a = i;
        this.f16621b = Collections.emptyList();
        this.f16622c = Collections.emptyMap();
        this.f16625f = Collections.emptyMap();
    }

    public /* synthetic */ C4406r1(int i, C4411s1 s1Var) {
        this(i);
    }

    /* renamed from: c */
    public static <FieldDescriptorType extends zzca<FieldDescriptorType>> C4406r1<FieldDescriptorType, Object> m25657c(int i) {
        return new C4411s1(i);
    }

    /* renamed from: a */
    public final int m25663a(K k) {
        int size = this.f16621b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.f16621b.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.f16621b.get(i2).getKey());
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
    public final V m25662a(K k, V v) {
        m25653e();
        int a = m25663a((C4406r1<K, V>) k);
        if (a >= 0) {
            return (V) this.f16621b.get(a).setValue(v);
        }
        m25653e();
        if (this.f16621b.isEmpty() && !(this.f16621b instanceof ArrayList)) {
            this.f16621b = new ArrayList(this.f16620a);
        }
        int i = -(a + 1);
        if (i >= this.f16620a) {
            return m25652f().put(k, v);
        }
        int size = this.f16621b.size();
        int i2 = this.f16620a;
        if (size == i2) {
            C4437y1 remove = this.f16621b.remove(i2 - 1);
            m25652f().put((K) ((Comparable) remove.getKey()), (V) remove.getValue());
        }
        this.f16621b.add(i, new C4437y1(this, k, v));
        return null;
    }

    /* renamed from: a */
    public final Map.Entry<K, V> m25666a(int i) {
        return this.f16621b.get(i);
    }

    /* renamed from: a */
    public final boolean m25667a() {
        return this.f16623d;
    }

    /* renamed from: b */
    public final int m25661b() {
        return this.f16621b.size();
    }

    /* renamed from: b */
    public final V m25660b(int i) {
        m25653e();
        V v = (V) this.f16621b.remove(i).getValue();
        if (!this.f16622c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m25652f().entrySet().iterator();
            this.f16621b.add(new C4437y1(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* renamed from: c */
    public final Iterable<Map.Entry<K, V>> m25658c() {
        return this.f16622c.isEmpty() ? C4425v1.m25631a() : this.f16622c.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m25653e();
        if (!this.f16621b.isEmpty()) {
            this.f16621b.clear();
        }
        if (!this.f16622c.isEmpty()) {
            this.f16622c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m25663a((C4406r1<K, V>) comparable) >= 0 || this.f16622c.containsKey(comparable);
    }

    /* renamed from: d */
    public final Set<Map.Entry<K, V>> m25655d() {
        if (this.f16626g == null) {
            this.f16626g = new C4421u1(this, null);
        }
        return this.f16626g;
    }

    /* renamed from: e */
    public final void m25653e() {
        if (this.f16623d) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f16624e == null) {
            this.f16624e = new C4318a2(this, null);
        }
        return this.f16624e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4406r1)) {
            return super.equals(obj);
        }
        C4406r1 r1Var = (C4406r1) obj;
        int size = size();
        if (size != r1Var.size()) {
            return false;
        }
        int b = m25661b();
        if (b != r1Var.m25661b()) {
            return entrySet().equals(r1Var.entrySet());
        }
        for (int i = 0; i < b; i++) {
            if (!m25666a(i).equals(r1Var.m25666a(i))) {
                return false;
            }
        }
        if (b != size) {
            return this.f16622c.equals(r1Var.f16622c);
        }
        return true;
    }

    /* renamed from: f */
    public final SortedMap<K, V> m25652f() {
        m25653e();
        if (this.f16622c.isEmpty() && !(this.f16622c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f16622c = treeMap;
            this.f16625f = treeMap.descendingMap();
        }
        return (SortedMap) this.f16622c;
    }

    /* renamed from: g */
    public void mo25645g() {
        if (!this.f16623d) {
            this.f16622c = this.f16622c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f16622c);
            this.f16625f = this.f16625f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f16625f);
            this.f16623d = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a = m25663a((C4406r1<K, V>) comparable);
        return a >= 0 ? (V) this.f16621b.get(a).getValue() : this.f16622c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int b = m25661b();
        int i = 0;
        for (int i2 = 0; i2 < b; i2++) {
            i += this.f16621b.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f16622c.size() > 0) {
            i3 = i + this.f16622c.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return m25662a((C4406r1<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m25653e();
        Comparable comparable = (Comparable) obj;
        int a = m25663a((C4406r1<K, V>) comparable);
        if (a >= 0) {
            return (V) m25660b(a);
        }
        if (this.f16622c.isEmpty()) {
            return null;
        }
        return this.f16622c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f16621b.size() + this.f16622c.size();
    }
}
