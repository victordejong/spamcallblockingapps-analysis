package io.reactivex.rxkotlin;

import io.reactivex.functions.Function3;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0005\u0010��\u001a\u0014\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00040\u0001\"\b\b��\u0010\u0002*\u00020\u0005\"\b\b\u0001\u0010\u0003*\u00020\u0005\"\b\b\u0002\u0010\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u0002H\u00022\u0006\u0010\u0007\u001a\u0002H\u00032\u0006\u0010\b\u001a\u0002H\u0004H\n¢\u0006\u0004\b\t\u0010\n"}, d2 = {"<anonymous>", "Lkotlin/Triple;", "T", "T1", "T2", "", "t", "t1", "t2", "apply", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Triple;"}, k = 3, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/ObservablesKt$withLatestFrom$4.class */
final class ObservablesKt$withLatestFrom$4<T1, T2, T3, R> implements Function3<T, T1, T2, Triple<? extends T, ? extends T1, ? extends T2>> {
    ObservablesKt$withLatestFrom$4() {
    }

    @NotNull
    /* renamed from: b */
    public final Triple<T, T1, T2> mo3250a(@NotNull T t, @NotNull T1 t1, @NotNull T2 t2) {
        Intrinsics.m1829f(t, "t");
        Intrinsics.m1829f(t1, "t1");
        Intrinsics.m1829f(t2, "t2");
        return new Triple<>(t, t1, t2);
    }
}
