package p131c.p161d.p266c.p272f;

import com.google.common.math.Stats;
import com.google.common.primitives.Doubles;
import java.util.Iterator;
/* renamed from: c.d.c.f.f */
/* loaded from: classes2-dex2jar.jar:c/d/c/f/f.class */
public final class C5067f {

    /* renamed from: a */
    public long f17656a = 0;

    /* renamed from: b */
    public double f17657b = 0.0d;

    /* renamed from: c */
    public double f17658c = 0.0d;

    /* renamed from: d */
    public double f17659d = Double.NaN;

    /* renamed from: e */
    public double f17660e = Double.NaN;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: a */
    public static double m24570a(double d, double d2) {
        if (Doubles.m7866b(d)) {
            return d2;
        }
        double d3 = d;
        if (!Doubles.m7866b(d2)) {
            d3 = d == d2 ? d : 9221120237041090560;
        }
        return d3;
    }

    /* renamed from: a */
    public Stats m24572a() {
        return new Stats(this.f17656a, this.f17657b, this.f17658c, this.f17659d, this.f17660e);
    }

    /* renamed from: a */
    public void m24571a(double d) {
        long j = this.f17656a;
        if (j == 0) {
            this.f17656a = 1L;
            this.f17657b = d;
            this.f17659d = d;
            this.f17660e = d;
            if (!Doubles.m7866b(d)) {
                this.f17658c = Double.NaN;
                return;
            }
            return;
        }
        this.f17656a = j + 1;
        if (!Doubles.m7866b(d) || !Doubles.m7866b(this.f17657b)) {
            this.f17657b = m24570a(this.f17657b, d);
            this.f17658c = Double.NaN;
        } else {
            double d2 = this.f17657b;
            double d3 = d - d2;
            double d4 = this.f17656a;
            Double.isNaN(d4);
            double d5 = d2 + (d3 / d4);
            this.f17657b = d5;
            this.f17658c += d3 * (d - d5);
        }
        this.f17659d = Math.min(this.f17659d, d);
        this.f17660e = Math.max(this.f17660e, d);
    }

    /* renamed from: a */
    public void m24569a(Iterable<? extends Number> iterable) {
        for (Number number : iterable) {
            m24571a(number.doubleValue());
        }
    }

    /* renamed from: a */
    public void m24568a(Iterator<? extends Number> it) {
        while (it.hasNext()) {
            m24571a(((Number) it.next()).doubleValue());
        }
    }

    /* renamed from: a */
    public void m24567a(double... dArr) {
        for (double d : dArr) {
            m24571a(d);
        }
    }

    /* renamed from: a */
    public void m24566a(int... iArr) {
        for (int i : iArr) {
            m24571a(i);
        }
    }

    /* renamed from: a */
    public void m24565a(long... jArr) {
        for (long j : jArr) {
            m24571a(j);
        }
    }
}
