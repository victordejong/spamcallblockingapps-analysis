package p530d.p541c.p543b0.p548e.p551c;

import io.reactivex.internal.disposables.DisposableHelper;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.e.c.j */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/j.class */
public final class C9724j<T> extends AbstractC9712a<T, Boolean> {

    /* renamed from: d.c.b0.e.c.j$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/j$a.class */
    public static final class C9725a<T> implements AbstractC9836k<T>, AbstractC9861b {

        /* renamed from: a */
        public final AbstractC9836k<? super Boolean> f36824a;

        /* renamed from: b */
        public AbstractC9861b f36825b;

        public C9725a(AbstractC9836k<? super Boolean> kVar) {
            this.f36824a = kVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            this.f36825b.dispose();
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36825b.isDisposed();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            this.f36824a.onSuccess(true);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            this.f36824a.onError(th);
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.f36825b, bVar)) {
                this.f36825b = bVar;
                this.f36824a.onSubscribe(this);
            }
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(T t) {
            this.f36824a.onSuccess(false);
        }
    }

    public C9724j(AbstractC9838m<T> mVar) {
        super(mVar);
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super Boolean> kVar) {
        this.f36803a.mo1876a(new C9725a(kVar));
    }
}
