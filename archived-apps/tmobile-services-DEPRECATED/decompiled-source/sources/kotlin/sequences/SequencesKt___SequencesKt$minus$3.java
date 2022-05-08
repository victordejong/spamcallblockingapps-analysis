package kotlin.sequences;

import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"kotlin/sequences/SequencesKt___SequencesKt$minus$3", "Lkotlin/sequences/Sequence;", "", "iterator", "()Ljava/util/Iterator;", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/sequences/SequencesKt___SequencesKt$minus$3.class */
public final class SequencesKt___SequencesKt$minus$3 implements Sequence<T> {

    /* renamed from: a */
    final /* synthetic */ Sequence f20932a;

    /* renamed from: b */
    final /* synthetic */ Iterable f20933b;

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<T> iterator() {
        Collection q;
        q = CollectionsKt__IterablesKt.m2163q(this.f20933b);
        return q.isEmpty() ? this.f20932a.iterator() : SequencesKt___SequencesKt.m1620j(this.f20932a, new SequencesKt___SequencesKt$minus$3$iterator$1(q)).iterator();
    }
}
