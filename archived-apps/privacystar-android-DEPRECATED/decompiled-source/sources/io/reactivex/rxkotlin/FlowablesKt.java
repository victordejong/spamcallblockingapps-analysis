package io.reactivex.rxkotlin;

import io.reactivex.Flowable;
import io.reactivex.functions.BiFunction;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.reactivestreams.Publisher;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��:\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aY\u0010��\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00020\u0001\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0004\"\u0004\b\u0002\u0010\u0005*\b\u0012\u0004\u0012\u0002H\u00030\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00012\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0001H\u0086\b\u001ao\u0010��\u001a\b\u0012\u0004\u0012\u0002H\t0\u0006\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0004\"\u0004\b\u0002\u0010\u0005\"\u0004\b\u0003\u0010\t*\b\u0012\u0004\u0012\u0002H\u00030\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00012\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00012 \b\u0004\u0010\n\u001a\u001a\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\t0\u000bH\u0086\b\u001a\u0089\u0001\u0010��\u001a\b\u0012\u0004\u0012\u0002H\t0\u0006\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0004\"\u0004\b\u0002\u0010\u0005\"\u0004\b\u0003\u0010\f\"\u0004\b\u0004\u0010\t*\b\u0012\u0004\u0012\u0002H\u00030\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00012\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00012\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\f0\u00012&\b\u0004\u0010\n\u001a \u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\t0\u000eH\u0086\b\u001a£\u0001\u0010��\u001a\b\u0012\u0004\u0012\u0002H\t0\u0006\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0004\"\u0004\b\u0002\u0010\u0005\"\u0004\b\u0003\u0010\f\"\u0004\b\u0004\u0010\u000f\"\u0004\b\u0005\u0010\t*\b\u0012\u0004\u0012\u0002H\u00030\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00012\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00050\u00012\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\f0\u00012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u00012,\b\u0004\u0010\n\u001a&\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u0005\u0012\u0004\u0012\u0002H\f\u0012\u0004\u0012\u0002H\u000f\u0012\u0004\u0012\u0002H\t0\u0011H\u0086\b\u001a?\u0010��\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00130\u00120\u0006\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0013*\b\u0012\u0004\u0012\u0002H\u00030\u00062\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u0001H\u0086\b\u001aU\u0010��\u001a\b\u0012\u0004\u0012\u0002H\t0\u0006\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0013\"\u0004\b\u0002\u0010\t*\b\u0012\u0004\u0012\u0002H\u00030\u00062\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u00012\u001a\b\u0004\u0010\n\u001a\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\t0\u0015H\u0086\b\u001a?\u0010\u0016\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00130\u00120\u0006\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0013*\b\u0012\u0004\u0012\u0002H\u00030\u00062\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u0001H\u0086\b\u001aU\u0010\u0016\u001a\b\u0012\u0004\u0012\u0002H\t0\u0006\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0013\"\u0004\b\u0002\u0010\t*\b\u0012\u0004\u0012\u0002H\u00030\u00062\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u0002H\u00130\u00012\u001a\b\u0004\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H\t0\u0015H\u0086\b¨\u0006\u0018"}, m254d2 = {"withLatestFrom", "Lorg/reactivestreams/Publisher;", "Lkotlin/Triple;", "T", "T1", "T2", "Lio/reactivex/Flowable;", "o1", "o2", "R", "combiner", "Lkotlin/Function3;", "T3", "o3", "Lkotlin/Function4;", "T4", "o4", "Lkotlin/Function5;", "Lkotlin/Pair;", "U", "other", "Lkotlin/Function2;", "zipWith", "zipper", "rxkotlin_main"}, m253k = 2, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/FlowablesKt.class */
public final class FlowablesKt {
    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T, U> Flowable<Pair<T, U>> withLatestFrom(@NotNull Flowable<T> receiver, @NotNull Publisher<U> other) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(other, "other");
        Flowable<Pair<T, U>> flowable = (Flowable<Pair<T, U>>) receiver.withLatestFrom(other, FlowablesKt$withLatestFrom$2.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(flowable, "withLatestFrom(other, Bi…on{ t, u -> Pair(t,u)  })");
        return flowable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T, U, R> Flowable<R> withLatestFrom(@NotNull Flowable<T> receiver, @NotNull Publisher<U> other, @NotNull final Function2<? super T, ? super U, ? extends R> combiner) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(other, "other");
        Intrinsics.checkParameterIsNotNull(combiner, "combiner");
        Flowable<R> withLatestFrom = receiver.withLatestFrom(other, (BiFunction) ((BiFunction<T, U, R>) new BiFunction<T, U, R>() { // from class: io.reactivex.rxkotlin.FlowablesKt$withLatestFrom$1
            @Override // io.reactivex.functions.BiFunction
            public final R apply(T t, U u) {
                return (R) Function2.this.invoke(t, u);
            }
        }));
        Intrinsics.checkExpressionValueIsNotNull(withLatestFrom, "withLatestFrom(other, Bi…combiner.invoke(t, u)  })");
        return withLatestFrom;
    }

