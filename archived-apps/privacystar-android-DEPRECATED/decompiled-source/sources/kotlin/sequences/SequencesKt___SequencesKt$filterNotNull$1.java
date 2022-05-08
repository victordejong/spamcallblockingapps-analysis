package kotlin.sequences;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0010\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u0001H\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, m254d2 = {"<anonymous>", "", "T", "", "it", "invoke", "(Ljava/lang/Object;)Z"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$filterNotNull$1.class */
final class SequencesKt___SequencesKt$filterNotNull$1 extends Lambda implements Function1<T, Boolean> {
    public static final SequencesKt___SequencesKt$filterNotNull$1 INSTANCE = new SequencesKt___SequencesKt$filterNotNull$1();

    SequencesKt___SequencesKt$filterNotNull$1() {
        super(1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    @Override // kotlin.jvm.functions.Function1
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Boolean invoke2(@Nullable T t) {
        return t == 0 ? 1 : 0;
    }
}
