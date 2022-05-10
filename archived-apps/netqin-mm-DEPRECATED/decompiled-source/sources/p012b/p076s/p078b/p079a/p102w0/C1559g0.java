package p012b.p076s.p078b.p079a.p102w0;

import androidx.media2.exoplayer.external.Format;
import java.io.EOFException;
import java.io.IOException;
import p012b.p076s.p078b.p079a.C1531w;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p084q0.C1311d;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p102w0.C1556f0;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1678b;
import p012b.p076s.p078b.p079a.p111z0.C1677a;
/* renamed from: b.s.b.a.w0.g0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/w0/g0.class */
public class C1559g0 implements AbstractC1362q {

    /* renamed from: a */
    public final AbstractC1678b f6383a;

    /* renamed from: b */
    public final int f6384b;

    /* renamed from: c */
    public final C1556f0 f6385c = new C1556f0();

    /* renamed from: d */
    public final C1556f0.C1557a f6386d = new C1556f0.C1557a();

    /* renamed from: e */
    public final C1184p f6387e = new C1184p(32);

    /* renamed from: f */
    public C1560a f6388f;

    /* renamed from: g */
    public C1560a f6389g;

    /* renamed from: h */
    public C1560a f6390h;

    /* renamed from: i */
    public Format f6391i;

    /* renamed from: j */
    public boolean f6392j;

    /* renamed from: k */
    public Format f6393k;

    /* renamed from: l */
    public long f6394l;

    /* renamed from: m */
    public long f6395m;

    /* renamed from: n */
    public boolean f6396n;

    /* renamed from: o */
    public AbstractC1561b f6397o;

    /* renamed from: b.s.b.a.w0.g0$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/g0$a.class */
    public static final class C1560a {

        /* renamed from: a */
        public final long f6398a;

        /* renamed from: b */
        public final long f6399b;

        /* renamed from: c */
        public boolean f6400c;

        /* renamed from: d */
        public C1677a f6401d;

        /* renamed from: e */
        public C1560a f6402e;

        public C1560a(long j, int i) {
            this.f6398a = j;
            this.f6399b = j + i;
        }

        /* renamed from: a */
        public int m32803a(long j) {
            return ((int) (j - this.f6398a)) + this.f6401d.f6868b;
        }

        /* renamed from: a */
        public C1560a m32804a() {
            this.f6401d = null;
            C1560a aVar = this.f6402e;
            this.f6402e = null;
            return aVar;
        }

        /* renamed from: a */
        public void m32802a(C1677a aVar, C1560a aVar2) {
            this.f6401d = aVar;
            this.f6402e = aVar2;
            this.f6400c = true;
        }
    }

    /* renamed from: b.s.b.a.w0.g0$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/w0/g0$b.class */
    public interface AbstractC1561b {
        /* renamed from: a */
        void mo32660a(Format format);
    }

    public C1559g0(AbstractC1678b bVar) {
        this.f6383a = bVar;
        this.f6384b = bVar.mo32376c();
        C1560a aVar = new C1560a(0L, this.f6384b);
        this.f6388f = aVar;
        this.f6389g = aVar;
        this.f6390h = aVar;
    }

    /* renamed from: a */
    public static Format m32828a(Format format, long j) {
        if (format == null) {
            return null;
        }
        Format format2 = format;
        if (j != 0) {
            long j2 = format.f1566m;
            format2 = format;
            if (j2 != Long.MAX_VALUE) {
                format2 = format.m38191a(j2 + j);
            }
        }
        return format2;
    }

    /* renamed from: a */
    public int m32835a() {
        return this.f6385c.m32858a();
    }

