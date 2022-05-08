package p645m;

import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* renamed from: m.n */
/* loaded from: classes3-dex2jar.jar:m/n.class */
public final class C15187n implements AbstractC15174e {

    /* renamed from: a */
    public final C15170c f33187a = new C15170c();

    /* renamed from: b */
    public final AbstractC15193s f33188b;

    /* renamed from: c */
    public boolean f33189c;

    /* renamed from: m.n$a */
    /* loaded from: classes3-dex2jar.jar:m/n$a.class */
    public class C15188a extends InputStream {
        public C15188a() {
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            C15187n nVar = C15187n.this;
            if (!nVar.f33189c) {
                return (int) Math.min(nVar.f33187a.f33160b, 2147483647L);
            }
            throw new IOException("closed");
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            C15187n.this.close();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            C15187n nVar = C15187n.this;
            if (!nVar.f33189c) {
                C15170c cVar = nVar.f33187a;
                if (cVar.f33160b == 0 && nVar.f33188b.read(cVar, PsExtractor.MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND) == -1) {
                    return -1;
                }
                return C15187n.this.f33187a.readByte() & 255;
            }
            throw new IOException("closed");
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (!C15187n.this.f33189c) {
                C15196u.m262a(bArr.length, i, i2);
                C15187n nVar = C15187n.this;
                C15170c cVar = nVar.f33187a;
                if (cVar.f33160b == 0 && nVar.f33188b.read(cVar, PsExtractor.MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND) == -1) {
                    return -1;
                }
                return C15187n.this.f33187a.m358a(bArr, i, i2);
            }
            throw new IOException("closed");
        }

        public String toString() {
            return C15187n.this + ".inputStream()";
        }
    }

