package p530d.p541c.p543b0.p548e.p551c;

import io.reactivex.internal.disposables.DisposableHelper;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.e.c.m */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/m.class */
public final class C9729m<T, R> extends AbstractC9712a<T, R> {

    /* renamed from: b */
    public final AbstractC9645h<? super T, ? extends R> f36830b;

    /* renamed from: d.c.b0.e.c.m$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/m$a.class */
    public static final class C9730a<T, R> implements AbstractC9836k<T>, AbstractC9861b {

        /* renamed from: a */
        public final AbstractC9836k<? super R> f36831a;

        /* renamed from: b */
        public final AbstractC9645h<? super T, ? extends R> f36832b;

        /* renamed from: c */
        public AbstractC9861b f36833c;

        public C9730a(AbstractC9836k<? super R> kVar, AbstractC9645h<? super T, ? extends R> hVar) {
            this.f36831a = kVar;
            this.f36832b = hVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            AbstractC9861b bVar = this.f36833c;
            this.f36833c = DisposableHelper.DISPOSED;
            bVar.dispose();
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36833c.isDisposed();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            this.f36831a.onComplete();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            this.f36831a.onError(th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.f36833c, bVar)) {
                this.f36833c = bVar;
                this.f36831a.onSubscribe(this);
            }
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(T t) {
            try {
                Object apply = this.f36832b.apply(t);
                C9650a.m2095a(apply, "The mapper returned a null item");
                this.f36831a.onSuccess(apply);
            } catch (Throwable th) {
                C9863a.m1822b(th);
                this.f36831a.onError(th);
            }
        }
    }

    public C9729m(AbstractC9838m<T> mVar, AbstractC9645h<? super T, ? extends R> hVar) {
        super(mVar);
        this.f36830b = hVar;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super R> kVar) {
        this.f36803a.mo1876a(new C9730a(kVar, this.f36830b));
    }
}
