package p131c.p161d.p170b.p188c.p198d1;

import com.google.android.exoplayer2.source.TrackGroup;
import p131c.p161d.p170b.p188c.p198d1.AbstractC2780f;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2822f;
import p131c.p161d.p170b.p188c.p203g1.AbstractC2882g;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
/* renamed from: c.d.b.c.d1.a */
/* loaded from: classes-dex2jar.jar:c/d/b/c/d1/a.class */
public class C2768a extends AbstractC2773b {

    /* renamed from: f */
    public final AbstractC2770b f10107f;

    /* renamed from: g */
    public int f10108g;

    /* renamed from: c.d.b.c.d1.a$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/d1/a$b.class */
    public interface AbstractC2770b {
    }

    /* renamed from: c.d.b.c.d1.a$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/d1/a$c.class */
    public static final class C2771c implements AbstractC2770b {
        public C2771c(AbstractC2822f fVar, float f, long j) {
        }

        /* renamed from: a */
        public void m29043a(long[][] jArr) {
            C2877e.m28734a(jArr.length >= 2);
        }
    }

    /* renamed from: c.d.b.c.d1.a$d */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/d1/a$d.class */
    public static class C2772d implements AbstractC2780f.AbstractC2782b {

        /* renamed from: a */
        public final AbstractC2822f f10109a;

        /* renamed from: b */
        public final int f10110b;

        /* renamed from: c */
        public final int f10111c;

        /* renamed from: d */
        public final int f10112d;

        /* renamed from: e */
        public final float f10113e;

        /* renamed from: f */
        public final float f10114f;

        /* renamed from: g */
        public final long f10115g;

        /* renamed from: h */
        public final AbstractC2882g f10116h;

        public C2772d() {
            this(10000, 25000, 25000, 0.7f, 0.75f, 2000L, AbstractC2882g.f10473a);
        }

        public C2772d(int i, int i2, int i3, float f, float f2, long j, AbstractC2882g gVar) {
            this(null, i, i2, i3, f, f2, j, gVar);
        }

        @Deprecated
        public C2772d(AbstractC2822f fVar, int i, int i2, int i3, float f, float f2, long j, AbstractC2882g gVar) {
            this.f10109a = fVar;
            this.f10110b = i;
            this.f10111c = i2;
            this.f10112d = i3;
            this.f10113e = f;
            this.f10114f = f2;
            this.f10115g = j;
            this.f10116h = gVar;
        }

        /* renamed from: a */
        public C2768a m29042a(TrackGroup trackGroup, AbstractC2822f fVar, int[] iArr, int i) {
            return new C2768a(trackGroup, iArr, new C2771c(fVar, this.f10113e, i), this.f10110b, this.f10111c, this.f10112d, this.f10114f, this.f10115g, this.f10116h);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v19, types: [long[], long[][]] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2780f.AbstractC2782b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final p131c.p161d.p170b.p188c.p198d1.AbstractC2780f[] mo29021a(p131c.p161d.p170b.p188c.p198d1.AbstractC2780f.C2781a[] r10, p131c.p161d.p170b.p188c.p201f1.AbstractC2822f r11) {
            /*
                Method dump skipped, instructions count: 381
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p198d1.C2768a.C2772d.mo29021a(c.d.b.c.d1.f$a[], c.d.b.c.f1.f):c.d.b.c.d1.f[]");
        }
    }

    public C2768a(TrackGroup trackGroup, int[] iArr, AbstractC2770b bVar, long j, long j2, long j3, float f, long j4, AbstractC2882g gVar) {
        super(trackGroup, iArr);
        this.f10107f = bVar;
    }

    /* renamed from: a */
    public static int m29050a(double[][] dArr) {
        int i = 0;
        for (double[] dArr2 : dArr) {
            i += dArr2.length;
        }
        return i;
    }

    /* renamed from: a */
    public static void m29048a(long[][][] jArr, int i, long[][] jArr2, int[] iArr) {
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
    public static double[][] m29047b(double[][] r5) {
        /*
            Method dump skipped, instructions count: 150
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p198d1.C2768a.m29047b(double[][]):double[][]");
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
    public static long[][][] m29045c(long[][] r7) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p198d1.C2768a.m29045c(long[][]):long[][][]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [double[], double[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static double[][] m29044d(long[][] r5) {
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
            if (r0 >= r1) goto L_0x0055
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
            if (r0 >= r1) goto L_0x004f
            r0 = r6
            r1 = r7
            r0 = r0[r1]
            r9 = r0
            r0 = r5
            r1 = r7
            r0 = r0[r1]
            r1 = r8
            r0 = r0[r1]
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0038
            r0 = 0
            r10 = r0
            goto L_0x0043
        L_0x0038:
            r0 = r5
            r1 = r7
            r0 = r0[r1]
            r1 = r8
            r0 = r0[r1]
            double r0 = (double) r0
            double r0 = java.lang.Math.log(r0)
            r10 = r0
        L_0x0043:
            r0 = r9
            r1 = r8
            r2 = r10
            r0[r1] = r2
            int r8 = r8 + 1
            goto L_0x0019
        L_0x004f:
            int r7 = r7 + 1
            goto L_0x0008
        L_0x0055:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p198d1.C2768a.m29044d(long[][]):double[][]");
    }

    @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2773b, p131c.p161d.p170b.p188c.p198d1.AbstractC2780f
    /* renamed from: a */
    public void mo29029a(float f) {
    }

    /* renamed from: a */
    public void m29049a(long[][] jArr) {
        ((C2771c) this.f10107f).m29043a(jArr);
    }

    @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2780f
    /* renamed from: b */
    public int mo29027b() {
        return this.f10108g;
    }

    @Override // p131c.p161d.p170b.p188c.p198d1.AbstractC2773b, p131c.p161d.p170b.p188c.p198d1.AbstractC2780f
    /* renamed from: c */
    public void mo29025c() {
    }
}
