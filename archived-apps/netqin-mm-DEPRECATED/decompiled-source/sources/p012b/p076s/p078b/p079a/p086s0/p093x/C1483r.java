package p012b.p076s.p078b.p079a.p086s0.p093x;

import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.util.Collections;
import p012b.p076s.p078b.p079a.p080a1.C1164c;
import p012b.p076s.p078b.p079a.p080a1.C1183o;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1462h0;
/* renamed from: b.s.b.a.s0.x.r */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/r.class */
public final class C1483r implements AbstractC1473m {

    /* renamed from: a */
    public final String f6063a;

    /* renamed from: b */
    public final C1184p f6064b;

    /* renamed from: c */
    public final C1183o f6065c;

    /* renamed from: d */
    public AbstractC1362q f6066d;

    /* renamed from: e */
    public Format f6067e;

    /* renamed from: f */
    public String f6068f;

    /* renamed from: g */
    public int f6069g;

    /* renamed from: h */
    public int f6070h;

    /* renamed from: i */
    public int f6071i;

    /* renamed from: j */
    public int f6072j;

    /* renamed from: k */
    public long f6073k;

    /* renamed from: l */
    public boolean f6074l;

    /* renamed from: m */
    public int f6075m;

    /* renamed from: n */
    public int f6076n;

    /* renamed from: o */
    public int f6077o;

    /* renamed from: p */
    public boolean f6078p;

    /* renamed from: q */
    public long f6079q;

    /* renamed from: r */
    public int f6080r;

    /* renamed from: s */
    public long f6081s;

    /* renamed from: t */
    public int f6082t;

    public C1483r(String str) {
        this.f6063a = str;
        C1184p pVar = new C1184p(1024);
        this.f6064b = pVar;
        this.f6065c = new C1183o(pVar.f4738a);
    }

