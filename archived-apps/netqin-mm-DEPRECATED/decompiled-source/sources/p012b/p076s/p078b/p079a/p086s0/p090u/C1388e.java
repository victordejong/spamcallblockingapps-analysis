package p012b.p076s.p078b.p079a.p086s0.p090u;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.id3.MlltFrame;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.C1354k;
import p012b.p076s.p078b.p079a.p086s0.C1355l;
import p012b.p076s.p078b.p079a.p086s0.C1356m;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
import p012b.p076s.p078b.p079a.p096u0.p099h.C1524b;
/* renamed from: b.s.b.a.s0.u.e */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/u/e.class */
public final class C1388e implements AbstractC1350g {

    /* renamed from: o */
    public static final C1524b.AbstractC1525a f5547o = C1387d.f5546a;

    /* renamed from: a */
    public final int f5548a;

    /* renamed from: b */
    public final long f5549b;

    /* renamed from: c */
    public final C1184p f5550c;

    /* renamed from: d */
    public final C1356m f5551d;

    /* renamed from: e */
    public final C1354k f5552e;

    /* renamed from: f */
    public final C1355l f5553f;

    /* renamed from: g */
    public AbstractC1352i f5554g;

    /* renamed from: h */
    public AbstractC1362q f5555h;

    /* renamed from: i */
    public int f5556i;

    /* renamed from: j */
    public Metadata f5557j;

    /* renamed from: k */
    public AbstractC1389a f5558k;

    /* renamed from: l */
    public long f5559l;

    /* renamed from: m */
    public long f5560m;

    /* renamed from: n */
    public int f5561n;

    /* renamed from: b.s.b.a.s0.u.e$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/u/e$a.class */
    public interface AbstractC1389a extends AbstractC1358o {
        /* renamed from: a */
        long mo33497a(long j);

        /* renamed from: d */
        long mo33495d();
    }

    static {
        AbstractC1353j jVar = C1386c.f5545a;
    }

    public C1388e() {
        this(0);
    }

    public C1388e(int i) {
        this(i, -9223372036854775807L);
    }

    public C1388e(int i, long j) {
        this.f5548a = i;
        this.f5549b = j;
        this.f5550c = new C1184p(10);
        this.f5551d = new C1356m();
        this.f5552e = new C1354k();
        this.f5559l = -9223372036854775807L;
        this.f5553f = new C1355l();
    }

    /* renamed from: a */
    public static int m33506a(C1184p pVar, int i) {
        if (pVar.m34361d() >= i + 4) {
            pVar.m34358e(i);
            int f = pVar.m34357f();
            if (f == 1483304551 || f == 1231971951) {
                return f;
            }
        }
        if (pVar.m34361d() < 40) {
            return 0;
        }
        pVar.m34358e(36);
        return pVar.m34357f() == 1447187017 ? 1447187017 : 0;
    }

    /* renamed from: a */
    public static C1385b m33507a(Metadata metadata, long j) {
        if (metadata == null) {
            return null;
        }
        int a = metadata.m38018a();
        for (int i = 0; i < a; i++) {
            Metadata.Entry a2 = metadata.m38017a(i);
            if (a2 instanceof MlltFrame) {
                return C1385b.m33511a(j, (MlltFrame) a2);
            }
        }
        return null;
    }

    /* renamed from: a */
    public static final /* synthetic */ boolean m33509a(int i, int i2, int i3, int i4, int i5) {
        return (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) || (i2 == 77 && i3 == 76 && i4 == 76 && (i5 == 84 || i == 2));
    }

