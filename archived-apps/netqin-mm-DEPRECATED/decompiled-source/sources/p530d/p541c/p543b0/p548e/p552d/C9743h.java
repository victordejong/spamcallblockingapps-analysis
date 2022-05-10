package p530d.p541c.p543b0.p548e.p552d;

import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p543b0.p547d.AbstractC9662a;
/* renamed from: d.c.b0.e.d.h */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/h.class */
public final class C9743h<T> extends AbstractC9734a<T, T> {

    /* renamed from: b */
    public final AbstractC9646i<? super T> f36856b;

    /* renamed from: d.c.b0.e.d.h$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/h$a.class */
    public static final class C9744a<T> extends AbstractC9662a<T, T> {

        /* renamed from: f */
        public final AbstractC9646i<? super T> f36857f;

        public C9744a(AbstractC9844r<? super T> rVar, AbstractC9646i<? super T> iVar) {
            super(rVar);
            this.f36857f = iVar;
        }

        @Override // p530d.p541c.AbstractC9844r
        public void onNext(T t) {
            if (this.f36727e == 0) {
                try {
                    if (this.f36857f.test(t)) {
                        this.f36723a.onNext(t);
                    }
                } catch (Throwable th) {
                    m2090a(th);
                }
            } else {
                this.f36723a.onNext(null);
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public T poll() throws Exception {
            T poll;
            do {
                poll = this.f36725c.poll();
                if (poll == null) {
                    break;
                }
            } while (!this.f36857f.test(poll));
            return poll;
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public int requestFusion(int i) {
            return m2091a(i);
        }
    }

    public C9743h(AbstractC9843q<T> qVar, AbstractC9646i<? super T> iVar) {
        super(qVar);
        this.f36856b = iVar;
    }

    @Override // p530d.p541c.AbstractC9840o
    /* renamed from: a */
    public void mo192a(AbstractC9844r<? super T> rVar) {
        this.f36843a.subscribe(new C9744a(rVar, this.f36856b));
    }
}
