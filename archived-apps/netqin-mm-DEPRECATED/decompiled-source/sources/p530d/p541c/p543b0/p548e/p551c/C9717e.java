package p530d.p541c.p543b0.p548e.p551c;

import io.reactivex.internal.disposables.DisposableHelper;
import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.e.c.e */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/e.class */
public final class C9717e<T> extends AbstractC9833i<T> {

    /* renamed from: a */
    public final AbstractC9852v<T> f36811a;

    /* renamed from: b */
    public final AbstractC9646i<? super T> f36812b;

    /* renamed from: d.c.b0.e.c.e$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/e$a.class */
    public static final class C9718a<T> implements AbstractC9851u<T>, AbstractC9861b {

        /* renamed from: a */
        public final AbstractC9836k<? super T> f36813a;

        /* renamed from: b */
        public final AbstractC9646i<? super T> f36814b;

        /* renamed from: c */
        public AbstractC9861b f36815c;

        public C9718a(AbstractC9836k<? super T> kVar, AbstractC9646i<? super T> iVar) {
            this.f36813a = kVar;
            this.f36814b = iVar;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            AbstractC9861b bVar = this.f36815c;
            this.f36815c = DisposableHelper.DISPOSED;
            bVar.dispose();
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36815c.isDisposed();
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onError(Throwable th) {
            this.f36813a.onError(th);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.f36815c, bVar)) {
                this.f36815c = bVar;
                this.f36813a.onSubscribe(this);
            }
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSuccess(T t) {
            try {
                if (this.f36814b.test(t)) {
                    this.f36813a.onSuccess(t);
                } else {
                    this.f36813a.onComplete();
                }
            } catch (Throwable th) {
                C9863a.m1822b(th);
                this.f36813a.onError(th);
            }
        }
    }

    public C9717e(AbstractC9852v<T> vVar, AbstractC9646i<? super T> iVar) {
        this.f36811a = vVar;
        this.f36812b = iVar;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super T> kVar) {
        this.f36811a.mo1841a(new C9718a(kVar, this.f36812b));
    }
}