    @NotNull
    public static final <T, T1, T2, R> Flowable<R> withLatestFrom(@NotNull Flowable<T> receiver, @NotNull Publisher<T1> o1, @NotNull Publisher<T2> o2, @NotNull final Function3<? super T, ? super T1, ? super T2, ? extends R> combiner) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(o1, "o1");
        Intrinsics.checkParameterIsNotNull(o2, "o2");
        Intrinsics.checkParameterIsNotNull(combiner, "combiner");
        Flowable<R> withLatestFrom = receiver.withLatestFrom(o1, o2, (io.reactivex.functions.Function3) ((io.reactivex.functions.Function3<T, T1, T2, R>) new io.reactivex.functions.Function3<T, T1, T2, R>() { // from class: io.reactivex.rxkotlin.FlowablesKt$withLatestFrom$3
            @Override // io.reactivex.functions.Function3
            public final R apply(T t, T1 t1, T2 t2) {
                return (R) Function3.this.invoke(t, t1, t2);
            }
        }));
        Intrinsics.checkExpressionValueIsNotNull(withLatestFrom, "withLatestFrom(o1, o2, F…iner.invoke(t, t1, t2) })");
        return withLatestFrom;
    }

    @NotNull
    public static final <T, T1, T2, T3, R> Flowable<R> withLatestFrom(@NotNull Flowable<T> receiver, @NotNull Publisher<T1> o1, @NotNull Publisher<T2> o2, @NotNull Publisher<T3> o3, @NotNull final Function4<? super T, ? super T1, ? super T2, ? super T3, ? extends R> combiner) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(o1, "o1");
        Intrinsics.checkParameterIsNotNull(o2, "o2");
        Intrinsics.checkParameterIsNotNull(o3, "o3");
        Intrinsics.checkParameterIsNotNull(combiner, "combiner");
        Flowable<R> withLatestFrom = receiver.withLatestFrom(o1, o2, o3, (io.reactivex.functions.Function4) ((io.reactivex.functions.Function4<T, T1, T2, T3, R>) new io.reactivex.functions.Function4<T, T1, T2, T3, R>() { // from class: io.reactivex.rxkotlin.FlowablesKt$withLatestFrom$5
            @Override // io.reactivex.functions.Function4
            public final R apply(T t, T1 t1, T2 t2, T3 t3) {
                return (R) Function4.this.invoke(t, t1, t2, t3);
            }
        }));
        Intrinsics.checkExpressionValueIsNotNull(withLatestFrom, "withLatestFrom(o1, o2, o….invoke(t, t1, t2, t3) })");
        return withLatestFrom;
    }

    @NotNull
    public static final <T, T1, T2, T3, T4, R> Flowable<R> withLatestFrom(@NotNull Flowable<T> receiver, @NotNull Publisher<T1> o1, @NotNull Publisher<T2> o2, @NotNull Publisher<T3> o3, @NotNull Publisher<T4> o4, @NotNull final Function5<? super T, ? super T1, ? super T2, ? super T3, ? super T4, ? extends R> combiner) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(o1, "o1");
        Intrinsics.checkParameterIsNotNull(o2, "o2");
        Intrinsics.checkParameterIsNotNull(o3, "o3");
        Intrinsics.checkParameterIsNotNull(o4, "o4");
        Intrinsics.checkParameterIsNotNull(combiner, "combiner");
        Flowable<R> withLatestFrom = receiver.withLatestFrom(o1, o2, o3, o4, (io.reactivex.functions.Function5) ((io.reactivex.functions.Function5<T, T1, T2, T3, T4, R>) new io.reactivex.functions.Function5<T, T1, T2, T3, T4, R>() { // from class: io.reactivex.rxkotlin.FlowablesKt$withLatestFrom$6
            @Override // io.reactivex.functions.Function5
            public final R apply(T t, T1 t1, T2 t2, T3 t3, T4 t4) {
                return (R) Function5.this.invoke(t, t1, t2, t3, t4);
            }
        }));
        Intrinsics.checkExpressionValueIsNotNull(withLatestFrom, "withLatestFrom(o1, o2, o…oke(t, t1, t2, t3, t4) })");
        return withLatestFrom;
    }

    @NotNull
    public static final <T, T1, T2> Publisher<Triple<T, T1, T2>> withLatestFrom(@NotNull Flowable<T> receiver, @NotNull Publisher<T1> o1, @NotNull Publisher<T2> o2) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(o1, "o1");
        Intrinsics.checkParameterIsNotNull(o2, "o2");
        Publisher<Triple<T, T1, T2>> withLatestFrom = receiver.withLatestFrom(o1, o2, FlowablesKt$withLatestFrom$4.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(withLatestFrom, "withLatestFrom(o1, o2, F…2 -> Triple(t, t1, t2) })");
        return withLatestFrom;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T, U> Flowable<Pair<T, U>> zipWith(@NotNull Flowable<T> receiver, @NotNull Publisher<U> other) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(other, "other");
        Flowable<Pair<T, U>> flowable = (Flowable<Pair<T, U>>) receiver.zipWith(other, FlowablesKt$zipWith$2.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(flowable, "zipWith(other, BiFunction { t, u -> Pair(t,u) })");
        return flowable;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T, U, R> Flowable<R> zipWith(@NotNull Flowable<T> receiver, @NotNull Publisher<U> other, @NotNull final Function2<? super T, ? super U, ? extends R> zipper) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(other, "other");
        Intrinsics.checkParameterIsNotNull(zipper, "zipper");
        Flowable<R> zipWith = receiver.zipWith(other, (BiFunction) ((BiFunction<T, U, R>) new BiFunction<T, U, R>() { // from class: io.reactivex.rxkotlin.FlowablesKt$zipWith$1
            @Override // io.reactivex.functions.BiFunction
            public final R apply(T t, U u) {
                return (R) Function2.this.invoke(t, u);
            }
        }));
        Intrinsics.checkExpressionValueIsNotNull(zipWith, "zipWith(other, BiFunctio…-> zipper.invoke(t, u) })");
        return zipWith;
    }
}