    public C15187n(AbstractC15193s sVar) {
        if (sVar != null) {
            this.f33188b = sVar;
            return;
        }
        throw new NullPointerException("source == null");
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: A */
    public InputStream mo307A() {
        return new C15188a();
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: a */
    public long mo306a(byte b) throws IOException {
        return m305a(b, 0L, Long.MAX_VALUE);
    }

    /* renamed from: a */
    public long m305a(byte b, long j, long j2) throws IOException {
        if (this.f33189c) {
            throw new IllegalStateException("closed");
        } else if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j), Long.valueOf(j2)));
        } else {
            while (j < j2) {
                long a = this.f33187a.m366a(b, j, j2);
                if (a != -1) {
                    return a;
                }
                C15170c cVar = this.f33187a;
                long j3 = cVar.f33160b;
                if (j3 >= j2 || this.f33188b.read(cVar, PsExtractor.MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND) == -1) {
                    return -1L;
                }
                j = Math.max(j, j3);
            }
            return -1L;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p645m.AbstractC15174e
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo301a(p645m.AbstractC15192r r6) throws java.io.IOException {
        /*
            r5 = this;
            r0 = r6
            if (r0 == 0) goto L_0x0071
            r0 = 0
            r7 = r0
        L_0x0006:
            r0 = r5
            m.s r0 = r0.f33188b
            r1 = r5
            m.c r1 = r1.f33187a
            r2 = 8192(0x2000, double:4.0474E-320)
            long r0 = r0.read(r1, r2)
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0041
            r0 = r5
            m.c r0 = r0.f33187a
            long r0 = r0.m354e()
            r9 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0006
            r0 = r7
            r1 = r9
            long r0 = r0 + r1
            r7 = r0
            r0 = r6
            r1 = r5
            m.c r1 = r1.f33187a
            r2 = r9
            r0.write(r1, r2)
            goto L_0x0006
        L_0x0041:
            r0 = r7
            r9 = r0
            r0 = r5
            m.c r0 = r0.f33187a
            long r0 = r0.m348i()
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x006e
            r0 = r7
            r1 = r5
            m.c r1 = r1.f33187a
            long r1 = r1.m348i()
            long r0 = r0 + r1
            r9 = r0
            r0 = r5
            m.c r0 = r0.f33187a
            r11 = r0
            r0 = r6
            r1 = r11
            r2 = r11
            long r2 = r2.m348i()
            r0.write(r1, r2)
        L_0x006e:
            r0 = r9
            return r0
        L_0x0071:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "sink == null"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p645m.C15187n.mo301a(m.r):long");
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: a */
    public String mo302a(Charset charset) throws IOException {
        if (charset != null) {
            this.f33187a.mo311a(this.f33188b);
            return this.f33187a.mo302a(charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: a */
    public boolean mo304a(long j, C15175f fVar) throws IOException {
        return m303a(j, fVar, 0, fVar.mo268f());
    }

    /* renamed from: a */
    public boolean m303a(long j, C15175f fVar, int i, int i2) throws IOException {
        if (this.f33189c) {
            throw new IllegalStateException("closed");
        } else if (j < 0 || i < 0 || i2 < 0 || fVar.mo268f() - i < i2) {
            return false;
        } else {
            for (int i3 = 0; i3 < i2; i3++) {
                long j2 = i3 + j;
                if (!(request(1 + j2) && this.f33187a.m351g(j2) == fVar.mo278a(i + i3))) {
                    return false;
                }
            }
            return true;
        }
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: c */
    public String mo300c(long j) throws IOException {
        if (j >= 0) {
            long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
            long a = m305a((byte) 10, 0L, j2);
            if (a != -1) {
                return this.f33187a.m347i(a);
            }
            if (j2 < Long.MAX_VALUE && request(j2) && this.f33187a.m351g(j2 - 1) == 13 && request(1 + j2) && this.f33187a.m351g(j2) == 10) {
                return this.f33187a.m347i(j2);
            }
            C15170c cVar = new C15170c();
            C15170c cVar2 = this.f33187a;
            cVar2.m359a(cVar, 0L, Math.min(32L, cVar2.m348i()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f33187a.m348i(), j) + " content=" + cVar.m352g().mo273b() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: " + j);
    }

    @Override // p645m.AbstractC15193s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f33189c) {
            this.f33189c = true;
            this.f33188b.close();
            this.f33187a.m355d();
        }
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: d */
    public byte[] mo299d(long j) throws IOException {
        mo298e(j);
        return this.f33187a.mo299d(j);
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: e */
    public void mo298e(long j) throws IOException {
        if (!request(j)) {
            throw new EOFException();
        }
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: f */
    public C15175f mo297f(long j) throws IOException {
        mo298e(j);
        return this.f33187a.mo297f(j);
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f33189c;
    }

    @Override // p645m.AbstractC15174e, p645m.AbstractC15173d
    /* renamed from: q */
    public C15170c mo296q() {
        return this.f33187a;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        C15170c cVar = this.f33187a;
        if (cVar.f33160b == 0 && this.f33188b.read(cVar, PsExtractor.MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND) == -1) {
            return -1;
        }
        return this.f33187a.read(byteBuffer);
    }

    @Override // p645m.AbstractC15193s
    public long read(C15170c cVar, long j) throws IOException {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        } else if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (!this.f33189c) {
            C15170c cVar2 = this.f33187a;
            if (cVar2.f33160b == 0 && this.f33188b.read(cVar2, PsExtractor.MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND) == -1) {
                return -1L;
            }
            return this.f33187a.read(cVar, Math.min(j, this.f33187a.f33160b));
        } else {
            throw new IllegalStateException("closed");
        }
    }

    @Override // p645m.AbstractC15174e
    public byte readByte() throws IOException {
        mo298e(1L);
        return this.f33187a.readByte();
    }

    @Override // p645m.AbstractC15174e
    public void readFully(byte[] bArr) throws IOException {
        try {
            mo298e(bArr.length);
            this.f33187a.readFully(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                C15170c cVar = this.f33187a;
                long j = cVar.f33160b;
                if (j > 0) {
                    int a = cVar.m358a(bArr, i, (int) j);
                    if (a != -1) {
                        i += a;
                    } else {
                        throw new AssertionError();
                    }
                } else {
                    throw e;
                }
            }
        }
    }

    @Override // p645m.AbstractC15174e
    public int readInt() throws IOException {
        mo298e(4L);
        return this.f33187a.readInt();
    }

    @Override // p645m.AbstractC15174e
    public short readShort() throws IOException {
        mo298e(2L);
        return this.f33187a.readShort();
    }

    @Override // p645m.AbstractC15174e
    public boolean request(long j) throws IOException {
        C15170c cVar;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (!this.f33189c) {
            do {
                cVar = this.f33187a;
                if (cVar.f33160b >= j) {
                    return true;
                }
            } while (this.f33188b.read(cVar, PsExtractor.MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND) != -1);
            return false;
        } else {
            throw new IllegalStateException("closed");
        }
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: s */
    public String mo295s() throws IOException {
        return mo300c(Long.MAX_VALUE);
    }

    @Override // p645m.AbstractC15174e
    public void skip(long j) throws IOException {
        if (!this.f33189c) {
            while (j > 0) {
                C15170c cVar = this.f33187a;
                if (cVar.f33160b == 0 && this.f33188b.read(cVar, PsExtractor.MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j, this.f33187a.m348i());
                this.f33187a.skip(min);
                j -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: t */
    public short mo294t() throws IOException {
        mo298e(2L);
        return this.f33187a.mo294t();
    }

    @Override // p645m.AbstractC15193s
    public C15194t timeout() {
        return this.f33188b.timeout();
    }

    public String toString() {
        return "buffer(" + this.f33188b + ")";
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: u */
    public byte[] mo293u() throws IOException {
        this.f33187a.mo311a(this.f33188b);
        return this.f33187a.mo293u();
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: v */
    public boolean mo292v() throws IOException {
        if (!this.f33189c) {
            return this.f33187a.mo292v() && this.f33188b.read(this.f33187a, PsExtractor.MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND) == -1;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: w */
    public long mo291w() throws IOException {
        byte g;
        mo298e(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!request(i2)) {
                break;
            }
            g = this.f33187a.m351g(i);
            if ((g < 48 || g > 57) && !(i == 0 && g == 45)) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9] or '-' character but was %#x", Byte.valueOf(g)));
        }
        return this.f33187a.mo291w();
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: x */
    public int mo290x() throws IOException {
        mo298e(4L);
        return this.f33187a.mo290x();
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: y */
    public String mo289y() throws IOException {
        this.f33187a.mo311a(this.f33188b);
        return this.f33187a.mo289y();
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: z */
    public long mo288z() throws IOException {
        byte g;
        mo298e(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!request(i2)) {
                break;
            }
            g = this.f33187a.m351g(i);
            if ((g < 48 || g > 57) && ((g < 97 || g > 102) && (g < 65 || g > 70))) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(g)));
        }
        return this.f33187a.mo288z();
    }
}
