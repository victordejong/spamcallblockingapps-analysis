package p530d.p541c;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import io.reactivex.BackpressureStrategy;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.operators.flowable.FlowableConcatMap;
import io.reactivex.internal.operators.flowable.FlowableCreate;
import io.reactivex.internal.operators.flowable.FlowableFlatMap;
import io.reactivex.internal.operators.flowable.FlowableFlatMapMaybe;
import io.reactivex.internal.operators.flowable.FlowableFlattenIterable;
import io.reactivex.internal.operators.flowable.FlowableFromArray;
import io.reactivex.internal.operators.flowable.FlowableFromIterable;
import io.reactivex.internal.operators.flowable.FlowableInternalHelper$RequestMax;
import io.reactivex.internal.operators.flowable.FlowableObserveOn;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureBuffer;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureDrop;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureLatest;
import io.reactivex.internal.operators.flowable.FlowablePublish;
import io.reactivex.internal.subscribers.LambdaSubscriber;
import io.reactivex.internal.subscribers.StrictSubscriber;
import io.reactivex.internal.util.ErrorMode;
import java.util.Comparator;
import java.util.List;
import p530d.p541c.p542a0.AbstractC9638a;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p542a0.AbstractC9646i;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p546c.AbstractCallableC9659h;
import p530d.p541c.p543b0.p548e.p550b.C9680d;
import p530d.p541c.p543b0.p548e.p550b.C9683e;
import p530d.p541c.p543b0.p548e.p550b.C9685f;
import p530d.p541c.p543b0.p548e.p550b.C9686g;
import p530d.p541c.p543b0.p548e.p550b.C9693k;
import p530d.p541c.p543b0.p548e.p550b.C9694l;
import p530d.p541c.p543b0.p548e.p550b.C9701q;
import p530d.p541c.p543b0.p548e.p550b.C9708w;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
import p530d.p541c.p570z.AbstractC9864a;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* renamed from: d.c.e */
/* loaded from: classes2-dex2jar.jar:d/c/e.class */
public abstract class AbstractC9814e<T> implements AbstractC10432b<T> {

    /* renamed from: a */
    public static final int f37014a = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    /* renamed from: a */
    public static <T> AbstractC9814e<T> m1966a(AbstractC9818g<T> gVar, BackpressureStrategy backpressureStrategy) {
        C9650a.m2095a(gVar, "source is null");
        C9650a.m2095a(backpressureStrategy, "mode is null");
        return C9815a.m1938a(new FlowableCreate(gVar, backpressureStrategy));
    }

    /* renamed from: a */
    public static <T> AbstractC9814e<T> m1962a(AbstractC10432b<? extends T> bVar, AbstractC10432b<? extends T> bVar2, AbstractC10432b<? extends T> bVar3) {
        C9650a.m2095a(bVar, "source1 is null");
        C9650a.m2095a(bVar2, "source2 is null");
        C9650a.m2095a(bVar3, "source3 is null");
        return m1958a((Object[]) new AbstractC10432b[]{bVar, bVar2, bVar3}).m1969a(Functions.m261c(), false, 3);
    }

    /* renamed from: a */
    public static <T> AbstractC9814e<T> m1961a(Iterable<? extends T> iterable) {
        C9650a.m2095a(iterable, "source is null");
        return C9815a.m1938a(new FlowableFromIterable(iterable));
    }

    /* renamed from: a */
    public static <T> AbstractC9814e<T> m1960a(T t) {
        C9650a.m2095a((Object) t, "item is null");
        return C9815a.m1938a((AbstractC9814e) new C9693k(t));
    }

    /* renamed from: a */
    public static <T> AbstractC9814e<T> m1958a(T... tArr) {
        C9650a.m2095a(tArr, "items is null");
        return tArr.length == 0 ? m1945h() : tArr.length == 1 ? m1960a(tArr[0]) : C9815a.m1938a(new FlowableFromArray(tArr));
    }

    /* renamed from: g */
    public static int m1946g() {
        return f37014a;
    }

    /* renamed from: h */
    public static <T> AbstractC9814e<T> m1945h() {
        return C9815a.m1938a(C9685f.f36774b);
    }

