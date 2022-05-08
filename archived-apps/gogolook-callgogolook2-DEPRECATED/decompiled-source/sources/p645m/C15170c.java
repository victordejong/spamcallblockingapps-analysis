package p645m;

import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
/* renamed from: m.c */
/* loaded from: classes3-dex2jar.jar:m/c.class */
public final class C15170c implements AbstractC15174e, AbstractC15173d, Cloneable, ByteChannel {

    /* renamed from: c */
    public static final byte[] f33158c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    @Nullable

    /* renamed from: a */
    public C15189o f33159a;

    /* renamed from: b */
    public long f33160b;

    /* renamed from: m.c$a */
    /* loaded from: classes3-dex2jar.jar:m/c$a.class */
    public class C15171a extends OutputStream {
        public C15171a() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
        }

        public String toString() {
            return C15170c.this + ".outputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            C15170c.this.writeByte((int) ((byte) i));
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            C15170c.this.write(bArr, i, i2);
        }
    }

    /* renamed from: m.c$b */
    /* loaded from: classes3-dex2jar.jar:m/c$b.class */
    public class C15172b extends InputStream {
        public C15172b() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(C15170c.this.f33160b, 2147483647L);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            C15170c cVar = C15170c.this;
            if (cVar.f33160b > 0) {
                return cVar.readByte() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            return C15170c.this.m358a(bArr, i, i2);
        }

        public String toString() {
            return C15170c.this + ".inputStream()";
        }
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: A */
    public InputStream mo307A() {
        return new C15172b();
    }

    /* renamed from: a */
    public int m358a(byte[] bArr, int i, int i2) {
        C15196u.m262a(bArr.length, i, i2);
        C15189o oVar = this.f33159a;
        if (oVar == null) {
            return -1;
        }
        int min = Math.min(i2, oVar.f33193c - oVar.f33192b);
        System.arraycopy(oVar.f33191a, oVar.f33192b, bArr, i, min);
        oVar.f33192b += min;
        this.f33160b -= min;
        if (oVar.f33192b == oVar.f33193c) {
            this.f33159a = oVar.m283b();
            C15190p.m280a(oVar);
        }
        return min;
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: a */
    public long mo306a(byte b) {
        return m366a(b, 0L, Long.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [long] */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Unknown variable types count: 5 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m366a(byte r10, long r11, long r13) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p645m.C15170c.m366a(byte, long, long):long");
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: a */
    public long mo301a(AbstractC15192r rVar) throws IOException {
        long j = this.f33160b;
        if (j > 0) {
            rVar.write(this, j);
        }
        return j;
    }

    @Override // p645m.AbstractC15173d
    /* renamed from: a */
    public long mo311a(AbstractC15193s sVar) throws IOException {
        if (sVar != null) {
            long j = 0;
            while (true) {
                long read = sVar.read(this, PsExtractor.MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND);
                if (read == -1) {
                    return j;
                }
                j += read;
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    /* renamed from: a */
    public String m364a(long j, Charset charset) throws EOFException {
        C15196u.m262a(this.f33160b, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        } else if (j == 0) {
            return "";
        } else {
            C15189o oVar = this.f33159a;
            int i = oVar.f33192b;
            if (i + j > oVar.f33193c) {
                return new String(mo299d(j), charset);
            }
            String str = new String(oVar.f33191a, i, (int) j, charset);
            oVar.f33192b = (int) (oVar.f33192b + j);
            this.f33160b -= j;
            if (oVar.f33192b == oVar.f33193c) {
                this.f33159a = oVar.m283b();
                C15190p.m280a(oVar);
            }
            return str;
        }
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: a */
    public String mo302a(Charset charset) {
        try {
            return m364a(this.f33160b, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p645m.AbstractC15173d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p645m.C15170c mo313a(long r7) {
        /*
            Method dump skipped, instructions count: 455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p645m.C15170c.mo313a(long):m.c");
    }

    /* renamed from: a */
    public C15170c m362a(String str, int i, int i2) {
        char charAt;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i);
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 <= str.length()) {
            while (i < i2) {
                char charAt2 = str.charAt(i);
                if (charAt2 < 128) {
                    C15189o b = m357b(1);
                    byte[] bArr = b.f33191a;
                    int i3 = b.f33193c - i;
                    int min = Math.min(i2, 8192 - i3);
                    i++;
                    bArr[i + i3] = (byte) charAt2;
                    while (i < min && (charAt = str.charAt(i)) < 128) {
                        bArr[i + i3] = (byte) charAt;
                        i++;
                    }
                    int i4 = b.f33193c;
                    int i5 = (i3 + i) - i4;
                    b.f33193c = i4 + i5;
                    this.f33160b += i5;
                } else {
                    if (charAt2 < 2048) {
                        writeByte((charAt2 >> 6) | PsExtractor.AUDIO_STREAM);
                        writeByte((charAt2 & '?') | 128);
                    } else if (charAt2 < 55296 || charAt2 > 57343) {
                        writeByte((charAt2 >> '\f') | 224);
                        writeByte(((charAt2 >> 6) & 63) | 128);
                        writeByte((charAt2 & '?') | 128);
                    } else {
                        int i6 = i + 1;
                        char charAt3 = i6 < i2 ? str.charAt(i6) : (char) 0;
                        if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                            writeByte(63);
                            i = i6;
                        } else {
                            int i7 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                            writeByte((i7 >> 18) | 240);
                            writeByte(((i7 >> 12) & 63) | 128);
                            writeByte(((i7 >> 6) & 63) | 128);
                            writeByte((i7 & 63) | 128);
                            i += 2;
                        }
                    }
                    i++;
                }
            }
            return this;
        } else {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
    }

    /* renamed from: a */
    public C15170c m361a(String str, int i, int i2, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i);
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        } else if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (charset.equals(C15196u.f33202a)) {
            m362a(str, i, i2);
            return this;
        } else {
            byte[] bytes = str.substring(i, i2).getBytes(charset);
            write(bytes, 0, bytes.length);
            return this;
        }
    }

    /* renamed from: a */
    public C15170c m360a(String str, Charset charset) {
        m361a(str, 0, str.length(), charset);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [long] */
    /* JADX WARN: Type inference failed for: r19v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p645m.C15170c m359a(p645m.C15170c r8, long r9, long r11) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p645m.C15170c.m359a(m.c, long, long):m.c");
    }

    @Override // p645m.AbstractC15173d
    /* renamed from: a */
    public C15170c mo312a(C15175f fVar) {
        if (fVar != null) {
            fVar.mo274a(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    /* renamed from: a */
    public final C15175f m365a(int i) {
        return i == 0 ? C15175f.f33164e : new C15191q(this, i);
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: a */
    public boolean mo304a(long j, C15175f fVar) {
        return m363a(j, fVar, 0, fVar.mo268f());
    }

    /* renamed from: a */
    public boolean m363a(long j, C15175f fVar, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || this.f33160b - j < i2 || fVar.mo268f() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (m351g(i3 + j) != fVar.mo278a(i + i3)) {
                return false;
            }
        }
        return true;
    }

    @Override // p645m.AbstractC15173d
    /* renamed from: b */
    public C15170c mo310b(long j) {
        if (j == 0) {
            writeByte(48);
            return this;
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        C15189o b = m357b(numberOfTrailingZeros);
        byte[] bArr = b.f33191a;
        int i = b.f33193c;
        for (int i2 = (i + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = f33158c[(int) (15 & j)];
            j >>>= 4;
        }
        b.f33193c += numberOfTrailingZeros;
        this.f33160b += numberOfTrailingZeros;
        return this;
    }

    /* renamed from: b */
    public C15189o m357b(int i) {
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException();
        }
        C15189o oVar = this.f33159a;
        if (oVar == null) {
            this.f33159a = C15190p.m281a();
            C15189o oVar2 = this.f33159a;
            oVar2.f33197g = oVar2;
            oVar2.f33196f = oVar2;
            return oVar2;
        }
        C15189o oVar3 = oVar.f33197g;
        if (oVar3.f33193c + i > 8192 || !oVar3.f33195e) {
            C15189o a = C15190p.m281a();
            oVar3.m285a(a);
            oVar3 = a;
        }
        return oVar3;
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: c */
    public String mo300c(long j) throws EOFException {
        if (j >= 0) {
            long j2 = Long.MAX_VALUE;
            if (j != Long.MAX_VALUE) {
                j2 = j + 1;
            }
            long a = m366a((byte) 10, 0L, j2);
            if (a != -1) {
                return m347i(a);
            }
            if (j2 < m348i() && m351g(j2 - 1) == 13 && m351g(j2) == 10) {
                return m347i(j2);
            }
            C15170c cVar = new C15170c();
            m359a(cVar, 0L, Math.min(32L, m348i()));
            throw new EOFException("\\n not found: limit=" + Math.min(m348i(), j) + " content=" + cVar.m352g().mo273b() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: " + j);
    }

    /* renamed from: c */
    public C15170c m356c(int i) {
        if (i < 128) {
            writeByte(i);
        } else if (i < 2048) {
            writeByte((i >> 6) | PsExtractor.AUDIO_STREAM);
            writeByte((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                writeByte((i >> 12) | 224);
                writeByte(((i >> 6) & 63) | 128);
                writeByte((i & 63) | 128);
            } else {
                writeByte(63);
            }
        } else if (i <= 1114111) {
            writeByte((i >> 18) | 240);
            writeByte(((i >> 12) & 63) | 128);
            writeByte(((i >> 6) & 63) | 128);
            writeByte((i & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        }
        return this;
    }

    public C15170c clone() {
        C15170c cVar = new C15170c();
        if (this.f33160b == 0) {
            return cVar;
        }
        cVar.f33159a = this.f33159a.m282c();
        C15189o oVar = cVar.f33159a;
        oVar.f33197g = oVar;
        oVar.f33196f = oVar;
        C15189o oVar2 = this.f33159a;
        while (true) {
            oVar2 = oVar2.f33196f;
            if (oVar2 != this.f33159a) {
                cVar.f33159a.f33197g.m285a(oVar2.m282c());
            } else {
                cVar.f33160b = this.f33160b;
                return cVar;
            }
        }
    }

    @Override // p645m.AbstractC15193s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* renamed from: d */
    public final void m355d() {
        try {
            skip(this.f33160b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: d */
    public byte[] mo299d(long j) throws EOFException {
        C15196u.m262a(this.f33160b, 0L, j);
        if (j <= 2147483647L) {
            byte[] bArr = new byte[(int) j];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m354e() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f33160b
            r6 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000d
            r0 = 0
            return r0
        L_0x000d:
            r0 = r5
            m.o r0 = r0.f33159a
            m.o r0 = r0.f33197g
            r8 = r0
            r0 = r8
            int r0 = r0.f33193c
            r9 = r0
            r0 = r6
            r10 = r0
            r0 = r9
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 >= r1) goto L_0x003c
            r0 = r6
            r10 = r0
            r0 = r8
            boolean r0 = r0.f33195e
            if (r0 == 0) goto L_0x003c
            r0 = r6
            r1 = r9
            r2 = r8
            int r2 = r2.f33192b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 - r1
            r10 = r0
        L_0x003c:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p645m.C15170c.m354e():long");
    }

    @Override // p645m.AbstractC15173d
    /* renamed from: e */
    public C15170c mo309e(String str) {
        m362a(str, 0, str.length());
        return this;
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: e */
    public void mo298e(long j) throws EOFException {
        if (this.f33160b < j) {
            throw new EOFException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C15170c)) {
            return false;
        }
        C15170c cVar = (C15170c) obj;
        long j = this.f33160b;
        if (j != cVar.f33160b) {
            return false;
        }
        long j2 = 0;
        if (j == 0) {
            return true;
        }
        C15189o oVar = this.f33159a;
        C15189o oVar2 = cVar.f33159a;
        int i = oVar.f33192b;
        int i2 = oVar2.f33192b;
        while (j2 < this.f33160b) {
            long min = Math.min(oVar.f33193c - i, oVar2.f33193c - i2);
            int i3 = 0;
            while (i3 < min) {
                if (oVar.f33191a[i] != oVar2.f33191a[i2]) {
                    return false;
                }
                i3++;
                i++;
                i2++;
            }
            if (i == oVar.f33193c) {
                oVar = oVar.f33196f;
                i = oVar.f33192b;
            }
            if (i2 == oVar2.f33193c) {
                oVar2 = oVar2.f33196f;
                i2 = oVar2.f33192b;
            }
            j2 += min;
        }
        return true;
    }

    /* renamed from: f */
    public OutputStream m353f() {
        return new C15171a();
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: f */
    public C15175f mo297f(long j) throws EOFException {
        return new C15175f(mo299d(j));
    }

    @Override // p645m.AbstractC15173d, p645m.AbstractC15192r, java.io.Flushable
    public void flush() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte m351g(long r8) {
        /*
            r7 = this;
            r0 = r7
            long r0 = r0.f33160b
            r1 = r8
            r2 = 1
            p645m.C15196u.m262a(r0, r1, r2)
            r0 = r7
            long r0 = r0.f33160b
            r10 = r0
            r0 = r10
            r1 = r8
            long r0 = r0 - r1
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0051
            r0 = r7
            m.o r0 = r0.f33159a
            r12 = r0
        L_0x001c:
            r0 = r12
            int r0 = r0.f33193c
            r13 = r0
            r0 = r12
            int r0 = r0.f33192b
            r14 = r0
            r0 = r13
            r1 = r14
            int r0 = r0 - r1
            long r0 = (long) r0
            r10 = r0
            r0 = r8
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0043
            r0 = r12
            byte[] r0 = r0.f33191a
            r1 = r14
            r2 = r8
            int r2 = (int) r2
            int r1 = r1 + r2
            r0 = r0[r1]
            return r0
        L_0x0043:
            r0 = r8
            r1 = r10
            long r0 = r0 - r1
            r8 = r0
            r0 = r12
            m.o r0 = r0.f33196f
            r12 = r0
            goto L_0x001c
        L_0x0051:
            r0 = r8
            r1 = r10
            long r0 = r0 - r1
            r8 = r0
            r0 = r7
            m.o r0 = r0.f33159a
            r12 = r0
        L_0x005b:
            r0 = r12
            m.o r0 = r0.f33197g
            r15 = r0
            r0 = r15
            int r0 = r0.f33193c
            r13 = r0
            r0 = r15
            int r0 = r0.f33192b
            r14 = r0
            r0 = r8
            r1 = r13
            r2 = r14
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 + r1
            r10 = r0
            r0 = r15
            r12 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x005b
            r0 = r15
            byte[] r0 = r0.f33191a
            r1 = r14
            r2 = r10
            int r2 = (int) r2
            int r1 = r1 + r2
            r0 = r0[r1]
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p645m.C15170c.m351g(long):byte");
    }

    /* renamed from: g */
    public C15175f m352g() {
        return new C15175f(mo293u());
    }

    /* renamed from: h */
    public int m350h() throws EOFException {
        int i;
        int i2;
        int i3;
        if (this.f33160b != 0) {
            byte g = m351g(0L);
            if ((g & 128) == 0) {
                i3 = g & Byte.MAX_VALUE;
                i2 = 1;
                i = 0;
            } else if ((g & 224) == 192) {
                i3 = g & 31;
                i2 = 2;
                i = 128;
            } else if ((g & 240) == 224) {
                i3 = g & 15;
                i2 = 3;
                i = 2048;
            } else if ((g & 248) == 240) {
                i3 = g & 7;
                i2 = 4;
                i = 65536;
            } else {
                skip(1L);
                return 65533;
            }
            long j = i2;
            if (this.f33160b >= j) {
                for (int i4 = 1; i4 < i2; i4++) {
                    long j2 = i4;
                    byte g2 = m351g(j2);
                    if ((g2 & 192) == 128) {
                        i3 = (i3 << 6) | (g2 & 63);
                    } else {
                        skip(j2);
                        return 65533;
                    }
                }
                skip(j);
                if (i3 > 1114111) {
                    return 65533;
                }
                if ((i3 < 55296 || i3 > 57343) && i3 >= i) {
                    return i3;
                }
                return 65533;
            }
            throw new EOFException("size < " + i2 + ": " + this.f33160b + " (to read code point prefixed 0x" + Integer.toHexString(g) + ")");
        }
        throw new EOFException();
    }

    /* renamed from: h */
    public String m349h(long j) throws EOFException {
        return m364a(j, C15196u.f33202a);
    }

    public int hashCode() {
        C15189o oVar;
        C15189o oVar2 = this.f33159a;
        if (oVar2 == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = oVar2.f33193c;
            for (int i3 = oVar2.f33192b; i3 < i2; i3++) {
                i = (i * 31) + oVar2.f33191a[i3];
            }
            oVar = oVar2.f33196f;
            oVar2 = oVar;
            i = i;
        } while (oVar != this.f33159a);
        return i;
    }

    /* renamed from: i */
    public final long m348i() {
        return this.f33160b;
    }

    /* renamed from: i */
    public String m347i(long j) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (m351g(j2) == 13) {
                String h = m349h(j2);
                skip(2L);
                return h;
            }
        }
        String h2 = m349h(j);
        skip(1L);
        return h2;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    /* renamed from: j */
    public final C15175f m346j() {
        long j = this.f33160b;
        if (j <= 2147483647L) {
            return m365a((int) j);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f33160b);
    }

    @Override // p645m.AbstractC15174e, p645m.AbstractC15173d
    /* renamed from: q */
    public C15170c mo296q() {
        return this;
    }

    @Override // p645m.AbstractC15173d
    /* renamed from: r */
    public C15170c mo308r() {
        return this;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        C15189o oVar = this.f33159a;
        if (oVar == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), oVar.f33193c - oVar.f33192b);
        byteBuffer.put(oVar.f33191a, oVar.f33192b, min);
        oVar.f33192b += min;
        this.f33160b -= min;
        if (oVar.f33192b == oVar.f33193c) {
            this.f33159a = oVar.m283b();
            C15190p.m280a(oVar);
        }
        return min;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p645m.AbstractC15193s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long read(p645m.C15170c r6, long r7) {
        /*
            r5 = this;
            r0 = r6
            if (r0 == 0) goto L_0x0055
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0033
            r0 = r5
            long r0 = r0.f33160b
            r9 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001b
            r0 = -1
            return r0
        L_0x001b:
            r0 = r7
            r11 = r0
            r0 = r7
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0029
            r0 = r9
            r11 = r0
        L_0x0029:
            r0 = r6
            r1 = r5
            r2 = r11
            r0.write(r1, r2)
            r0 = r11
            return r0
        L_0x0033:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "byteCount < 0: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x0055:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "sink == null"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p645m.C15170c.read(m.c, long):long");
    }

    @Override // p645m.AbstractC15174e
    public byte readByte() {
        long j = this.f33160b;
        if (j != 0) {
            C15189o oVar = this.f33159a;
            int i = oVar.f33192b;
            int i2 = oVar.f33193c;
            byte[] bArr = oVar.f33191a;
            int i3 = i + 1;
            byte b = bArr[i];
            this.f33160b = j - 1;
            if (i3 == i2) {
                this.f33159a = oVar.m283b();
                C15190p.m280a(oVar);
            } else {
                oVar.f33192b = i3;
            }
            return b;
        }
        throw new IllegalStateException("size == 0");
    }

    @Override // p645m.AbstractC15174e
    public void readFully(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int a = m358a(bArr, i, bArr.length - i);
            if (a != -1) {
                i += a;
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // p645m.AbstractC15174e
    public int readInt() {
        long j = this.f33160b;
        if (j >= 4) {
            C15189o oVar = this.f33159a;
            int i = oVar.f33192b;
            int i2 = oVar.f33193c;
            if (i2 - i < 4) {
                return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
            }
            byte[] bArr = oVar.f33191a;
            int i3 = i + 1;
            byte b = bArr[i];
            int i4 = i3 + 1;
            byte b2 = bArr[i3];
            int i5 = i4 + 1;
            byte b3 = bArr[i4];
            int i6 = i5 + 1;
            byte b4 = bArr[i5];
            this.f33160b = j - 4;
            if (i6 == i2) {
                this.f33159a = oVar.m283b();
                C15190p.m280a(oVar);
            } else {
                oVar.f33192b = i6;
            }
            return ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (b4 & 255);
        }
        throw new IllegalStateException("size < 4: " + this.f33160b);
    }

    @Override // p645m.AbstractC15174e
    public short readShort() {
        long j = this.f33160b;
        if (j >= 2) {
            C15189o oVar = this.f33159a;
            int i = oVar.f33192b;
            int i2 = oVar.f33193c;
            if (i2 - i < 2) {
                return (short) (((readByte() & 255) << 8) | (readByte() & 255));
            }
            byte[] bArr = oVar.f33191a;
            int i3 = i + 1;
            byte b = bArr[i];
            int i4 = i3 + 1;
            byte b2 = bArr[i3];
            this.f33160b = j - 2;
            if (i4 == i2) {
                this.f33159a = oVar.m283b();
                C15190p.m280a(oVar);
            } else {
                oVar.f33192b = i4;
            }
            return (short) (((b & 255) << 8) | (b2 & 255));
        }
        throw new IllegalStateException("size < 2: " + this.f33160b);
    }

    @Override // p645m.AbstractC15174e
    public boolean request(long j) {
        return this.f33160b >= j;
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: s */
    public String mo295s() throws EOFException {
        return mo300c(Long.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p645m.AbstractC15174e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void skip(long r7) throws java.io.EOFException {
        /*
            r6 = this;
        L_0x0000:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0072
            r0 = r6
            m.o r0 = r0.f33159a
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x006a
            r0 = r7
            r1 = r9
            int r1 = r1.f33193c
            r2 = r9
            int r2 = r2.f33192b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r10 = r0
            r0 = r6
            long r0 = r0.f33160b
            r11 = r0
            r0 = r10
            long r0 = (long) r0
            r13 = r0
            r0 = r6
            r1 = r11
            r2 = r13
            long r1 = r1 - r2
            r0.f33160b = r1
            r0 = r7
            r1 = r13
            long r0 = r0 - r1
            r13 = r0
            r0 = r6
            m.o r0 = r0.f33159a
            r9 = r0
            r0 = r9
            r1 = r9
            int r1 = r1.f33192b
            r2 = r10
            int r1 = r1 + r2
            r0.f33192b = r1
            r0 = r13
            r7 = r0
            r0 = r9
            int r0 = r0.f33192b
            r1 = r9
            int r1 = r1.f33193c
            if (r0 != r1) goto L_0x0000
            r0 = r6
            r1 = r9
            m.o r1 = r1.m283b()
            r0.f33159a = r1
            r0 = r9
            p645m.C15190p.m280a(r0)
            r0 = r13
            r7 = r0
            goto L_0x0000
        L_0x006a:
            java.io.EOFException r0 = new java.io.EOFException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x0072:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p645m.C15170c.skip(long):void");
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: t */
    public short mo294t() {
        return C15196u.m260a(readShort());
    }

    @Override // p645m.AbstractC15193s
    public C15194t timeout() {
        return C15194t.NONE;
    }

    public String toString() {
        return m346j().toString();
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: u */
    public byte[] mo293u() {
        try {
            return mo299d(this.f33160b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: v */
    public boolean mo292v() {
        return this.f33160b == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x016a A[EDGE_INSN: B:50:0x016a->B:43:0x016a ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [long] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p645m.AbstractC15174e
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo291w() {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p645m.C15170c.mo291w():long");
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i = remaining;
            while (i > 0) {
                C15189o b = m357b(1);
                int min = Math.min(i, 8192 - b.f33193c);
                byteBuffer.get(b.f33191a, b.f33193c, min);
                i -= min;
                b.f33193c += min;
            }
            this.f33160b += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // p645m.AbstractC15173d
    public C15170c write(byte[] bArr) {
        if (bArr != null) {
            write(bArr, 0, bArr.length);
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // p645m.AbstractC15173d
    public C15170c write(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            long j = i2;
            C15196u.m262a(bArr.length, i, j);
            int i3 = i2 + i;
            while (i < i3) {
                C15189o b = m357b(1);
                int min = Math.min(i3 - i, 8192 - b.f33193c);
                System.arraycopy(bArr, i, b.f33191a, b.f33193c, min);
                i += min;
                b.f33193c += min;
            }
            this.f33160b += j;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // p645m.AbstractC15192r
    public void write(C15170c cVar, long j) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (cVar != this) {
            C15196u.m262a(cVar.f33160b, 0L, j);
            while (j > 0) {
                C15189o oVar = cVar.f33159a;
                if (j < oVar.f33193c - oVar.f33192b) {
                    C15189o oVar2 = this.f33159a;
                    C15189o oVar3 = oVar2 != null ? oVar2.f33197g : null;
                    if (oVar3 != null && oVar3.f33195e) {
                        if ((oVar3.f33193c + j) - (oVar3.f33194d ? 0 : oVar3.f33192b) <= PsExtractor.MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND) {
                            cVar.f33159a.m284a(oVar3, (int) j);
                            cVar.f33160b -= j;
                            this.f33160b += j;
                            return;
                        }
                    }
                    cVar.f33159a = cVar.f33159a.m286a((int) j);
                }
                C15189o oVar4 = cVar.f33159a;
                long j2 = oVar4.f33193c - oVar4.f33192b;
                cVar.f33159a = oVar4.m283b();
                C15189o oVar5 = this.f33159a;
                if (oVar5 == null) {
                    this.f33159a = oVar4;
                    C15189o oVar6 = this.f33159a;
                    oVar6.f33197g = oVar6;
                    oVar6.f33196f = oVar6;
                } else {
                    oVar5.f33197g.m285a(oVar4);
                    oVar4.m287a();
                }
                cVar.f33160b -= j2;
                this.f33160b += j2;
                j -= j2;
            }
        } else {
            throw new IllegalArgumentException("source == this");
        }
    }

    @Override // p645m.AbstractC15173d
    public C15170c writeByte(int i) {
        C15189o b = m357b(1);
        byte[] bArr = b.f33191a;
        int i2 = b.f33193c;
        b.f33193c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f33160b++;
        return this;
    }

    @Override // p645m.AbstractC15173d
    public C15170c writeInt(int i) {
        C15189o b = m357b(4);
        byte[] bArr = b.f33191a;
        int i2 = b.f33193c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        b.f33193c = i5 + 1;
        this.f33160b += 4;
        return this;
    }

    @Override // p645m.AbstractC15173d
    public C15170c writeShort(int i) {
        C15189o b = m357b(2);
        byte[] bArr = b.f33191a;
        int i2 = b.f33193c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        b.f33193c = i3 + 1;
        this.f33160b += 2;
        return this;
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: x */
    public int mo290x() {
        return C15196u.m263a(readInt());
    }

    @Override // p645m.AbstractC15174e
    /* renamed from: y */
    public String mo289y() {
        try {
            return m364a(this.f33160b, C15196u.f33202a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0159 A[EDGE_INSN: B:46:0x0159->B:42:0x0159 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v37, types: [m.c] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // p645m.AbstractC15174e
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo288z() {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p645m.C15170c.mo288z():long");
    }
}
