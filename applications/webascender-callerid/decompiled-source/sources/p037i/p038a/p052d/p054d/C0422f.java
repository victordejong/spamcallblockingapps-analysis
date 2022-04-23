package p037i.p038a.p052d.p054d;

import java.util.concurrent.atomic.AtomicLong;
import p037i.p038a.p052d.p053c.AbstractC0415d;
/* renamed from: i.a.d.d.f */
/* loaded from: classes2-dex2jar.jar:i/a/d/d/f.class */
public class C0422f {

    /* renamed from: a */
    private final AbstractC0415d f1011a;

    /* renamed from: b */
    private final double f1012b;

    /* renamed from: c */
    private final long f1013c;

    /* renamed from: d */
    private final AtomicLong f1014d;

    public C0422f(double d, double d2, AbstractC0415d dVar) {
        this.f1011a = dVar;
        double d3 = d / 1.0E9d;
        this.f1012b = d3;
        long j = (long) (d2 / d3);
        this.f1013c = j;
        this.f1014d = new AtomicLong(dVar.m260a() - j);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m241a(double r9) {
        /*
            r8 = this;
            r0 = r9
            r1 = r8
            double r1 = r1.f1012b
            double r0 = r0 / r1
            long r0 = (long) r0
            r11 = r0
        L_0x0008:
            r0 = r8
            java.util.concurrent.atomic.AtomicLong r0 = r0.f1014d
            long r0 = r0.get()
            r13 = r0
            r0 = r8
            i.a.d.c.d r0 = r0.f1011a
            long r0 = r0.m260a()
            r15 = r0
            r0 = r15
            r1 = r13
            long r0 = r0 - r1
            r17 = r0
            r0 = r8
            long r0 = r0.f1013c
            r19 = r0
            r0 = r17
            r21 = r0
            r0 = r17
            r1 = r19
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0039
            r0 = r19
            r21 = r0
        L_0x0039:
            r0 = r21
            r1 = r11
            long r0 = r0 - r1
            r21 = r0
            r0 = r21
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0048
            r0 = 0
            return r0
        L_0x0048:
            r0 = r8
            java.util.concurrent.atomic.AtomicLong r0 = r0.f1014d
            r1 = r13
            r2 = r15
            r3 = r21
            long r2 = r2 - r3
            boolean r0 = r0.compareAndSet(r1, r2)
            if (r0 == 0) goto L_0x0008
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p037i.p038a.p052d.p054d.C0422f.m241a(double):boolean");
    }
}
