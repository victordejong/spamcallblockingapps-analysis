package kotlin.ranges;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.collections.ULongIterator;
import kotlin.internal.UProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\b\b\u0017\u0018�� !2\u00020\u00012\u00020\u0002:\u0001!B$\b��\u0012\u0006\u0010\u001d\u001a\u00020\u0013\u0012\u0006\u0010\u001e\u001a\u00020\u0013\u0012\u0006\u0010\u001b\u001a\u00020\u001aø\u0001��¢\u0006\u0004\b\u001f\u0010 J\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rH\u0096\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u001f\u0010\u0014\u001a\u00020\u00138\u0006@\u0006ø\u0001��ø\u0001\u0001¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001f\u0010\u0018\u001a\u00020\u00138\u0006@\u0006ø\u0001��ø\u0001\u0001¢\u0006\f\n\u0004\b\u0018\u0010\u0015\u001a\u0004\b\u0019\u0010\u0017R\u0019\u0010\u001b\u001a\u00020\u001a8\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u0015\u001a\u0004\b\u001c\u0010\u0017ø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\""}, d2 = {"Lkotlin/ranges/ULongProgression;", "Ljava/lang/Iterable;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "isEmpty", "()Z", "Lkotlin/collections/ULongIterator;", "iterator", "()Lkotlin/collections/ULongIterator;", "", "toString", "()Ljava/lang/String;", "Lkotlin/ULong;", "first", "J", "getFirst-s-VKNKU", "()J", "last", "getLast-s-VKNKU", "", "step", "getStep", "start", "endInclusive", "<init>", "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/ULongProgression.class */
public class ULongProgression implements Iterable<ULong>, KMappedMarker {

    /* renamed from: f */
    private final long f20818f;

    /* renamed from: g */
    private final long f20819g;

    /* renamed from: h */
    private final long f20820h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ(\u0010\t\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004ø\u0001��¢\u0006\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lkotlin/ranges/ULongProgression$Companion;", "Lkotlin/ULong;", "rangeStart", "rangeEnd", "", "step", "Lkotlin/ranges/ULongProgression;", "fromClosedRange-7ftBX0g", "(JJJ)Lkotlin/ranges/ULongProgression;", "fromClosedRange", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/ranges/ULongProgression$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    private ULongProgression(long j, long j2, long j3) {
        if (j3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        } else if (j3 != Long.MIN_VALUE) {
            this.f20818f = j;
            this.f20819g = UProgressionUtilKt.m1892c(j, j2, j3);
            this.f20820h = j3;
        } else {
            throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
        }
    }

    public /* synthetic */ ULongProgression(long j, long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        if (r5.f20820h == r0.f20820h) goto L_0x0043;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof kotlin.ranges.ULongProgression
            if (r0 == 0) goto L_0x0049
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0018
            r0 = r6
            kotlin.ranges.ULongProgression r0 = (kotlin.ranges.ULongProgression) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0043
        L_0x0018:
            r0 = r5
            long r0 = r0.f20818f
            r7 = r0
            r0 = r6
            kotlin.ranges.ULongProgression r0 = (kotlin.ranges.ULongProgression) r0
            r6 = r0
            r0 = r7
            r1 = r6
            long r1 = r1.f20818f
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0049
            r0 = r5
            long r0 = r0.f20819g
            r1 = r6
            long r1 = r1.f20819g
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0049
            r0 = r5
            long r0 = r0.f20820h
            r1 = r6
            long r1 = r1.f20820h
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0049
        L_0x0043:
            r0 = 1
            r9 = r0
            goto L_0x004c
        L_0x0049:
            r0 = 0
            r9 = r0
        L_0x004c:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.ULongProgression.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public final long m1699f() {
        return this.f20818f;
    }

    /* renamed from: g */
    public final long m1698g() {
        return this.f20819g;
    }

    @NotNull
    /* renamed from: h */
    public ULongIterator iterator() {
        return new ULongProgressionIterator(this.f20818f, this.f20819g, this.f20820h, null);
    }

    public int hashCode() {
        int i;
        if (isEmpty()) {
            i = -1;
        } else {
            long j = this.f20818f;
            long j2 = j >>> 32;
            ULong.m2423g(j2);
            long j3 = j ^ j2;
            ULong.m2423g(j3);
            int i2 = (int) j3;
            long j4 = this.f20819g;
            long j5 = j4 >>> 32;
            ULong.m2423g(j5);
            long j6 = j4 ^ j5;
            ULong.m2423g(j6);
            int i3 = (int) j6;
            long j7 = this.f20820h;
            i = ((int) (j7 ^ (j7 >>> 32))) + (((i2 * 31) + i3) * 31);
        }
        return i;
    }

    public boolean isEmpty() {
        long j = this.f20820h;
        boolean z = true;
        int c = UnsignedKt.m2381c(this.f20818f, this.f20819g);
        if (j <= 0 ? c >= 0 : c <= 0) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long, java.lang.StringBuilder] */
    /* JADX WARN: Unknown variable types count: 1 */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f20820h
            r6 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r8 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0041
            r0 = r8
            r0.<init>()
            r0 = r8
            r1 = r5
            long r1 = r1.f20818f
            java.lang.String r1 = kotlin.ULong.m2420k(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = ".."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r5
            long r1 = r1.f20819g
            java.lang.String r1 = kotlin.ULong.m2420k(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = " step "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            long r0 = r0.f20820h
            r6 = r0
            goto L_0x0071
        L_0x0041:
            r0 = r8
            r0.<init>()
            r0 = r8
            r1 = r5
            long r1 = r1.f20818f
            java.lang.String r1 = kotlin.ULong.m2420k(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = " downTo "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r5
            long r1 = r1.f20819g
            java.lang.String r1 = kotlin.ULong.m2420k(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = " step "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            long r0 = r0.f20820h
            long r0 = -r0
            r6 = r0
        L_0x0071:
            r0 = r8
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.ULongProgression.toString():java.lang.String");
    }
}
