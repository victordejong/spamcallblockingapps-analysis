package p530d.p541c;

import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.internal.operators.maybe.MaybeCreate;
import io.reactivex.internal.operators.maybe.MaybeFlatMapCompletable;
import io.reactivex.internal.operators.maybe.MaybeFlatten;
import io.reactivex.internal.operators.maybe.MaybeObserveOn;
import io.reactivex.internal.operators.maybe.MaybeOnErrorNext;
import io.reactivex.internal.operators.maybe.MaybeSubscribeOn;
import io.reactivex.internal.operators.maybe.MaybeSwitchIfEmpty;
import io.reactivex.internal.operators.maybe.MaybeToFlowable;
import io.reactivex.internal.operators.maybe.MaybeToObservable;
import io.reactivex.internal.operators.maybe.MaybeZipArray;
import java.util.concurrent.Callable;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p542a0.AbstractC9640c;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractC9653b;
import p530d.p541c.p543b0.p546c.AbstractC9655d;
import p530d.p541c.p543b0.p548e.p551c.C9714c;
import p530d.p541c.p543b0.p548e.p551c.C9715d;
import p530d.p541c.p543b0.p548e.p551c.C9726k;
import p530d.p541c.p543b0.p548e.p551c.C9728l;
import p530d.p541c.p543b0.p548e.p551c.C9729m;
import p530d.p541c.p543b0.p548e.p551c.C9732o;
import p530d.p541c.p543b0.p548e.p551c.CallableC9721h;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* renamed from: d.c.i */
/* loaded from: classes2-dex2jar.jar:d/c/i.class */
public abstract class AbstractC9833i<T> implements AbstractC9838m<T> {
    /* renamed from: a */
    public static <T, R> AbstractC9833i<R> m1900a(AbstractC9645h<? super Object[], ? extends R> hVar, AbstractC9838m<? extends T>... mVarArr) {
        C9650a.m2095a(mVarArr, "sources is null");
        if (mVarArr.length == 0) {
            return m1880f();
        }
        C9650a.m2095a(hVar, "zipper is null");
        return C9815a.m1936a(new MaybeZipArray(mVarArr, hVar));
    }

    /* renamed from: a */
    public static <T> AbstractC9833i<T> m1898a(AbstractC9837l<T> lVar) {
        C9650a.m2095a(lVar, "onSubscribe is null");
        return C9815a.m1936a(new MaybeCreate(lVar));
    }

    /* renamed from: a */
    public static <T1, T2, R> AbstractC9833i<R> m1896a(AbstractC9838m<? extends T1> mVar, AbstractC9838m<? extends T2> mVar2, AbstractC9640c<? super T1, ? super T2, ? extends R> cVar) {
        C9650a.m2095a(mVar, "source1 is null");
        C9650a.m2095a(mVar2, "source2 is null");
        return m1900a(Functions.m266a((AbstractC9640c) cVar), mVar, mVar2);
    }

    /* renamed from: a */
    public static <T> AbstractC9833i<T> m1893a(Callable<? extends T> callable) {
        C9650a.m2095a(callable, "callable is null");
        return C9815a.m1936a((AbstractC9833i) new CallableC9721h(callable));
    }

    /* renamed from: b */
    public static <T> AbstractC9833i<T> m1887b(T t) {
        C9650a.m2095a((Object) t, "item is null");
        return C9815a.m1936a((AbstractC9833i) new C9728l(t));
    }

    /* renamed from: f */
    public static <T> AbstractC9833i<T> m1880f() {
        return C9815a.m1936a((AbstractC9833i) C9714c.f36806a);
    }

    /* renamed from: a */
    public final AbstractC9833i<T> m1903a(AbstractC9644g<? super Throwable> gVar) {
        AbstractC9644g b = Functions.m263b();
        AbstractC9644g b2 = Functions.m263b();
        C9650a.m2095a(gVar, "onError is null");
        AbstractC9638a aVar = Functions.f38321c;
        return C9815a.m1936a(new C9732o(this, b, b2, gVar, aVar, aVar, aVar));
    }

    /* renamed from: a */
    public final <R> AbstractC9833i<R> m1901a(AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> hVar) {
        C9650a.m2095a(hVar, "mapper is null");
        return C9815a.m1936a(new MaybeFlatten(this, hVar));
    }

    /* renamed from: a */
    public final AbstractC9833i<T> m1899a(AbstractC9646i<? super T> iVar) {
        C9650a.m2095a(iVar, "predicate is null");
        return C9815a.m1936a(new C9715d(this, iVar));
    }

    /* renamed from: a */
    public final AbstractC9833i<T> m1897a(AbstractC9838m<? extends T> mVar) {
        C9650a.m2095a(mVar, "next is null");
        return m1881e(Functions.m262b(mVar));
    }

