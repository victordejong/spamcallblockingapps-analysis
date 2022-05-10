package p131c.p161d.p170b.p188c.p210w0.p213t;

import java.io.IOException;
import java.util.ArrayDeque;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
/* renamed from: c.d.b.c.w0.t.b */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/t/b.class */
public final class C3064b implements AbstractC3068d {

    /* renamed from: a */
    public final byte[] f11051a = new byte[8];

    /* renamed from: b */
    public final ArrayDeque<C3066b> f11052b = new ArrayDeque<>();

    /* renamed from: c */
    public final C3075g f11053c = new C3075g();

    /* renamed from: d */
    public AbstractC3067c f11054d;

    /* renamed from: e */
    public int f11055e;

    /* renamed from: f */
    public int f11056f;

    /* renamed from: g */
    public long f11057g;

    /* renamed from: c.d.b.c.w0.t.b$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/t/b$b.class */
    public static final class C3066b {

        /* renamed from: a */
        public final int f11058a;

        /* renamed from: b */
        public final long f11059b;

        public C3066b(int i, long j) {
            this.f11058a = i;
            this.f11059b = j;
        }
    }

    /* renamed from: a */
    public final double m28002a(AbstractC3043h hVar, int i) throws IOException, InterruptedException {
        long b = m28000b(hVar, i);
        return i == 4 ? Float.intBitsToFloat((int) b) : Double.longBitsToDouble(b);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p213t.AbstractC3068d
    /* renamed from: a */
    public void mo27996a() {
        this.f11055e = 0;
        this.f11052b.clear();
        this.f11053c.m27940b();
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p213t.AbstractC3068d
    /* renamed from: a */
    public void mo27994a(AbstractC3067c cVar) {
        this.f11054d = cVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [long] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p131c.p161d.p170b.p188c.p210w0.p213t.AbstractC3068d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo27995a(p131c.p161d.p170b.p188c.p210w0.AbstractC3043h r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 596
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p213t.C3064b.mo27995a(c.d.b.c.w0.h):boolean");
    }

    /* renamed from: b */
    public final long m28001b(AbstractC3043h hVar) throws IOException, InterruptedException {
        hVar.mo28050c();
        while (true) {
            hVar.mo28055a(this.f11051a, 0, 4);
            int a = C3075g.m27943a(this.f11051a[0]);
            if (a != -1 && a <= 4) {
                int a2 = (int) C3075g.m27941a(this.f11051a, a, false);
                if (this.f11054d.mo27959c(a2)) {
                    hVar.mo28049c(a);
                    return a2;
                }
            }
            hVar.mo28049c(1);
        }
    }

    /* renamed from: b */
    public final long m28000b(AbstractC3043h hVar, int i) throws IOException, InterruptedException {
        hVar.readFully(this.f11051a, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.f11051a[i2] & 255);
        }
        return j;
    }

    /* renamed from: c */
    public final String m27999c(AbstractC3043h hVar, int i) throws IOException, InterruptedException {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        hVar.readFully(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new String(bArr, 0, i);
    }
}
