package io.reactivex.rxkotlin;

import io.reactivex.Flowable;
import io.reactivex.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.reactivestreams.Publisher;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lio/reactivex/Flowable;", "T", "", "it", "apply"}, k = 3, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/FlowableKt$switchLatest$1.class */
final class FlowableKt$switchLatest$1<T, R> implements Function<T, Publisher<? extends R>> {
    FlowableKt$switchLatest$1() {
    }

    @NotNull
    /* renamed from: a */
    public final Flowable<T> m3294a(@NotNull Flowable<T> it) {
        Intrinsics.m1829f(it, "it");
        return it;
    }

    @Override // io.reactivex.functions.Function
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        Flowable<T> flowable = (Flowable) obj;
        m3294a(flowable);
        return flowable;
    }
}
