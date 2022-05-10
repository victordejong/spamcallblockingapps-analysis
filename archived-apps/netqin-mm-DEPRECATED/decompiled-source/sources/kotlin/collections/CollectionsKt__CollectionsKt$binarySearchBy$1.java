package kotlin.collections;

import kotlin.jvm.internal.Lambda;
import p573f.p578s.C9992a;
import p573f.p590w.p591b.AbstractC10031l;
/* loaded from: classes2-dex2jar.jar:kotlin/collections/CollectionsKt__CollectionsKt$binarySearchBy$1.class */
public final class CollectionsKt__CollectionsKt$binarySearchBy$1 extends Lambda implements AbstractC10031l<T, Integer> {
    public final /* synthetic */ Comparable $key;
    public final /* synthetic */ AbstractC10031l $selector;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectionsKt__CollectionsKt$binarySearchBy$1(AbstractC10031l lVar, Comparable comparable) {
        super(1);
        this.$selector = lVar;
        this.$key = comparable;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Type inference failed for: r0v4, types: [int, java.lang.Integer] */
    @Override // p573f.p590w.p591b.AbstractC10031l
    public final Integer invoke(T t) {
        return C9992a.m1690a((Comparable) this.$selector.invoke(t), this.$key);
    }
}
