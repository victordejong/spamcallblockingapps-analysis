package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "T", "it", "Lkotlin/sequences/Sequence;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt__SequencesKt$flatten$1.class */
final class SequencesKt__SequencesKt$flatten$1 extends Lambda implements Function1<Sequence<? extends T>, Iterator<? extends T>> {
    static {
        new SequencesKt__SequencesKt$flatten$1();
    }

    SequencesKt__SequencesKt$flatten$1() {
        super(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    /* renamed from: b */
    public final Iterator<T> invoke(@NotNull Sequence<? extends T> it) {
        Intrinsics.m1830e(it, "it");
        return it.iterator();
    }
}