    /* renamed from: a */
    public final AbstractC9814e<T> m1976a(int i, boolean z, boolean z2) {
        C9650a.m2099a(i, "bufferSize");
        return C9815a.m1938a(new FlowableOnBackpressureBuffer(this, i, z2, z, Functions.f38321c));
    }

    /* renamed from: a */
    public final AbstractC9814e<T> m1974a(AbstractC9644g<? super T> gVar) {
        AbstractC9644g<? super Throwable> b = Functions.m263b();
        AbstractC9638a aVar = Functions.f38321c;
        return m1973a(gVar, b, aVar, aVar);
    }

    /* renamed from: a */
    public final AbstractC9814e<T> m1973a(AbstractC9644g<? super T> gVar, AbstractC9644g<? super Throwable> gVar2, AbstractC9638a aVar, AbstractC9638a aVar2) {
        C9650a.m2095a(gVar, "onNext is null");
        C9650a.m2095a(gVar2, "onError is null");
        C9650a.m2095a(aVar, "onComplete is null");
        C9650a.m2095a(aVar2, "onAfterTerminate is null");
        return C9815a.m1938a(new C9680d(this, gVar, gVar2, aVar, aVar2));
    }

    /* renamed from: a */
    public final <R> AbstractC9814e<R> m1971a(AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> hVar) {
        return m1970a(hVar, 2);
    }

    /* renamed from: a */
    public final <R> AbstractC9814e<R> m1970a(AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> hVar, int i) {
        C9650a.m2095a(hVar, "mapper is null");
        C9650a.m2099a(i, "prefetch");
        if (!(this instanceof AbstractCallableC9659h)) {
            return C9815a.m1938a(new FlowableConcatMap(this, hVar, i, ErrorMode.IMMEDIATE));
        }
        Object call = ((AbstractCallableC9659h) this).call();
        return call == null ? m1945h() : C9701q.m2081a(call, hVar);
    }

    /* renamed from: a */
    public final <R> AbstractC9814e<R> m1969a(AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> hVar, boolean z, int i) {
        return m1968a(hVar, z, i, m1946g());
    }

    /* renamed from: a */
    public final <R> AbstractC9814e<R> m1968a(AbstractC9645h<? super T, ? extends AbstractC10432b<? extends R>> hVar, boolean z, int i, int i2) {
        C9650a.m2095a(hVar, "mapper is null");
        C9650a.m2099a(i, "maxConcurrency");
        C9650a.m2099a(i2, "bufferSize");
        if (!(this instanceof AbstractCallableC9659h)) {
            return C9815a.m1938a(new FlowableFlatMap(this, hVar, z, i, i2));
        }
        Object call = ((AbstractCallableC9659h) this).call();
        return call == null ? m1945h() : C9701q.m2081a(call, hVar);
    }

    /* renamed from: a */
    public final AbstractC9814e<T> m1967a(AbstractC9646i<? super T> iVar) {
        C9650a.m2095a(iVar, "predicate is null");
        return C9815a.m1938a(new C9686g(this, iVar));
    }

    /* renamed from: a */
    public final AbstractC9814e<T> m1964a(AbstractC9845s sVar) {
        return m1963a(sVar, false, m1946g());
    }

    /* renamed from: a */
    public final AbstractC9814e<T> m1963a(AbstractC9845s sVar, boolean z, int i) {
        C9650a.m2095a(sVar, "scheduler is null");
        C9650a.m2099a(i, "bufferSize");
        return C9815a.m1938a(new FlowableObserveOn(this, sVar, z, i));
    }

    /* renamed from: a */
    public final AbstractC9814e<T> m1959a(Comparator<? super T> comparator) {
        C9650a.m2095a(comparator, "sortFunction");
        return m1947f().m1842d().m1949d(Functions.m264a((Comparator) comparator)).m1955b(Functions.m261c());
    }

    /* renamed from: a */
    public final AbstractC9833i<T> m1978a() {
        return m1975a(0L);
    }

    /* renamed from: a */
    public final AbstractC9833i<T> m1975a(long j) {
        if (j >= 0) {
            return C9815a.m1936a(new C9683e(this, j));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j);
    }

