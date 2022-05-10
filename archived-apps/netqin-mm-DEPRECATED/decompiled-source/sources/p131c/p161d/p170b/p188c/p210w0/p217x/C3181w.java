package p131c.p161d.p170b.p188c.p210w0.p217x;

import com.google.android.exoplayer2.ParserException;
import p131c.p161d.p170b.p188c.p203g1.C2881f0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2903u;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.w */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/w.class */
public final class C3181w implements AbstractC3155h0 {

    /* renamed from: a */
    public final AbstractC3168o f11738a;

    /* renamed from: b */
    public final C2903u f11739b = new C2903u(new byte[10]);

    /* renamed from: c */
    public int f11740c = 0;

    /* renamed from: d */
    public int f11741d;

    /* renamed from: e */
    public C2881f0 f11742e;

    /* renamed from: f */
    public boolean f11743f;

    /* renamed from: g */
    public boolean f11744g;

    /* renamed from: h */
    public boolean f11745h;

    /* renamed from: i */
    public int f11746i;

    /* renamed from: j */
    public int f11747j;

    /* renamed from: k */
    public boolean f11748k;

    /* renamed from: l */
    public long f11749l;

    public C3181w(AbstractC3168o oVar) {
        this.f11738a = oVar;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0
    /* renamed from: a */
    public final void mo27586a() {
        this.f11740c = 0;
        this.f11741d = 0;
        this.f11745h = false;
        this.f11738a.mo27599a();
    }

    /* renamed from: a */
    public final void m27585a(int i) {
        this.f11740c = i;
        this.f11741d = 0;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0
    /* renamed from: a */
    public void mo27584a(C2881f0 f0Var, AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        this.f11742e = f0Var;
        this.f11738a.mo27596a(iVar, dVar);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0
    /* renamed from: a */
    public final void mo27583a(C2904v vVar, int i) throws ParserException {
        int i2 = i;
        if ((i & 1) != 0) {
            int i3 = this.f11740c;
            if (!(i3 == 0 || i3 == 1)) {
                if (i3 == 2) {
                    C2894o.m28594d("PesReader", "Unexpected start indicator reading extended header");
                } else if (i3 == 3) {
                    if (this.f11747j != -1) {
                        C2894o.m28594d("PesReader", "Unexpected start indicator: expected " + this.f11747j + " more bytes");
                    }
                    this.f11738a.mo27595b();
                } else {
                    throw new IllegalStateException();
                }
            }
            m27585a(1);
            i2 = i;
        }
        while (vVar.m28552a() > 0) {
            int i4 = this.f11740c;
            if (i4 != 0) {
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                if (i4 != 1) {
                    if (i4 == 2) {
                        if (m27582a(vVar, this.f11739b.f10526a, Math.min(10, this.f11746i)) && m27582a(vVar, (byte[]) null, this.f11746i)) {
                            m27580c();
                            if (this.f11748k) {
                                i5 = 4;
                            }
                            i2 |= i5;
                            this.f11738a.mo27598a(this.f11749l, i2);
                            m27585a(3);
                        }
                    } else if (i4 == 3) {
                        int a = vVar.m28552a();
                        int i8 = this.f11747j;
                        if (i8 != -1) {
                            i7 = a - i8;
                        }
                        int i9 = a;
                        if (i7 > 0) {
                            i9 = a - i7;
                            vVar.m28540d(vVar.m28543c() + i9);
                        }
                        this.f11738a.mo27597a(vVar);
                        int i10 = this.f11747j;
                        if (i10 != -1) {
                            int i11 = i10 - i9;
                            this.f11747j = i11;
                            if (i11 == 0) {
                                this.f11738a.mo27595b();
                                m27585a(1);
                            }
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else if (m27582a(vVar, this.f11739b.f10526a, 9)) {
                    if (m27581b()) {
                        i6 = 2;
                    }
                    m27585a(i6);
                }
            } else {
                vVar.m28536f(vVar.m28552a());
            }
        }
    }

    /* renamed from: a */
    public final boolean m27582a(C2904v vVar, byte[] bArr, int i) {
        int min = Math.min(vVar.m28552a(), i - this.f11741d);
        boolean z = true;
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            vVar.m28536f(min);
        } else {
            vVar.m28546a(bArr, this.f11741d, min);
        }
        int i2 = this.f11741d + min;
        this.f11741d = i2;
        if (i2 != i) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m27581b() {
        this.f11739b.m28558b(0);
        int a = this.f11739b.m28565a(24);
        if (a != 1) {
            C2894o.m28594d("PesReader", "Unexpected start code prefix: " + a);
            this.f11747j = -1;
            return false;
        }
        this.f11739b.m28556c(8);
        int a2 = this.f11739b.m28565a(16);
        this.f11739b.m28556c(5);
        this.f11748k = this.f11739b.m28554e();
        this.f11739b.m28556c(2);
        this.f11743f = this.f11739b.m28554e();
        this.f11744g = this.f11739b.m28554e();
        this.f11739b.m28556c(6);
        int a3 = this.f11739b.m28565a(8);
        this.f11746i = a3;
        if (a2 == 0) {
            this.f11747j = -1;
            return true;
        }
        this.f11747j = ((a2 + 6) - 9) - a3;
        return true;
    }

    /* renamed from: c */
    public final void m27580c() {
        this.f11739b.m28558b(0);
        this.f11749l = -9223372036854775807L;
        if (this.f11743f) {
            this.f11739b.m28556c(4);
            long a = this.f11739b.m28565a(3);
            this.f11739b.m28556c(1);
            long a2 = this.f11739b.m28565a(15) << 15;
            this.f11739b.m28556c(1);
            long a3 = this.f11739b.m28565a(15);
            this.f11739b.m28556c(1);
            if (!this.f11745h && this.f11744g) {
                this.f11739b.m28556c(4);
                long a4 = this.f11739b.m28565a(3);
                this.f11739b.m28556c(1);
                long a5 = this.f11739b.m28565a(15) << 15;
                this.f11739b.m28556c(1);
                long a6 = this.f11739b.m28565a(15);
                this.f11739b.m28556c(1);
                this.f11742e.m28711b((a4 << 30) | a5 | a6);
                this.f11745h = true;
            }
            this.f11749l = this.f11742e.m28711b((a << 30) | a2 | a3);
        }
    }
}
