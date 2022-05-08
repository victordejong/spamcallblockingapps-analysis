package kotlin.sequences;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0010��\u001a\u0002H\u0001\"\b\b��\u0010\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u0001H\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "T", "", "it", "invoke", "(Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$requireNoNulls$1.class */
final class SequencesKt___SequencesKt$requireNoNulls$1 extends Lambda implements Function1<T, T> {

    /* renamed from: f */
    final /* synthetic */ Sequence f20940f;

    @Override // kotlin.jvm.functions.Function1
    @NotNull
    public final T invoke(@Nullable T t) {
        if (t != 0) {
            return t;
        }
        throw new IllegalArgumentException("null element found in " + this.f20940f + '.');
    }
}