    /* renamed from: f */
    public static long m33171f(C1183o oVar) {
        return oVar.m34385a((oVar.m34385a(2) + 1) * 8);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33170a() {
        this.f6069g = 0;
        this.f6074l = false;
    }

    /* renamed from: a */
    public final void m33178a(int i) {
        this.f6064b.m34362c(i);
        this.f6065c.m34382a(this.f6064b.f4738a);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33169a(long j, int i) {
        this.f6073k = j;
    }

    /* renamed from: a */
    public final void m33177a(C1183o oVar) throws ParserException {
        if (!oVar.m34374e()) {
            this.f6074l = true;
            m33172e(oVar);
        } else if (!this.f6074l) {
            return;
        }
        if (this.f6075m != 0) {
            throw new ParserException();
        } else if (this.f6076n == 0) {
            m33176a(oVar, m33173d(oVar));
            if (this.f6078p) {
                oVar.m34376c((int) this.f6079q);
            }
        } else {
            throw new ParserException();
        }
    }

    /* renamed from: a */
    public final void m33176a(C1183o oVar, int i) {
        int d = oVar.m34375d();
        if ((d & 7) == 0) {
            this.f6064b.m34358e(d >> 3);
        } else {
            oVar.m34380a(this.f6064b.f4738a, 0, i * 8);
            this.f6064b.m34358e(0);
        }
        this.f6066d.mo32827a(this.f6064b, i);
        this.f6066d.mo32832a(this.f6073k, 1, i, 0, null);
        this.f6073k += this.f6081s;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33168a(C1184p pVar) throws ParserException {
        while (pVar.m34372a() > 0) {
            int i = this.f6069g;
            if (i != 0) {
                if (i == 1) {
                    int r = pVar.m34344r();
                    if ((r & 224) == 224) {
                        this.f6072j = r;
                        this.f6069g = 2;
                    } else if (r != 86) {
                        this.f6069g = 0;
                    }
                } else if (i == 2) {
                    int r2 = ((this.f6072j & (-225)) << 8) | pVar.m34344r();
                    this.f6071i = r2;
                    if (r2 > this.f6064b.f4738a.length) {
                        m33178a(r2);
                    }
                    this.f6070h = 0;
                    this.f6069g = 3;
                } else if (i == 3) {
                    int min = Math.min(pVar.m34372a(), this.f6071i - this.f6070h);
                    pVar.m34366a(this.f6065c.f4734a, this.f6070h, min);
                    int i2 = this.f6070h + min;
                    this.f6070h = i2;
                    if (i2 == this.f6071i) {
                        this.f6065c.m34378b(0);
                        m33177a(this.f6065c);
                        this.f6069g = 0;
                    }
                } else {
                    throw new IllegalStateException();
                }
            } else if (pVar.m34344r() == 86) {
                this.f6069g = 1;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: a */
    public void mo33167a(AbstractC1352i iVar, AbstractC1462h0.C1466d dVar) {
        dVar.m33246a();
        this.f6066d = iVar.mo32666a(dVar.m33244c(), 1);
        this.f6068f = dVar.m33245b();
    }

    /* renamed from: b */
    public final int m33175b(C1183o oVar) throws ParserException {
        int b = oVar.m34379b();
        Pair<Integer, Integer> a = C1164c.m34505a(oVar, true);
        this.f6080r = ((Integer) a.first).intValue();
        this.f6082t = ((Integer) a.second).intValue();
        return b - oVar.m34379b();
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p093x.AbstractC1473m
    /* renamed from: b */
    public void mo33166b() {
    }

    /* renamed from: c */
    public final void m33174c(C1183o oVar) {
        int a = oVar.m34385a(3);
        this.f6077o = a;
        if (a == 0) {
            oVar.m34376c(8);
        } else if (a == 1) {
            oVar.m34376c(9);
        } else if (a == 3 || a == 4 || a == 5) {
            oVar.m34376c(6);
        } else if (a == 6 || a == 7) {
            oVar.m34376c(1);
        } else {
            throw new IllegalStateException();
        }
    }

    /* renamed from: d */
    public final int m33173d(C1183o oVar) throws ParserException {
        int a;
        int i;
        if (this.f6077o == 0) {
            int i2 = 0;
            do {
                a = oVar.m34385a(8);
                i = i2 + a;
                i2 = i;
            } while (a == 255);
            return i;
        }
        throw new ParserException();
    }

    /* renamed from: e */
    public final void m33172e(C1183o oVar) throws ParserException {
        boolean e;
        int a = oVar.m34385a(1);
        int a2 = a == 1 ? oVar.m34385a(1) : 0;
        this.f6075m = a2;
        if (a2 == 0) {
            if (a == 1) {
                m33171f(oVar);
            }
            if (oVar.m34374e()) {
                this.f6076n = oVar.m34385a(6);
                int a3 = oVar.m34385a(4);
                int a4 = oVar.m34385a(3);
                if (a3 == 0 && a4 == 0) {
                    if (a == 0) {
                        int d = oVar.m34375d();
                        int b = m33175b(oVar);
                        oVar.m34378b(d);
                        byte[] bArr = new byte[(b + 7) / 8];
                        oVar.m34380a(bArr, 0, b);
                        Format a5 = Format.m38180a(this.f6068f, "audio/mp4a-latm", (String) null, -1, -1, this.f6082t, this.f6080r, Collections.singletonList(bArr), (DrmInitData) null, 0, this.f6063a);
                        if (!a5.equals(this.f6067e)) {
                            this.f6067e = a5;
                            this.f6081s = 1024000000 / a5.f1576w;
                            this.f6066d.mo32623a(a5);
                        }
                    } else {
                        oVar.m34376c(((int) m33171f(oVar)) - m33175b(oVar));
                    }
                    m33174c(oVar);
                    boolean e2 = oVar.m34374e();
                    this.f6078p = e2;
                    this.f6079q = 0L;
                    if (e2) {
                        if (a == 1) {
                            this.f6079q = m33171f(oVar);
                        } else {
                            do {
                                e = oVar.m34374e();
                                this.f6079q = (this.f6079q << 8) + oVar.m34385a(8);
                            } while (e);
                        }
                    }
                    if (oVar.m34374e()) {
                        oVar.m34376c(8);
                        return;
                    }
                    return;
                }
                throw new ParserException();
            }
            throw new ParserException();
        }
        throw new ParserException();
    }
}
