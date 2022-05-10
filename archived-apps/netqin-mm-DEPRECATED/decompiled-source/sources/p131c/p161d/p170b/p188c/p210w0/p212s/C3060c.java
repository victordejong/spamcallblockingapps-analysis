package p131c.p161d.p170b.p188c.p210w0.p212s;

import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3042g;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.C3049n;
/* renamed from: c.d.b.c.w0.s.c */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/s/c.class */
public final class C3060c implements AbstractC3042g {

    /* renamed from: f */
    public AbstractC3044i f11032f;

    /* renamed from: h */
    public boolean f11034h;

    /* renamed from: i */
    public long f11035i;

    /* renamed from: j */
    public int f11036j;

    /* renamed from: k */
    public int f11037k;

    /* renamed from: l */
    public int f11038l;

    /* renamed from: m */
    public long f11039m;

    /* renamed from: n */
    public boolean f11040n;

    /* renamed from: o */
    public C3059b f11041o;

    /* renamed from: p */
    public C3062e f11042p;

    /* renamed from: a */
    public final C2904v f11027a = new C2904v(4);

    /* renamed from: b */
    public final C2904v f11028b = new C2904v(9);

    /* renamed from: c */
    public final C2904v f11029c = new C2904v(11);

    /* renamed from: d */
    public final C2904v f11030d = new C2904v();

    /* renamed from: e */
    public final C3061d f11031e = new C3061d();

    /* renamed from: g */
    public int f11033g = 1;

    static {
        C3058a aVar = C3058a.f11022a;
    }

    /* renamed from: d */
    public static /* synthetic */ AbstractC3042g[] m28016d() {
        return new AbstractC3042g[]{new C3060c()};
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public int mo27551a(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        while (true) {
            int i = this.f11033g;
            if (i != 1) {
                if (i == 2) {
                    m28013f(hVar);
                } else if (i != 3) {
                    if (i != 4) {
                        throw new IllegalStateException();
                    } else if (m28015d(hVar)) {
                        return 0;
                    }
                } else if (!m28014e(hVar)) {
                    return -1;
                }
            } else if (!m28017c(hVar)) {
                return -1;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27554a() {
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27553a(long j, long j2) {
        this.f11033g = 1;
        this.f11034h = false;
        this.f11036j = 0;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27550a(AbstractC3044i iVar) {
        this.f11032f = iVar;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public boolean mo27552a(AbstractC3043h hVar) throws IOException, InterruptedException {
        boolean z = false;
        hVar.mo28055a(this.f11027a.f10530a, 0, 3);
        this.f11027a.m28538e(0);
        if (this.f11027a.m28521u() != 4607062) {
            return false;
        }
        hVar.mo28055a(this.f11027a.f10530a, 0, 2);
        this.f11027a.m28538e(0);
        if ((this.f11027a.m28518x() & 250) != 0) {
            return false;
        }
        hVar.mo28055a(this.f11027a.f10530a, 0, 4);
        this.f11027a.m28538e(0);
        int g = this.f11027a.m28535g();
        hVar.mo28050c();
        hVar.mo28057a(g);
        hVar.mo28055a(this.f11027a.f10530a, 0, 4);
        this.f11027a.m28538e(0);
        if (this.f11027a.m28535g() == 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public final C2904v m28019b(AbstractC3043h hVar) throws IOException, InterruptedException {
        if (this.f11038l > this.f11030d.m28545b()) {
            C2904v vVar = this.f11030d;
            vVar.m28547a(new byte[Math.max(vVar.m28545b() * 2, this.f11038l)], 0);
        } else {
            this.f11030d.m28538e(0);
        }
        this.f11030d.m28540d(this.f11038l);
        hVar.readFully(this.f11030d.f10530a, 0, this.f11038l);
        return this.f11030d;
    }

    /* renamed from: b */
    public final void m28020b() {
        if (!this.f11040n) {
            this.f11032f.mo28047a(new AbstractC3050o.C3052b(-9223372036854775807L));
            this.f11040n = true;
        }
    }

    /* renamed from: c */
    public final long m28018c() {
        return this.f11034h ? this.f11035i + this.f11039m : this.f11031e.m28012a() == -9223372036854775807L ? 0L : this.f11039m;
    }

    /* renamed from: c */
    public final boolean m28017c(AbstractC3043h hVar) throws IOException, InterruptedException {
        boolean z = false;
        if (!hVar.mo28054a(this.f11028b.f10530a, 0, 9, true)) {
            return false;
        }
        this.f11028b.m28538e(0);
        this.f11028b.m28536f(4);
        int r = this.f11028b.m28524r();
        boolean z2 = (r & 4) != 0;
        if ((r & 1) != 0) {
            z = true;
        }
        if (z2 && this.f11041o == null) {
            this.f11041o = new C3059b(this.f11032f.mo28048a(8, 1));
        }
        if (z && this.f11042p == null) {
            this.f11042p = new C3062e(this.f11032f.mo28048a(9, 2));
        }
        this.f11032f.mo28046e();
        this.f11036j = (this.f11028b.m28535g() - 9) + 4;
        this.f11033g = 2;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e0  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m28015d(p131c.p161d.p170b.p188c.p210w0.AbstractC3043h r7) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p212s.C3060c.m28015d(c.d.b.c.w0.h):boolean");
    }

    /* renamed from: e */
    public final boolean m28014e(AbstractC3043h hVar) throws IOException, InterruptedException {
        if (!hVar.mo28054a(this.f11029c.f10530a, 0, 11, true)) {
            return false;
        }
        this.f11029c.m28538e(0);
        this.f11037k = this.f11029c.m28524r();
        this.f11038l = this.f11029c.m28521u();
        this.f11039m = this.f11029c.m28521u();
        this.f11039m = ((this.f11029c.m28524r() << 24) | this.f11039m) * 1000;
        this.f11029c.m28536f(3);
        this.f11033g = 4;
        return true;
    }

    /* renamed from: f */
    public final void m28013f(AbstractC3043h hVar) throws IOException, InterruptedException {
        hVar.mo28049c(this.f11036j);
        this.f11036j = 0;
        this.f11033g = 3;
    }
}
