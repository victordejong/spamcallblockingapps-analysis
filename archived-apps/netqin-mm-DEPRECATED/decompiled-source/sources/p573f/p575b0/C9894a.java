package p573f.p575b0;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.TypeCastException;
import p573f.p590w.p591b.AbstractC10020a;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.b0.a */
/* loaded from: classes2-dex2jar.jar:f/b0/a.class */
public final class C9894a<T> implements AbstractC9896b<T> {

    /* renamed from: a */
    public final AbstractC10020a<T> f37101a;

    /* renamed from: b */
    public final AbstractC10031l<T, T> f37102b;

    /* renamed from: f.b0.a$a */
    /* loaded from: classes2-dex2jar.jar:f/b0/a$a.class */
    public static final class C9895a implements Iterator<T> {

        /* renamed from: a */
        public T f37103a;

        /* renamed from: b */
        public int f37104b = -2;

        public C9895a() {
        }

        /* renamed from: a */
        public final void m1816a() {
            T t;
            if (this.f37104b == -2) {
                t = (T) C9894a.this.f37101a.invoke();
            } else {
                AbstractC10031l lVar = C9894a.this.f37102b;
                T t2 = this.f37103a;
                if (t2 != null) {
                    t = (T) lVar.invoke(t2);
                } else {
                    C10059q.m1646a();
                    throw null;
                }
            }
            this.f37103a = t;
            this.f37104b = t == null ? 0 : 1;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f37104b < 0) {
                m1816a();
            }
            boolean z = true;
            if (this.f37104b != 1) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.f37104b < 0) {
                m1816a();
            }
            if (this.f37104b != 0) {
                T t = this.f37103a;
                if (t != null) {
                    this.f37104b = -1;
                    return t;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C9894a(AbstractC10020a<? extends T> aVar, AbstractC10031l<? super T, ? extends T> lVar) {
        C10059q.m1637b(aVar, "getInitialValue");
        C10059q.m1637b(lVar, "getNextValue");
        this.f37101a = aVar;
        this.f37102b = lVar;
    }

    @Override // p573f.p575b0.AbstractC9896b
    public Iterator<T> iterator() {
        return new C9895a();
    }
}
