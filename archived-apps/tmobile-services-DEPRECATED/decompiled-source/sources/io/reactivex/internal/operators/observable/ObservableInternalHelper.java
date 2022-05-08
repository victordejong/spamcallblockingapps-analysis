package io.reactivex.internal.operators.observable;

import io.reactivex.Emitter;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.functions.Action;
import io.reactivex.functions.BiConsumer;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.observables.ConnectableObservable;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper.class */
public final class ObservableInternalHelper {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedReplayCallable.class */
    public static final class BufferedReplayCallable<T> implements Callable<ConnectableObservable<T>> {

        /* renamed from: f */
        private final Observable<T> f18051f;

        /* renamed from: g */
        private final int f18052g;

        BufferedReplayCallable(Observable<T> observable, int i) {
            this.f18051f = observable;
            this.f18052g = i;
        }

        /* renamed from: a */
        public ConnectableObservable<T> call() {
            return this.f18051f.replay(this.f18052g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$BufferedTimedReplayCallable.class */
    public static final class BufferedTimedReplayCallable<T> implements Callable<ConnectableObservable<T>> {

        /* renamed from: f */
        private final Observable<T> f18053f;

        /* renamed from: g */
        private final int f18054g;

        /* renamed from: h */
        private final long f18055h;

        /* renamed from: i */
        private final TimeUnit f18056i;

        /* renamed from: j */
        private final Scheduler f18057j;

        BufferedTimedReplayCallable(Observable<T> observable, int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.f18053f = observable;
            this.f18054g = i;
            this.f18055h = j;
            this.f18056i = timeUnit;
            this.f18057j = scheduler;
        }

        /* renamed from: a */
        public ConnectableObservable<T> call() {
            return this.f18053f.replay(this.f18054g, this.f18055h, this.f18056i, this.f18057j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapIntoIterable.class */
    public static final class FlatMapIntoIterable<T, U> implements Function<T, ObservableSource<U>> {

        /* renamed from: f */
        private final Function<? super T, ? extends Iterable<? extends U>> f18058f;

        FlatMapIntoIterable(Function<? super T, ? extends Iterable<? extends U>> function) {
            this.f18058f = function;
        }

        /* renamed from: a */
        public ObservableSource<U> apply(T t) throws Exception {
            Object apply = this.f18058f.apply(t);
            ObjectHelper.m4363e(apply, "The mapper returned a null Iterable");
            return new ObservableFromIterable((Iterable) apply);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerInner.class */
    public static final class FlatMapWithCombinerInner<U, R, T> implements Function<U, R> {

        /* renamed from: f */
        private final BiFunction<? super T, ? super U, ? extends R> f18059f;

        /* renamed from: g */
        private final T f18060g;

        FlatMapWithCombinerInner(BiFunction<? super T, ? super U, ? extends R> biFunction, T t) {
            this.f18059f = biFunction;
            this.f18060g = t;
        }

        @Override // io.reactivex.functions.Function
        public R apply(U u) throws Exception {
            return (R) this.f18059f.apply((T) this.f18060g, u);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$FlatMapWithCombinerOuter.class */
    public static final class FlatMapWithCombinerOuter<T, R, U> implements Function<T, ObservableSource<R>> {

        /* renamed from: f */
        private final BiFunction<? super T, ? super U, ? extends R> f18061f;

        /* renamed from: g */
        private final Function<? super T, ? extends ObservableSource<? extends U>> f18062g;

        FlatMapWithCombinerOuter(BiFunction<? super T, ? super U, ? extends R> biFunction, Function<? super T, ? extends ObservableSource<? extends U>> function) {
            this.f18061f = biFunction;
            this.f18062g = function;
        }

        /* renamed from: a */
        public ObservableSource<R> apply(T t) throws Exception {
            Object apply = this.f18062g.apply(t);
            ObjectHelper.m4363e(apply, "The mapper returned a null ObservableSource");
            return new ObservableMap((ObservableSource) apply, new FlatMapWithCombinerInner(this.f18061f, t));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$ItemDelayFunction.class */
    public static final class ItemDelayFunction<T, U> implements Function<T, ObservableSource<T>> {

        /* renamed from: f */
        final Function<? super T, ? extends ObservableSource<U>> f18063f;

        ItemDelayFunction(Function<? super T, ? extends ObservableSource<U>> function) {
            this.f18063f = function;
        }

        /* renamed from: a */
        public ObservableSource<T> apply(T t) throws Exception {
            Object apply = this.f18063f.apply(t);
            ObjectHelper.m4363e(apply, "The itemDelay returned a null ObservableSource");
            return new ObservableTake((ObservableSource) apply, 1L).map(Functions.m4403l(t)).defaultIfEmpty(t);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt.class */
    enum MapToInt implements Function<Object, Object> {
        INSTANCE;

        @Override // io.reactivex.functions.Function
        public Object apply(Object obj) throws Exception {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnComplete.class */
    public static final class ObserverOnComplete<T> implements Action {

        /* renamed from: f */
        final Observer<T> f18064f;

        ObserverOnComplete(Observer<T> observer) {
            this.f18064f = observer;
        }

        @Override // io.reactivex.functions.Action
        public void run() throws Exception {
            this.f18064f.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnError.class */
    public static final class ObserverOnError<T> implements Consumer<Throwable> {

        /* renamed from: f */
        final Observer<T> f18065f;

        ObserverOnError(Observer<T> observer) {
            this.f18065f = observer;
        }

        /* renamed from: a */
        public void accept(Throwable th) throws Exception {
            this.f18065f.onError(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnNext.class */
    public static final class ObserverOnNext<T> implements Consumer<T> {

        /* renamed from: f */
        final Observer<T> f18066f;

        ObserverOnNext(Observer<T> observer) {
            this.f18066f = observer;
        }

        @Override // io.reactivex.functions.Consumer
        public void accept(T t) throws Exception {
            this.f18066f.onNext(t);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayCallable.class */
    public static final class ReplayCallable<T> implements Callable<ConnectableObservable<T>> {

        /* renamed from: f */
        private final Observable<T> f18067f;

        ReplayCallable(Observable<T> observable) {
            this.f18067f = observable;
        }

        /* renamed from: a */
        public ConnectableObservable<T> call() {
            return this.f18067f.replay();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$ReplayFunction.class */
    public static final class ReplayFunction<T, R> implements Function<Observable<T>, ObservableSource<R>> {

        /* renamed from: f */
        private final Function<? super Observable<T>, ? extends ObservableSource<R>> f18068f;

        /* renamed from: g */
        private final Scheduler f18069g;

        ReplayFunction(Function<? super Observable<T>, ? extends ObservableSource<R>> function, Scheduler scheduler) {
            this.f18068f = function;
            this.f18069g = scheduler;
        }

        /* renamed from: a */
        public ObservableSource<R> apply(Observable<T> observable) throws Exception {
            Object apply = this.f18068f.apply(observable);
            ObjectHelper.m4363e(apply, "The selector returned a null ObservableSource");
            return Observable.wrap((ObservableSource) apply).observeOn(this.f18069g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$SimpleBiGenerator.class */
    public static final class SimpleBiGenerator<T, S> implements BiFunction<S, Emitter<T>, S> {

        /* renamed from: f */
        final BiConsumer<S, Emitter<T>> f18070f;

        SimpleBiGenerator(BiConsumer<S, Emitter<T>> biConsumer) {
            this.f18070f = biConsumer;
        }

        /* renamed from: a */
        public S m3786a(S s, Emitter<T> emitter) throws Exception {
            this.f18070f.mo4369a(s, emitter);
            return s;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.functions.BiFunction
        public /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) throws Exception {
            m3786a(obj, (Emitter) obj2);
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$SimpleGenerator.class */
    public static final class SimpleGenerator<T, S> implements BiFunction<S, Emitter<T>, S> {

        /* renamed from: f */
        final Consumer<Emitter<T>> f18071f;

        SimpleGenerator(Consumer<Emitter<T>> consumer) {
            this.f18071f = consumer;
        }

        /* renamed from: a */
        public S m3785a(S s, Emitter<T> emitter) throws Exception {
            this.f18071f.accept(emitter);
            return s;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.functions.BiFunction
        public /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) throws Exception {
            m3785a(obj, (Emitter) obj2);
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$TimedReplayCallable.class */
    public static final class TimedReplayCallable<T> implements Callable<ConnectableObservable<T>> {

        /* renamed from: f */
        private final Observable<T> f18072f;

        /* renamed from: g */
        private final long f18073g;

        /* renamed from: h */
        private final TimeUnit f18074h;

        /* renamed from: i */
        private final Scheduler f18075i;

        TimedReplayCallable(Observable<T> observable, long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.f18072f = observable;
            this.f18073g = j;
            this.f18074h = timeUnit;
            this.f18075i = scheduler;
        }

        /* renamed from: a */
        public ConnectableObservable<T> call() {
            return this.f18072f.replay(this.f18073g, this.f18074h, this.f18075i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInternalHelper$ZipIterableFunction.class */
    public static final class ZipIterableFunction<T, R> implements Function<List<ObservableSource<? extends T>>, ObservableSource<? extends R>> {

        /* renamed from: f */
        private final Function<? super Object[], ? extends R> f18076f;

        ZipIterableFunction(Function<? super Object[], ? extends R> function) {
            this.f18076f = function;
        }

        /* renamed from: a */
        public ObservableSource<? extends R> apply(List<ObservableSource<? extends T>> list) {
            return Observable.zipIterable(list, this.f18076f, false, Observable.bufferSize());
        }
    }

    private ObservableInternalHelper() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: a */
    public static <T, U> Function<T, ObservableSource<U>> m3808a(Function<? super T, ? extends Iterable<? extends U>> function) {
        return new FlatMapIntoIterable(function);
    }

    /* renamed from: b */
    public static <T, U, R> Function<T, ObservableSource<R>> m3807b(Function<? super T, ? extends ObservableSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        return new FlatMapWithCombinerOuter(biFunction, function);
    }

    /* renamed from: c */
    public static <T, U> Function<T, ObservableSource<T>> m3806c(Function<? super T, ? extends ObservableSource<U>> function) {
        return new ItemDelayFunction(function);
    }

    /* renamed from: d */
    public static <T> Action m3805d(Observer<T> observer) {
        return new ObserverOnComplete(observer);
    }

    /* renamed from: e */
    public static <T> Consumer<Throwable> m3804e(Observer<T> observer) {
        return new ObserverOnError(observer);
    }

    /* renamed from: f */
    public static <T> Consumer<T> m3803f(Observer<T> observer) {
        return new ObserverOnNext(observer);
    }

    /* renamed from: g */
    public static <T> Callable<ConnectableObservable<T>> m3802g(Observable<T> observable) {
        return new ReplayCallable(observable);
    }

    /* renamed from: h */
    public static <T> Callable<ConnectableObservable<T>> m3801h(Observable<T> observable, int i) {
        return new BufferedReplayCallable(observable, i);
    }

    /* renamed from: i */
    public static <T> Callable<ConnectableObservable<T>> m3800i(Observable<T> observable, int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
        return new BufferedTimedReplayCallable(observable, i, j, timeUnit, scheduler);
    }

    /* renamed from: j */
    public static <T> Callable<ConnectableObservable<T>> m3799j(Observable<T> observable, long j, TimeUnit timeUnit, Scheduler scheduler) {
        return new TimedReplayCallable(observable, j, timeUnit, scheduler);
    }

    /* renamed from: k */
    public static <T, R> Function<Observable<T>, ObservableSource<R>> m3798k(Function<? super Observable<T>, ? extends ObservableSource<R>> function, Scheduler scheduler) {
        return new ReplayFunction(function, scheduler);
    }

    /* renamed from: l */
    public static <T, S> BiFunction<S, Emitter<T>, S> m3797l(BiConsumer<S, Emitter<T>> biConsumer) {
        return new SimpleBiGenerator(biConsumer);
    }

    /* renamed from: m */
    public static <T, S> BiFunction<S, Emitter<T>, S> m3796m(Consumer<Emitter<T>> consumer) {
        return new SimpleGenerator(consumer);
    }

    /* renamed from: n */
    public static <T, R> Function<List<ObservableSource<? extends T>>, ObservableSource<? extends R>> m3795n(Function<? super Object[], ? extends R> function) {
        return new ZipIterableFunction(function);
    }
}