    /* renamed from: a */
    public int m32830a(long j, boolean z, boolean z2) {
        return this.f6385c.m32853a(j, z, z2);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1362q
    /* renamed from: a */
    public int mo32825a(AbstractC1351h hVar, int i, boolean z) throws IOException, InterruptedException {
        int b = m32819b(i);
        C1560a aVar = this.f6390h;
        int read = hVar.read(aVar.f6401d.f6867a, aVar.m32803a(this.f6395m), b);
        if (read != -1) {
            m32834a(read);
            return read;
        } else if (z) {
            return -1;
        } else {
            throw new EOFException();
        }
    }

    /* renamed from: a */
    public int m32822a(C1531w wVar, C1311d dVar, boolean z, boolean z2, long j) {
        int a = this.f6385c.m32851a(wVar, dVar, z, z2, this.f6391i, this.f6386d);
        if (a == -5) {
            this.f6391i = wVar.f6243a;
            return -5;
        } else if (a != -4) {
            if (a == -3) {
                return -3;
            }
            throw new IllegalStateException();
        } else if (dVar.m33742c()) {
            return -4;
        } else {
            if (dVar.f5246d < j) {
                dVar.m33745a(Integer.MIN_VALUE);
            }
            if (dVar.m33729g()) {
                return -4;
            }
            if (dVar.m33730f()) {
                m32826a(dVar, this.f6386d);
            }
            dVar.m33731e(this.f6386d.f6380a);
            C1556f0.C1557a aVar = this.f6386d;
            m32831a(aVar.f6381b, dVar.f5245c, aVar.f6380a);
            return -4;
        }
    }

    /* renamed from: a */
    public final void m32834a(int i) {
        long j = this.f6395m + i;
        this.f6395m = j;
        C1560a aVar = this.f6390h;
        if (j == aVar.f6399b) {
            this.f6390h = aVar.f6402e;
        }
    }

    /* renamed from: a */
    public final void m32833a(long j) {
        while (true) {
            C1560a aVar = this.f6389g;
            if (j >= aVar.f6399b) {
                this.f6389g = aVar.f6402e;
            } else {
                return;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1362q
    /* renamed from: a */
    public void mo32832a(long j, int i, int i2, int i3, AbstractC1362q.C1363a aVar) {
        if (this.f6392j) {
            mo32623a(this.f6393k);
        }
        long j2 = j + this.f6394l;
        if (this.f6396n) {
            if ((i & 1) != 0 && this.f6385c.m32855a(j2)) {
                this.f6396n = false;
            } else {
                return;
            }
        }
        this.f6385c.m32854a(j2, i, (this.f6395m - i2) - i3, i2, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32831a(long r7, java.nio.ByteBuffer r9, int r10) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r0.m32833a(r1)
        L_0x0005:
            r0 = r10
            if (r0 <= 0) goto L_0x006f
            r0 = r10
            r1 = r6
            b.s.b.a.w0.g0$a r1 = r1.f6389g
            long r1 = r1.f6399b
            r2 = r7
            long r1 = r1 - r2
            int r1 = (int) r1
            int r0 = java.lang.Math.min(r0, r1)
            r11 = r0
            r0 = r6
            b.s.b.a.w0.g0$a r0 = r0.f6389g
            r12 = r0
            r0 = r9
            r1 = r12
            b.s.b.a.z0.a r1 = r1.f6401d
            byte[] r1 = r1.f6867a
            r2 = r12
            r3 = r7
            int r2 = r2.m32803a(r3)
            r3 = r11
            java.nio.ByteBuffer r0 = r0.put(r1, r2, r3)
            r0 = r10
            r1 = r11
            int r0 = r0 - r1
            r13 = r0
            r0 = r7
            r1 = r11
            long r1 = (long) r1
            long r0 = r0 + r1
            r14 = r0
            r0 = r6
            b.s.b.a.w0.g0$a r0 = r0.f6389g
            r12 = r0
            r0 = r14
            r7 = r0
            r0 = r13
            r10 = r0
            r0 = r14
            r1 = r12
            long r1 = r1.f6399b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0005
            r0 = r6
            r1 = r12
            b.s.b.a.w0.g0$a r1 = r1.f6402e
            r0.f6389g = r1
            r0 = r14
            r7 = r0
            r0 = r13
            r10 = r0
            goto L_0x0005
        L_0x006f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1559g0.m32831a(long, java.nio.ByteBuffer, int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32829a(long r7, byte[] r9, int r10) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r0.m32833a(r1)
            r0 = r10
            r11 = r0
        L_0x0009:
            r0 = r11
            if (r0 <= 0) goto L_0x0077
            r0 = r11
            r1 = r6
            b.s.b.a.w0.g0$a r1 = r1.f6389g
            long r1 = r1.f6399b
            r2 = r7
            long r1 = r1 - r2
            int r1 = (int) r1
            int r0 = java.lang.Math.min(r0, r1)
            r12 = r0
            r0 = r6
            b.s.b.a.w0.g0$a r0 = r0.f6389g
            r13 = r0
            r0 = r13
            b.s.b.a.z0.a r0 = r0.f6401d
            byte[] r0 = r0.f6867a
            r1 = r13
            r2 = r7
            int r1 = r1.m32803a(r2)
            r2 = r9
            r3 = r10
            r4 = r11
            int r3 = r3 - r4
            r4 = r12
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r11
            r1 = r12
            int r0 = r0 - r1
            r14 = r0
            r0 = r7
            r1 = r12
            long r1 = (long) r1
            long r0 = r0 + r1
            r15 = r0
            r0 = r6
            b.s.b.a.w0.g0$a r0 = r0.f6389g
            r13 = r0
            r0 = r14
            r11 = r0
            r0 = r15
            r7 = r0
            r0 = r15
            r1 = r13
            long r1 = r1.f6399b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0009
            r0 = r6
            r1 = r13
            b.s.b.a.w0.g0$a r1 = r1.f6402e
            r0.f6389g = r1
            r0 = r14
            r11 = r0
            r0 = r15
            r7 = r0
            goto L_0x0009
        L_0x0077:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1559g0.m32829a(long, byte[], int):void");
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1362q
    /* renamed from: a */
    public void mo32623a(Format format) {
        Format a = m32828a(format, this.f6394l);
        boolean a2 = this.f6385c.m32852a(a);
        this.f6393k = format;
        this.f6392j = false;
        AbstractC1561b bVar = this.f6397o;
        if (bVar != null && a2) {
            bVar.mo32660a(a);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1362q
    /* renamed from: a */
    public void mo32827a(C1184p pVar, int i) {
        while (i > 0) {
            int b = m32819b(i);
            C1560a aVar = this.f6390h;
            pVar.m34366a(aVar.f6401d.f6867a, aVar.m32803a(this.f6395m), b);
            i -= b;
            m32834a(b);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00ba, code lost:
        if (r0.length < r17) goto L_0x00bd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00da, code lost:
        if (r0.length < r17) goto L_0x00dd;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32826a(p012b.p076s.p078b.p079a.p084q0.C1311d r11, p012b.p076s.p078b.p079a.p102w0.C1556f0.C1557a r12) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p102w0.C1559g0.m32826a(b.s.b.a.q0.d, b.s.b.a.w0.f0$a):void");
    }

    /* renamed from: a */
    public final void m32824a(C1560a aVar) {
        if (aVar.f6400c) {
            C1560a aVar2 = this.f6390h;
            int i = (aVar2.f6400c ? 1 : 0) + (((int) (aVar2.f6398a - aVar.f6398a)) / this.f6384b);
            C1677a[] aVarArr = new C1677a[i];
            for (int i2 = 0; i2 < i; i2++) {
                aVarArr[i2] = aVar.f6401d;
                aVar = aVar.m32804a();
            }
            this.f6383a.mo32378a(aVarArr);
        }
    }

    /* renamed from: a */
    public void m32823a(AbstractC1561b bVar) {
        this.f6397o = bVar;
    }

    /* renamed from: a */
    public void m32821a(boolean z) {
        this.f6385c.m32850a(z);
        m32824a(this.f6388f);
        C1560a aVar = new C1560a(0L, this.f6384b);
        this.f6388f = aVar;
        this.f6389g = aVar;
        this.f6390h = aVar;
        this.f6395m = 0L;
        this.f6383a.mo32377b();
    }

    /* renamed from: b */
    public final int m32819b(int i) {
        C1560a aVar = this.f6390h;
        if (!aVar.f6400c) {
            aVar.m32802a(this.f6383a.mo32381a(), new C1560a(this.f6390h.f6399b, this.f6384b));
        }
        return Math.min(i, (int) (this.f6390h.f6399b - this.f6395m));
    }

    /* renamed from: b */
    public void m32820b() {
        m32818b(this.f6385c.m32849b());
    }

    /* renamed from: b */
    public final void m32818b(long j) {
        C1560a aVar;
        if (j != -1) {
            while (true) {
                aVar = this.f6388f;
                if (j < aVar.f6399b) {
                    break;
                }
                this.f6383a.mo32379a(aVar.f6401d);
                this.f6388f = this.f6388f.m32804a();
            }
            if (this.f6389g.f6398a < aVar.f6398a) {
                this.f6389g = aVar;
            }
        }
    }

    /* renamed from: b */
    public void m32817b(long j, boolean z, boolean z2) {
        m32818b(this.f6385c.m32847b(j, z, z2));
    }

    /* renamed from: c */
    public long m32816c() {
        return this.f6385c.m32846c();
    }

    /* renamed from: c */
    public void m32815c(int i) {
        this.f6385c.m32841e(i);
    }

    /* renamed from: c */
    public void m32814c(long j) {
        if (this.f6394l != j) {
            this.f6394l = j;
            this.f6392j = true;
        }
    }

    /* renamed from: d */
    public int m32813d() {
        return this.f6385c.m32844d();
    }

    /* renamed from: e */
    public Format m32812e() {
        return this.f6385c.m32842e();
    }

    /* renamed from: f */
    public int m32811f() {
        return this.f6385c.m32840f();
    }

    /* renamed from: g */
    public boolean m32810g() {
        return this.f6385c.m32839g();
    }

    /* renamed from: h */
    public boolean m32809h() {
        return this.f6385c.m32838h();
    }

    /* renamed from: i */
    public int m32808i() {
        return this.f6385c.m32837i();
    }

    /* renamed from: j */
    public void m32807j() {
        m32821a(false);
    }

    /* renamed from: k */
    public void m32806k() {
        this.f6385c.m32836j();
        this.f6389g = this.f6388f;
    }

    /* renamed from: l */
    public void m32805l() {
        this.f6396n = true;
    }
}
