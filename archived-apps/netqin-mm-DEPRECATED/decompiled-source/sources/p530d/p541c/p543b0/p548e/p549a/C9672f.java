package p530d.p541c.p543b0.p548e.p549a;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.e.a.f */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/a/f.class */
public final class C9672f extends AbstractC9637a {

    /* renamed from: a */
    public final AbstractC9809c f36738a;

    /* renamed from: b */
    public final AbstractC9644g<? super AbstractC9861b> f36739b;

    /* renamed from: c */
    public final AbstractC9644g<? super Throwable> f36740c;

    /* renamed from: d */
    public final AbstractC9638a f36741d;

    /* renamed from: e */
    public final AbstractC9638a f36742e;

    /* renamed from: f */
    public final AbstractC9638a f36743f;

    /* renamed from: g */
    public final AbstractC9638a f36744g;

    /* renamed from: d.c.b0.e.a.f$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/a/f$a.class */
    public final class C9673a implements AbstractC9647b, AbstractC9861b {

        /* renamed from: a */
        public final AbstractC9647b f36745a;

        /* renamed from: b */
        public AbstractC9861b f36746b;

        public C9673a(AbstractC9647b bVar) {
            this.f36745a = bVar;
        }

        /* renamed from: a */
        public void m2088a() {
            try {
                C9672f.this.f36743f.run();
            } catch (Throwable th) {
                C9863a.m1822b(th);
                C9815a.m1923b(th);
            }
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public void dispose() {
            try {
                C9672f.this.f36744g.run();
            } catch (Throwable th) {
                C9863a.m1822b(th);
                C9815a.m1923b(th);
            }
            this.f36746b.dispose();
        }

        @Override // p530d.p541c.p568x.AbstractC9861b
        public boolean isDisposed() {
            return this.f36746b.isDisposed();
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onComplete() {
            if (this.f36746b != DisposableHelper.DISPOSED) {
                try {
                    C9672f.this.f36741d.run();
                    C9672f.this.f36742e.run();
                    this.f36745a.onComplete();
                    m2088a();
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.f36745a.onError(th);
                }
            }
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onError(Throwable th) {
            if (this.f36746b == DisposableHelper.DISPOSED) {
                C9815a.m1923b(th);
                return;
            }
            try {
                C9672f.this.f36740c.accept(th);
                C9672f.this.f36742e.run();
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                th = new CompositeException(th, th2);
            }
            this.f36745a.onError(th);
            m2088a();
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onSubscribe(AbstractC9861b bVar) {
            try {
                C9672f.this.f36739b.accept(bVar);
                if (DisposableHelper.validate(this.f36746b, bVar)) {
                    this.f36746b = bVar;
                    this.f36745a.onSubscribe(this);
                }
            } catch (Throwable th) {
                C9863a.m1822b(th);
                bVar.dispose();
                this.f36746b = DisposableHelper.DISPOSED;
                EmptyDisposable.error(th, this.f36745a);
            }
        }
    }

    public C9672f(AbstractC9809c cVar, AbstractC9644g<? super AbstractC9861b> gVar, AbstractC9644g<? super Throwable> gVar2, AbstractC9638a aVar, AbstractC9638a aVar2, AbstractC9638a aVar3, AbstractC9638a aVar4) {
        this.f36738a = cVar;
        this.f36739b = gVar;
        this.f36740c = gVar2;
        this.f36741d = aVar;
        this.f36742e = aVar2;
        this.f36743f = aVar3;
        this.f36744g = aVar4;
    }

    @Override // p530d.p541c.AbstractC9637a
    /* renamed from: b */
    public void mo204b(AbstractC9647b bVar) {
        this.f36738a.mo1980a(new C9673a(bVar));
    }
}
