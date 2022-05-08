package io.reactivex.rxkotlin;

import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��\u0016\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u0002H\u0001\"\b\b��\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0001*\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00010\u0005¢\u0006\u0002\b\u0006H\n¢\u0006\u0004\b\u0007\u0010\b"}, m254d2 = {"<anonymous>", "B", "A", "", "it", "Lkotlin/Pair;", "Lio/reactivex/annotations/NonNull;", "apply", "(Lkotlin/Pair;)Ljava/lang/Object;"}, m253k = 3, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/ObservableKt$toMultimap$2.class */
final class ObservableKt$toMultimap$2<T, R> implements Function<T, V> {
    public static final ObservableKt$toMultimap$2 INSTANCE = new ObservableKt$toMultimap$2();

    ObservableKt$toMultimap$2() {
    }

    @Override // io.reactivex.functions.Function
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply((Pair<? extends A, ? extends Object>) obj);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [B, java.lang.Object] */
    @NotNull
    public final B apply(@NotNull Pair<? extends A, ? extends B> it) {
        Intrinsics.checkParameterIsNotNull(it, "it");
        return it.getSecond();
    }
}
