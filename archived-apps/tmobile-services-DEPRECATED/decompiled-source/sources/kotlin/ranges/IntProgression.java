package kotlin.ranges;

import kotlin.Metadata;
import kotlin.collections.IntIterator;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0016\u0018�� \u001e2\u00020\u00012\u00020\u0002:\u0001\u001eB!\b��\u0012\u0006\u0010\u001a\u001a\u00020\b\u0012\u0006\u0010\u001b\u001a\u00020\b\u0012\u0006\u0010\u0018\u001a\u00020\b¢\u0006\u0004\b\u001c\u0010\u001dJ\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rH\u0096\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0013\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\nR\u0019\u0010\u0016\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0014\u001a\u0004\b\u0017\u0010\nR\u0019\u0010\u0018\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0014\u001a\u0004\b\u0019\u0010\n¨\u0006\u001f"}, d2 = {"Lkotlin/ranges/IntProgression;", "Ljava/lang/Iterable;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "isEmpty", "()Z", "Lkotlin/collections/IntIterator;", "iterator", "()Lkotlin/collections/IntIterator;", "", "toString", "()Ljava/lang/String;", "first", "I", "getFirst", "last", "getLast", "step", "getStep", "start", "endInclusive", "<init>", "(III)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/IntProgression.class */
public class IntProgression implements Iterable<Integer>, KMappedMarker {

    /* renamed from: i */
    public static final Companion f20794i = new Companion(null);

    /* renamed from: f */
    private final int f20795f;

    /* renamed from: g */
    private final int f20796g;

    /* renamed from: h */
    private final int f20797h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ%\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lkotlin/ranges/IntProgression$Companion;", "", "rangeStart", "rangeEnd", "step", "Lkotlin/ranges/IntProgression;", "fromClosedRange", "(III)Lkotlin/ranges/IntProgression;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/ranges/IntProgression$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        /* renamed from: a */
        public final IntProgression m1734a(int i, int i2, int i3) {
            return new IntProgression(i, i2, i3);
        }
    }

    public IntProgression(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        } else if (i3 != Integer.MIN_VALUE) {
            this.f20795f = i;
            this.f20796g = ProgressionUtilKt.m1898c(i, i2, i3);
            this.f20797h = i3;
        } else {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r3.f20797h == r0.f20797h) goto L_0x0040;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof kotlin.ranges.IntProgression
            if (r0 == 0) goto L_0x0045
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0018
            r0 = r4
            kotlin.ranges.IntProgression r0 = (kotlin.ranges.IntProgression) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0040
        L_0x0018:
            r0 = r3
            int r0 = r0.f20795f
            r5 = r0
            r0 = r4
            kotlin.ranges.IntProgression r0 = (kotlin.ranges.IntProgression) r0
            r4 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.f20795f
            if (r0 != r1) goto L_0x0045
            r0 = r3
            int r0 = r0.f20796g
            r1 = r4
            int r1 = r1.f20796g
            if (r0 != r1) goto L_0x0045
            r0 = r3
            int r0 = r0.f20797h
            r1 = r4
            int r1 = r1.f20797h
            if (r0 != r1) goto L_0x0045
        L_0x0040:
            r0 = 1
            r6 = r0
            goto L_0x0047
        L_0x0045:
            r0 = 0
            r6 = r0
        L_0x0047:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.IntProgression.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public final int m1738f() {
        return this.f20795f;
    }

    /* renamed from: g */
    public final int m1737g() {
        return this.f20796g;
    }

    /* renamed from: h */
    public final int m1736h() {
        return this.f20797h;
    }

    public int hashCode() {
        return isEmpty() ? -1 : (((this.f20795f * 31) + this.f20796g) * 31) + this.f20797h;
    }

    public boolean isEmpty() {
        boolean z = true;
        if (this.f20797h <= 0 ? this.f20795f >= this.f20796g : this.f20795f <= this.f20796g) {
            z = false;
        }
        return z;
    }

    @NotNull
    /* renamed from: j */
    public IntIterator iterator() {
        return new IntProgressionIterator(this.f20795f, this.f20796g, this.f20797h);
    }

    @NotNull
    public String toString() {
        int i;
        StringBuilder sb;
        if (this.f20797h > 0) {
            sb = new StringBuilder();
            sb.append(this.f20795f);
            sb.append("..");
            sb.append(this.f20796g);
            sb.append(" step ");
            i = this.f20797h;
        } else {
            sb = new StringBuilder();
            sb.append(this.f20795f);
            sb.append(" downTo ");
            sb.append(this.f20796g);
            sb.append(" step ");
            i = -this.f20797h;
        }
        sb.append(i);
        return sb.toString();
    }
}
