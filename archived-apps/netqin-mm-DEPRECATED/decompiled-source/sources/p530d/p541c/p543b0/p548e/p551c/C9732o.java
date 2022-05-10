package p530d.p541c.p543b0.p548e.p551c;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.e.c.o */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/o.class */
public final class C9732o<T> extends AbstractC9712a<T, T> {

    /* renamed from: b */
    public final AbstractC9644g<? super AbstractC9861b> f36834b;

    /* renamed from: c */
    public final AbstractC9644g<? super T> f36835c;

    /* renamed from: d */
    public final AbstractC9644g<? super Throwable> f36836d;

    /* renamed from: e */
    public final AbstractC9638a f36837e;

    /* renamed from: f */
    public final AbstractC9638a f36838f;

    /* renamed from: g */
    public final AbstractC9638a f36839g;

    /* renamed from: d.c.b0.e.c.o$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/o$a.class */
    public static final class C9733a<T> implements AbstractC9836k<T>, AbstractC9861b {

        /* renamed from: a */
        public final AbstractC9836k<? super T> f36840a;

        /* renamed from: b */
        public final C9732o<T> f36841b;

        /* renamed from: c */
        public AbstractC9861b f36842c;

        public C9733a(AbstractC9836k<? super T> kVar, C9732o<T> oVar) {
            this.f36840a = kVar;
            this.f36841b = oVar;
        }

        /* renamed from: a */
        public void m2078a() {
            try {
                this.f36841b.f36838f.run();
            } catch (Throwable th) {
                C9863a.m1822b(th);
                C9815a.m1923b(th);
            }
        }

        /* renamed from: a */
        public void m2077a(Throwable th) {
            try {
                this.f36841b.f36836d.accept(th);
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                th = new CompositeException(th, th2);
            }
            this.f36842c = DisposableHelper.DISPOSED;
            this.f36840a.onError(th);
            m2078a();
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            try {
                this.f36841b.f36839g.run();
            } catch (Throwable th) {
                C9863a.m1822b(th);
                C9815a.m1923b(th);
            }
            this.f36842c.dispose();
            this.f36842c = DisposableHelper.DISPOSED;
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36842c.isDisposed();
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onComplete() {
            if (this.f36842c != DisposableHelper.DISPOSED) {
                try {
                    this.f36841b.f36837e.run();
                    this.f36842c = DisposableHelper.DISPOSED;
                    this.f36840a.onComplete();
                    m2078a();
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    m2077a(th);
                }
            }
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onError(Throwable th) {
            if (this.f36842c == DisposableHelper.DISPOSED) {
                C9815a.m1923b(th);
            } else {
                m2077a(th);
            }
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.f36842c, bVar)) {
                try {
                    this.f36841b.f36834b.accept(bVar);
                    this.f36842c = bVar;
                    this.f36840a.onSubscribe(this);
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    bVar.dispose();
                    this.f36842c = DisposableHelper.DISPOSED;
                    EmptyDisposable.error(th, this.f36840a);
                }
            }
        }

        @Override // p530d.p541c.AbstractC9836k
        public void onSuccess(T t) {
            if (this.f36842c != DisposableHelper.DISPOSED) {
                try {
                    this.f36841b.f36835c.accept(t);
                    this.f36842c = DisposableHelper.DISPOSED;
                    this.f36840a.onSuccess(t);
                    m2078a();
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    m2077a(th);
                }
            }
        }
    }

    public C9732o(AbstractC9838m<T> mVar, AbstractC9644g<? super AbstractC9861b> gVar, AbstractC9644g<? super T> gVar2, AbstractC9644g<? super Throwable> gVar3, AbstractC9638a aVar, AbstractC9638a aVar2, AbstractC9638a aVar3) {
        super(mVar);
        this.f36834b = gVar;
        this.f36835c = gVar2;
        this.f36836d = gVar3;
        this.f36837e = aVar;
        this.f36838f = aVar2;
        this.f36839g = aVar3;
    }

    @Override // p530d.p541c.AbstractC9833i
    /* renamed from: b */
    public void mo201b(AbstractC9836k<? super T> kVar) {
        this.f36803a.mo1876a(new C9733a(kVar, this));
    }
}
