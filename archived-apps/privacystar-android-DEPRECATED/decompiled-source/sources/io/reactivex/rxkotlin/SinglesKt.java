package io.reactivex.rxkotlin;

import io.reactivex.Single;
import io.reactivex.SingleSource;
import io.reactivex.functions.BiFunction;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��\u001c\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u001a<\u0010��\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00040\u00020\u0001\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00030\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00040\u0006\u001aU\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0001\"\u0004\b��\u0010\u0003\"\u0004\b\u0001\u0010\u0004\"\u0004\b\u0002\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00030\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00040\u00062\u001a\b\u0004\u0010\b\u001a\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00070\tH\u0086\b¨\u0006\n"}, m254d2 = {"zipWith", "Lio/reactivex/Single;", "Lkotlin/Pair;", "T", "U", "other", "Lio/reactivex/SingleSource;", "R", "zipper", "Lkotlin/Function2;", "rxkotlin_main"}, m253k = 2, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/SinglesKt.class */
public final class SinglesKt {
    @NotNull
    public static final <T, U> Single<Pair<T, U>> zipWith(@NotNull Single<T> receiver, @NotNull SingleSource<U> other) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(other, "other");
        Single<Pair<T, U>> single = (Single<Pair<T, U>>) receiver.zipWith(other, SinglesKt$zipWith$2.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(single, "zipWith(other, BiFunction { t, u -> Pair(t,u) })");
        return single;
    }

    @NotNull
    public static final <T, U, R> Single<R> zipWith(@NotNull Single<T> receiver, @NotNull SingleSource<U> other, @NotNull final Function2<? super T, ? super U, ? extends R> zipper) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(other, "other");
        Intrinsics.checkParameterIsNotNull(zipper, "zipper");
        Single<R> zipWith = receiver.zipWith(other, (BiFunction) ((BiFunction<T, U, R>) new BiFunction<T, U, R>() { // from class: io.reactivex.rxkotlin.SinglesKt$zipWith$1
            @Override // io.reactivex.functions.BiFunction
            public final R apply(T t, U u) {
                return (R) Function2.this.invoke(t, u);
            }
        }));
        Intrinsics.checkExpressionValueIsNotNull(zipWith, "zipWith(other, BiFunctio…-> zipper.invoke(t, u) })");
        return zipWith;
    }
}
