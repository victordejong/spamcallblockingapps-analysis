package p012b.p076s.p078b.p079a.p086s0.p087r;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.C1346c;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
/* renamed from: b.s.b.a.s0.r.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/r/b.class */
public final class C1365b implements AbstractC1350g {

    /* renamed from: p */
    public static final int[] f5368p = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: q */
    public static final int[] f5369q = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};

    /* renamed from: r */
    public static final byte[] f5370r = C1167d0.m34441d("#!AMR\n");

    /* renamed from: s */
    public static final byte[] f5371s = C1167d0.m34441d("#!AMR-WB\n");

    /* renamed from: t */
    public static final int f5372t = f5369q[8];

    /* renamed from: a */
    public final byte[] f5373a;

    /* renamed from: b */
    public final int f5374b;

    /* renamed from: c */
    public boolean f5375c;

    /* renamed from: d */
    public long f5376d;

    /* renamed from: e */
    public int f5377e;

    /* renamed from: f */
    public int f5378f;

    /* renamed from: g */
    public boolean f5379g;

    /* renamed from: h */
    public long f5380h;

    /* renamed from: i */
    public int f5381i;

    /* renamed from: j */
    public int f5382j;

    /* renamed from: k */
    public long f5383k;

    /* renamed from: l */
    public AbstractC1352i f5384l;

    /* renamed from: m */
    public AbstractC1362q f5385m;

    /* renamed from: n */
    public AbstractC1358o f5386n;

    /* renamed from: o */
    public boolean f5387o;

    static {
        AbstractC1353j jVar = C1364a.f5367a;
    }

    public C1365b() {
        this(0);
    }

    public C1365b(int i) {
        this.f5374b = i;
        this.f5373a = new byte[1];
        this.f5381i = -1;
    }

    /* renamed from: a */
    public static int m33603a(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    /* renamed from: c */
    public static final /* synthetic */ AbstractC1350g[] m33596c() {
        return new AbstractC1350g[]{new C1365b()};
    }

    /* renamed from: a */
    public final int m33604a(int i) throws ParserException {
        if (!m33595c(i)) {
            String str = this.f5375c ? "WB" : "NB";
            StringBuilder sb = new StringBuilder(str.length() + 35);
            sb.append("Illegal AMR ");
            sb.append(str);
            sb.append(" frame type ");
            sb.append(i);
            throw new ParserException(sb.toString());
        }
        return this.f5375c ? f5369q[i] : f5368p[i];
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public int mo32615a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        if (hVar.getPosition() != 0 || m33594c(hVar)) {
            m33599b();
            int d = m33592d(hVar);
            m33601a(hVar.mo33622a(), d);
            return d;
        }
        throw new ParserException("Could not find AMR header.");
    }

    /* renamed from: a */
    public final AbstractC1358o m33602a(long j) {
        return new C1346c(j, this.f5380h, m33603a(this.f5381i, 20000L), this.f5381i);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32619a() {
    }

    /* renamed from: a */
    public final void m33601a(long j, int i) {
        int i2;
        if (!this.f5379g) {
            if ((this.f5374b & 1) == 0 || j == -1 || !((i2 = this.f5381i) == -1 || i2 == this.f5377e)) {
                AbstractC1358o.C1360b bVar = new AbstractC1358o.C1360b(-9223372036854775807L);
                this.f5386n = bVar;
                this.f5384l.mo32656a(bVar);
                this.f5379g = true;
            } else if (this.f5382j >= 20 || i == -1) {
                AbstractC1358o a = m33602a(j);
                this.f5386n = a;
                this.f5384l.mo32656a(a);
                this.f5379g = true;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32617a(long j, long j2) {
        this.f5376d = 0L;
        this.f5377e = 0;
        this.f5378f = 0;
        if (j != 0) {
            AbstractC1358o oVar = this.f5386n;
            if (oVar instanceof C1346c) {
                this.f5383k = ((C1346c) oVar).m33631d(j);
                return;
            }
        }
        this.f5383k = 0L;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32614a(AbstractC1352i iVar) {
        this.f5384l = iVar;
        this.f5385m = iVar.mo32666a(0, 1);
        iVar.mo32639e();
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public boolean mo32616a(AbstractC1351h hVar) throws IOException, InterruptedException {
        return m33594c(hVar);
    }

    /* renamed from: a */
    public final boolean m33600a(AbstractC1351h hVar, byte[] bArr) throws IOException, InterruptedException {
        hVar.mo33614c();
        byte[] bArr2 = new byte[bArr.length];
        hVar.mo33619a(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    /* renamed from: b */
    public final int m33597b(AbstractC1351h hVar) throws IOException, InterruptedException {
        hVar.mo33614c();
        hVar.mo33619a(this.f5373a, 0, 1);
        byte b = this.f5373a[0];
        if ((b & 131) <= 0) {
            return m33604a((b >> 3) & 15);
        }
        StringBuilder sb = new StringBuilder(42);
        sb.append("Invalid padding bits for frame header ");
        sb.append((int) b);
        throw new ParserException(sb.toString());
    }

    /* renamed from: b */
    public final void m33599b() {
        if (!this.f5387o) {
            this.f5387o = true;
            this.f5385m.mo32623a(Format.m38181a((String) null, this.f5375c ? "audio/amr-wb" : "audio/3gpp", (String) null, -1, f5372t, 1, this.f5375c ? 16000 : 8000, -1, (List<byte[]>) null, (DrmInitData) null, 0, (String) null));
        }
    }

    /* renamed from: b */
    public final boolean m33598b(int i) {
        return !this.f5375c && (i < 12 || i > 14);
    }

    /* renamed from: c */
    public final boolean m33595c(int i) {
        return i >= 0 && i <= 15 && (m33593d(i) || m33598b(i));
    }

    /* renamed from: c */
    public final boolean m33594c(AbstractC1351h hVar) throws IOException, InterruptedException {
        if (m33600a(hVar, f5370r)) {
            this.f5375c = false;
            hVar.mo33613c(f5370r.length);
            return true;
        } else if (!m33600a(hVar, f5371s)) {
            return false;
        } else {
            this.f5375c = true;
            hVar.mo33613c(f5371s.length);
            return true;
        }
    }

    /* renamed from: d */
    public final int m33592d(AbstractC1351h hVar) throws IOException, InterruptedException {
        if (this.f5378f == 0) {
            try {
                int b = m33597b(hVar);
                this.f5377e = b;
                this.f5378f = b;
                if (this.f5381i == -1) {
                    this.f5380h = hVar.getPosition();
                    this.f5381i = this.f5377e;
                }
                if (this.f5381i == this.f5377e) {
                    this.f5382j++;
                }
            } catch (EOFException e) {
                return -1;
            }
        }
        int a = this.f5385m.mo32825a(hVar, this.f5378f, true);
        if (a == -1) {
            return -1;
        }
        int i = this.f5378f - a;
        this.f5378f = i;
        if (i > 0) {
            return 0;
        }
        this.f5385m.mo32832a(this.f5383k + this.f5376d, 1, this.f5377e, 0, null);
        this.f5376d += 20000;
        return 0;
    }

    /* renamed from: d */
    public final boolean m33593d(int i) {
        return this.f5375c && (i < 10 || i > 13);
    }
}
