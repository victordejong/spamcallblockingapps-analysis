package kotlin.ranges;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0007\u0018�� \u001c2\u00020\u00012\u00020\u0002:\u0001\u001cB\u001a\u0012\u0006\u0010\u0019\u001a\u00020\u0003\u0012\u0006\u0010\u0017\u001a\u00020\u0003ø\u0001��¢\u0006\u0004\b\u001a\u0010\u001bJ\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0017\u001a\u00020\u00038V@\u0016X\u0096\u0004ø\u0001��ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0019\u001a\u00020\u00038V@\u0016X\u0096\u0004ø\u0001��ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0016ø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u001d"}, d2 = {"Lkotlin/ranges/ULongRange;", "Lkotlin/ranges/ClosedRange;", "Lkotlin/ranges/ULongProgression;", "Lkotlin/ULong;", FirebaseAnalytics.Param.VALUE, "", "contains-VKZWuLQ", "(J)Z", "contains", "", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "isEmpty", "()Z", "", "toString", "()Ljava/lang/String;", "getEndInclusive-s-VKNKU", "()J", "endInclusive", "getStart-s-VKNKU", "start", "<init>", "(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/ULongRange.class */
public final class ULongRange extends ULongProgression implements ClosedRange<ULong> {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0019\u0010\u0002\u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Lkotlin/ranges/ULongRange$Companion;", "Lkotlin/ranges/ULongRange;", "EMPTY", "Lkotlin/ranges/ULongRange;", "getEMPTY", "()Lkotlin/ranges/ULongRange;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/ranges/ULongRange$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    static {
        new ULongRange(-1L, 0L, null);
    }

    private ULongRange(long j, long j2) {
        super(j, j2, 1L, null);
    }

    public /* synthetic */ ULongRange(long j, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2);
    }

    @Override // kotlin.ranges.ClosedRange
    /* renamed from: c */
    public /* bridge */ /* synthetic */ ULong mo1695c() {
        return ULong.m2426a(m1692k());
    }

    @Override // kotlin.ranges.ClosedRange
    /* renamed from: e */
    public /* bridge */ /* synthetic */ ULong mo1694e() {
        return ULong.m2426a(m1693j());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        if (m1698g() == r0.m1698g()) goto L_0x0037;
     */
    @Override // kotlin.ranges.ULongProgression
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof kotlin.ranges.ULongRange
            if (r0 == 0) goto L_0x003d
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0018
            r0 = r6
            kotlin.ranges.ULongRange r0 = (kotlin.ranges.ULongRange) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0037
        L_0x0018:
            r0 = r5
            long r0 = r0.m1699f()
            r7 = r0
            r0 = r6
            kotlin.ranges.ULongRange r0 = (kotlin.ranges.ULongRange) r0
            r6 = r0
            r0 = r7
            r1 = r6
            long r1 = r1.m1699f()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003d
            r0 = r5
            long r0 = r0.m1698g()
            r1 = r6
            long r1 = r1.m1698g()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003d
        L_0x0037:
            r0 = 1
            r9 = r0
            goto L_0x0040
        L_0x003d:
            r0 = 0
            r9 = r0
        L_0x0040:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.ULongRange.equals(java.lang.Object):boolean");
    }

    @Override // kotlin.ranges.ULongProgression
    public int hashCode() {
        int i;
        if (isEmpty()) {
            i = -1;
        } else {
            long f = m1699f();
            long f2 = m1699f() >>> 32;
            ULong.m2423g(f2);
            long j = f ^ f2;
            ULong.m2423g(j);
            int i2 = (int) j;
            long g = m1698g();
            long g2 = m1698g() >>> 32;
            ULong.m2423g(g2);
            long j2 = g ^ g2;
            ULong.m2423g(j2);
            i = ((int) j2) + (i2 * 31);
        }
        return i;
    }

    @Override // kotlin.ranges.ULongProgression
    public boolean isEmpty() {
        return UnsignedKt.m2381c(m1699f(), m1698g()) > 0;
    }

    /* renamed from: j */
    public long m1693j() {
        return m1698g();
    }

    /* renamed from: k */
    public long m1692k() {
        return m1699f();
    }

    @Override // kotlin.ranges.ULongProgression
    @NotNull
    public String toString() {
        return ULong.m2420k(m1699f()) + ".." + ULong.m2420k(m1698g());
    }
}
