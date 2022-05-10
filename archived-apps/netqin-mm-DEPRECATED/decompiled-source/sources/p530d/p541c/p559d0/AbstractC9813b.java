package p530d.p541c.p559d0;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p557i.C9803e;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.d0.b */
/* loaded from: classes2-dex2jar.jar:d/c/d0/b.class */
public abstract class AbstractC9813b<T> implements AbstractC9844r<T>, AbstractC9861b {

    /* renamed from: a */
    public final AtomicReference<AbstractC9861b> f37013a = new AtomicReference<>();

    /* renamed from: a */
    public void m1979a() {
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public final void dispose() {
        DisposableHelper.dispose(this.f37013a);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public final boolean isDisposed() {
        return this.f37013a.get() == DisposableHelper.DISPOSED;
    }

    @Override // p530d.p541c.AbstractC9844r
    public final void onSubscribe(AbstractC9861b bVar) {
        if (C9803e.m2003a(this.f37013a, bVar, getClass())) {
            m1979a();
        }
    }
}
