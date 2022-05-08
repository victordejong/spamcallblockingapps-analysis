package io.reactivex.rxkotlin;

import io.reactivex.functions.Function3;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0007\u0010��\u001a\u0002H\u0001\"\b\b��\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003\"\b\b\u0002\u0010\u0005*\u00020\u0003\"\b\b\u0003\u0010\u0001*\u00020\u00032\u0006\u0010\u0006\u001a\u0002H\u00022\u0006\u0010\u0007\u001a\u0002H\u00042\u0006\u0010\b\u001a\u0002H\u0005H\n¢\u0006\u0004\b\t\u0010\n"}, d2 = {"<anonymous>", "R", "T1", "", "T2", "T3", "t1", "t2", "t3", "apply", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/Flowables$zip$3.class */
public final class Flowables$zip$3<T1, T2, T3, R> implements Function3<T1, T2, T3, R> {

    /* renamed from: a */
    final /* synthetic */ kotlin.jvm.functions.Function3 f19608a;

    @Override // io.reactivex.functions.Function3
    @NotNull
    /* renamed from: a */
    public final R mo3250a(@NotNull T1 t1, @NotNull T2 t2, @NotNull T3 t3) {
        Intrinsics.m1829f(t1, "t1");
        Intrinsics.m1829f(t2, "t2");
        Intrinsics.m1829f(t3, "t3");
        return (R) this.f19608a.mo594a(t1, t2, t3);
    }
}
