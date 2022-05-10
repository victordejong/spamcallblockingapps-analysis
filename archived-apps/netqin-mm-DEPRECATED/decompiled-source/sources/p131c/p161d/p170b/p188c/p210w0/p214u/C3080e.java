package p131c.p161d.p170b.p188c.p210w0.p214u;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3042g;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.C3046k;
import p131c.p161d.p170b.p188c.p210w0.C3047l;
import p131c.p161d.p170b.p188c.p210w0.C3048m;
import p131c.p161d.p170b.p188c.p210w0.C3049n;
import p131c.p161d.p170b.p188c.p210w0.p214u.AbstractC3081f;
import p131c.p161d.p170b.p188c.p220y0.p222b.C3207b;
/* renamed from: c.d.b.c.w0.u.e */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/u/e.class */
public final class C3080e implements AbstractC3042g {

    /* renamed from: q */
    public static final C3207b.AbstractC3208a f11184q = C3077b.f11180a;

    /* renamed from: a */
    public final int f11185a;

    /* renamed from: b */
    public final long f11186b;

    /* renamed from: c */
    public final C2904v f11187c;

    /* renamed from: d */
    public final C3048m f11188d;

    /* renamed from: e */
    public final C3046k f11189e;

    /* renamed from: f */
    public final C3047l f11190f;

    /* renamed from: g */
    public AbstractC3044i f11191g;

    /* renamed from: h */
    public AbstractC3054q f11192h;

    /* renamed from: i */
    public int f11193i;

    /* renamed from: j */
    public Metadata f11194j;

    /* renamed from: k */
    public AbstractC3081f f11195k;

    /* renamed from: l */
    public boolean f11196l;

    /* renamed from: m */
    public long f11197m;

    /* renamed from: n */
    public long f11198n;

    /* renamed from: o */
    public long f11199o;

    /* renamed from: p */
    public int f11200p;

    static {
        C3076a aVar = C3076a.f11179a;
    }

    public C3080e() {
        this(0);
    }

    public C3080e(int i) {
        this(i, -9223372036854775807L);
    }

    public C3080e(int i, long j) {
        this.f11185a = i;
        this.f11186b = j;
        this.f11187c = new C2904v(10);
        this.f11188d = new C3048m();
        this.f11189e = new C3046k();
        this.f11197m = -9223372036854775807L;
        this.f11190f = new C3047l();
    }

    /* renamed from: a */
    public static int m27935a(C2904v vVar, int i) {
        if (vVar.m28541d() >= i + 4) {
            vVar.m28538e(i);
            int g = vVar.m28535g();
            if (g == 1483304551 || g == 1231971951) {
                return g;
            }
        }
        if (vVar.m28541d() < 40) {
            return 0;
        }
        vVar.m28538e(36);
        return vVar.m28535g() == 1447187017 ? 1447187017 : 0;
    }

