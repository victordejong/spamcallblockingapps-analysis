package kotlin.ranges;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\r\b\u0002\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0002¢\u0006\u0004\b\u001f\u0010 J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001a\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0019\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001b¨\u0006!"}, d2 = {"Lkotlin/ranges/ClosedDoubleRange;", "Lkotlin/ranges/ClosedFloatingPointRange;", "", FirebaseAnalytics.Param.VALUE, "", "contains", "(D)Z", "", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "isEmpty", "()Z", "a", "b", "lessThanOrEquals", "(DD)Z", "", "toString", "()Ljava/lang/String;", "_endInclusive", "D", "_start", "getEndInclusive", "()Ljava/lang/Double;", "endInclusive", "getStart", "start", "<init>", "(DD)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/ClosedDoubleRange.class */
final class ClosedDoubleRange implements ClosedFloatingPointRange<Double> {

    /* renamed from: f */
    private final double f20788f;

    /* renamed from: g */
    private final double f20789g;

    @NotNull
    /* renamed from: a */
    public Double mo1694e() {
        return Double.valueOf(this.f20789g);
    }

    @NotNull
    /* renamed from: b */
    public Double mo1695c() {
        return Double.valueOf(this.f20788f);
    }

    /* renamed from: d */
    public boolean m1744d() {
        return this.f20788f > this.f20789g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        if (r5.f20789g == r0.f20789g) goto L_0x0037;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof kotlin.ranges.ClosedDoubleRange
            if (r0 == 0) goto L_0x003d
            r0 = r5
            boolean r0 = r0.m1744d()
            if (r0 == 0) goto L_0x0018
            r0 = r6
            kotlin.ranges.ClosedDoubleRange r0 = (kotlin.ranges.ClosedDoubleRange) r0
            boolean r0 = r0.m1744d()
            if (r0 != 0) goto L_0x0037
        L_0x0018:
            r0 = r5
            double r0 = r0.f20788f
            r7 = r0
            r0 = r6
            kotlin.ranges.ClosedDoubleRange r0 = (kotlin.ranges.ClosedDoubleRange) r0
            r6 = r0
            r0 = r7
            r1 = r6
            double r1 = r1.f20788f
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003d
            r0 = r5
            double r0 = r0.f20789g
            r1 = r6
            double r1 = r1.f20789g
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
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.ClosedDoubleRange.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return m1744d() ? -1 : (Double.valueOf(this.f20788f).hashCode() * 31) + Double.valueOf(this.f20789g).hashCode();
    }

    @NotNull
    public String toString() {
        return this.f20788f + ".." + this.f20789g;
    }
}
