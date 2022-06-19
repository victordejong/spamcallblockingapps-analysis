package p067i.p095c.p097b0.p104e.p109f.p114e;

import i.c.b0.e.k.j;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p067i.p095c.p097b0.p101b.AbstractC2137a0;
import p067i.p095c.p097b0.p101b.C2160u;
/* renamed from: i.c.b0.e.f.e.e */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/e.class */
public final class C2200e<T> implements Iterable<T> {

    /* renamed from: f */
    final AbstractC2137a0<T> f5897f;

    /* renamed from: i.c.b0.e.f.e.e$a */
    /* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/e$a.class */
    static final class C2201a<T> implements Iterator<T> {

        /* renamed from: f */
        private final b<T> f5898f;

        /* renamed from: g */
        private final AbstractC2137a0<T> f5899g;

        /* renamed from: h */
        private T f5900h;

        /* renamed from: i */
        private boolean f5901i = true;

        /* renamed from: j */
        private boolean f5902j = true;

        /* renamed from: k */
        private Throwable f5903k;

        /* renamed from: l */
        private boolean f5904l;

        C2201a(AbstractC2137a0<T> abstractC2137a0, b<T> bVar) {
            this.f5899g = abstractC2137a0;
            this.f5898f = bVar;
        }

        /* renamed from: a */
        private boolean m0a() {
            if (!this.f5904l) {
                this.f5904l = true;
                this.f5898f.d();
                new b2(this.f5899g).subscribe(this.f5898f);
            }
            try {
                C2160u e = this.f5898f.e();
                if (e.m72h()) {
                    this.f5902j = false;
                    this.f5900h = (T) e.m75e();
                    return true;
                }
                this.f5901i = false;
                if (e.m74f()) {
                    return false;
                }
                Throwable m76d = e.m76d();
                this.f5903k = m76d;
                throw j.g(m76d);
            } catch (InterruptedException e2) {
                this.f5898f.dispose();
                this.f5903k = e2;
                throw j.g(e2);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f5903k;
            if (th == null) {
                boolean z = false;
                if (!this.f5901i) {
                    return false;
                }
                if (!this.f5902j || m0a()) {
                    z = true;
                }
                return z;
            }
            throw j.g(th);
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f5903k;
            if (th == null) {
                if (!hasNext()) {
                    throw new NoSuchElementException("No more elements");
                }
                this.f5902j = true;
                return this.f5900h;
            }
            throw j.g(th);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    public C2200e(AbstractC2137a0<T> abstractC2137a0) {
        this.f5897f = abstractC2137a0;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new C2201a(this.f5897f, new b());
    }
}
