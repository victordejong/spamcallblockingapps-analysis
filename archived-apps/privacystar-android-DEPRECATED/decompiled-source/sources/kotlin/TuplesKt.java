package kotlin;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0016\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n��\n\u0002\u0018\u0002\n��\u001a2\u0010��\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b��\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u0002H\u00022\u0006\u0010\u0004\u001a\u0002H\u0003H\u0086\u0004¢\u0006\u0002\u0010\u0005\u001a\"\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b��\u0010\b*\u000e\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\b0\u0001\u001a(\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\b0\u0007\"\u0004\b��\u0010\b*\u0014\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\b\u0012\u0004\u0012\u0002H\b0\t¨\u0006\n"}, m254d2 = {"to", "Lkotlin/Pair;", "A", "B", "that", "(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;", "toList", "", "T", "Lkotlin/Triple;", "kotlin-stdlib"}, m253k = 2, m252mv = {1, 1, 13})
@JvmName(name = "TuplesKt")
/* loaded from: classes2-dex2jar.jar:kotlin/TuplesKt.class */
public final class TuplesKt {
    @NotNull
    /* renamed from: to */
    public static final <A, B> Pair<A, B> m248to(A a, B b) {
        return new Pair<>(a, b);
    }

    @NotNull
    public static final <T> List<T> toList(@NotNull Pair<? extends T, ? extends T> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return CollectionsKt.listOf(receiver$0.getFirst(), receiver$0.getSecond());
    }

    @NotNull
    public static final <T> List<T> toList(@NotNull Triple<? extends T, ? extends T, ? extends T> receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return CollectionsKt.listOf(receiver$0.getFirst(), receiver$0.getSecond(), receiver$0.getThird());
    }
}
