package p530d.p541c.p543b0.p548e.p549a;

import io.reactivex.exceptions.CompositeException;
import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9809c;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.b0.e.a.e */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/a/e.class */
public final class C9670e extends AbstractC9637a {

    /* renamed from: a */
    public final AbstractC9809c f36734a;

    /* renamed from: b */
    public final AbstractC9646i<? super Throwable> f36735b;

    /* renamed from: d.c.b0.e.a.e$a */
    /* loaded from: classes2-dex2jar.jar:d/c/b0/e/a/e$a.class */
    public final class C9671a implements AbstractC9647b {

        /* renamed from: a */
        public final AbstractC9647b f36736a;

        public C9671a(AbstractC9647b bVar) {
            this.f36736a = bVar;
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onComplete() {
            this.f36736a.onComplete();
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onError(Throwable th) {
            try {
                if (C9670e.this.f36735b.test(th)) {
                    this.f36736a.onComplete();
                } else {
                    this.f36736a.onError(th);
                }
            } catch (Throwable th2) {
                C9863a.m1822b(th2);
                this.f36736a.onError(new CompositeException(th, th2));
            }
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onSubscribe(AbstractC9861b bVar) {
            this.f36736a.onSubscribe(bVar);
        }
    }

    public C9670e(AbstractC9809c cVar, AbstractC9646i<? super Throwable> iVar) {
        this.f36734a = cVar;
        this.f36735b = iVar;
    }

    @Override // p530d.p541c.AbstractC9637a
    /* renamed from: b */
    public void mo204b(AbstractC9647b bVar) {
        this.f36734a.mo1980a(new C9671a(bVar));
    }
}
