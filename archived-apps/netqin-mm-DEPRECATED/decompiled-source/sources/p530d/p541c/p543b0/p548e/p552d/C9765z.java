package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.operators.observable.ObservableZip$ZipCoordinator;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.e.d.z */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/z.class */
public final class C9765z<T, R> implements AbstractC9844r<T> {

    /* renamed from: a */
    public final ObservableZip$ZipCoordinator<T, R> f36898a;

    /* renamed from: b */
    public final C9772a<T> f36899b;

    /* renamed from: c */
    public volatile boolean f36900c;

    /* renamed from: d */
    public Throwable f36901d;

    /* renamed from: e */
    public final AtomicReference<AbstractC9861b> f36902e = new AtomicReference<>();

    public C9765z(ObservableZip$ZipCoordinator<T, R> observableZip$ZipCoordinator, int i) {
        this.f36898a = observableZip$ZipCoordinator;
        this.f36899b = new C9772a<>(i);
    }

    /* renamed from: a */
    public void m2070a() {
        DisposableHelper.dispose(this.f36902e);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.f36900c = true;
        this.f36898a.drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.f36901d = th;
        this.f36900c = true;
        this.f36898a.drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        this.f36899b.offer(t);
        this.f36898a.drain();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        DisposableHelper.setOnce(this.f36902e, bVar);
    }
}
