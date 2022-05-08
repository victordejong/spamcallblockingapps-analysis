package io.reactivex.rxkotlin;

import io.reactivex.Completable;
import io.reactivex.CompletableSource;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00070\u0001¢\u0006\u0002\b\u00022\u000b\u0010\u0003\u001a\u00070\u0001¢\u0006\u0002\b\u0002H\n¢\u0006\u0002\b\u0004"}, m254d2 = {"<anonymous>", "Lio/reactivex/Completable;", "Lio/reactivex/annotations/NonNull;", "it", "apply"}, m253k = 3, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/CompletableKt$mergeAllCompletables$1.class */
final class CompletableKt$mergeAllCompletables$1<T, R> implements Function<Completable, CompletableSource> {
    public static final CompletableKt$mergeAllCompletables$1 INSTANCE = new CompletableKt$mergeAllCompletables$1();

    CompletableKt$mergeAllCompletables$1() {
    }

    @NotNull
    public final Completable apply(@NotNull Completable it) {
        Intrinsics.checkParameterIsNotNull(it, "it");
        return it;
    }
}