    /* renamed from: a */
    public static boolean m33508a(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    /* renamed from: b */
    public static final /* synthetic */ AbstractC1350g[] m33504b() {
        return new AbstractC1350g[]{new C1388e()};
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public int mo32615a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        if (this.f5556i == 0) {
            try {
                m33505a(hVar, false);
            } catch (EOFException e) {
                return -1;
            }
        }
        if (this.f5558k == null) {
            AbstractC1389a c = m33502c(hVar);
            C1385b a = m33507a(this.f5557j, hVar.getPosition());
            if (a != null) {
                this.f5558k = a;
            } else if (c != null) {
                this.f5558k = c;
            }
            AbstractC1389a aVar = this.f5558k;
            if (aVar == null || (!aVar.mo33119b() && (this.f5548a & 1) != 0)) {
                this.f5558k = m33503b(hVar);
            }
            this.f5554g.mo32656a(this.f5558k);
            AbstractC1362q qVar = this.f5555h;
            C1356m mVar = this.f5551d;
            String str = mVar.f5349b;
            int i = mVar.f5352e;
            int i2 = mVar.f5351d;
            C1354k kVar = this.f5552e;
            qVar.mo32623a(Format.m38182a((String) null, str, (String) null, -1, 4096, i, i2, -1, kVar.f5338a, kVar.f5339b, (List<byte[]>) null, (DrmInitData) null, 0, (String) null, (this.f5548a & 2) != 0 ? null : this.f5557j));
        }
        return m33500e(hVar);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32619a() {
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32617a(long j, long j2) {
        this.f5556i = 0;
        this.f5559l = -9223372036854775807L;
        this.f5560m = 0L;
        this.f5561n = 0;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32614a(AbstractC1352i iVar) {
        this.f5554g = iVar;
        this.f5555h = iVar.mo32666a(0, 1);
        this.f5554g.mo32639e();
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public boolean mo32616a(AbstractC1351h hVar) throws IOException, InterruptedException {
        return m33505a(hVar, true);
    }

    /* renamed from: a */
    public final boolean m33505a(AbstractC1351h hVar, boolean z) throws IOException, InterruptedException {
        int i;
        int a;
        int i2 = z ? 16384 : 131072;
        hVar.mo33614c();
        if (hVar.getPosition() == 0) {
            Metadata a2 = this.f5553f.m33608a(hVar, (this.f5548a & 2) == 0 ? null : f5547o);
            this.f5557j = a2;
            if (a2 != null) {
                this.f5552e.m33610a(a2);
            }
            i = (int) hVar.mo33617b();
            if (!z) {
                hVar.mo33613c(i);
            }
        } else {
            i = 0;
        }
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (!m33501d(hVar)) {
                this.f5550c.m34358e(0);
                int f = this.f5550c.m34357f();
                if ((i3 == 0 || m33508a(f, i3)) && (a = C1356m.m33607a(f)) != -1) {
                    int i6 = i4 + 1;
                    if (i6 != 1) {
                        i3 = i3;
                        if (i6 == 4) {
                            break;
                        }
                    } else {
                        C1356m.m33606a(f, this.f5551d);
                        i3 = f;
                    }
                    hVar.mo33621a(a - 4);
                    i4 = i6;
                } else {
                    int i7 = i5 + 1;
                    if (i5 != i2) {
                        if (z) {
                            hVar.mo33614c();
                            hVar.mo33621a(i + i7);
                        } else {
                            hVar.mo33613c(1);
                        }
                        i5 = i7;
                        i3 = 0;
                        i4 = 0;
                    } else if (z) {
                        return false;
                    } else {
                        throw new ParserException("Searched too many bytes.");
                    }
                }
            } else if (i4 <= 0) {
                throw new EOFException();
            }
        }
        if (z) {
            hVar.mo33613c(i + i5);
        } else {
            hVar.mo33614c();
        }
        this.f5556i = i3;
        return true;
    }

    /* renamed from: b */
    public final AbstractC1389a m33503b(AbstractC1351h hVar) throws IOException, InterruptedException {
        hVar.mo33619a(this.f5550c.f4738a, 0, 4);
        this.f5550c.m34358e(0);
        C1356m.m33606a(this.f5550c.m34357f(), this.f5551d);
        return new C1384a(hVar.mo33622a(), hVar.getPosition(), this.f5551d);
    }

    /* renamed from: c */
    public final AbstractC1389a m33502c(AbstractC1351h hVar) throws IOException, InterruptedException {
        int i;
        AbstractC1389a aVar;
        C1184p pVar = new C1184p(this.f5551d.f5350c);
        hVar.mo33619a(pVar.f4738a, 0, this.f5551d.f5350c);
        C1356m mVar = this.f5551d;
        if ((mVar.f5348a & 1) != 0) {
            if (mVar.f5352e != 1) {
                i = 36;
            }
            i = 21;
        } else {
            if (mVar.f5352e == 1) {
                i = 13;
            }
            i = 21;
        }
        int a = m33506a(pVar, i);
        if (a == 1483304551 || a == 1231971951) {
            C1391g a2 = C1391g.m33496a(hVar.mo33622a(), hVar.getPosition(), this.f5551d, pVar);
            if (a2 != null && !this.f5552e.m33612a()) {
                hVar.mo33614c();
                hVar.mo33621a(i + 141);
                hVar.mo33619a(this.f5550c.f4738a, 0, 3);
                this.f5550c.m34358e(0);
                this.f5552e.m33611a(this.f5550c.m34341u());
            }
            hVar.mo33613c(this.f5551d.f5350c);
            aVar = a2;
            if (a2 != null) {
                aVar = a2;
                if (!a2.mo33119b()) {
                    aVar = a2;
                    if (a == 1231971951) {
                        return m33503b(hVar);
                    }
                }
            }
        } else if (a == 1447187017) {
            aVar = C1390f.m33499a(hVar.mo33622a(), hVar.getPosition(), this.f5551d, pVar);
            hVar.mo33613c(this.f5551d.f5350c);
        } else {
            aVar = null;
            hVar.mo33614c();
        }
        return aVar;
    }

    /* renamed from: d */
    public final boolean m33501d(AbstractC1351h hVar) throws IOException, InterruptedException {
        AbstractC1389a aVar = this.f5558k;
        if (aVar != null) {
            long d = aVar.mo33495d();
            if (d != -1 && hVar.mo33617b() > d - 4) {
                return true;
            }
        }
        try {
            return !hVar.mo33615b(this.f5550c.f4738a, 0, 4, true);
        } catch (EOFException e) {
            return true;
        }
    }

    /* renamed from: e */
    public final int m33500e(AbstractC1351h hVar) throws IOException, InterruptedException {
        C1356m mVar;
        if (this.f5561n == 0) {
            hVar.mo33614c();
            if (m33501d(hVar)) {
                return -1;
            }
            this.f5550c.m34358e(0);
            int f = this.f5550c.m34357f();
            if (!m33508a(f, this.f5556i) || C1356m.m33607a(f) == -1) {
                hVar.mo33613c(1);
                this.f5556i = 0;
                return 0;
            }
            C1356m.m33606a(f, this.f5551d);
            if (this.f5559l == -9223372036854775807L) {
                this.f5559l = this.f5558k.mo33497a(hVar.getPosition());
                if (this.f5549b != -9223372036854775807L) {
                    this.f5559l += this.f5549b - this.f5558k.mo33497a(0L);
                }
            }
            this.f5561n = this.f5551d.f5350c;
        }
        int a = this.f5555h.mo32825a(hVar, this.f5561n, true);
        if (a == -1) {
            return -1;
        }
        int i = this.f5561n - a;
        this.f5561n = i;
        if (i > 0) {
            return 0;
        }
        this.f5555h.mo32832a(this.f5559l + ((this.f5560m * 1000000) / mVar.f5351d), 1, this.f5551d.f5350c, 0, null);
        this.f5560m += this.f5551d.f5354g;
        this.f5561n = 0;
        return 0;
    }
}
