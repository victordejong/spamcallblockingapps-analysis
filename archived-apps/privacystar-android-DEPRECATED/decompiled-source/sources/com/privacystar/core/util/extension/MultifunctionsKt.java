package com.privacystar.core.util.extension;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001e\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aM\u0010��\u001a\u0004\u0018\u0001H\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0001*\u0012\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00030\u00042\u0018\u0010\u0005\u001a\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00010\u0006¢\u0006\u0002\u0010\u0007\u001aa\u0010��\u001a\u0004\u0018\u0001H\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\b\"\u0004\b\u0003\u0010\u0001*\u001a\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u0003\u0012\u0006\u0012\u0004\u0018\u0001H\b0\t2\u001e\u0010\u0005\u001a\u001a\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\u00010\n¢\u0006\u0002\u0010\u000b¨\u0006\f"}, m254d2 = {"letNotNull", "R", "A", "B", "Lkotlin/Pair;", "transform", "Lkotlin/Function2;", "(Lkotlin/Pair;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "C", "Lkotlin/Triple;", "Lkotlin/Function3;", "(Lkotlin/Triple;Lkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "app-core"}, m253k = 2, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/extension/MultifunctionsKt.class */
public final class MultifunctionsKt {
    @Nullable
    public static final <A, B, R> R letNotNull(@NotNull Pair<? extends A, ? extends B> receiver$0, @NotNull Function2<? super A, ? super B, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        return (receiver$0.getFirst() == null || receiver$0.getSecond() == null) ? null : (R) transform.invoke((Object) receiver$0.getFirst(), (Object) receiver$0.getSecond());
    }

    @Nullable
    public static final <A, B, C, R> R letNotNull(@NotNull Triple<? extends A, ? extends B, ? extends C> receiver$0, @NotNull Function3<? super A, ? super B, ? super C, ? extends R> transform) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(transform, "transform");
        return (receiver$0.getFirst() == null || receiver$0.getSecond() == null || receiver$0.getThird() == null) ? null : (R) transform.invoke((Object) receiver$0.getFirst(), (Object) receiver$0.getSecond(), (Object) receiver$0.getThird());
    }
}
