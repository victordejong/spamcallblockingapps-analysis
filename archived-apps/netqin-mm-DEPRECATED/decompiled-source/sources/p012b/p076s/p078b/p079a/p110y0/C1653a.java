package p012b.p076s.p078b.p079a.p110y0;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.AbstractC1162b;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p102w0.p104m0.AbstractC1590d;
import p012b.p076s.p078b.p079a.p102w0.p104m0.AbstractC1591e;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1668i;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1679c;
/* renamed from: b.s.b.a.y0.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/y0/a.class */
public class C1653a extends AbstractC1658b {

    /* renamed from: g */
    public final AbstractC1655b f6806g;

    /* renamed from: h */
    public final long f6807h;

    /* renamed from: i */
    public final long f6808i;

    /* renamed from: j */
    public final float f6809j;

    /* renamed from: k */
    public final AbstractC1162b f6810k;

    /* renamed from: l */
    public final Format[] f6811l;

    /* renamed from: m */
    public final int[] f6812m;

    /* renamed from: n */
    public final int[] f6813n;

    /* renamed from: o */
    public AbstractC1666g f6814o;

    /* renamed from: p */
    public float f6815p;

    /* renamed from: q */
    public int f6816q;

    /* renamed from: r */
    public int f6817r;

    /* renamed from: b.s.b.a.y0.a$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/y0/a$b.class */
    public interface AbstractC1655b {
        /* renamed from: a */
        long mo32445a();
    }

    /* renamed from: b.s.b.a.y0.a$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/y0/a$c.class */
    public static final class C1656c implements AbstractC1655b {

        /* renamed from: a */
        public final AbstractC1679c f6818a;

        /* renamed from: b */
        public final float f6819b;

        /* renamed from: c */
        public long f6820c;

        /* renamed from: d */
        public long[][] f6821d;

        public C1656c(AbstractC1679c cVar, float f) {
            this.f6818a = cVar;
            this.f6819b = f;
        }

        @Override // p012b.p076s.p078b.p079a.p110y0.C1653a.AbstractC1655b
        /* renamed from: a */
        public long mo32445a() {
            long max = Math.max(0L, (((float) this.f6818a.mo32365b()) * this.f6819b) - this.f6820c);
            if (this.f6821d == null) {
                return max;
            }
            int i = 1;
            while (true) {
                long[][] jArr = this.f6821d;
                if (i >= jArr.length - 1 || jArr[i][0] >= max) {
                    break;
                }
                i++;
            }
            long[][] jArr2 = this.f6821d;
            long[] jArr3 = jArr2[i - 1];
            long[] jArr4 = jArr2[i];
            return jArr3[1] + ((((float) (max - jArr3[0])) / ((float) (jArr4[0] - jArr3[0]))) * ((float) (jArr4[1] - jArr3[1])));
        }

        /* renamed from: a */
        public void m32444a(long j) {
            this.f6820c = j;
        }

        /* renamed from: a */
        public void m32443a(long[][] jArr) {
            C1160a.m34520a(jArr.length >= 2);
            this.f6821d = jArr;
        }
    }

    /* renamed from: b.s.b.a.y0.a$d */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/y0/a$d.class */
    public static class C1657d implements AbstractC1668i.AbstractC1670b {

        /* renamed from: a */
        public final AbstractC1679c f6822a;

        /* renamed from: b */
        public final int f6823b;

        /* renamed from: c */
        public final int f6824c;

        /* renamed from: d */
        public final int f6825d;

        /* renamed from: e */
        public final float f6826e;

        /* renamed from: f */
        public final float f6827f;

        /* renamed from: g */
        public final long f6828g;

        /* renamed from: h */
        public final AbstractC1162b f6829h;

        /* renamed from: i */
        public AbstractC1666g f6830i;

        /* renamed from: j */
        public boolean f6831j;

        public C1657d() {
            this(10000, 25000, 25000, 0.75f, 0.75f, 2000L, AbstractC1162b.f4682a);
        }

        public C1657d(int i, int i2, int i3, float f, float f2, long j, AbstractC1162b bVar) {
            this(null, i, i2, i3, f, f2, j, bVar);
        }

        @Deprecated
        public C1657d(AbstractC1679c cVar, int i, int i2, int i3, float f, float f2, long j, AbstractC1162b bVar) {
            this.f6822a = cVar;
            this.f6823b = i;
            this.f6824c = i2;
            this.f6825d = i3;
            this.f6826e = f;
            this.f6827f = f2;
            this.f6828g = j;
            this.f6829h = bVar;
            this.f6830i = AbstractC1666g.f6846a;
        }