    /* renamed from: a */
    public final AbstractC9833i<T> m1895a(AbstractC9845s sVar) {
        C9650a.m2095a(sVar, "scheduler is null");
        return C9815a.m1936a(new MaybeObserveOn(this, sVar));
    }

    /* renamed from: a */
    public final AbstractC9833i<T> m1894a(T t) {
        C9650a.m2095a((Object) t, "item is null");
        return m1889b((AbstractC9838m) m1887b(t));
    }

    /* renamed from: a */
    public final AbstractC9850t<Boolean> m1904a() {
        return C9815a.m1931a(new C9726k(this));
    }

    /* renamed from: a */
    public final AbstractC9861b m1902a(AbstractC9644g<? super T> gVar, AbstractC9644g<? super Throwable> gVar2, AbstractC9638a aVar) {
        C9650a.m2095a(gVar, "onSuccess is null");
        C9650a.m2095a(gVar2, "onError is null");
        C9650a.m2095a(aVar, "onComplete is null");
        MaybeCallbackObserver maybeCallbackObserver = new MaybeCallbackObserver(gVar, gVar2, aVar);
        m1885c((AbstractC9833i<T>) maybeCallbackObserver);
        return maybeCallbackObserver;
    }

    @Override // p530d.p541c.AbstractC9838m
    /* renamed from: a */
    public final void mo1876a(AbstractC9836k<? super T> kVar) {
        C9650a.m2095a(kVar, "observer is null");
        AbstractC9836k<? super T> a = C9815a.m1935a(this, kVar);
        C9650a.m2095a(a, "observer returned by the RxJavaPlugins hook is null");
        try {
            mo201b((AbstractC9836k) a);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            C9863a.m1822b(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    /* renamed from: b */
    public final AbstractC9637a m1890b(AbstractC9645h<? super T, ? extends AbstractC9809c> hVar) {
        C9650a.m2095a(hVar, "mapper is null");
        return C9815a.m1940a(new MaybeFlatMapCompletable(this, hVar));
    }

    /* renamed from: b */
    public final AbstractC9833i<T> m1891b(AbstractC9644g<? super T> gVar) {
        AbstractC9644g b = Functions.m263b();
        C9650a.m2095a(gVar, "onSubscribe is null");
        AbstractC9644g b2 = Functions.m263b();
        AbstractC9638a aVar = Functions.f38321c;
        return C9815a.m1936a(new C9732o(this, b, gVar, b2, aVar, aVar, aVar));
    }

    /* renamed from: b */
    public final AbstractC9833i<T> m1889b(AbstractC9838m<? extends T> mVar) {
        C9650a.m2095a(mVar, "other is null");
        return C9815a.m1936a(new MaybeSwitchIfEmpty(this, mVar));
    }

    /* renamed from: b */
    public final AbstractC9833i<T> m1888b(AbstractC9845s sVar) {
        C9650a.m2095a(sVar, "scheduler is null");
        return C9815a.m1936a(new MaybeSubscribeOn(this, sVar));
    }

    /* renamed from: b */
    public final AbstractC9861b m1892b() {
        return m1902a(Functions.m263b(), Functions.f38323e, Functions.f38321c);
    }

    /* renamed from: b */
    public abstract void mo201b(AbstractC9836k<? super T> kVar);

    /* renamed from: c */
    public final <E extends AbstractC9836k<? super T>> E m1885c(E e) {
        mo1876a((AbstractC9836k) e);
        return e;
    }

    /* renamed from: c */
    public final <R> AbstractC9840o<R> m1886c(AbstractC9645h<? super T, ? extends AbstractC9843q<? extends R>> hVar) {
        return m1882e().m1869a((AbstractC9645h) hVar);
    }

    /* renamed from: d */
    public final AbstractC9814e<T> m1884d() {
        return this instanceof AbstractC9653b ? ((AbstractC9653b) this).mo2080c() : C9815a.m1938a(new MaybeToFlowable(this));
    }

    /* renamed from: d */
    public final <R> AbstractC9833i<R> m1883d(AbstractC9645h<? super T, ? extends R> hVar) {
        C9650a.m2095a(hVar, "mapper is null");
        return C9815a.m1936a(new C9729m(this, hVar));
    }

    /* renamed from: e */
    public final AbstractC9833i<T> m1881e(AbstractC9645h<? super Throwable, ? extends AbstractC9838m<? extends T>> hVar) {
        C9650a.m2095a(hVar, "resumeFunction is null");
        return C9815a.m1936a(new MaybeOnErrorNext(this, hVar, true));
    }

    /* renamed from: e */
    public final AbstractC9840o<T> m1882e() {
        return this instanceof AbstractC9655d ? ((AbstractC9655d) this).mo238a() : C9815a.m1934a(new MaybeToObservable(this));
    }
}
