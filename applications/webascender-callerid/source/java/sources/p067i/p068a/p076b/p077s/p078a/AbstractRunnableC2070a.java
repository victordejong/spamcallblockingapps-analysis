package p067i.p068a.p076b.p077s.p078a;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
/* renamed from: i.a.b.s.a.a */
/* loaded from: classes2-dex2jar.jar:i/a/b/s/a/a.class */
public abstract class AbstractRunnableC2070a<K, V, L> extends ReferenceQueue<K> implements Runnable, Iterable<Map.Entry<K, V>> {

    /* renamed from: f */
    final ConcurrentMap<C2074d<K>, V> f5657f;

    /* renamed from: i.a.b.s.a.a$b */
    /* loaded from: classes2-dex2jar.jar:i/a/b/s/a/a$b.class */
    private class C2072b implements Iterator<Map.Entry<K, V>> {

        /* renamed from: f */
        private final Iterator<Map.Entry<C2074d<K>, V>> f5658f;

        /* renamed from: g */
        private Map.Entry<C2074d<K>, V> f5659g;

        /* renamed from: h */
        private K f5660h;

        private C2072b(Iterator<Map.Entry<C2074d<K>, V>> it) {
            AbstractRunnableC2070a.this = r4;
            this.f5658f = it;
            m270a();
        }

        /* renamed from: a */
        private void m270a() {
            while (this.f5658f.hasNext()) {
                Map.Entry<C2074d<K>, V> next = this.f5658f.next();
                this.f5659g = next;
                K k = next.getKey().get();
                this.f5660h = k;
                if (k != null) {
                    return;
                }
            }
            this.f5659g = null;
            this.f5660h = null;
        }

        /* renamed from: b */
        public Map.Entry<K, V> next() {
            K k = this.f5660h;
            if (k != null) {
                try {
                    return new C2073c(k, this.f5659g);
                } finally {
                    m270a();
                }
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f5660h != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: i.a.b.s.a.a$c */
    /* loaded from: classes2-dex2jar.jar:i/a/b/s/a/a$c.class */
    public class C2073c implements Map.Entry<K, V> {

        /* renamed from: f */
        private final K f5662f;

        /* renamed from: g */
        final Map.Entry<C2074d<K>, V> f5663g;

        private C2073c(AbstractRunnableC2070a abstractRunnableC2070a, K k, Map.Entry<C2074d<K>, V> entry) {
            this.f5662f = k;
            this.f5663g = entry;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f5662f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f5663g.getValue();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            Objects.requireNonNull(v);
            return this.f5663g.setValue(v);
        }
    }

    /* renamed from: i.a.b.s.a.a$d */
    /* loaded from: classes2-dex2jar.jar:i/a/b/s/a/a$d.class */
    public static final class C2074d<K> extends WeakReference<K> {

        /* renamed from: a */
        private final int f5664a;

        C2074d(K k, ReferenceQueue<? super K> referenceQueue) {
            super(k, referenceQueue);
            this.f5664a = System.identityHashCode(k);
        }

        public boolean equals(Object obj) {
            if (obj instanceof C2074d) {
                return ((C2074d) obj).get() == get();
            }
            return obj.equals(this);
        }

        public int hashCode() {
            return this.f5664a;
        }

        public String toString() {
            return String.valueOf(get());
        }
    }

    protected AbstractRunnableC2070a(ConcurrentMap<C2074d<K>, V> concurrentMap) {
        this.f5657f = concurrentMap;
    }

    /* renamed from: c */
    public void m275c() {
        while (true) {
            Reference<? extends K> poll = poll();
            if (poll != null) {
                this.f5657f.remove(poll);
            } else {
                return;
            }
        }
    }

    /* renamed from: d */
    protected abstract L m274d(K k);

    /* renamed from: g */
    public V m273g(K k, V v) {
        if (k == null || v == null) {
            throw null;
        }
        return this.f5657f.put(new C2074d<>(k, this), v);
    }

    /* renamed from: h */
    public V m272h(K k) {
        Objects.requireNonNull(k);
        L m274d = m274d(k);
        try {
            return this.f5657f.remove(m274d);
        } finally {
            m271i(m274d);
        }
    }

    /* renamed from: i */
    protected abstract void m271i(L l);

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return new C2072b(this.f5657f.entrySet().iterator());
    }

    public String toString() {
        return this.f5657f.toString();
    }
}
