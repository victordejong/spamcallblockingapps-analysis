package p037i.p038a.p046b.p047s.p048a;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: i.a.b.s.a.a */
/* loaded from: classes2-dex2jar.jar:i/a/b/s/a/a.class */
public abstract class AbstractRunnableC0402a<K, V, L> extends ReferenceQueue<K> implements Runnable, Iterable<Map.Entry<K, V>> {

    /* renamed from: f */
    final ConcurrentMap<C0406d<K>, V> f978f;

    /* renamed from: i.a.b.s.a.a$b */
    /* loaded from: classes2-dex2jar.jar:i/a/b/s/a/a$b.class */
    private class C0404b implements Iterator<Map.Entry<K, V>> {

        /* renamed from: f */
        private final Iterator<Map.Entry<C0406d<K>, V>> f979f;

        /* renamed from: g */
        private Map.Entry<C0406d<K>, V> f980g;

        /* renamed from: h */
        private K f981h;

        private C0404b(Iterator<Map.Entry<C0406d<K>, V>> it) {
            this.f979f = it;
            m270a();
        }

        /* renamed from: a */
        private void m270a() {
            while (this.f979f.hasNext()) {
                Map.Entry<C0406d<K>, V> next = this.f979f.next();
                this.f980g = next;
                K k = next.getKey().get();
                this.f981h = k;
                if (k != null) {
                    return;
                }
            }
            this.f980g = null;
            this.f981h = null;
        }

        /* renamed from: b */
        public Map.Entry<K, V> next() {
            K k = this.f981h;
            if (k != null) {
                try {
                    return new C0405c(k, this.f980g);
                } finally {
                    m270a();
                }
            } else {
                throw new NoSuchElementException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f981h != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i.a.b.s.a.a$c */
    /* loaded from: classes2-dex2jar.jar:i/a/b/s/a/a$c.class */
    public class C0405c implements Map.Entry<K, V> {

        /* renamed from: f */
        private final K f983f;

        /* renamed from: g */
        final Map.Entry<C0406d<K>, V> f984g;

        private C0405c(AbstractRunnableC0402a aVar, K k, Map.Entry<C0406d<K>, V> entry) {
            this.f983f = k;
            this.f984g = entry;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f983f;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f984g.getValue();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            Objects.requireNonNull(v);
            return this.f984g.setValue(v);
        }
    }

    /* renamed from: i.a.b.s.a.a$d */
    /* loaded from: classes2-dex2jar.jar:i/a/b/s/a/a$d.class */
    public static final class C0406d<K> extends WeakReference<K> {

        /* renamed from: a */
        private final int f985a;

        C0406d(K k, ReferenceQueue<? super K> referenceQueue) {
            super(k, referenceQueue);
            this.f985a = System.identityHashCode(k);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C0406d)) {
                return obj.equals(this);
            }
            return ((C0406d) obj).get() == get();
        }

        public int hashCode() {
            return this.f985a;
        }

        public String toString() {
            return String.valueOf(get());
        }
    }

    protected AbstractRunnableC0402a(ConcurrentMap<C0406d<K>, V> concurrentMap) {
        this.f978f = concurrentMap;
    }

    /* renamed from: c */
    public void m275c() {
        while (true) {
            Reference<? extends K> poll = poll();
            if (poll != null) {
                this.f978f.remove(poll);
            } else {
                return;
            }
        }
    }

    /* renamed from: d */
    protected abstract L m274d(K k);

    /* renamed from: g */
    public V m273g(K k, V v) {
        if (k != null && v != null) {
            return this.f978f.put(new C0406d<>(k, this), v);
        }
        throw null;
    }

    /* renamed from: h */
    public V m272h(K k) {
        Objects.requireNonNull(k);
        L d = m274d(k);
        try {
            return this.f978f.remove(d);
        } finally {
            m271i(d);
        }
    }

    /* renamed from: i */
    protected abstract void m271i(L l);

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return new C0404b(this.f978f.entrySet().iterator());
    }

    public String toString() {
        return this.f978f.toString();
    }
}
