package kotlin.ranges;

import java.lang.Comparable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedRange;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��*\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0012\u0018��*\u000e\b��\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00028��\u0012\u0006\u0010\u0005\u001a\u00028��¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0005\u001a\u00028��X\u0096\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0004\u001a\u00028��X\u0096\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\n\u0010\b¨\u0006\u0013"}, m254d2 = {"Lkotlin/ranges/ComparableRange;", "T", "", "Lkotlin/ranges/ClosedRange;", "start", "endInclusive", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)V", "getEndInclusive", "()Ljava/lang/Comparable;", "Ljava/lang/Comparable;", "getStart", "equals", "", "other", "", "hashCode", "", "toString", "", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/ComparableRange.class */
class ComparableRange<T extends Comparable<? super T>> implements ClosedRange<T> {
    @NotNull
    private final T endInclusive;
    @NotNull
    private final T start;

    public ComparableRange(@NotNull T start, @NotNull T endInclusive) {
        Intrinsics.checkParameterIsNotNull(start, "start");
        Intrinsics.checkParameterIsNotNull(endInclusive, "endInclusive");
        this.start = start;
        this.endInclusive = endInclusive;
    }

    @Override // kotlin.ranges.ClosedRange
    public boolean contains(@NotNull T value) {
        Intrinsics.checkParameterIsNotNull(value, "value");
        return ClosedRange.DefaultImpls.contains(this, value);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(getEndInclusive(), r0.getEndInclusive()) != false) goto L_0x003b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof kotlin.ranges.ComparableRange
            if (r0 == 0) goto L_0x0040
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0018
            r0 = r4
            kotlin.ranges.ComparableRange r0 = (kotlin.ranges.ComparableRange) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x003b
        L_0x0018:
            r0 = r3
            java.lang.Comparable r0 = r0.getStart()
            r5 = r0
            r0 = r4
            kotlin.ranges.ComparableRange r0 = (kotlin.ranges.ComparableRange) r0
            r4 = r0
            r0 = r5
            r1 = r4
            java.lang.Comparable r1 = r1.getStart()
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
            if (r0 == 0) goto L_0x0040
            r0 = r3
            java.lang.Comparable r0 = r0.getEndInclusive()
            r1 = r4
            java.lang.Comparable r1 = r1.getEndInclusive()
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
            if (r0 == 0) goto L_0x0040
        L_0x003b:
            r0 = 1
            r6 = r0
            goto L_0x0042
        L_0x0040:
            r0 = 0
            r6 = r0
        L_0x0042:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.ComparableRange.equals(java.lang.Object):boolean");
    }

    @Override // kotlin.ranges.ClosedRange
    @NotNull
    public T getEndInclusive() {
        return this.endInclusive;
    }

    @Override // kotlin.ranges.ClosedRange
    @NotNull
    public T getStart() {
        return this.start;
    }

    public int hashCode() {
        return isEmpty() ? -1 : (getStart().hashCode() * 31) + getEndInclusive().hashCode();
    }

    @Override // kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return ClosedRange.DefaultImpls.isEmpty(this);
    }

    @NotNull
    public String toString() {
        return getStart() + ".." + getEndInclusive();
    }
}
