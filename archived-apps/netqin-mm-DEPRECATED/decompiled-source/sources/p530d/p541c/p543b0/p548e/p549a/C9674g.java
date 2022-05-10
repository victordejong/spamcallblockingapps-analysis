package p530d.p541c.p543b0.p548e.p549a;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.SequentialDisposable;
import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.e.a.g */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/a/g.class */
public final class C9674g extends AbstractC9637a {

    /* renamed from: a */
    public final AbstractC9809c f36748a;

    /* renamed from: b */
    public final AbstractC9645h<? super Throwable, ? extends AbstractC9809c> f36749b;

    /* renamed from: d.c.b0.e.a.g$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/a/g$a.class */
    public final class C9675a implements AbstractC9647b {

        /* renamed from: a */
        public final AbstractC9647b f36750a;

        /* renamed from: b */
        public final SequentialDisposable f36751b;

        /* renamed from: d.c.b0.e.a.g$a$a */
        /* loaded from: classes2-dex2jar.jar:d/c/b0/e/a/g$a$a.class */
        public final class C9676a implements AbstractC9647b {
            public C9676a() {
            }

            @Override // p530d.p541c.AbstractC9647b
            public void onComplete() {
                C9675a.this.f36750a.onComplete();
            }

            @Override // p530d.p541c.AbstractC9647b
            public void onError(Throwable th) {
                C9675a.this.f36750a.onError(th);
            }

            @Override // p530d.p541c.AbstractC9647b
            public void onSubscribe(AbstractC9861b bVar) {
                C9675a.this.f36751b.update(bVar);
            }
        }

        public C9675a(AbstractC9647b bVar, SequentialDisposable sequentialDisposable) {
            this.f36750a = bVar;
            this.f36751b = sequentialDisposable;
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onComplete() {
            this.f36750a.onComplete();
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onError(Throwable th) {
            try {
                AbstractC9809c cVar = (AbstractC9809c) C9674g.this.f36749b.apply(th);
                if (cVar == null) {
                    NullPointerException nullPointerException = new NullPointerException("The CompletableConsumable returned is null");
                    nullPointerException.initCause(th);
                    this.f36750a.onError(nullPointerException);
                    return;
                }
                cVar.mo1980a(new C9676a());
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                this.f36750a.onError(new CompositeException(th2, th));
            }
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onSubscribe(AbstractC9861b bVar) {
            this.f36751b.update(bVar);
        }
    }

    public C9674g(AbstractC9809c cVar, AbstractC9645h<? super Throwable, ? extends AbstractC9809c> hVar) {
        this.f36748a = cVar;
        this.f36749b = hVar;
    }

    @Override // p530d.p541c.AbstractC9637a
    /* renamed from: b */
    public void mo204b(AbstractC9647b bVar) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        bVar.onSubscribe(sequentialDisposable);
        this.f36748a.mo1980a(new C9675a(bVar, sequentialDisposable));
    }
}
