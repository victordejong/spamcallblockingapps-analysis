package kotlin.sequences;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0010\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n��\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n¢\u0006\u0002\b\u0005"}, m254d2 = {"<anonymous>", "", "R", "it", "", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesJvmKt$filterIsInstance$1.class */
final class SequencesKt___SequencesJvmKt$filterIsInstance$1 extends Lambda implements Function1<Object, Boolean> {
    final /* synthetic */ Class $klass;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SequencesKt___SequencesJvmKt$filterIsInstance$1(Class cls) {
        super(1);
        this.$klass = cls;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Boolean, boolean] */
    @Override // kotlin.jvm.functions.Function1
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Boolean invoke2(@Nullable Object obj) {
        return this.$klass.isInstance(obj);
    }
}
