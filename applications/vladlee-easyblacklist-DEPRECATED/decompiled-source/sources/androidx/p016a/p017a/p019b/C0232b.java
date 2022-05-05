package androidx.p016a.p017a.p019b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: androidx.a.a.b.b */
/* loaded from: classes-dex2jar.jar:androidx/a/a/b/b.class */
public class C0232b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a */
    C0235c<K, V> f505a;

    /* renamed from: b */
    private C0235c<K, V> f506b;

    /* renamed from: c */
    private WeakHashMap<AbstractC0238f<K, V>, Boolean> f507c = new WeakHashMap<>();

    /* renamed from: d */
    private int f508d = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.a.a.b.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$a.class */
    public static final class C0233a<K, V> extends AbstractC0237e<K, V> {
        C0233a(C0235c<K, V> cVar, C0235c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // androidx.p016a.p017a.p019b.C0232b.AbstractC0237e
        /* renamed from: a */
        final C0235c<K, V> mo9964a(C0235c<K, V> cVar) {
            return cVar.f511c;
        }

        @Override // androidx.p016a.p017a.p019b.C0232b.AbstractC0237e
        /* renamed from: b */
        final C0235c<K, V> mo9963b(C0235c<K, V> cVar) {
            return cVar.f512d;
        }
    }

    /* renamed from: androidx.a.a.b.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$b.class */
    private static final class C0234b<K, V> extends AbstractC0237e<K, V> {
        C0234b(C0235c<K, V> cVar, C0235c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // androidx.p016a.p017a.p019b.C0232b.AbstractC0237e
        /* renamed from: a */
        final C0235c<K, V> mo9964a(C0235c<K, V> cVar) {
            return cVar.f512d;
        }

        @Override // androidx.p016a.p017a.p019b.C0232b.AbstractC0237e
        /* renamed from: b */
        final C0235c<K, V> mo9963b(C0235c<K, V> cVar) {
            return cVar.f511c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.a.a.b.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$c.class */
    public static final class C0235c<K, V> implements Map.Entry<K, V> {

        /* renamed from: a */
        final K f509a;

        /* renamed from: b */
        final V f510b;

        /* renamed from: c */
        C0235c<K, V> f511c;

        /* renamed from: d */
        C0235c<K, V> f512d;

        C0235c(K k, V v) {
            this.f509a = k;
            this.f510b = v;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0235c)) {
                return false;
            }
            C0235c cVar = (C0235c) obj;
            return this.f509a.equals(cVar.f509a) && this.f510b.equals(cVar.f510b);
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f509a;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f510b;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f510b.hashCode() ^ this.f509a.hashCode();
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public final String toString() {
            return this.f509a + "=" + this.f510b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.a.a.b.b$d */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$d.class */
    public final class C0236d implements AbstractC0238f<K, V>, Iterator<Map.Entry<K, V>> {

        /* renamed from: b */
        private C0235c<K, V> f514b;

        /* renamed from: c */
        private boolean f515c = true;

        C0236d() {
        }

        @Override // androidx.p016a.p017a.p019b.C0232b.AbstractC0238f
        /* renamed from: a_ */
        public final void mo9962a_(C0235c<K, V> cVar) {
            C0235c<K, V> cVar2 = this.f514b;
            if (cVar == cVar2) {
                this.f514b = cVar2.f512d;
                this.f515c = this.f514b == null;
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f515c) {
                return C0232b.this.f505a != null;
            }
            C0235c<K, V> cVar = this.f514b;
            return (cVar == null || cVar.f511c == null) ? false : true;
        }

        @Override // java.util.Iterator
        public final /* bridge */ /* synthetic */ Object next() {
            C0235c<K, V> cVar;
            if (this.f515c) {
                this.f515c = false;
                cVar = C0232b.this.f505a;
            } else {
                C0235c<K, V> cVar2 = this.f514b;
                cVar = cVar2 != null ? cVar2.f511c : null;
            }
            this.f514b = cVar;
            return this.f514b;
        }
    }

    /* renamed from: androidx.a.a.b.b$e */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$e.class */
    private static abstract class AbstractC0237e<K, V> implements AbstractC0238f<K, V>, Iterator<Map.Entry<K, V>> {

        /* renamed from: a */
        C0235c<K, V> f516a;

        /* renamed from: b */
        C0235c<K, V> f517b;

        AbstractC0237e(C0235c<K, V> cVar, C0235c<K, V> cVar2) {
            this.f516a = cVar2;
            this.f517b = cVar;
        }

        /* renamed from: a */
        private C0235c<K, V> m9965a() {
            C0235c<K, V> cVar = this.f517b;
            C0235c<K, V> cVar2 = this.f516a;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return mo9964a(cVar);
        }

        /* renamed from: a */
        abstract C0235c<K, V> mo9964a(C0235c<K, V> cVar);

        @Override // androidx.p016a.p017a.p019b.C0232b.AbstractC0238f
        /* renamed from: a_ */
        public final void mo9962a_(C0235c<K, V> cVar) {
            if (this.f516a == cVar && cVar == this.f517b) {
                this.f517b = null;
                this.f516a = null;
            }
            C0235c<K, V> cVar2 = this.f516a;
            if (cVar2 == cVar) {
                this.f516a = mo9963b(cVar2);
            }
            if (this.f517b == cVar) {
                this.f517b = m9965a();
            }
        }

        /* renamed from: b */
        abstract C0235c<K, V> mo9963b(C0235c<K, V> cVar);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f517b != null;
        }

        @Override // java.util.Iterator
        public /* synthetic */ Object next() {
            C0235c<K, V> cVar = this.f517b;
            this.f517b = m9965a();
            return cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.a.a.b.b$f */
    /* loaded from: classes-dex2jar.jar:androidx/a/a/b/b$f.class */
    public interface AbstractC0238f<K, V> {
        /* renamed from: a_ */
        void mo9962a_(C0235c<K, V> cVar);
    }

    /* renamed from: a */
    public final int m9974a() {
        return this.f508d;
    }

    /* renamed from: a */
    protected C0235c<K, V> mo9973a(K k) {
        C0235c<K, V> cVar = this.f505a;
        while (cVar != null && !cVar.f509a.equals(k)) {
            cVar = cVar.f511c;
        }
        return cVar;
    }

    /* renamed from: a */
    public V mo9972a(K k, V v) {
        C0235c<K, V> a = mo9973a(k);
        if (a != null) {
            return a.f510b;
        }
        m9969b(k, v);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final C0235c<K, V> m9969b(K k, V v) {
        C0235c<K, V> cVar = new C0235c<>(k, v);
        this.f508d++;
        C0235c<K, V> cVar2 = this.f506b;
        if (cVar2 == null) {
            this.f505a = cVar;
            this.f506b = this.f505a;
            return cVar;
        }
        cVar2.f511c = cVar;
        cVar.f512d = cVar2;
        this.f506b = cVar;
        return cVar;
    }

    /* renamed from: b */
    public V mo9970b(K k) {
        C0235c<K, V> a = mo9973a(k);
        if (a == null) {
            return null;
        }
        this.f508d--;
        if (!this.f507c.isEmpty()) {
            for (AbstractC0238f<K, V> fVar : this.f507c.keySet()) {
                fVar.mo9962a_(a);
            }
        }
        if (a.f512d != null) {
            a.f512d.f511c = a.f511c;
        } else {
            this.f505a = a.f511c;
        }
        if (a.f511c != null) {
            a.f511c.f512d = a.f512d;
        } else {
            this.f506b = a.f512d;
        }
        a.f511c = null;
        a.f512d = null;
        return a.f510b;
    }

    /* renamed from: b */
    public final Iterator<Map.Entry<K, V>> m9971b() {
        C0234b bVar = new C0234b(this.f506b, this.f505a);
        this.f507c.put(bVar, Boolean.FALSE);
        return bVar;
    }

    /* renamed from: c */
    public final C0232b<K, V>.C0236d m9968c() {
        C0232b<K, V>.C0236d dVar = new C0236d();
        this.f507c.put(dVar, Boolean.FALSE);
        return dVar;
    }

    /* renamed from: d */
    public final Map.Entry<K, V> m9967d() {
        return this.f505a;
    }

    /* renamed from: e */
    public final Map.Entry<K, V> m9966e() {
        return this.f506b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0232b)) {
            return false;
        }
        C0232b bVar = (C0232b) obj;
        if (this.f508d != bVar.f508d) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = bVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry<K, V> next = it.next();
            Map.Entry<K, V> next2 = it2.next();
            if (next == null && next2 != null) {
                return false;
            }
            if (next != null && !next.equals(next2)) {
                return false;
            }
        }
        return !it.hasNext() && !it2.hasNext();
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            i += it.next().hashCode();
        }
        return i;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        C0233a aVar = new C0233a(this.f505a, this.f506b);
        this.f507c.put(aVar, Boolean.FALSE);
        return aVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