    /* renamed from: a */
    public static C3079d m27933a(Metadata metadata, long j) {
        if (metadata == null) {
            return null;
        }
        int a = metadata.m18520a();
        for (int i = 0; i < a; i++) {
            Metadata.Entry a2 = metadata.m18519a(i);
            if (a2 instanceof MlltFrame) {
                return C3079d.m27939a(j, (MlltFrame) a2);
            }
        }
        return null;
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m27937a(int i, int i2, int i3, int i4, int i5) {
        return (i2 == 67 && i3 == 79 && i4 == 77 && (i5 == 77 || i == 2)) || (i2 == 77 && i3 == 76 && i4 == 76 && (i5 == 84 || i == 2));
    }

    /* renamed from: a */
    public static boolean m27936a(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    /* renamed from: c */
    public static /* synthetic */ AbstractC3042g[] m27930c() {
        return new AbstractC3042g[]{new C3080e()};
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public int mo27551a(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        if (this.f11193i == 0) {
            try {
                m27934a(hVar, false);
            } catch (EOFException e) {
                return -1;
            }
        }
        if (this.f11195k == null) {
            AbstractC3081f c = m27929c(hVar);
            C3079d a = m27933a(this.f11194j, hVar.getPosition());
            if (this.f11196l) {
                this.f11195k = new AbstractC3081f.C3082a();
            } else {
                if (a != null) {
                    this.f11195k = a;
                } else if (c != null) {
                    this.f11195k = c;
                }
                AbstractC3081f fVar = this.f11195k;
                if (fVar == null || (!fVar.mo27545b() && (this.f11185a & 1) != 0)) {
                    this.f11195k = m27931b(hVar);
                }
            }
            this.f11191g.mo28047a(this.f11195k);
            AbstractC3054q qVar = this.f11192h;
            C3048m mVar = this.f11188d;
            String str = mVar.f10983b;
            int i = mVar.f10986e;
            int i2 = mVar.f10985d;
            C3046k kVar = this.f11189e;
            qVar.mo28034a(Format.m18700a((String) null, str, (String) null, -1, 4096, i, i2, -1, kVar.f10972a, kVar.f10973b, (List<byte[]>) null, (DrmInitData) null, 0, (String) null, (this.f11185a & 2) != 0 ? null : this.f11194j));
            this.f11199o = hVar.getPosition();
        } else if (this.f11199o != 0) {
            long position = hVar.getPosition();
            long j = this.f11199o;
            if (position < j) {
                hVar.mo28049c((int) (j - position));
            }
        }
        return m27927e(hVar);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27554a() {
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27553a(long j, long j2) {
        this.f11193i = 0;
        this.f11197m = -9223372036854775807L;
        this.f11198n = 0L;
        this.f11200p = 0;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27550a(AbstractC3044i iVar) {
        this.f11191g = iVar;
        this.f11192h = iVar.mo28048a(0, 1);
        this.f11191g.mo28046e();
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public boolean mo27552a(AbstractC3043h hVar) throws IOException, InterruptedException {
        return m27934a(hVar, true);
    }

    /* renamed from: a */
    public final boolean m27934a(AbstractC3043h hVar, boolean z) throws IOException, InterruptedException {
        int i;
        int a;
        int i2 = z ? 16384 : 131072;
        hVar.mo28050c();
        if (hVar.getPosition() == 0) {
            Metadata a2 = this.f11190f.m28041a(hVar, (this.f11185a & 2) == 0 ? null : f11184q);
            this.f11194j = a2;
            if (a2 != null) {
                this.f11189e.m28043a(a2);
            }
            i = (int) hVar.mo28053b();
            if (!z) {
                hVar.mo28049c(i);
            }
        } else {
            i = 0;
        }
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (!m27928d(hVar)) {
                this.f11187c.m28538e(0);
                int g = this.f11187c.m28535g();
                if ((i3 == 0 || m27936a(g, i3)) && (a = C3048m.m28040a(g)) != -1) {
                    int i6 = i4 + 1;
                    if (i6 != 1) {
                        i3 = i3;
                        if (i6 == 4) {
                            break;
                        }
                    } else {
                        C3048m.m28039a(g, this.f11188d);
                        i3 = g;
                    }
                    hVar.mo28057a(a - 4);
                    i4 = i6;
                } else {
                    int i7 = i5 + 1;
                    if (i5 != i2) {
                        if (z) {
                            hVar.mo28050c();
                            hVar.mo28057a(i + i7);
                        } else {
                            hVar.mo28049c(1);
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
            hVar.mo28049c(i + i5);
        } else {
            hVar.mo28050c();
        }
        this.f11193i = i3;
        return true;
    }

    /* renamed from: b */
    public final AbstractC3081f m27931b(AbstractC3043h hVar) throws IOException, InterruptedException {
        hVar.mo28055a(this.f11187c.f10530a, 0, 4);
        this.f11187c.m28538e(0);
        C3048m.m28039a(this.f11187c.m28535g(), this.f11188d);
        return new C3078c(hVar.mo28058a(), hVar.getPosition(), this.f11188d);
    }

    /* renamed from: b */
    public void m27932b() {
        this.f11196l = true;
    }

    /* renamed from: c */
    public final AbstractC3081f m27929c(AbstractC3043h hVar) throws IOException, InterruptedException {
        int i;
        AbstractC3081f fVar;
        C2904v vVar = new C2904v(this.f11188d.f10984c);
        hVar.mo28055a(vVar.f10530a, 0, this.f11188d.f10984c);
        C3048m mVar = this.f11188d;
        int i2 = mVar.f10982a;
        int i3 = mVar.f10986e;
        if ((i2 & 1) != 0) {
            if (i3 != 1) {
                i = 36;
            }
            i = 21;
        } else {
            if (i3 == 1) {
                i = 13;
            }
            i = 21;
        }
        int a = m27935a(vVar, i);
        if (a == 1483304551 || a == 1231971951) {
            C3084h a2 = C3084h.m27923a(hVar.mo28058a(), hVar.getPosition(), this.f11188d, vVar);
            if (a2 != null && !this.f11189e.m28045a()) {
                hVar.mo28050c();
                hVar.mo28057a(i + 141);
                hVar.mo28055a(this.f11187c.f10530a, 0, 3);
                this.f11187c.m28538e(0);
                this.f11189e.m28044a(this.f11187c.m28521u());
            }
            hVar.mo28049c(this.f11188d.f10984c);
            fVar = a2;
            if (a2 != null) {
                fVar = a2;
                if (!a2.mo27545b()) {
                    fVar = a2;
                    if (a == 1231971951) {
                        return m27931b(hVar);
                    }
                }
            }
        } else if (a == 1447187017) {
            fVar = C3083g.m27926a(hVar.mo28058a(), hVar.getPosition(), this.f11188d, vVar);
            hVar.mo28049c(this.f11188d.f10984c);
        } else {
            fVar = null;
            hVar.mo28050c();
        }
        return fVar;
    }

    /* renamed from: d */
    public final boolean m27928d(AbstractC3043h hVar) throws IOException, InterruptedException {
        AbstractC3081f fVar = this.f11195k;
        if (fVar != null) {
            long d = fVar.mo27922d();
            if (d != -1 && hVar.mo28053b() > d - 4) {
                return true;
            }
        }
        try {
            return !hVar.mo28051b(this.f11187c.f10530a, 0, 4, true);
        } catch (EOFException e) {
            return true;
        }
    }

    /* renamed from: e */
    public final int m27927e(AbstractC3043h hVar) throws IOException, InterruptedException {
        C3048m mVar;
        if (this.f11200p == 0) {
            hVar.mo28050c();
            if (m27928d(hVar)) {
                return -1;
            }
            this.f11187c.m28538e(0);
            int g = this.f11187c.m28535g();
            if (!m27936a(g, this.f11193i) || C3048m.m28040a(g) == -1) {
                hVar.mo28049c(1);
                this.f11193i = 0;
                return 0;
            }
            C3048m.m28039a(g, this.f11188d);
            if (this.f11197m == -9223372036854775807L) {
                this.f11197m = this.f11195k.mo27924a(hVar.getPosition());
                if (this.f11186b != -9223372036854775807L) {
                    this.f11197m += this.f11186b - this.f11195k.mo27924a(0L);
                }
            }
            this.f11200p = this.f11188d.f10984c;
        }
        int a = this.f11192h.mo28035a(hVar, this.f11200p, true);
        if (a == -1) {
            return -1;
        }
        int i = this.f11200p - a;
        this.f11200p = i;
        if (i > 0) {
            return 0;
        }
        this.f11192h.mo28037a(this.f11197m + ((this.f11198n * 1000000) / mVar.f10985d), 1, this.f11188d.f10984c, 0, null);
        this.f11198n += this.f11188d.f10988g;
        this.f11200p = 0;
        return 0;
    }
}
