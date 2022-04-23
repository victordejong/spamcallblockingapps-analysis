package p037i.p065c.p067b0.p074e.p079f.p084e;

import i.c.b0.e.k.j;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p037i.p065c.p067b0.p071b.AbstractC0469a0;
import p037i.p065c.p067b0.p071b.C0492u;
/* renamed from: i.c.b0.e.f.e.e */
/* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/e.class */
public final class C0532e<T> implements Iterable<T> {

    /* renamed from: f */
    final AbstractC0469a0<T> f1218f;

    /* renamed from: i.c.b0.e.f.e.e$a */
    /* loaded from: classes2-dex2jar.jar:i/c/b0/e/f/e/e$a.class */
    static final class C0533a<T> implements Iterator<T> {

        /* renamed from: f */
        private final b<T> f1219f;

        /* renamed from: g */
        private final AbstractC0469a0<T> f1220g;

        /* renamed from: h */
        private T f1221h;

        /* renamed from: i */
        private boolean f1222i = true;

        /* renamed from: j */
        private boolean f1223j = true;

        /* renamed from: k */
        private Throwable f1224k;

        /* renamed from: l */
        private boolean f1225l;

        C0533a(AbstractC0469a0<T> a0Var, b<T> bVar) {
            this.f1220g = a0Var;
            this.f1219f = bVar;
        }

        /* renamed from: a */
        private boolean m0a() {
            if (!this.f1225l) {
                this.f1225l = true;
                this.f1219f.d();
                new b2(this.f1220g).subscribe(this.f1219f);
            }
            try {
                C0492u e = this.f1219f.e();
                if (e.m72h()) {
                    this.f1223j = false;
                    this.f1221h = (T) e.m75e();
                    return true;
                }
                this.f1222i = false;
                if (e.m74f()) {
                    return false;
                }
                Throwable d = e.m76d();
                this.f1224k = d;
                throw j.g(d);
            } catch (InterruptedException e2) {
                this.f1219f.dispose();
                this.f1224k = e2;
                throw j.g(e2);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Throwable th = this.f1224k;
            if (th == null) {
                boolean z = false;
                if (!this.f1222i) {
                    return false;
                }
                if (!this.f1223j || m0a()) {
                    z = true;
                }
                return z;
            }
            throw j.g(th);
        }

        @Override // java.util.Iterator
        public T next() {
            Throwable th = this.f1224k;
            if (th != null) {
                throw j.g(th);
            } else if (hasNext()) {
                this.f1223j = true;
                return this.f1221h;
            } else {
                throw new NoSuchElementException("No more elements");
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read only iterator");
        }
    }

    public C0532e(AbstractC0469a0<T> a0Var) {
        this.f1218f = a0Var;
    }

    @Override // java.lang.Iterable
    public Iterator<T> iterator() {
        return new C0533a(this.f1218f, new b());
    }
}