    /* renamed from: a */
    public final AbstractC9861b m1972a(AbstractC9644g<? super T> gVar, AbstractC9644g<? super Throwable> gVar2, AbstractC9638a aVar, AbstractC9644g<? super AbstractC10434d> gVar3) {
        C9650a.m2095a(gVar, "onNext is null");
        C9650a.m2095a(gVar2, "onError is null");
        C9650a.m2095a(aVar, "onComplete is null");
        C9650a.m2095a(gVar3, "onSubscribe is null");
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(gVar, gVar2, aVar, gVar3);
        m1965a((AbstractC9829h) lambdaSubscriber);
        return lambdaSubscriber;
    }

    /* renamed from: a */
    public final AbstractC9864a<T> m1977a(int i) {
        C9650a.m2099a(i, "bufferSize");
        return FlowablePublish.m250a(this, i);
    }

    /* renamed from: a */
    public final void m1965a(AbstractC9829h<? super T> hVar) {
        C9650a.m2095a(hVar, "s is null");
        try {
            AbstractC10433c<? super T> a = C9815a.m1937a(this, hVar);
            C9650a.m2095a(a, "Plugin returned null Subscriber");
            mo213a((AbstractC10433c) a);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            C9863a.m1822b(th);
            C9815a.m1923b(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    /* renamed from: a */
    public abstract void mo213a(AbstractC10433c<? super T> cVar);

    /* renamed from: b */
    public final AbstractC9814e<T> m1957b() {
        return m1976a(m1946g(), false, true);
    }

    /* renamed from: b */
    public final <U> AbstractC9814e<U> m1955b(AbstractC9645h<? super T, ? extends Iterable<? extends U>> hVar) {
        return m1954b(hVar, m1946g());
    }

    /* renamed from: b */
    public final <U> AbstractC9814e<U> m1954b(AbstractC9645h<? super T, ? extends Iterable<? extends U>> hVar, int i) {
        C9650a.m2095a(hVar, "mapper is null");
        C9650a.m2099a(i, "bufferSize");
        return C9815a.m1938a(new FlowableFlattenIterable(this, hVar, i));
    }

    /* renamed from: b */
    public final <R> AbstractC9814e<R> m1953b(AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> hVar, boolean z, int i) {
        C9650a.m2095a(hVar, "mapper is null");
        C9650a.m2099a(i, "maxConcurrency");
        return C9815a.m1938a(new FlowableFlatMapMaybe(this, hVar, z, i));
    }

    /* renamed from: b */
    public final AbstractC9861b m1956b(AbstractC9644g<? super T> gVar) {
        return m1972a(gVar, Functions.f38323e, Functions.f38321c, FlowableInternalHelper$RequestMax.INSTANCE);
    }

    /* renamed from: c */
    public final AbstractC9814e<T> m1952c() {
        return C9815a.m1938a(new FlowableOnBackpressureDrop(this));
    }

    /* renamed from: c */
    public final <R> AbstractC9814e<R> m1951c(AbstractC9645h<? super T, ? extends AbstractC9838m<? extends R>> hVar) {
        return m1953b(hVar, false, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
    }

    /* renamed from: d */
    public final AbstractC9814e<T> m1950d() {
        return C9815a.m1938a(new FlowableOnBackpressureLatest(this));
    }

    /* renamed from: d */
    public final <R> AbstractC9814e<R> m1949d(AbstractC9645h<? super T, ? extends R> hVar) {
        C9650a.m2095a(hVar, "mapper is null");
        return C9815a.m1938a(new C9694l(this, hVar));
    }

    /* renamed from: e */
    public final AbstractC9864a<T> m1948e() {
        return m1977a(m1946g());
    }

    /* renamed from: f */
    public final AbstractC9850t<List<T>> m1947f() {
        return C9815a.m1931a(new C9708w(this));
    }

    @Override // p611j.p612a.AbstractC10432b
    public final void subscribe(AbstractC10433c<? super T> cVar) {
        if (cVar instanceof AbstractC9829h) {
            m1965a((AbstractC9829h) ((AbstractC9829h) cVar));
            return;
        }
        C9650a.m2095a(cVar, "s is null");
        m1965a((AbstractC9829h) new StrictSubscriber(cVar));
    }
}
