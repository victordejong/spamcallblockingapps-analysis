package p530d.p541c.p543b0.p548e.p551c;

import io.reactivex.internal.disposables.DisposableHelper;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.e.c.d */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/d.class */
public final class C9715d<T> extends AbstractC9712a<T, T> {

    /* renamed from: b */
    public final AbstractC9646i<? super T> f36807b;

    /* renamed from: d.c.b0.e.c.d$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/d$a.class */
    public static final class C9716a<T> implements AbstractC9836k<T>, AbstractC9861b {

        /* renamed from: a */
        public final AbstractC9836k<? super T> f36808a;

        /* renamed from: b */
        public final AbstractC9646i<? super T> f36809b;

        /* renamed from: c */
        public AbstractC9861b f36810c;

        public C9716a(AbstractC9836k<? super T> kVar, AbstractC9646i<? super T> iVar) {
            this.f36808a = kVar;
            this.f36809b = iVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            AbstractC9861b bVar = this.f36810c;
            this.f36810c = DisposableHelper.DISPOSED;
            bVar.dispose();
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36810c.isDisposed();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            this.f36808a.onComplete();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            this.f36808a.onError(th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.f36810c, bVar)) {
                this.f36810c = bVar;
                this.f36808a.onSubscribe(this);
            }
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(T t) {
            try {
                if (this.f36809b.test(t)) {
                    this.f36808a.onSuccess(t);
                } else {
                    this.f36808a.onComplete();
                }
            } catch (Throwable th) {
                C9863a.m1822b(th);
                this.f36808a.onError(th);
            }
        }
    }

    public C9715d(AbstractC9838m<T> mVar, AbstractC9646i<? super T> iVar) {
        super(mVar);
        this.f36807b = iVar;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super T> kVar) {
        this.f36803a.mo1876a(new C9716a(kVar, this.f36807b));
    }
}
