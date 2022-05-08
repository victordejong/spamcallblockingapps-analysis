package io.reactivex.rxkotlin;

import io.reactivex.functions.Function3;
import kotlin.Metadata;
import kotlin.Triple;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 1}, m255d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\u0010��\u001a#\u0012\t\u0012\u0007H\u0002¢\u0006\u0002\b\u0003\u0012\t\u0012\u0007H\u0004¢\u0006\u0002\b\u0003\u0012\t\u0012\u0007H\u0005¢\u0006\u0002\b\u00030\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0004\"\u0004\b\u0002\u0010\u00052\u000b\u0010\u0006\u001a\u0007H\u0002¢\u0006\u0002\b\u00032\u000b\u0010\u0007\u001a\u0007H\u0004¢\u0006\u0002\b\u00032\u000b\u0010\b\u001a\u0007H\u0005¢\u0006\u0002\b\u0003H\n¢\u0006\u0004\b\t\u0010\n"}, m254d2 = {"<anonymous>", "Lkotlin/Triple;", "T1", "Lio/reactivex/annotations/NonNull;", "T2", "T3", "t1", "t2", "t3", "apply", "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Triple;"}, m253k = 3, m252mv = {1, 1, 6})
/* loaded from: classes2-dex2jar.jar:io/reactivex/rxkotlin/Maybes$zip$4.class */
final class Maybes$zip$4<T1, T2, T3, R> implements Function3<T1, T2, T3, Triple<? extends T1, ? extends T2, ? extends T3>> {
    public static final Maybes$zip$4 INSTANCE = new Maybes$zip$4();

    Maybes$zip$4() {
    }

    @Override // io.reactivex.functions.Function3
    @NotNull
    public final Triple<T1, T2, T3> apply(T1 t1, T2 t2, T3 t3) {
        return new Triple<>(t1, t2, t3);
    }
}
