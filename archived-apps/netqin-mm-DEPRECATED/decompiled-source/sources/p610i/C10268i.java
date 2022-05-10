package p610i;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
/* renamed from: i.i */
/* loaded from: classes2-dex2jar.jar:i/i.class */
public final class C10268i implements AbstractC10281q {

    /* renamed from: b */
    public final AbstractC10264e f37896b;

    /* renamed from: c */
    public final Inflater f37897c;

    /* renamed from: d */
    public final C10269j f37898d;

    /* renamed from: a */
    public int f37895a = 0;

    /* renamed from: e */
    public final CRC32 f37899e = new CRC32();

    public C10268i(AbstractC10281q qVar) {
        if (qVar != null) {
            this.f37897c = new Inflater(true);
            AbstractC10264e a = C10270k.m753a(qVar);
            this.f37896b = a;
            this.f37898d = new C10269j(a, this.f37897c);
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    /* renamed from: a */
    public final void m761a() throws IOException {
        this.f37896b.mo715g(10L);
        byte d = this.f37896b.mo728W().m772d(3L);
        boolean z = ((d >> 1) & 1) == 1;
        if (z) {
            m760a(this.f37896b.mo728W(), 0L, 10L);
        }
        m759a("ID1ID2", 8075, this.f37896b.readShort());
        this.f37896b.skip(8L);
        if (((d >> 2) & 1) == 1) {
            this.f37896b.mo715g(2L);
            if (z) {
                m760a(this.f37896b.mo728W(), 0L, 2L);
            }
            long Q1 = this.f37896b.mo728W().mo729Q1();
            this.f37896b.mo715g(Q1);
            if (z) {
                m760a(this.f37896b.mo728W(), 0L, Q1);
            }
            this.f37896b.skip(Q1);
        }
        if (((d >> 3) & 1) == 1) {
            long a = this.f37896b.mo727a((byte) 0);
            if (a != -1) {
                if (z) {
                    m760a(this.f37896b.mo728W(), 0L, a + 1);
                }
                this.f37896b.skip(a + 1);
            } else {
                throw new EOFException();
            }
        }
        if (((d >> 4) & 1) == 1) {
            long a2 = this.f37896b.mo727a((byte) 0);
            if (a2 != -1) {
                if (z) {
                    m760a(this.f37896b.mo728W(), 0L, a2 + 1);
                }
                this.f37896b.skip(a2 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (z) {
            m759a("FHCRC", this.f37896b.mo729Q1(), (short) this.f37899e.getValue());
            this.f37899e.reset();
        }
    }

    /* renamed from: a */
    public final void m760a(C10260c cVar, long j, long j2) {
        C10278n nVar = cVar.f37888a;
        while (true) {
            int i = nVar.f37919c;
            int i2 = nVar.f37918b;
            if (j >= i - i2) {
                j -= i - i2;
                nVar = nVar.f37922f;
            }
        }
        while (j2 > 0) {
            int i3 = (int) (nVar.f37918b + j);
            int min = (int) Math.min(nVar.f37919c - i3, j2);
            this.f37899e.update(nVar.f37917a, i3, min);
            j2 -= min;
            nVar = nVar.f37922f;
            j = 0;
        }
    }

    /* renamed from: a */
    public final void m759a(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    @Override // p610i.AbstractC10281q
    /* renamed from: b */
    public long mo704b(C10260c cVar, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (j == 0) {
            return 0L;
        } else {
            if (this.f37895a == 0) {
                m761a();
                this.f37895a = 1;
            }
            if (this.f37895a == 1) {
                long j2 = cVar.f37889b;
                long b = this.f37898d.mo704b(cVar, j);
                if (b != -1) {
                    m760a(cVar, j2, b);
                    return b;
                }
                this.f37895a = 2;
            }
            if (this.f37895a != 2) {
                return -1L;
            }
            m758b();
            this.f37895a = 3;
            if (this.f37896b.mo730M0()) {
                return -1L;
            }
            throw new IOException("gzip finished without exhausting source");
        }
    }

    /* renamed from: b */
    public final void m758b() throws IOException {
        m759a("CRC", this.f37896b.mo731L1(), (int) this.f37899e.getValue());
        m759a("ISIZE", this.f37896b.mo731L1(), (int) this.f37897c.getBytesWritten());
    }

    @Override // p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f37898d.close();
    }

    @Override // p610i.AbstractC10281q
    /* renamed from: f0 */
    public C10282r mo703f0() {
        return this.f37896b.mo703f0();
    }
}
