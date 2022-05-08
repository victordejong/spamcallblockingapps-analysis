package p081h.p203i.p204a.p224e.p259j.p266g;

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
/* renamed from: h.i.a.e.j.g.e3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/e3.class */
public class C7578e3<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: a */
    public final int f17817a;

    /* renamed from: b */
    public List<C7635l3> f17818b;

    /* renamed from: c */
    public Map<K, V> f17819c;

    /* renamed from: d */
    public boolean f17820d;

    /* renamed from: e */
    public volatile C7654n3 f17821e;

    /* renamed from: f */
    public Map<K, V> f17822f;

    /* renamed from: g */
    public volatile C7604h3 f17823g;

    public C7578e3(int i) {
        this.f17817a = i;
        this.f17818b = Collections.emptyList();
        this.f17819c = Collections.emptyMap();
        this.f17822f = Collections.emptyMap();
    }

    public /* synthetic */ C7578e3(int i, C7590f3 f3Var) {
        this(i);
    }

    /* renamed from: c */
    public static <FieldDescriptorType extends AbstractC7735z0<FieldDescriptorType>> C7578e3<FieldDescriptorType, Object> m20197c(int i) {
        return new C7590f3(i);
    }

    /* renamed from: a */
    public final int m20203a(K k) {
        int size = this.f17818b.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.f17818b.get(size).getKey());
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
            int compareTo2 = k.compareTo((Comparable) this.f17818b.get(i2).getKey());
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
    public final V m20202a(K k, V v) {
        m20193e();
        int a = m20203a((C7578e3<K, V>) k);
        if (a >= 0) {
            return (V) this.f17818b.get(a).setValue(v);
        }
        m20193e();
        if (this.f17818b.isEmpty() && !(this.f17818b instanceof ArrayList)) {
            this.f17818b = new ArrayList(this.f17817a);
        }
        int i = -(a + 1);
        if (i >= this.f17817a) {
            return m20192f().put(k, v);
        }
        int size = this.f17818b.size();
        int i2 = this.f17817a;
        if (size == i2) {
            C7635l3 remove = this.f17818b.remove(i2 - 1);
            m20192f().put((K) ((Comparable) remove.getKey()), (V) remove.getValue());
        }
        this.f17818b.add(i, new C7635l3(this, k, v));
        return null;
    }

    /* renamed from: a */
    public final Map.Entry<K, V> m20206a(int i) {
        return this.f17818b.get(i);
    }

    /* renamed from: a */
    public final boolean m20207a() {
        return this.f17820d;
    }

    /* renamed from: b */
    public final int m20201b() {
        return this.f17818b.size();
    }

    /* renamed from: b */
    public final V m20200b(int i) {
        m20193e();
        V v = (V) this.f17818b.remove(i).getValue();
        if (!this.f17819c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = m20192f().entrySet().iterator();
            this.f17818b.add(new C7635l3(this, it.next()));
            it.remove();
        }
        return v;
    }

    /* renamed from: c */
    public final Iterable<Map.Entry<K, V>> m20198c() {
        return this.f17819c.isEmpty() ? C7614i3.m20099a() : this.f17819c.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        m20193e();
        if (!this.f17818b.isEmpty()) {
            this.f17818b.clear();
        }
        if (!this.f17819c.isEmpty()) {
            this.f17819c.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m20203a((C7578e3<K, V>) comparable) >= 0 || this.f17819c.containsKey(comparable);
    }

    /* renamed from: d */
    public final Set<Map.Entry<K, V>> m20195d() {
        if (this.f17823g == null) {
            this.f17823g = new C7604h3(this, null);
        }
        return this.f17823g;
    }

    /* renamed from: e */
    public final void m20193e() {
        if (this.f17820d) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.f17821e == null) {
            this.f17821e = new C7654n3(this, null);
        }
        return this.f17821e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7578e3)) {
            return super.equals(obj);
        }
        C7578e3 e3Var = (C7578e3) obj;
        int size = size();
        if (size != e3Var.size()) {
            return false;
        }
        int b = m20201b();
        if (b != e3Var.m20201b()) {
            return entrySet().equals(e3Var.entrySet());
        }
        for (int i = 0; i < b; i++) {
            if (!m20206a(i).equals(e3Var.m20206a(i))) {
                return false;
            }
        }
        if (b != size) {
            return this.f17819c.equals(e3Var.f17819c);
        }
        return true;
    }

    /* renamed from: f */
    public final SortedMap<K, V> m20192f() {
        m20193e();
        if (this.f17819c.isEmpty() && !(this.f17819c instanceof TreeMap)) {
            this.f17819c = new TreeMap();
            this.f17822f = ((TreeMap) this.f17819c).descendingMap();
        }
        return (SortedMap) this.f17819c;
    }

    /* renamed from: g */
    public void mo20161g() {
        if (!this.f17820d) {
            this.f17819c = this.f17819c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f17819c);
            this.f17822f = this.f17822f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f17822f);
            this.f17820d = true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a = m20203a((C7578e3<K, V>) comparable);
        return a >= 0 ? (V) this.f17818b.get(a).getValue() : this.f17819c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int b = m20201b();
        int i = 0;
        for (int i2 = 0; i2 < b; i2++) {
            i += this.f17818b.get(i2).hashCode();
        }
        int i3 = i;
        if (this.f17819c.size() > 0) {
            i3 = i + this.f17819c.hashCode();
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        return m20202a((C7578e3<K, V>) ((Comparable) obj), (Comparable) obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        m20193e();
        Comparable comparable = (Comparable) obj;
        int a = m20203a((C7578e3<K, V>) comparable);
        if (a >= 0) {
            return (V) m20200b(a);
        }
        if (this.f17819c.isEmpty()) {
            return null;
        }
        return this.f17819c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.f17818b.size() + this.f17819c.size();
    }
}
