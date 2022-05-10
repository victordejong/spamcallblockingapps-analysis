package p530d.p541c.p543b0.p548e.p551c;

import io.reactivex.internal.disposables.DisposableHelper;
import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.AbstractC9850t;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.e.c.k */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/k.class */
public final class C9726k<T> extends AbstractC9850t<Boolean> implements Object<T> {

    /* renamed from: a */
    public final AbstractC9838m<T> f36826a;

    /* renamed from: d.c.b0.e.c.k$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/k$a.class */
    public static final class C9727a<T> implements AbstractC9836k<T>, AbstractC9861b {

        /* renamed from: a */
        public final AbstractC9851u<? super Boolean> f36827a;

        /* renamed from: b */
        public AbstractC9861b f36828b;

        public C9727a(AbstractC9851u<? super Boolean> uVar) {
            this.f36827a = uVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            this.f36828b.dispose();
            this.f36828b = DisposableHelper.DISPOSED;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36828b.isDisposed();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            this.f36828b = DisposableHelper.DISPOSED;
            this.f36827a.onSuccess(true);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            this.f36828b = DisposableHelper.DISPOSED;
            this.f36827a.onError(th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.f36828b, bVar)) {
                this.f36828b = bVar;
                this.f36827a.onSubscribe(this);
            }
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(T t) {
            this.f36828b = DisposableHelper.DISPOSED;
            this.f36827a.onSuccess(false);
        }
    }

    public C9726k(AbstractC9838m<T> mVar) {
        this.f36826a = mVar;
    }

    /* renamed from: b */
    public AbstractC9833i<Boolean> m2079b() {
        return C9815a.m1936a(new C9724j(this.f36826a));
    }

    @Override // p530d.p541c.AbstractC9850t
    /* renamed from: b */
    public void mo196b(AbstractC9851u<? super Boolean> uVar) {
        this.f36826a.mo1876a(new C9727a(uVar));
    }
}
