package p067i.p068a.p082d.p084d;

import java.util.concurrent.atomic.AtomicLong;
import p067i.p068a.p082d.p083c.AbstractC2083d;
/* renamed from: i.a.d.d.f */
/* loaded from: classes2-dex2jar.jar:i/a/d/d/f.class */
public class C2090f {

    /* renamed from: a */
    private final AbstractC2083d f5690a;

    /* renamed from: b */
    private final double f5691b;

    /* renamed from: c */
    private final long f5692c;

    /* renamed from: d */
    private final AtomicLong f5693d;

    public C2090f(double d, double d2, AbstractC2083d abstractC2083d) {
        this.f5690a = abstractC2083d;
        double d3 = d / 1.0E9d;
        this.f5691b = d3;
        long j = (long) (d2 / d3);
        this.f5692c = j;
        this.f5693d = new AtomicLong(abstractC2083d.m260a() - j);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* renamed from: a */
    public boolean m241a(double d) {
        long j;
        long m260a;
        long j2;
        long j3 = (long) (d / this.f5691b);
        do {
            j = this.f5693d.get();
            m260a = this.f5690a.m260a();
            ?? r0 = m260a - j;
            ?? r02 = this.f5692c;
            char c = r0;
            if (r0 > r02) {
                c = r02;
            }
            j2 = c - j3;
            if (j2 < 0) {
                return false;
            }
        } while (!this.f5693d.compareAndSet(j, m260a - j2));
        return true;
    }
}
