package p530d.p541c.p543b0.p548e.p551c;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.e.c.f */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/c/f.class */
public final class C9719f<R> implements AbstractC9851u<R> {

    /* renamed from: a */
    public final AtomicReference<AbstractC9861b> f36816a;

    /* renamed from: b */
    public final AbstractC9851u<? super R> f36817b;

    public C9719f(AtomicReference<AbstractC9861b> atomicReference, AbstractC9851u<? super R> uVar) {
        this.f36816a = atomicReference;
        this.f36817b = uVar;
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onError(Throwable th) {
        this.f36817b.onError(th);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.replace(this.f36816a, bVar);
    }

    @Override // p530d.p541c.AbstractC9851u
    public void onSuccess(R r) {
        this.f36817b.onSuccess(r);
    }
}
