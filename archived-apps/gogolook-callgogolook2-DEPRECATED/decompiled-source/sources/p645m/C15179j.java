package p645m;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
/* renamed from: m.j */
/* loaded from: classes3-dex2jar.jar:m/j.class */
public final class C15179j implements AbstractC15193s {

    /* renamed from: b */
    public final AbstractC15174e f33170b;

    /* renamed from: c */
    public final Inflater f33171c;

    /* renamed from: d */
    public final C15180k f33172d;

    /* renamed from: a */
    public int f33169a = 0;

    /* renamed from: e */
    public final CRC32 f33173e = new CRC32();

    public C15179j(AbstractC15193s sVar) {
        if (sVar != null) {
            this.f33171c = new Inflater(true);
            this.f33170b = C15181l.m318a(sVar);
            this.f33172d = new C15180k(this.f33170b, this.f33171c);
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    /* renamed from: a */
    public final void m333a() throws IOException {
        this.f33170b.mo298e(10L);
        byte g = this.f33170b.mo296q().m351g(3L);
        boolean z = ((g >> 1) & 1) == 1;
        if (z) {
            m331a(this.f33170b.mo296q(), 0L, 10L);
        }
        m332a("ID1ID2", 8075, this.f33170b.readShort());
        this.f33170b.skip(8L);
        if (((g >> 2) & 1) == 1) {
            this.f33170b.mo298e(2L);
            if (z) {
                m331a(this.f33170b.mo296q(), 0L, 2L);
            }
            long t = this.f33170b.mo296q().mo294t();
            this.f33170b.mo298e(t);
            if (z) {
                m331a(this.f33170b.mo296q(), 0L, t);
            }
            this.f33170b.skip(t);
        }
        if (((g >> 3) & 1) == 1) {
            long a = this.f33170b.mo306a((byte) 0);
            if (a != -1) {
                if (z) {
                    m331a(this.f33170b.mo296q(), 0L, a + 1);
                }
                this.f33170b.skip(a + 1);
            } else {
                throw new EOFException();
            }
        }
        if (((g >> 4) & 1) == 1) {
            long a2 = this.f33170b.mo306a((byte) 0);
            if (a2 != -1) {
                if (z) {
                    m331a(this.f33170b.mo296q(), 0L, a2 + 1);
                }
                this.f33170b.skip(a2 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (z) {
            m332a("FHCRC", this.f33170b.mo294t(), (short) this.f33173e.getValue());
            this.f33173e.reset();
        }
    }

    /* renamed from: a */
    public final void m332a(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    /* renamed from: a */
    public final void m331a(C15170c cVar, long j, long j2) {
        C15189o oVar = cVar.f33159a;
        while (true) {
            int i = oVar.f33193c;
            int i2 = oVar.f33192b;
            if (j >= i - i2) {
                j -= i - i2;
                oVar = oVar.f33196f;
            }
        }
        while (j2 > 0) {
            int i3 = (int) (oVar.f33192b + j);
            int min = (int) Math.min(oVar.f33193c - i3, j2);
            this.f33173e.update(oVar.f33191a, i3, min);
            j2 -= min;
            oVar = oVar.f33196f;
            j = 0;
        }
    }

    /* renamed from: b */
    public final void m330b() throws IOException {
        m332a("CRC", this.f33170b.mo290x(), (int) this.f33173e.getValue());
        m332a("ISIZE", this.f33170b.mo290x(), (int) this.f33171c.getBytesWritten());
    }

    @Override // p645m.AbstractC15193s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33172d.close();
    }

    @Override // p645m.AbstractC15193s
    public long read(C15170c cVar, long j) throws IOException {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (i == 0) {
            return 0L;
        } else {
            if (this.f33169a == 0) {
                m333a();
                this.f33169a = 1;
            }
            if (this.f33169a == 1) {
                long j2 = cVar.f33160b;
                long read = this.f33172d.read(cVar, j);
                if (read != -1) {
                    m331a(cVar, j2, read);
                    return read;
                }
                this.f33169a = 2;
            }
            if (this.f33169a != 2) {
                return -1L;
            }
            m330b();
            this.f33169a = 3;
            if (this.f33170b.mo292v()) {
                return -1L;
            }
            throw new IOException("gzip finished without exhausting source");
        }
    }

    @Override // p645m.AbstractC15193s
    public C15194t timeout() {
        return this.f33170b.timeout();
    }
}
