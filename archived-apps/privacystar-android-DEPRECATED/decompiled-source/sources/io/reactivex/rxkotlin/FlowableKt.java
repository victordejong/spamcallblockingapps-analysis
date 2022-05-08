package io.reactivex.rxkotlin;

import io.reactivex.Flowable;
import io.reactivex.Single;
import io.reactivex.annotations.NonNull;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.functions.Function3;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.reactivestreams.Publisher;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��©\u0001\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001c\n��\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n��\n\u0002\u0010\u000b\n\u0002\u0010\u0018\n\u0002\u0010\u0005\n\u0002\u0010\u0012\n\u0002\u0010\u0006\n\u0002\u0010\u0013\n\u0002\u0010\u0007\n\u0002\u0010\u0014\n\u0002\u0010\b\n\u0002\u0010\u0015\n\u0002\u0010\t\n\u0002\u0010\u0016\n\u0002\u0010\n\n\u0002\u0010\u0017\n\u0002\u0010(\n\u0002\u0018\u0002\n��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010$\n��\n\u0002\u0010\u001f\n\u0002\u0010\u001e\n\u0002\b\u0003*\u00012\u001a#\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003*\u0006\u0012\u0002\b\u00030\u0001H\u0086\b\u001aD\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00020\u00050\u0001\"\b\b��\u0010\u0006*\u00020\u0003\"\b\b\u0001\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\u00012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\u001ab\u0010\u0004\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\t0\b0\u0001\"\b\b��\u0010\u0006*\u00020\u0003\"\b\b\u0001\u0010\u0002*\u00020\u0003\"\b\b\u0002\u0010\t*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\t0\u0001\u001a^\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0006*\u00020\u0003\"\b\b\u0001\u0010\u0002*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\f2)\b\u0004\u0010\r\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00060\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u0002H\u00020\u000eH\u0087\b\u001aD\u0010\u0013\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0001\u001aI\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0006*\u00020\u0003\"\b\b\u0001\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\u00012\u001a\b\u0004\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u0002H\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00170\u000eH\u0086\b\u001a(\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\u00060\u00010\f\u001aD\u0010\u0019\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0001\u001a(\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\u00060\u00010\f\u001a#\u0010\u001b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003*\u0006\u0012\u0002\b\u00030\u0001H\u0086\b\u001aD\u0010\u001c\u001a&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H\u0006H\u0006\u0018\u00010\u00010\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0001\u001a&\u0010\u001d\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\u0001\u001a%\u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\u001f¢\u0006\u0002\u0010 \u001a\u0010\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020!0\u0001*\u00020\"\u001a\u0010\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020#0\u0001*\u00020$\u001a\u0010\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020%0\u0001*\u00020&\u001a\u0010\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020'0\u0001*\u00020(\u001a\u0010\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020)0\u0001*\u00020*\u001a\u0010\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020+0\u0001*\u00020,\u001a\u0010\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020-0\u0001*\u00020.\u001a \u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\f\u001a \u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060/\u001a\u0010\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020)0\u0001*\u000200\u001a \u0010\u001e\u001a\b\u0012\u0004\u0012\u0002H\u00060\u0001\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060\u0017\u001a'\u00101\u001a\b\u0012\u0004\u0012\u0002H\u000602\"\b\b��\u0010\u0006*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00060/H\u0002¢\u0006\u0002\u00103\u001aÅ\u0001\u00104\u001a\u0096\u0001\u0012D\u0012B\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H7H7\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H8H8 \u0014* \u0012\f\u0012\n \u0014*\u0004\u0018\u0001H7H7\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H8H8\u0018\u00010906 \u0014*J\u0012D\u0012B\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H7H7\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H8H8 \u0014* \u0012\f\u0012\n \u0014*\u0004\u0018\u0001H7H7\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H8H8\u0018\u00010906\u0018\u00010505\"\b\b��\u00107*\u00020\u0003\"\b\b\u0001\u00108*\u00020\u0003*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H7\u0012\u0004\u0012\u0002H80\u00050\u0001\u001a¶\u0002\u0010:\u001a\u0087\u0002\u0012|\u0012z\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H7H7\u0012(\u0012&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H8H8 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H8H8\u0018\u00010<0; \u0014*<\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H7H7\u0012(\u0012&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H8H8 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H8H8\u0018\u00010<0;\u0018\u00010906 \u0014*\u0082\u0001\u0012|\u0012z\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H7H7\u0012(\u0012&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H8H8 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H8H8\u0018\u00010<0; \u0014*<\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H7H7\u0012(\u0012&\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H8H8 \u0014*\u0012\u0012\f\u0012\n \u0014*\u0004\u0018\u0001H8H8\u0018\u00010<0;\u0018\u00010906\u0018\u00010505\"\b\b��\u00107*\u00020\u0003\"\b\b\u0001\u00108*\u00020\u0003*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H7\u0012\u0004\u0012\u0002H80\u00050\u0001\u001a^\u0010=\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0006*\u00020\u0003\"\b\b\u0001\u0010\u0002*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00060\u00010\f2)\b\u0004\u0010>\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00060\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u0002H\u00020\u000eH\u0087\b¨\u0006?"}, m254d2 = {"cast", "Lio/reactivex/Flowable;", "R", "", "combineLatest", "Lkotlin/Pair;", "T", "flowable", "Lkotlin/Triple;", "U", "flowable1", "flowable2", "", "combineFunction", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "args", "concatAll", "kotlin.jvm.PlatformType", "flatMapSequence", "body", "Lkotlin/sequences/Sequence;", "merge", "mergeAll", "mergeDelayError", "ofType", "switchLatest", "switchOnNext", "toFlowable", "", "([Ljava/lang/Object;)Lio/reactivex/Flowable;", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "Lkotlin/ranges/IntProgression;", "toIterable", "io/reactivex/rxkotlin/FlowableKt$toIterable$1", "(Ljava/util/Iterator;)Lio/reactivex/rxkotlin/FlowableKt$toIterable$1;", "toMap", "Lio/reactivex/Single;", "", "A", "B", "", "toMultimap", "", "", "zip", "zipFunction", "rxkotlin_main"}, m253k = 2, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/FlowableKt.class */
public final class FlowableKt {
    private static final <R> Flowable<R> cast(@NotNull Flowable<?> flowable) {
        Intrinsics.reifiedOperationMarker(4, "R");
        Flowable<R> flowable2 = (Flowable<R>) flowable.cast(Object.class);
        Intrinsics.checkExpressionValueIsNotNull(flowable2, "cast(R::class.java)");
        return flowable2;
    }

    @NotNull
    public static final <T, R> Flowable<Pair<T, R>> combineLatest(@NotNull Flowable<T> receiver, @NotNull Flowable<R> flowable) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(flowable, "flowable");
        Flowable<T> flowable2 = receiver;
        Flowable<R> flowable3 = flowable;
        final FlowableKt$combineLatest$2 flowableKt$combineLatest$2 = FlowableKt$combineLatest$2.INSTANCE;
        Flowable<Pair<T, R>> combineLatest = Flowable.combineLatest(flowable2, flowable3, flowableKt$combineLatest$2 == null ? null : new BiFunction() { // from class: io.reactivex.rxkotlin.FlowableKt$sam$BiFunction$89d2d6b2
            /* JADX WARN: Type inference failed for: r0v2, types: [R, java.lang.Object] */
            @Override // io.reactivex.functions.BiFunction
            @NonNull
            public final /* synthetic */ R apply(@NonNull T1 t1, @NonNull T2 t2) {
                return Function2.this.invoke(t1, t2);
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(combineLatest, "Flowable.combineLatest(t…able, BiFunction(::Pair))");
        return combineLatest;
    }

    @NotNull
    public static final <T, R, U> Flowable<Triple<T, R, U>> combineLatest(@NotNull Flowable<T> receiver, @NotNull Flowable<R> flowable1, @NotNull Flowable<U> flowable2) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(flowable1, "flowable1");
        Intrinsics.checkParameterIsNotNull(flowable2, "flowable2");
        Flowable<T> flowable = receiver;
        Flowable<R> flowable3 = flowable1;
        Flowable<U> flowable4 = flowable2;
        final FlowableKt$combineLatest$3 flowableKt$combineLatest$3 = FlowableKt$combineLatest$3.INSTANCE;
        Flowable<Triple<T, R, U>> combineLatest = Flowable.combineLatest(flowable, flowable3, flowable4, flowableKt$combineLatest$3 == null ? null : new Function3() { // from class: io.reactivex.rxkotlin.FlowableKt$sam$Function3$7083077a
            /* JADX WARN: Type inference failed for: r0v2, types: [R, java.lang.Object] */
            @Override // io.reactivex.functions.Function3
            @NonNull
            public final /* synthetic */ R apply(@NonNull T1 t1, @NonNull T2 t2, @NonNull T3 t3) {
                return kotlin.jvm.functions.Function3.this.invoke(t1, t2, t3);
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(combineLatest, "Flowable.combineLatest(t…le2, Function3(::Triple))");
        return combineLatest;
    }

    @NotNull
    public static final <T, R> Flowable<R> combineLatest(@NotNull Iterable<? extends Flowable<T>> receiver, @NotNull final Function1<? super List<? extends T>, ? extends R> combineFunction) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(combineFunction, "combineFunction");
        Flowable<R> combineLatest = Flowable.combineLatest(receiver, new Function<Object[], R>() { // from class: io.reactivex.rxkotlin.FlowableKt$combineLatest$1
            @NotNull
            public final R apply(@NotNull Object[] it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                Function1 function1 = Function1.this;
                List asList = ArraysKt.asList(it);
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(asList, 10));
                for (T t : asList) {
                    if (t == null) {
                        throw new TypeCastException("null cannot be cast to non-null type T");
                    }
                    arrayList.add(t);
                }
                return (R) function1.invoke(arrayList);
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(combineLatest, "Flowable.combineLatest(t…List().map { it as T }) }");
        return combineLatest;
    }

    public static final <T> Flowable<T> concatAll(@NotNull Flowable<Flowable<T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return (Flowable<T>) receiver.concatMap(FlowableKt$concatAll$1.INSTANCE);
    }

    @NotNull
    public static final <T, R> Flowable<R> flatMapSequence(@NotNull Flowable<T> receiver, @NotNull final Function1<? super T, ? extends Sequence<? extends R>> body) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(body, "body");
        Flowable<R> flatMap = receiver.flatMap((Function) ((Function<T, Publisher<? extends R>>) new Function<T, Publisher<? extends R>>() { // from class: io.reactivex.rxkotlin.FlowableKt$flatMapSequence$1
            @Override // io.reactivex.functions.Function
            @NotNull
            public final Flowable<R> apply(@NotNull T it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                Function1 function1 = Function1.this;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                return FlowableKt.toFlowable((Sequence) function1.invoke(it));
            }
        }));
        Intrinsics.checkExpressionValueIsNotNull(flatMap, "flatMap { body(it).toFlowable() }");
        return flatMap;
    }

    @NotNull
    public static final <T> Flowable<T> merge(@NotNull Iterable<? extends Flowable<? extends T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Flowable<T> merge = Flowable.merge(toFlowable(receiver));
        Intrinsics.checkExpressionValueIsNotNull(merge, "Flowable.merge(this.toFlowable())");
        return merge;
    }

    public static final <T> Flowable<T> mergeAll(@NotNull Flowable<Flowable<T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return (Flowable<T>) receiver.flatMap(FlowableKt$mergeAll$1.INSTANCE);
    }

    @NotNull
    public static final <T> Flowable<T> mergeDelayError(@NotNull Iterable<? extends Flowable<? extends T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Flowable<T> mergeDelayError = Flowable.mergeDelayError(toFlowable(receiver));
        Intrinsics.checkExpressionValueIsNotNull(mergeDelayError, "Flowable.mergeDelayError(this.toFlowable())");
        return mergeDelayError;
    }

    private static final <R> Flowable<R> ofType(@NotNull Flowable<?> flowable) {
        Intrinsics.reifiedOperationMarker(4, "R");
        Flowable<R> flowable2 = (Flowable<R>) flowable.ofType(Object.class);
        Intrinsics.checkExpressionValueIsNotNull(flowable2, "ofType(R::class.java)");
        return flowable2;
    }

    public static final <T> Flowable<T> switchLatest(@NotNull Flowable<Flowable<T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return (Flowable<T>) receiver.switchMap(FlowableKt$switchLatest$1.INSTANCE);
    }

    @NotNull
    public static final <T> Flowable<T> switchOnNext(@NotNull Flowable<Flowable<T>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Flowable<T> switchOnNext = Flowable.switchOnNext(receiver);
        Intrinsics.checkExpressionValueIsNotNull(switchOnNext, "Flowable.switchOnNext(this)");
        return switchOnNext;
    }

    @NotNull
    public static final <T> Flowable<T> toFlowable(@NotNull Iterable<? extends T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Flowable<T> fromIterable = Flowable.fromIterable(receiver);
        Intrinsics.checkExpressionValueIsNotNull(fromIterable, "Flowable.fromIterable(this)");
        return fromIterable;
    }

    @NotNull
    public static final <T> Flowable<T> toFlowable(@NotNull Iterator<? extends T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toFlowable(toIterable(receiver));
    }

    @NotNull
    public static final Flowable<Integer> toFlowable(@NotNull IntProgression receiver) {
        Flowable<Integer> flowable;
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        if (receiver.getStep() != 1 || receiver.getLast() - receiver.getFirst() >= Integer.MAX_VALUE) {
            flowable = Flowable.fromIterable(receiver);
            Intrinsics.checkExpressionValueIsNotNull(flowable, "Flowable.fromIterable(this)");
        } else {
            flowable = Flowable.range(receiver.getFirst(), Math.max(0, (receiver.getLast() - receiver.getFirst()) + 1));
            Intrinsics.checkExpressionValueIsNotNull(flowable, "Flowable.range(first, Ma…max(0, last - first + 1))");
        }
        return flowable;
    }

    @NotNull
    public static final <T> Flowable<T> toFlowable(@NotNull Sequence<? extends T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toFlowable(SequencesKt.asIterable(receiver));
    }

    @NotNull
    public static final Flowable<Byte> toFlowable(@NotNull byte[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toFlowable(ArraysKt.asIterable(receiver));
    }

    @NotNull
    public static final Flowable<Double> toFlowable(@NotNull double[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toFlowable(ArraysKt.asIterable(receiver));
    }

    @NotNull
    public static final Flowable<Float> toFlowable(@NotNull float[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toFlowable(ArraysKt.asIterable(receiver));
    }

    @NotNull
    public static final Flowable<Integer> toFlowable(@NotNull int[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toFlowable(ArraysKt.asIterable(receiver));
    }

    @NotNull
    public static final Flowable<Long> toFlowable(@NotNull long[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toFlowable(ArraysKt.asIterable(receiver));
    }

    @NotNull
    public static final <T> Flowable<T> toFlowable(@NotNull T[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Flowable<T> fromArray = Flowable.fromArray(Arrays.copyOf(receiver, receiver.length));
        Intrinsics.checkExpressionValueIsNotNull(fromArray, "Flowable.fromArray(*this)");
        return fromArray;
    }

    @NotNull
    public static final Flowable<Short> toFlowable(@NotNull short[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toFlowable(ArraysKt.asIterable(receiver));
    }

    @NotNull
    public static final Flowable<Boolean> toFlowable(@NotNull boolean[] receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return toFlowable(ArraysKt.asIterable(receiver));
    }

    private static final <T> FlowableKt$toIterable$1 toIterable(@NotNull Iterator<? extends T> it) {
        return new FlowableKt$toIterable$1(it);
    }

    public static final <A, B> Single<Map<A, B>> toMap(@NotNull Flowable<Pair<A, B>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return (Single<Map<A, B>>) receiver.toMap(FlowableKt$toMap$1.INSTANCE, FlowableKt$toMap$2.INSTANCE);
    }

    public static final <A, B> Single<Map<A, Collection<B>>> toMultimap(@NotNull Flowable<Pair<A, B>> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return (Single<Map<A, Collection<B>>>) receiver.toMultimap(FlowableKt$toMultimap$1.INSTANCE, FlowableKt$toMultimap$2.INSTANCE);
    }

    @NotNull
    public static final <T, R> Flowable<R> zip(@NotNull Iterable<? extends Flowable<T>> receiver, @NotNull final Function1<? super List<? extends T>, ? extends R> zipFunction) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(zipFunction, "zipFunction");
        Flowable<R> zip = Flowable.zip(receiver, new Function<Object[], R>() { // from class: io.reactivex.rxkotlin.FlowableKt$zip$1
            @NotNull
            public final R apply(@NotNull Object[] it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                Function1 function1 = Function1.this;
                List asList = ArraysKt.asList(it);
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(asList, 10));
                for (T t : asList) {
                    if (t == null) {
                        throw new TypeCastException("null cannot be cast to non-null type T");
                    }
                    arrayList.add(t);
                }
                return (R) function1.invoke(arrayList);
            }
        });
        Intrinsics.checkExpressionValueIsNotNull(zip, "Flowable.zip(this) { zip…List().map { it as T }) }");
        return zip;
    }
}
