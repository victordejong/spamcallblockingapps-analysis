package p573f.p575b0;

import java.util.Iterator;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.b0.j */
/* loaded from: classes2-dex2jar.jar:f/b0/j.class */
public final class C9905j<T, R> implements AbstractC9896b<R> {

    /* renamed from: a */
    public final AbstractC9896b<T> f37108a;

    /* renamed from: b */
    public final AbstractC10031l<T, R> f37109b;

    /* renamed from: f.b0.j$a */
    /* loaded from: classes2-dex2jar.jar:f/b0/j$a.class */
    public static final class C9906a implements Iterator<R> {

        /* renamed from: a */
        public final Iterator<T> f37110a;

        public C9906a() {
            this.f37110a = C9905j.this.f37108a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f37110a.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return (R) C9905j.this.f37109b.invoke(this.f37110a.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C9905j(AbstractC9896b<? extends T> bVar, AbstractC10031l<? super T, ? extends R> lVar) {
        C10059q.m1637b(bVar, "sequence");
        C10059q.m1637b(lVar, "transformer");
        this.f37108a = bVar;
        this.f37109b = lVar;
    }

    @Override // p573f.p575b0.AbstractC9896b
    public Iterator<R> iterator() {
        return new C9906a();
    }
}
