package p012b.p076s.p078b.p079a.p102w0;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import java.io.IOException;
import p012b.p076s.p078b.p079a.C1244l0;
import p012b.p076s.p078b.p079a.C1531w;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1178m;
import p012b.p076s.p078b.p079a.p084q0.C1311d;
import p012b.p076s.p078b.p079a.p102w0.AbstractC1631p;
import p012b.p076s.p078b.p079a.p110y0.AbstractC1668i;
/* renamed from: b.s.b.a.w0.c */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/c.class */
public final class C1540c implements AbstractC1631p, AbstractC1631p.AbstractC1632a {

    /* renamed from: a */
    public final AbstractC1631p f6267a;

    /* renamed from: b */
    public AbstractC1631p.AbstractC1632a f6268b;

    /* renamed from: c */
    public C1541a[] f6269c = new C1541a[0];

    /* renamed from: d */
    public long f6270d;

    /* renamed from: e */
    public long f6271e;

    /* renamed from: f */
    public long f6272f;

    /* renamed from: b.s.b.a.w0.c$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/c$a.class */
    public final class C1541a implements AbstractC1563h0 {

        /* renamed from: a */
        public final AbstractC1563h0 f6273a;

        /* renamed from: b */
        public boolean f6274b;

        public C1541a(AbstractC1563h0 h0Var) {
            this.f6273a = h0Var;
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0
        /* renamed from: a */
        public int mo32674a(long j) {
            if (C1540c.this.m32918c()) {
                return -3;
            }
            return this.f6273a.mo32674a(j);
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0
        /* renamed from: a */
        public int mo32673a(C1531w wVar, C1311d dVar, boolean z) {
            if (C1540c.this.m32918c()) {
                return -3;
            }
            if (this.f6274b) {
                dVar.m33741c(4);
                return -4;
            }
            int a = this.f6273a.mo32673a(wVar, dVar, z);
            if (a == -5) {
                Format format = wVar.f6243a;
                C1160a.m34522a(format);
                Format format2 = format;
                if (format2.f1578y == 0 && format2.f1579z == 0) {
                    return -5;
                }
                int i = 0;
                int i2 = C1540c.this.f6271e != 0 ? 0 : format2.f1578y;
                if (C1540c.this.f6272f == Long.MIN_VALUE) {
                    i = format2.f1579z;
                }
                wVar.f6243a = format2.m38192a(i2, i);
                return -5;
            }
            long j = C1540c.this.f6272f;
            if (j == Long.MIN_VALUE || ((a != -4 || dVar.f5246d < j) && (a != -3 || C1540c.this.mo32515b() != Long.MIN_VALUE))) {
                return a;
            }
            dVar.mo33734a();
            dVar.m33741c(4);
            this.f6274b = true;
            return -4;
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0
        /* renamed from: a */
        public void mo32675a() throws IOException {
            this.f6273a.mo32675a();
        }

        @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0
        /* renamed from: b */
        public boolean mo32672b() {
            return !C1540c.this.m32918c() && this.f6273a.mo32672b();
        }

        /* renamed from: c */
        public void m32917c() {
            this.f6274b = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    public C1540c(AbstractC1631p pVar, boolean z, long j, long j2) {
        this.f6267a = pVar;
        this.f6270d = z ? j : -9223372036854775807;
        this.f6271e = j;
        this.f6272f = j2;
    }

    /* renamed from: a */
    public static boolean m32921a(long j, AbstractC1668i[] iVarArr) {
        if (j == 0) {
            return false;
        }
        for (AbstractC1668i iVar : iVarArr) {
            if (!(iVar == null || C1178m.m34400j(iVar.mo32415d().f1562i))) {
                return true;
            }
        }
        return false;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p, p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: a */
    public long mo32521a() {
        long a = this.f6267a.mo32521a();
        if (a == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        long j = this.f6272f;
        if (j == Long.MIN_VALUE || a < j) {
            return a;
        }
        return Long.MIN_VALUE;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: a */
    public long mo32519a(long j, C1244l0 l0Var) {
        long j2 = this.f6271e;
        if (j == j2) {
            return j2;
        }
        return this.f6267a.mo32519a(j, m32920b(j, l0Var));
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00be, code lost:
        if (r0 > r0) goto L_0x00c4;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00dd  */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo32516a(p012b.p076s.p078b.p079a.p110y0.AbstractC1668i[] r9, boolean[] r10, p012b.p076s.p078b.p079a.p102w0.AbstractC1563h0[] r11, boolean[] r12, long r13) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1540c.mo32516a(b.s.b.a.y0.i[], boolean[], b.s.b.a.w0.h0[], boolean[], long):long");
    }

    /* renamed from: a */
    public void m32922a(long j, long j2) {
        this.f6271e = j;
        this.f6272f = j2;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: a */
    public void mo32518a(long j, boolean z) {
        this.f6267a.mo32518a(j, z);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: a */
    public void mo32517a(AbstractC1631p.AbstractC1632a aVar, long j) {
        this.f6268b = aVar;
        this.f6267a.mo32517a(this, j);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p.AbstractC1632a
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo32509a(AbstractC1631p pVar) {
        AbstractC1631p.AbstractC1632a aVar = this.f6268b;
        C1160a.m34522a(aVar);
        aVar.mo32509a((AbstractC1631p) this);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p, p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: a */
    public boolean mo32520a(long j) {
        return this.f6267a.mo32520a(j);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p, p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: b */
    public long mo32515b() {
        long b = this.f6267a.mo32515b();
        if (b == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        long j = this.f6272f;
        if (j == Long.MIN_VALUE || b < j) {
            return b;
        }
        return Long.MIN_VALUE;
    }

    /* renamed from: b */
    public final C1244l0 m32920b(long j, C1244l0 l0Var) {
        long b = C1167d0.m34455b(l0Var.f4944a, 0L, j - this.f6271e);
        long j2 = l0Var.f4945b;
        long j3 = this.f6272f;
        long b2 = C1167d0.m34455b(j2, 0L, j3 == Long.MIN_VALUE ? Long.MAX_VALUE : j3 - j);
        return (b == l0Var.f4944a && b2 == l0Var.f4945b) ? l0Var : new C1244l0(b, b2);
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p, p012b.p076s.p078b.p079a.p102w0.AbstractC1573i0
    /* renamed from: b */
    public void mo32514b(long j) {
        this.f6267a.mo32514b(j);
    }

    /* renamed from: b */
    public void mo32686a(AbstractC1631p pVar) {
        AbstractC1631p.AbstractC1632a aVar = this.f6268b;
        C1160a.m34522a(aVar);
        aVar.mo32686a((AbstractC1631p.AbstractC1632a) this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0069, code lost:
        if (r0 <= r0) goto L_0x006c;
     */
    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo32513c(long r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f6270d = r1
            r0 = r5
            b.s.b.a.w0.c$a[] r0 = r0.f6269c
            r8 = r0
            r0 = r8
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x0016:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L_0x0033
            r0 = r8
            r1 = r11
            r0 = r0[r1]
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L_0x002d
            r0 = r12
            r0.m32917c()
        L_0x002d:
            int r11 = r11 + 1
            goto L_0x0016
        L_0x0033:
            r0 = r5
            b.s.b.a.w0.p r0 = r0.f6267a
            r1 = r6
            long r0 = r0.mo32513c(r1)
            r13 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x006c
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r5
            long r1 = r1.f6271e
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x006f
            r0 = r5
            long r0 = r0.f6272f
            r6 = r0
            r0 = r6
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x006c
            r0 = r10
            r15 = r0
            r0 = r13
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x006f
        L_0x006c:
            r0 = 1
            r15 = r0
        L_0x006f:
            r0 = r15
            p012b.p076s.p078b.p079a.p080a1.C1160a.m34518b(r0)
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1540c.mo32513c(long):long");
    }

    /* renamed from: c */
    public boolean m32918c() {
        return this.f6270d != -9223372036854775807L;
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: d */
    public void mo32512d() throws IOException {
        this.f6267a.mo32512d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r6v2, types: [long] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo32511f() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.m32918c()
            if (r0 == 0) goto L_0x0024
            r0 = r5
            long r0 = r0.f6270d
            r6 = r0
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f6270d = r1
            r0 = r5
            long r0 = r0.mo32511f()
            r8 = r0
            r0 = r8
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0022
            r0 = r8
            r6 = r0
        L_0x0022:
            r0 = r6
            return r0
        L_0x0024:
            r0 = r5
            b.s.b.a.w0.p r0 = r0.f6267a
            long r0 = r0.mo32511f()
            r6 = r0
            r0 = r6
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003a
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            return r0
        L_0x003a:
            r0 = r5
            long r0 = r0.f6271e
            r8 = r0
            r0 = 1
            r10 = r0
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x004e
            r0 = 1
            r11 = r0
            goto L_0x0051
        L_0x004e:
            r0 = 0
            r11 = r0
        L_0x0051:
            r0 = r11
            p012b.p076s.p078b.p079a.p080a1.C1160a.m34518b(r0)
            r0 = r5
            long r0 = r0.f6272f
            r8 = r0
            r0 = r10
            r11 = r0
            r0 = r8
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0077
            r0 = r6
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0074
            r0 = r10
            r11 = r0
            goto L_0x0077
        L_0x0074:
            r0 = 0
            r11 = r0
        L_0x0077:
            r0 = r11
            p012b.p076s.p078b.p079a.p080a1.C1160a.m34518b(r0)
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1540c.mo32511f():long");
    }

    @Override // p012b.p076s.p078b.p079a.p102w0.AbstractC1631p
    /* renamed from: g */
    public TrackGroupArray mo32510g() {
        return this.f6267a.mo32510g();
    }
}
