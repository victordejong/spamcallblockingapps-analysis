package kotlin.sequences;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0004\n\u0002\b\u0005\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u00012\u0006\u0010\u0002\u001a\u0002H\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, m254d2 = {"<anonymous>", "T", "it", "invoke", "(Ljava/lang/Object;)Ljava/lang/Object;"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$onEach$1.class */
final class SequencesKt___SequencesKt$onEach$1 extends Lambda implements Function1<T, T> {
    final /* synthetic */ Function1 $action;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesKt$onEach$1(Function1 function1) {
        super(1);
        this.$action = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final T invoke(T t) {
        this.$action.invoke(t);
        return t;
    }
}
