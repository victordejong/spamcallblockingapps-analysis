package p131c.p161d.p170b.p188c.p210w0.p211r;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3042g;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.C3038c;
import p131c.p161d.p170b.p188c.p210w0.C3049n;
/* renamed from: c.d.b.c.w0.r.b */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/r/b.class */
public final class C3057b implements AbstractC3042g {

    /* renamed from: p */
    public static final int[] f11002p = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: q */
    public static final int[] f11003q = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};

    /* renamed from: r */
    public static final byte[] f11004r = C2885h0.m28668a("#!AMR\n");

    /* renamed from: s */
    public static final byte[] f11005s = C2885h0.m28668a("#!AMR-WB\n");

    /* renamed from: t */
    public static final int f11006t = f11003q[8];

    /* renamed from: a */
    public final byte[] f11007a;

    /* renamed from: b */
    public final int f11008b;

    /* renamed from: c */
    public boolean f11009c;

    /* renamed from: d */
    public long f11010d;

    /* renamed from: e */
    public int f11011e;

    /* renamed from: f */
    public int f11012f;

    /* renamed from: g */
    public boolean f11013g;

    /* renamed from: h */
    public long f11014h;

    /* renamed from: i */
    public int f11015i;

    /* renamed from: j */
    public int f11016j;

    /* renamed from: k */
    public long f11017k;

    /* renamed from: l */
    public AbstractC3044i f11018l;

    /* renamed from: m */
    public AbstractC3054q f11019m;

    /* renamed from: n */
    public AbstractC3050o f11020n;

    /* renamed from: o */
    public boolean f11021o;

    static {
        C3056a aVar = C3056a.f11001a;
    }

    public C3057b() {
        this(0);
    }

    public C3057b(int i) {
        this.f11008b = i;
        this.f11007a = new byte[1];
        this.f11015i = -1;
    }

    /* renamed from: a */
    public static int m28032a(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    /* renamed from: c */
    public static /* synthetic */ AbstractC3042g[] m28025c() {
        return new AbstractC3042g[]{new C3057b()};
    }

    /* renamed from: a */
    public final int m28033a(int i) throws ParserException {
        if (!m28024c(i)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Illegal AMR ");
            sb.append(this.f11009c ? "WB" : "NB");
            sb.append(" frame type ");
            sb.append(i);
            throw new ParserException(sb.toString());
        }
        return this.f11009c ? f11003q[i] : f11002p[i];
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public int mo27551a(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        if (hVar.getPosition() != 0 || m28023c(hVar)) {
            m28028b();
            int d = m28021d(hVar);
            m28030a(hVar.mo28058a(), d);
            return d;
        }
        throw new ParserException("Could not find AMR header.");
    }

    /* renamed from: a */
    public final AbstractC3050o m28031a(long j) {
        return new C3038c(j, this.f11014h, m28032a(this.f11015i, 20000L), this.f11015i);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27554a() {
    }

    /* renamed from: a */
    public final void m28030a(long j, int i) {
        int i2;
        if (!this.f11013g) {
            if ((this.f11008b & 1) == 0 || j == -1 || !((i2 = this.f11015i) == -1 || i2 == this.f11011e)) {
                AbstractC3050o.C3052b bVar = new AbstractC3050o.C3052b(-9223372036854775807L);
                this.f11020n = bVar;
                this.f11018l.mo28047a(bVar);
                this.f11013g = true;
            } else if (this.f11016j >= 20 || i == -1) {
                AbstractC3050o a = m28031a(j);
                this.f11020n = a;
                this.f11018l.mo28047a(a);
                this.f11013g = true;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27553a(long j, long j2) {
        this.f11010d = 0L;
        this.f11011e = 0;
        this.f11012f = 0;
        if (j != 0) {
            AbstractC3050o oVar = this.f11020n;
            if (oVar instanceof C3038c) {
                this.f11017k = ((C3038c) oVar).m28066d(j);
                return;
            }
        }
        this.f11017k = 0L;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27550a(AbstractC3044i iVar) {
        this.f11018l = iVar;
        this.f11019m = iVar.mo28048a(0, 1);
        iVar.mo28046e();
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public boolean mo27552a(AbstractC3043h hVar) throws IOException, InterruptedException {
        return m28023c(hVar);
    }

    /* renamed from: a */
    public final boolean m28029a(AbstractC3043h hVar, byte[] bArr) throws IOException, InterruptedException {
        hVar.mo28050c();
        byte[] bArr2 = new byte[bArr.length];
        hVar.mo28055a(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    /* renamed from: b */
    public final int m28026b(AbstractC3043h hVar) throws IOException, InterruptedException {
        hVar.mo28050c();
        hVar.mo28055a(this.f11007a, 0, 1);
        byte b = this.f11007a[0];
        if ((b & 131) <= 0) {
            return m28033a((b >> 3) & 15);
        }
        throw new ParserException("Invalid padding bits for frame header " + ((int) b));
    }

    /* renamed from: b */
    public final void m28028b() {
        if (!this.f11021o) {
            this.f11021o = true;
            this.f11019m.mo28034a(Format.m18699a((String) null, this.f11009c ? "audio/amr-wb" : "audio/3gpp", (String) null, -1, f11006t, 1, this.f11009c ? 16000 : 8000, -1, (List<byte[]>) null, (DrmInitData) null, 0, (String) null));
        }
    }

    /* renamed from: b */
    public final boolean m28027b(int i) {
        return !this.f11009c && (i < 12 || i > 14);
    }

    /* renamed from: c */
    public final boolean m28024c(int i) {
        return i >= 0 && i <= 15 && (m28022d(i) || m28027b(i));
    }

    /* renamed from: c */
    public final boolean m28023c(AbstractC3043h hVar) throws IOException, InterruptedException {
        if (m28029a(hVar, f11004r)) {
            this.f11009c = false;
            hVar.mo28049c(f11004r.length);
            return true;
        } else if (!m28029a(hVar, f11005s)) {
            return false;
        } else {
            this.f11009c = true;
            hVar.mo28049c(f11005s.length);
            return true;
        }
    }

    /* renamed from: d */
    public final int m28021d(AbstractC3043h hVar) throws IOException, InterruptedException {
        if (this.f11012f == 0) {
            try {
                int b = m28026b(hVar);
                this.f11011e = b;
                this.f11012f = b;
                if (this.f11015i == -1) {
                    this.f11014h = hVar.getPosition();
                    this.f11015i = this.f11011e;
                }
                if (this.f11015i == this.f11011e) {
                    this.f11016j++;
                }
            } catch (EOFException e) {
                return -1;
            }
        }
        int a = this.f11019m.mo28035a(hVar, this.f11012f, true);
        if (a == -1) {
            return -1;
        }
        int i = this.f11012f - a;
        this.f11012f = i;
        if (i > 0) {
            return 0;
        }
        this.f11019m.mo28037a(this.f11017k + this.f11010d, 1, this.f11011e, 0, null);
        this.f11010d += 20000;
        return 0;
    }

    /* renamed from: d */
    public final boolean m28022d(int i) {
        return this.f11009c && (i < 10 || i > 13);
    }
}
