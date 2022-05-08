package kotlin.ranges;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��:\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0004\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n��\u001a\u0018\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H��\u001a@\u0010\u0006\u001a\u00020\u0003\"\b\b��\u0010\u0007*\u00020\b\"\u0018\b\u0001\u0010\t*\b\u0012\u0004\u0012\u0002H\u00070\n*\b\u0012\u0004\u0012\u0002H\u00070\u000b*\u0002H\t2\b\u0010\f\u001a\u0004\u0018\u0001H\u0007H\u0087\n¢\u0006\u0002\u0010\r\u001a0\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00070\u000b\"\u000e\b��\u0010\u0007*\b\u0012\u0004\u0012\u0002H\u00070\u000f*\u0002H\u00072\u0006\u0010\u0010\u001a\u0002H\u0007H\u0086\u0002¢\u0006\u0002\u0010\u0011\u001a\u001b\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012*\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0013H\u0087\u0002¨\u0006\u0014"}, m254d2 = {"checkStepIsPositive", "", "isPositive", "", "step", "", "contains", "T", "", "R", "", "Lkotlin/ranges/ClosedRange;", "element", "(Ljava/lang/Iterable;Ljava/lang/Object;)Z", "rangeTo", "", "that", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lkotlin/ranges/ClosedRange;", "Lkotlin/ranges/ClosedFloatingPointRange;", "", "kotlin-stdlib"}, m253k = 5, m252mv = {1, 1, 13}, m250xi = 1, m249xs = "kotlin/ranges/RangesKt")
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/RangesKt__RangesKt.class */
class RangesKt__RangesKt extends RangesKt__RangesJVMKt {
    public static final void checkStepIsPositive(boolean z, @NotNull Number step) {
        Intrinsics.checkParameterIsNotNull(step, "step");
        if (!z) {
            throw new IllegalArgumentException("Step must be positive, was: " + step + '.');
        }
    }

    /* JADX WARN: Incorrect types in method signature: <T:Ljava/lang/Object;R::Ljava/lang/Iterable<+TT;>;:Lkotlin/ranges/ClosedRange<TT;>;>(TR;TT;)Z */
    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(@NotNull Iterable receiver$0, Object obj) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return obj != null && ((ClosedRange) receiver$0).contains((Comparable) obj);
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final ClosedFloatingPointRange<Double> rangeTo(double d, double d2) {
        return new ClosedDoubleRange(d, d2);
    }

    @NotNull
    public static final <T extends Comparable<? super T>> ClosedRange<T> rangeTo(@NotNull T receiver$0, @NotNull T that) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(that, "that");
        return new ComparableRange(receiver$0, that);
    }
}
