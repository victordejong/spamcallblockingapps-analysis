package p530d.p541c.p543b0.p548e.p552d;

import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p547d.AbstractC9662a;
/* renamed from: d.c.b0.e.d.m */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/m.class */
public final class C9750m<T, U> extends AbstractC9734a<T, U> {

    /* renamed from: b */
    public final AbstractC9645h<? super T, ? extends U> f36867b;

    /* renamed from: d.c.b0.e.d.m$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/m$a.class */
    public static final class C9751a<T, U> extends AbstractC9662a<T, U> {

        /* renamed from: f */
        public final AbstractC9645h<? super T, ? extends U> f36868f;

        public C9751a(AbstractC9844r<? super U> rVar, AbstractC9645h<? super T, ? extends U> hVar) {
            super(rVar);
            this.f36868f = hVar;
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onNext(T t) {
            if (!this.f36726d) {
                if (this.f36727e != 0) {
                    this.f36723a.onNext(null);
                    return;
                }
                try {
                    Object apply = this.f36868f.apply(t);
                    C9650a.m2095a(apply, "The mapper function returned a null value.");
                    this.f36723a.onNext(apply);
                } catch (Throwable th) {
                    m2090a(th);
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public U poll() throws Exception {
            U u;
            T poll = this.f36725c.poll();
            if (poll != null) {
                u = (U) this.f36868f.apply(poll);
                C9650a.m2095a(u, "The mapper function returned a null value.");
            } else {
                u = null;
            }
            return u;
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public int requestFusion(int i) {
            return m2091a(i);
        }
    }

    public C9750m(AbstractC9843q<T> qVar, AbstractC9645h<? super T, ? extends U> hVar) {
        super(qVar);
        this.f36867b = hVar;
    }

    @Override // p530d.p541c.AbstractC9840o
    /* renamed from: a */
    public void mo192a(AbstractC9844r<? super U> rVar) {
        this.f36843a.subscribe(new C9751a(rVar, this.f36867b));
    }
}
