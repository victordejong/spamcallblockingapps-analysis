package kotlin.collections;

import kotlin.Metadata;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000f\n\u0002\b\u0003\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002\"\u000e\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, m254d2 = {"<anonymous>", "", "T", "K", "", "it", "invoke", "(Ljava/lang/Object;)I"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/collections/CollectionsKt__CollectionsKt$binarySearchBy$1.class */
public final class CollectionsKt__CollectionsKt$binarySearchBy$1 extends Lambda implements Function1<T, Integer> {
    final /* synthetic */ Comparable $key;
    final /* synthetic */ Function1 $selector;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionsKt__CollectionsKt$binarySearchBy$1(Function1 function1, Comparable comparable) {
        super(1);
        this.$selector = function1;
        this.$key = comparable;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Integer, int] */
    @Override // kotlin.jvm.functions.Function1
    public final Integer invoke(T t) {
        return ComparisonsKt.compareValues((Comparable) this.$selector.invoke(t), this.$key);
    }
}
