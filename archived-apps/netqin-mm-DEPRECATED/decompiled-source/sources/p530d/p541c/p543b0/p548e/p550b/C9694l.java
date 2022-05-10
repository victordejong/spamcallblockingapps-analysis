package p530d.p541c.p543b0.p548e.p550b;

import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9652a;
import p530d.p541c.p543b0.p556h.AbstractC9795a;
import p530d.p541c.p543b0.p556h.AbstractC9796b;
import p611j.p612a.AbstractC10433c;
/* renamed from: d.c.b0.e.b.l */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/l.class */
public final class C9694l<T, U> extends AbstractC9677a<T, U> {

    /* renamed from: c */
    public final AbstractC9645h<? super T, ? extends U> f36783c;

    /* renamed from: d.c.b0.e.b.l$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/l$a.class */
    public static final class C9695a<T, U> extends AbstractC9795a<T, U> {

        /* renamed from: f */
        public final AbstractC9645h<? super T, ? extends U> f36784f;

        public C9695a(AbstractC9652a<? super U> aVar, AbstractC9645h<? super T, ? extends U> hVar) {
            super(aVar);
            this.f36784f = hVar;
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            if (!this.f36995d) {
                if (this.f36996e != 0) {
                    this.f36992a.onNext(null);
                    return;
                }
                try {
                    Object apply = this.f36784f.apply(t);
                    C9650a.m2095a(apply, "The mapper function returned a null value.");
                    this.f36992a.onNext(apply);
                } catch (Throwable th) {
                    m2021a(th);
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public U poll() throws Exception {
            U u;
            T poll = this.f36994c.poll();
            if (poll != null) {
                u = (U) this.f36784f.apply(poll);
                C9650a.m2095a(u, "The mapper function returned a null value.");
            } else {
                u = null;
            }
            return u;
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public int requestFusion(int i) {
            return m2022a(i);
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9652a
        public boolean tryOnNext(T t) {
            if (this.f36995d) {
                return false;
            }
            try {
                Object apply = this.f36784f.apply(t);
                C9650a.m2095a(apply, "The mapper function returned a null value.");
                return this.f36992a.tryOnNext(apply);
            } catch (Throwable th) {
                m2021a(th);
                return true;
            }
        }
    }

    /* renamed from: d.c.b0.e.b.l$b */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/l$b.class */
    public static final class C9696b<T, U> extends AbstractC9796b<T, U> {

        /* renamed from: f */
        public final AbstractC9645h<? super T, ? extends U> f36785f;

        public C9696b(AbstractC10433c<? super U> cVar, AbstractC9645h<? super T, ? extends U> hVar) {
            super(cVar);
            this.f36785f = hVar;
        }

        @Override // p611j.p612a.AbstractC10433c
        public void onNext(T t) {
            if (!this.f37000d) {
                if (this.f37001e != 0) {
                    this.f36997a.onNext(null);
                    return;
                }
                try {
                    Object apply = this.f36785f.apply(t);
                    C9650a.m2095a(apply, "The mapper function returned a null value.");
                    this.f36997a.onNext(apply);
                } catch (Throwable th) {
                    m2017a(th);
                }
            }
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
        public U poll() throws Exception {
            U u;
            T poll = this.f36999c.poll();
            if (poll != null) {
                u = (U) this.f36785f.apply(poll);
                C9650a.m2095a(u, "The mapper function returned a null value.");
            } else {
                u = null;
            }
            return u;
        }

        @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
        public int requestFusion(int i) {
            return m2018a(i);
        }
    }

    public C9694l(AbstractC9814e<T> eVar, AbstractC9645h<? super T, ? extends U> hVar) {
        super(eVar);
        this.f36783c = hVar;
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super U> cVar) {
        if (cVar instanceof AbstractC9652a) {
            this.f36754b.m1965a((AbstractC9829h) new C9695a((AbstractC9652a) cVar, this.f36783c));
        } else {
            this.f36754b.m1965a((AbstractC9829h) new C9696b(cVar, this.f36783c));
        }
    }
}
