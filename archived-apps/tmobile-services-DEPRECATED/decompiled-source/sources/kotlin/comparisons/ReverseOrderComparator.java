package kotlin.comparisons;

import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÂ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ+\u0010\u0007\u001a\u00020\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ)\u0010\n\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002`\t¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lkotlin/comparisons/ReverseOrderComparator;", "Ljava/util/Comparator;", "", "", "a", "b", "", "compare", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)I", "Lkotlin/Comparator;", "reversed", "()Ljava/util/Comparator;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/comparisons/ReverseOrderComparator.class */
final class ReverseOrderComparator implements Comparator<Comparable<? super Object>> {

    /* renamed from: f */
    public static final ReverseOrderComparator f20628f = new ReverseOrderComparator();

    private ReverseOrderComparator() {
    }

    /* renamed from: a */
    public int compare(@NotNull Comparable<Object> a, @NotNull Comparable<Object> b) {
        Intrinsics.m1830e(a, "a");
        Intrinsics.m1830e(b, "b");
        return b.compareTo(a);
    }

    @Override // java.util.Comparator
    @NotNull
    public final Comparator<Comparable<? super Object>> reversed() {
        return NaturalOrderComparator.f20627f;
    }
}