        /* renamed from: a */
        public C1653a m32442a(TrackGroup trackGroup, AbstractC1679c cVar, int[] iArr) {
            return new C1653a(trackGroup, iArr, new C1656c(cVar, this.f6826e), this.f6823b, this.f6824c, this.f6825d, this.f6827f, this.f6828g, this.f6829h);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v19, types: [long[], long[][]] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i.AbstractC1670b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final p012b.p076s.p078b.p079a.p110y0.AbstractC1668i[] mo32409a(p012b.p076s.p078b.p079a.p110y0.AbstractC1668i.C1669a[] r10, p012b.p076s.p078b.p079a.p111z0.AbstractC1679c r11) {
            /*
                Method dump skipped, instructions count: 399
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p110y0.C1653a.C1657d.mo32409a(b.s.b.a.y0.i$a[], b.s.b.a.z0.c):b.s.b.a.y0.i[]");
        }
    }

    public C1653a(TrackGroup trackGroup, int[] iArr, AbstractC1655b bVar, long j, long j2, long j3, float f, long j4, AbstractC1162b bVar2) {
        super(trackGroup, iArr);
        this.f6806g = bVar;
        this.f6807h = j * 1000;
        this.f6808i = j2 * 1000;
        this.f6809j = f;
        this.f6810k = bVar2;
        this.f6815p = 1.0f;
        this.f6817r = 0;
        this.f6814o = AbstractC1666g.f6846a;
        int i = this.f6833b;
        this.f6811l = new Format[i];
        this.f6812m = new int[i];
        this.f6813n = new int[i];
        for (int i2 = 0; i2 < this.f6833b; i2++) {
            Format a = mo32423a(i2);
            Format[] formatArr = this.f6811l;
            formatArr[i2] = a;
            this.f6812m[i2] = formatArr[i2].f1558e;
        }
    }

    /* renamed from: a */
    public static int m32453a(double[][] dArr) {
        int i = 0;
        for (double[] dArr2 : dArr) {
            i += dArr2.length;
        }
        return i;
    }

    /* renamed from: a */
    public static void m32451a(long[][][] jArr, int i, long[][] jArr2, int[] iArr) {
        long j = 0;
        for (int i2 = 0; i2 < jArr.length; i2++) {
            jArr[i2][i][1] = jArr2[i2][iArr[i2]];
            j += jArr[i2][i][1];
        }
        for (long[][] jArr3 : jArr) {
            jArr3[i][0] = j;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [double[], double[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double[][] m32449b(double[][] r9) {
        /*
            r0 = r9
            int r0 = r0.length
            double[] r0 = new double[r0]
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x0008:
            r0 = r11
            r1 = r9
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0084
            r0 = r10
            r1 = r11
            r2 = r9
            r3 = r11
            r2 = r2[r3]
            int r2 = r2.length
            r3 = 1
            int r2 = r2 - r3
            double[] r2 = new double[r2]
            r0[r1] = r2
            r0 = r10
            r1 = r11
            r0 = r0[r1]
            int r0 = r0.length
            if (r0 != 0) goto L_0x0023
            goto L_0x007e
        L_0x0023:
            r0 = r9
            r1 = r11
            r0 = r0[r1]
            r1 = r9
            r2 = r11
            r1 = r1[r2]
            int r1 = r1.length
            r2 = 1
            int r1 = r1 - r2
            r0 = r0[r1]
            r12 = r0
            r0 = r9
            r1 = r11
            r0 = r0[r1]
            r1 = 0
            r0 = r0[r1]
            r14 = r0
            r0 = 0
            r16 = r0
        L_0x0038:
            r0 = r16
            r1 = r9
            r2 = r11
            r1 = r1[r2]
            int r1 = r1.length
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L_0x007e
            r0 = r9
            r1 = r11
            r0 = r0[r1]
            r1 = r16
            r0 = r0[r1]
            r17 = r0
            r0 = r9
            r1 = r11
            r0 = r0[r1]
            r19 = r0
            r0 = r16
            r1 = 1
            int r0 = r0 + r1
            r20 = r0
            r0 = r19
            r1 = r20
            r0 = r0[r1]
            r21 = r0
            r0 = r10
            r1 = r11
            r0 = r0[r1]
            r1 = r16
            r2 = r17
            r3 = r21
            double r2 = r2 + r3
            r3 = 4602678819172646912(0x3fe0000000000000, double:0.5)
            double r2 = r2 * r3
            r3 = r9
            r4 = r11
            r3 = r3[r4]
            r4 = 0
            r3 = r3[r4]
            double r2 = r2 - r3
            r3 = r12
            r4 = r14
            double r3 = r3 - r4
            double r2 = r2 / r3
            r0[r1] = r2
            r0 = r20
            r16 = r0
            goto L_0x0038
        L_0x007e:
            int r11 = r11 + 1
            goto L_0x0008
        L_0x0084:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p110y0.C1653a.m32449b(double[][]):double[][]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [double[][]] */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v44, types: [double] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [double] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long[][][] m32447c(long[][] r7) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p110y0.C1653a.m32447c(long[][]):long[][][]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [double[], double[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double[][] m32446d(long[][] r5) {
        /*
            r0 = r5
            int r0 = r0.length
            double[] r0 = new double[r0]
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x0008:
            r0 = r7
            r1 = r5
            int r1 = r1.length
            if (r0 >= r1) goto L_0x003b
            r0 = r6
            r1 = r7
            r2 = r5
            r3 = r7
            r2 = r2[r3]
            int r2 = r2.length
            double[] r2 = new double[r2]
            r0[r1] = r2
            r0 = 0
            r8 = r0
        L_0x0019:
            r0 = r8
            r1 = r5
            r2 = r7
            r1 = r1[r2]
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0035
            r0 = r6
            r1 = r7
            r0 = r0[r1]
            r1 = r8
            r2 = r5
            r3 = r7
            r2 = r2[r3]
            r3 = r8
            r2 = r2[r3]
            double r2 = (double) r2
            double r2 = java.lang.Math.log(r2)
            r0[r1] = r2
            int r8 = r8 + 1
            goto L_0x0019
        L_0x0035:
            int r7 = r7 + 1
            goto L_0x0008
        L_0x003b:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p110y0.C1653a.m32446d(long[][]):double[][]");
    }

    /* renamed from: a */
    public final int m32456a(long j, int[] iArr) {
        long a = this.f6806g.mo32445a();
        int i = 0;
        for (int i2 = 0; i2 < this.f6833b; i2++) {
            if (j == Long.MIN_VALUE || !m32440b(i2, j)) {
                if (m32455a(mo32423a(i2), iArr[i2], this.f6815p, a)) {
                    return i2;
                }
                i = i2;
            }
        }
        return i;
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1658b, p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: a */
    public void mo32424a(float f) {
        this.f6815p = f;
    }

    /* renamed from: a */
    public void m32457a(long j) {
        ((C1656c) this.f6806g).m32444a(j);
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1658b, p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: a */
    public void mo32420a(long j, long j2, long j3, List<? extends AbstractC1590d> list, AbstractC1591e[] eVarArr) {
        long a = this.f6810k.mo34313a();
        this.f6814o.mo32429a(this.f6811l, list, eVarArr, this.f6813n);
        if (this.f6817r == 0) {
            this.f6817r = 1;
            this.f6816q = m32456a(a, this.f6813n);
            return;
        }
        int i = this.f6816q;
        int a2 = m32456a(a, this.f6813n);
        this.f6816q = a2;
        if (a2 != i) {
            if (!m32440b(i, a)) {
                Format a3 = mo32423a(i);
                Format a4 = mo32423a(this.f6816q);
                if (a4.f1558e > a3.f1558e && j2 < m32450b(j3)) {
                    this.f6816q = i;
                } else if (a4.f1558e < a3.f1558e && j2 >= this.f6808i) {
                    this.f6816q = i;
                }
            }
            if (this.f6816q != i) {
                this.f6817r = 3;
            }
        }
    }

    /* renamed from: a */
    public void m32454a(AbstractC1666g gVar) {
        this.f6814o = gVar;
    }

    /* renamed from: a */
    public void m32452a(long[][] jArr) {
        ((C1656c) this.f6806g).m32443a(jArr);
    }

    /* renamed from: a */
    public boolean m32455a(Format format, int i, float f, long j) {
        return ((long) Math.round(((float) i) * f)) <= j;
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: b */
    public int mo32419b() {
        return this.f6816q;
    }

    /* renamed from: b */
    public final long m32450b(long j) {
        return (j > (-9223372036854775807L) ? 1 : (j == (-9223372036854775807L) ? 0 : -1)) != 0 && (j > this.f6807h ? 1 : (j == this.f6807h ? 0 : -1)) <= 0 ? ((float) j) * this.f6809j : this.f6807h;
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1658b, p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: c */
    public void mo32417c() {
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: h */
    public int mo32411h() {
        return this.f6817r;
    }

    @Override // p012b.p076s.p078b.p079a.p110y0.AbstractC1668i
    /* renamed from: i */
    public Object mo32410i() {
        return null;
    }
}
