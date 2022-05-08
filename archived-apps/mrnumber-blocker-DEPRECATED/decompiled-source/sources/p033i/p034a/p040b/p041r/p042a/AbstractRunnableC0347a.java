package p033i.p034a.p040b.p041r.p042a;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
/* renamed from: i.a.b.r.a.a */
/* loaded from: classes2-dex2jar.jar:i/a/b/r/a/a.class */
public abstract class AbstractRunnableC0347a<K, V, L> extends ReferenceQueue<K> implements Runnable, Iterable<Map.Entry<K, V>> {

    /* renamed from: f */
    final ConcurrentMap<C0351d<K>, V> f869f;

    /* renamed from: i.a.b.r.a.a$b */
    /* loaded from: classes2-dex2jar.jar:i/a/b/r/a/a$b.class */
    private class C0349b implements Iterator<Map.Entry<K, V>> {

        /* renamed from: f */
        private final Iterator<Map.Entry<C0351d<K>, V>> f870f;

        /* renamed from: g */
        private Map.Entry<C0351d<K>, V> f871g;

        /* renamed from: h */
        private K f872h;

        private C0349b(Iterator<Map.Entry<C0351d<K>, V>> it) {
            this.f870f = it;
            m350a();
        }

        /* renamed from: a */
        private void m350a() {
            while (this.f870f.hasNext()) {
                Map.Entry<C0351d<K>, V> next = this.f870f.next();
                this.f871g = next;
                K k = next.getKey().get();
                this.f872h = k;
                if (k != null) {
                    return;
                }
            }
            this.f871g = null;
            this.f872h = null;
        }

        /* renamed from: b */
        public Map.Entry<K, V> next() {
            K k = this.f872h;
            if (k != null) {
                C0350c cVar = new C0350c(k, this.f871g);
                m350a();
                return cVar;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f872h != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i.a.b.r.a.a$c */
    /* loaded from: classes2-dex2jar.jar:i/a/b/r/a/a$c.class */
    public class C0350c implements Map.Entry<K, V> {

        /* renamed from: f */
        private final K f874f;

        /* renamed from: g */
        final Map.Entry<C0351d<K>, V> f875g;

        private C0350c(AbstractRunnableC0347a aVar, K k, Map.Entry<C0351d<K>, V> entry) {
            this.f874f = k;
            this.f875g = entry;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f874f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f875g.getValue();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            Objects.requireNonNull(v);
            return this.f875g.setValue(v);
        }
    }

    /* renamed from: i.a.b.r.a.a$d */
    /* loaded from: classes2-dex2jar.jar:i/a/b/r/a/a$d.class */
    public static final class C0351d<K> extends WeakReference<K> {

        /* renamed from: a */
        private final int f876a;

        C0351d(K k, ReferenceQueue<? super K> referenceQueue) {
            super(k, referenceQueue);
            this.f876a = System.identityHashCode(k);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C0351d)) {
                return obj.equals(this);
            }
            return ((C0351d) obj).get() == get();
        }

        public int hashCode() {
            return this.f876a;
        }

        public String toString() {
            return String.valueOf(get());
        }
    }

    protected AbstractRunnableC0347a(ConcurrentMap<C0351d<K>, V> concurrentMap) {
        this.f869f = concurrentMap;
    }

    /* renamed from: b */
    protected abstract L m354b(K k);

    /* renamed from: c */
    public V m353c(K k, V v) {
        if (k != null && v != null) {
            return this.f869f.put(new C0351d<>(k, this), v);
        }
        throw null;
    }

    /* renamed from: d */
    public V m352d(K k) {
        Objects.requireNonNull(k);
        L b = m354b(k);
        V remove = this.f869f.remove(b);
        m351g(b);
        return remove;
    }

    /* renamed from: g */
    protected abstract void m351g(L l);

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return new C0349b(this.f869f.entrySet().iterator());
    }

    public String toString() {
        return this.f869f.toString();
    }
}
