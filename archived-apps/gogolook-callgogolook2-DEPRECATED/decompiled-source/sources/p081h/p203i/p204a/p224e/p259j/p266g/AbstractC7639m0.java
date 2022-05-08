package p081h.p203i.p204a.p224e.p259j.p266g;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;
import p459j.p460a.p541n0.C13032a;
/* renamed from: h.i.a.e.j.g.m0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/m0.class */
public abstract class AbstractC7639m0 extends AbstractC7734z {

    /* renamed from: b */
    public static final Logger f17915b = Logger.getLogger(AbstractC7639m0.class.getName());

    /* renamed from: c */
    public static final boolean f17916c = C7543a4.m20354b();

    /* renamed from: a */
    public C7658o0 f17917a;

    /* renamed from: h.i.a.e.j.g.m0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/m0$a.class */
    public static class C7640a extends AbstractC7639m0 {

        /* renamed from: d */
        public final byte[] f17918d;

        /* renamed from: e */
        public final int f17919e;

        /* renamed from: f */
        public final int f17920f;

        /* renamed from: g */
        public int f17921g;

        public C7640a(byte[] bArr, int i, int i2) {
            super();
            if (bArr != null) {
                int i3 = i + i2;
                if ((i | i2 | (bArr.length - i3)) >= 0) {
                    this.f17918d = bArr;
                    this.f17919e = i;
                    this.f17921g = i;
                    this.f17920f = i3;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            throw new NullPointerException("buffer");
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public void mo19999a() {
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19998a(byte b) throws IOException {
            try {
                byte[] bArr = this.f17918d;
                int i = this.f17921g;
                this.f17921g = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new C7642c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17921g), Integer.valueOf(this.f17920f), 1), e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19997a(int i) throws IOException {
            if (i >= 0) {
                mo19987b(i);
            } else {
                mo19989a(i);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19996a(int i, int i2) throws IOException {
            mo19987b((i << 3) | i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19995a(int i, long j) throws IOException {
            mo19996a(i, 0);
            mo19989a(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19994a(int i, AbstractC7539a0 a0Var) throws IOException {
            mo19996a(i, 2);
            m20008b(a0Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19993a(int i, AbstractC7627k2 k2Var) throws IOException {
            mo19996a(i, 2);
            m20006c(k2Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19992a(int i, AbstractC7627k2 k2Var, AbstractC7554b3 b3Var) throws IOException {
            mo19996a(i, 2);
            AbstractC7671q qVar = (AbstractC7671q) k2Var;
            int h = qVar.mo19827h();
            int i2 = h;
            if (h == -1) {
                i2 = b3Var.mo19859c(qVar);
                qVar.mo19829a(i2);
            }
            mo19987b(i2);
            b3Var.mo19864a((AbstractC7554b3) k2Var, (AbstractC7662o4) this.f17917a);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19991a(int i, String str) throws IOException {
            mo19996a(i, 2);
            m20007b(str);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19990a(int i, boolean z) throws IOException {
            mo19996a(i, 0);
            mo19998a(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo19989a(long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0.C7640a.mo19989a(long):void");
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7734z
        /* renamed from: a */
        public final void mo19641a(byte[] bArr, int i, int i2) throws IOException {
            mo19980b(bArr, i, i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final int mo19988b() {
            return this.f17920f - this.f17921g;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final void mo19987b(int i) throws IOException {
            int i2 = i;
            if (AbstractC7639m0.f17916c) {
                i2 = i;
                if (mo19988b() >= 10) {
                    while ((i & (-128)) != 0) {
                        byte[] bArr = this.f17918d;
                        int i3 = this.f17921g;
                        this.f17921g = i3 + 1;
                        C7543a4.m20356a(bArr, i3, (byte) ((i & 127) | 128));
                        i >>>= 7;
                    }
                    byte[] bArr2 = this.f17918d;
                    int i4 = this.f17921g;
                    this.f17921g = i4 + 1;
                    C7543a4.m20356a(bArr2, i4, (byte) i);
                    return;
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f17918d;
                    int i5 = this.f17921g;
                    this.f17921g = i5 + 1;
                    bArr3[i5] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new C7642c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17921g), Integer.valueOf(this.f17920f), 1), e);
                }
            }
            byte[] bArr4 = this.f17918d;
            int i6 = this.f17921g;
            this.f17921g = i6 + 1;
            bArr4[i6] = (byte) i2;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final void mo19986b(int i, int i2) throws IOException {
            mo19996a(i, 0);
            mo19997a(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final void mo19985b(int i, AbstractC7539a0 a0Var) throws IOException {
            mo19996a(1, 3);
            mo19979c(2, i);
            mo19994a(3, a0Var);
            mo19996a(1, 4);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final void mo19984b(int i, AbstractC7627k2 k2Var) throws IOException {
            mo19996a(1, 3);
            mo19979c(2, i);
            mo19993a(3, k2Var);
            mo19996a(1, 4);
        }

        /* renamed from: b */
        public final void m20008b(AbstractC7539a0 a0Var) throws IOException {
            mo19987b(a0Var.size());
            a0Var.mo20140a(this);
        }

        /* renamed from: b */
        public final void m20007b(String str) throws IOException {
            int i = this.f17921g;
            try {
                int g = AbstractC7639m0.m20025g(str.length() * 3);
                int g2 = AbstractC7639m0.m20025g(str.length());
                if (g2 == g) {
                    this.f17921g = i + g2;
                    int a = C7565c4.m20288a(str, this.f17918d, this.f17921g, mo19988b());
                    this.f17921g = i;
                    mo19987b((a - i) - g2);
                    this.f17921g = a;
                    return;
                }
                mo19987b(C7565c4.m20290a(str));
                this.f17921g = C7565c4.m20288a(str, this.f17918d, this.f17921g, mo19988b());
            } catch (C7591f4 e) {
                this.f17921g = i;
                m20059a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new C7642c(e2);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final void mo19980b(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f17918d, this.f17921g, i2);
                this.f17921g += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new C7642c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17921g), Integer.valueOf(this.f17920f), Integer.valueOf(i2)), e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: c */
        public final void mo19979c(int i, int i2) throws IOException {
            mo19996a(i, 0);
            mo19987b(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: c */
        public final void mo19978c(int i, long j) throws IOException {
            mo19996a(i, 1);
            mo19977c(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: c */
        public final void mo19977c(long j) throws IOException {
            try {
                byte[] bArr = this.f17918d;
                int i = this.f17921g;
                this.f17921g = i + 1;
                bArr[i] = (byte) j;
                byte[] bArr2 = this.f17918d;
                int i2 = this.f17921g;
                this.f17921g = i2 + 1;
                bArr2[i2] = (byte) (j >> 8);
                byte[] bArr3 = this.f17918d;
                int i3 = this.f17921g;
                this.f17921g = i3 + 1;
                bArr3[i3] = (byte) (j >> 16);
                byte[] bArr4 = this.f17918d;
                int i4 = this.f17921g;
                this.f17921g = i4 + 1;
                bArr4[i4] = (byte) (j >> 24);
                byte[] bArr5 = this.f17918d;
                int i5 = this.f17921g;
                this.f17921g = i5 + 1;
                bArr5[i5] = (byte) (j >> 32);
                byte[] bArr6 = this.f17918d;
                int i6 = this.f17921g;
                this.f17921g = i6 + 1;
                bArr6[i6] = (byte) (j >> 40);
                byte[] bArr7 = this.f17918d;
                int i7 = this.f17921g;
                this.f17921g = i7 + 1;
                bArr7[i7] = (byte) (j >> 48);
                byte[] bArr8 = this.f17918d;
                int i8 = this.f17921g;
                this.f17921g = i8 + 1;
                bArr8[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new C7642c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17921g), Integer.valueOf(this.f17920f), 1), e);
            }
        }

        /* renamed from: c */
        public final void m20006c(AbstractC7627k2 k2Var) throws IOException {
            mo19987b(k2Var.mo20085g());
            k2Var.mo20088a(this);
        }

        /* renamed from: d */
        public final int m20005d() {
            return this.f17921g - this.f17919e;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: d */
        public final void mo19975d(int i) throws IOException {
            try {
                byte[] bArr = this.f17918d;
                int i2 = this.f17921g;
                this.f17921g = i2 + 1;
                bArr[i2] = (byte) i;
                byte[] bArr2 = this.f17918d;
                int i3 = this.f17921g;
                this.f17921g = i3 + 1;
                bArr2[i3] = (byte) (i >> 8);
                byte[] bArr3 = this.f17918d;
                int i4 = this.f17921g;
                this.f17921g = i4 + 1;
                bArr3[i4] = (byte) (i >> 16);
                byte[] bArr4 = this.f17918d;
                int i5 = this.f17921g;
                this.f17921g = i5 + 1;
                bArr4[i5] = (byte) (i >> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new C7642c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f17921g), Integer.valueOf(this.f17920f), 1), e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: e */
        public final void mo19974e(int i, int i2) throws IOException {
            mo19996a(i, 5);
            mo19975d(i2);
        }
    }

    /* renamed from: h.i.a.e.j.g.m0$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/m0$b.class */
    public static final class C7641b extends C7640a {

        /* renamed from: h */
        public final ByteBuffer f17922h;

        /* renamed from: i */
        public int f17923i;

        public C7641b(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.f17922h = byteBuffer;
            this.f17923i = byteBuffer.position();
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0.C7640a, p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19999a() {
            this.f17922h.position(this.f17923i + m20005d());
        }
    }

    /* renamed from: h.i.a.e.j.g.m0$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/m0$c.class */
    public static final class C7642c extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C7642c(java.lang.String r5) {
            /*
                r4 = this;
                r0 = r5
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r5 = r0
                r0 = r5
                int r0 = r0.length()
                if (r0 == 0) goto L_0x0016
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1 = r5
                java.lang.String r0 = r0.concat(r1)
                r5 = r0
                goto L_0x0020
            L_0x0016:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1.<init>(r2)
                r5 = r0
            L_0x0020:
                r0 = r4
                r1 = r5
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0.C7642c.<init>(java.lang.String):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C7642c(java.lang.String r5, java.lang.Throwable r6) {
            /*
                r4 = this;
                r0 = r5
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r5 = r0
                r0 = r5
                int r0 = r0.length()
                if (r0 == 0) goto L_0x0016
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1 = r5
                java.lang.String r0 = r0.concat(r1)
                r5 = r0
                goto L_0x0020
            L_0x0016:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1.<init>(r2)
                r5 = r0
            L_0x0020:
                r0 = r4
                r1 = r5
                r2 = r6
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0.C7642c.<init>(java.lang.String, java.lang.Throwable):void");
        }

        public C7642c(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    /* renamed from: h.i.a.e.j.g.m0$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/m0$d.class */
    public static final class C7643d extends AbstractC7639m0 {

        /* renamed from: d */
        public final ByteBuffer f17924d;

        /* renamed from: e */
        public final ByteBuffer f17925e;

        public C7643d(ByteBuffer byteBuffer) {
            super();
            this.f17924d = byteBuffer;
            this.f17925e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            byteBuffer.position();
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19999a() {
            this.f17924d.position(this.f17925e.position());
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19998a(byte b) throws IOException {
            try {
                this.f17925e.put(b);
            } catch (BufferOverflowException e) {
                throw new C7642c(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19997a(int i) throws IOException {
            if (i >= 0) {
                mo19987b(i);
            } else {
                mo19989a(i);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19996a(int i, int i2) throws IOException {
            mo19987b((i << 3) | i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19995a(int i, long j) throws IOException {
            mo19996a(i, 0);
            mo19989a(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19994a(int i, AbstractC7539a0 a0Var) throws IOException {
            mo19996a(i, 2);
            m20004b(a0Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19993a(int i, AbstractC7627k2 k2Var) throws IOException {
            mo19996a(i, 2);
            m20001c(k2Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19992a(int i, AbstractC7627k2 k2Var, AbstractC7554b3 b3Var) throws IOException {
            mo19996a(i, 2);
            m20003b(k2Var, b3Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19991a(int i, String str) throws IOException {
            mo19996a(i, 2);
            m20002b(str);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19990a(int i, boolean z) throws IOException {
            mo19996a(i, 0);
            mo19998a(z ? (byte) 1 : (byte) 0);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19989a(long j) throws IOException {
            while (((-128) & j) != 0) {
                try {
                    this.f17925e.put((byte) ((((int) j) & 127) | 128));
                    j >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new C7642c(e);
                }
            }
            this.f17925e.put((byte) j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7734z
        /* renamed from: a */
        public final void mo19641a(byte[] bArr, int i, int i2) throws IOException {
            mo19980b(bArr, i, i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final int mo19988b() {
            return this.f17925e.remaining();
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final void mo19987b(int i) throws IOException {
            while ((i & (-128)) != 0) {
                try {
                    this.f17925e.put((byte) ((i & 127) | 128));
                    i >>>= 7;
                } catch (BufferOverflowException e) {
                    throw new C7642c(e);
                }
            }
            this.f17925e.put((byte) i);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final void mo19986b(int i, int i2) throws IOException {
            mo19996a(i, 0);
            mo19997a(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final void mo19985b(int i, AbstractC7539a0 a0Var) throws IOException {
            mo19996a(1, 3);
            mo19979c(2, i);
            mo19994a(3, a0Var);
            mo19996a(1, 4);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final void mo19984b(int i, AbstractC7627k2 k2Var) throws IOException {
            mo19996a(1, 3);
            mo19979c(2, i);
            mo19993a(3, k2Var);
            mo19996a(1, 4);
        }

        /* renamed from: b */
        public final void m20004b(AbstractC7539a0 a0Var) throws IOException {
            mo19987b(a0Var.size());
            a0Var.mo20140a(this);
        }

        /* renamed from: b */
        public final void m20003b(AbstractC7627k2 k2Var, AbstractC7554b3 b3Var) throws IOException {
            AbstractC7671q qVar = (AbstractC7671q) k2Var;
            int h = qVar.mo19827h();
            int i = h;
            if (h == -1) {
                i = b3Var.mo19859c(qVar);
                qVar.mo19829a(i);
            }
            mo19987b(i);
            b3Var.mo19864a((AbstractC7554b3) k2Var, (AbstractC7662o4) this.f17917a);
        }

        /* renamed from: b */
        public final void m20002b(String str) throws IOException {
            int position = this.f17925e.position();
            try {
                int g = AbstractC7639m0.m20025g(str.length() * 3);
                int g2 = AbstractC7639m0.m20025g(str.length());
                if (g2 == g) {
                    int position2 = this.f17925e.position() + g2;
                    this.f17925e.position(position2);
                    m20000c(str);
                    int position3 = this.f17925e.position();
                    this.f17925e.position(position);
                    mo19987b(position3 - position2);
                    this.f17925e.position(position3);
                    return;
                }
                mo19987b(C7565c4.m20290a(str));
                m20000c(str);
            } catch (C7591f4 e) {
                this.f17925e.position(position);
                m20059a(str, e);
            } catch (IllegalArgumentException e2) {
                throw new C7642c(e2);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final void mo19980b(byte[] bArr, int i, int i2) throws IOException {
            try {
                this.f17925e.put(bArr, i, i2);
            } catch (IndexOutOfBoundsException e) {
                throw new C7642c(e);
            } catch (BufferOverflowException e2) {
                throw new C7642c(e2);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: c */
        public final void mo19979c(int i, int i2) throws IOException {
            mo19996a(i, 0);
            mo19987b(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: c */
        public final void mo19978c(int i, long j) throws IOException {
            mo19996a(i, 1);
            mo19977c(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: c */
        public final void mo19977c(long j) throws IOException {
            try {
                this.f17925e.putLong(j);
            } catch (BufferOverflowException e) {
                throw new C7642c(e);
            }
        }

        /* renamed from: c */
        public final void m20001c(AbstractC7627k2 k2Var) throws IOException {
            mo19987b(k2Var.mo20085g());
            k2Var.mo20088a(this);
        }

        /* renamed from: c */
        public final void m20000c(String str) throws IOException {
            try {
                C7565c4.m20289a(str, this.f17925e);
            } catch (IndexOutOfBoundsException e) {
                throw new C7642c(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: d */
        public final void mo19975d(int i) throws IOException {
            try {
                this.f17925e.putInt(i);
            } catch (BufferOverflowException e) {
                throw new C7642c(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: e */
        public final void mo19974e(int i, int i2) throws IOException {
            mo19996a(i, 5);
            mo19975d(i2);
        }
    }

    /* renamed from: h.i.a.e.j.g.m0$e */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/m0$e.class */
    public static final class C7644e extends AbstractC7639m0 {

        /* renamed from: d */
        public final ByteBuffer f17926d;

        /* renamed from: e */
        public final ByteBuffer f17927e;

        /* renamed from: f */
        public final long f17928f;

        /* renamed from: g */
        public final long f17929g;

        /* renamed from: h */
        public final long f17930h;

        /* renamed from: i */
        public final long f17931i;

        /* renamed from: j */
        public long f17932j;

        public C7644e(ByteBuffer byteBuffer) {
            super();
            this.f17926d = byteBuffer;
            this.f17927e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.f17928f = C7543a4.m20358a(byteBuffer);
            this.f17929g = this.f17928f + byteBuffer.position();
            this.f17930h = this.f17928f + byteBuffer.limit();
            this.f17931i = this.f17930h - 10;
            this.f17932j = this.f17929g;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19999a() {
            this.f17926d.position((int) (this.f17932j - this.f17928f));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19998a(byte b) throws IOException {
            long j = this.f17932j;
            if (j < this.f17930h) {
                this.f17932j = 1 + j;
                C7543a4.m20370a(j, b);
                return;
            }
            throw new C7642c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j), Long.valueOf(this.f17930h), 1));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19997a(int i) throws IOException {
            if (i >= 0) {
                mo19987b(i);
            } else {
                mo19989a(i);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19996a(int i, int i2) throws IOException {
            mo19987b((i << 3) | i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19995a(int i, long j) throws IOException {
            mo19996a(i, 0);
            mo19989a(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19994a(int i, AbstractC7539a0 a0Var) throws IOException {
            mo19996a(i, 2);
            m19983b(a0Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19993a(int i, AbstractC7627k2 k2Var) throws IOException {
            mo19996a(i, 2);
            m19976c(k2Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19992a(int i, AbstractC7627k2 k2Var, AbstractC7554b3 b3Var) throws IOException {
            mo19996a(i, 2);
            m19982b(k2Var, b3Var);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19991a(int i, String str) throws IOException {
            mo19996a(i, 2);
            m19981b(str);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        public final void mo19990a(int i, boolean z) throws IOException {
            mo19996a(i, 0);
            mo19998a(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v19, types: [long] */
        /* JADX WARN: Type inference failed for: r10v0, types: [long] */
        /* JADX WARN: Type inference failed for: r10v1, types: [long] */
        /* JADX WARN: Type inference failed for: r10v2, types: [long] */
        /* JADX WARN: Type inference failed for: r10v3, types: [long] */
        /* JADX WARN: Type inference failed for: r10v4 */
        /* JADX WARN: Type inference failed for: r10v6 */
        /* JADX WARN: Type inference failed for: r10v7 */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r12v4 */
        /* JADX WARN: Type inference failed for: r12v6 */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo19989a(long r10) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 178
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0.C7644e.mo19989a(long):void");
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7734z
        /* renamed from: a */
        public final void mo19641a(byte[] bArr, int i, int i2) throws IOException {
            mo19980b(bArr, i, i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final int mo19988b() {
            return (int) (this.f17930h - this.f17932j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final void mo19987b(int i) throws IOException {
            long j;
            int i2 = i;
            if (this.f17932j <= this.f17931i) {
                while ((i & (-128)) != 0) {
                    long j2 = this.f17932j;
                    this.f17932j = j2 + 1;
                    C7543a4.m20370a(j2, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
                j = this.f17932j;
            } else {
                while (true) {
                    j = this.f17932j;
                    if (j >= this.f17930h) {
                        throw new C7642c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j), Long.valueOf(this.f17930h), 1));
                    } else if ((i2 & (-128)) == 0) {
                        i = i2;
                        break;
                    } else {
                        this.f17932j = j + 1;
                        C7543a4.m20370a(j, (byte) ((i2 & 127) | 128));
                        i2 >>>= 7;
                    }
                }
            }
            this.f17932j = 1 + j;
            C7543a4.m20370a(j, (byte) i);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final void mo19986b(int i, int i2) throws IOException {
            mo19996a(i, 0);
            mo19997a(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final void mo19985b(int i, AbstractC7539a0 a0Var) throws IOException {
            mo19996a(1, 3);
            mo19979c(2, i);
            mo19994a(3, a0Var);
            mo19996a(1, 4);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final void mo19984b(int i, AbstractC7627k2 k2Var) throws IOException {
            mo19996a(1, 3);
            mo19979c(2, i);
            mo19993a(3, k2Var);
            mo19996a(1, 4);
        }

        /* renamed from: b */
        public final void m19983b(AbstractC7539a0 a0Var) throws IOException {
            mo19987b(a0Var.size());
            a0Var.mo20140a(this);
        }

        /* renamed from: b */
        public final void m19982b(AbstractC7627k2 k2Var, AbstractC7554b3 b3Var) throws IOException {
            AbstractC7671q qVar = (AbstractC7671q) k2Var;
            int h = qVar.mo19827h();
            int i = h;
            if (h == -1) {
                i = b3Var.mo19859c(qVar);
                qVar.mo19829a(i);
            }
            mo19987b(i);
            b3Var.mo19864a((AbstractC7554b3) k2Var, (AbstractC7662o4) this.f17917a);
        }

        /* renamed from: b */
        public final void m19981b(String str) throws IOException {
            long j = this.f17932j;
            try {
                int g = AbstractC7639m0.m20025g(str.length() * 3);
                int g2 = AbstractC7639m0.m20025g(str.length());
                if (g2 == g) {
                    int i = ((int) (this.f17932j - this.f17928f)) + g2;
                    this.f17927e.position(i);
                    C7565c4.m20289a(str, this.f17927e);
                    int position = this.f17927e.position() - i;
                    mo19987b(position);
                    this.f17932j += position;
                    return;
                }
                int a = C7565c4.m20290a(str);
                mo19987b(a);
                m19973j(this.f17932j);
                C7565c4.m20289a(str, this.f17927e);
                this.f17932j += a;
            } catch (C7591f4 e) {
                this.f17932j = j;
                m19973j(this.f17932j);
                m20059a(str, e);
            } catch (IllegalArgumentException e2) {
                throw new C7642c(e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new C7642c(e3);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: b */
        public final void mo19980b(byte[] bArr, int i, int i2) throws IOException {
            if (bArr != null && i >= 0 && i2 >= 0 && bArr.length - i2 >= i) {
                long j = this.f17930h;
                long j2 = i2;
                long j3 = this.f17932j;
                if (j - j2 >= j3) {
                    C7543a4.m20355a(bArr, i, j3, j2);
                    this.f17932j += j2;
                    return;
                }
            }
            if (bArr == null) {
                throw new NullPointerException(C13032a.f29462d);
            }
            throw new C7642c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f17932j), Long.valueOf(this.f17930h), Integer.valueOf(i2)));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: c */
        public final void mo19979c(int i, int i2) throws IOException {
            mo19996a(i, 0);
            mo19987b(i2);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: c */
        public final void mo19978c(int i, long j) throws IOException {
            mo19996a(i, 1);
            mo19977c(j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: c */
        public final void mo19977c(long j) throws IOException {
            this.f17927e.putLong((int) (this.f17932j - this.f17928f), j);
            this.f17932j += 8;
        }

        /* renamed from: c */
        public final void m19976c(AbstractC7627k2 k2Var) throws IOException {
            mo19987b(k2Var.mo20085g());
            k2Var.mo20088a(this);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: d */
        public final void mo19975d(int i) throws IOException {
            this.f17927e.putInt((int) (this.f17932j - this.f17928f), i);
            this.f17932j += 4;
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0
        /* renamed from: e */
        public final void mo19974e(int i, int i2) throws IOException {
            mo19996a(i, 5);
            mo19975d(i2);
        }

        /* renamed from: j */
        public final void m19973j(long j) {
            this.f17927e.position((int) (j - this.f17928f));
        }
    }

    public AbstractC7639m0() {
    }

    /* renamed from: a */
    public static int m20065a(int i, C7687s1 s1Var) {
        int e = m20032e(i);
        int a = s1Var.m19810a();
        return e + m20025g(a) + a;
    }

    /* renamed from: a */
    public static int m20064a(AbstractC7539a0 a0Var) {
        int size = a0Var.size();
        return m20025g(size) + size;
    }

    /* renamed from: a */
    public static int m20063a(AbstractC7627k2 k2Var) {
        int g = k2Var.mo20085g();
        return m20025g(g) + g;
    }

    /* renamed from: a */
    public static int m20062a(AbstractC7627k2 k2Var, AbstractC7554b3 b3Var) {
        AbstractC7671q qVar = (AbstractC7671q) k2Var;
        int h = qVar.mo19827h();
        int i = h;
        if (h == -1) {
            i = b3Var.mo19859c(qVar);
            qVar.mo19829a(i);
        }
        return m20025g(i) + i;
    }

    /* renamed from: a */
    public static int m20061a(C7687s1 s1Var) {
        int a = s1Var.m19810a();
        return m20025g(a) + a;
    }

    /* renamed from: a */
    public static int m20060a(String str) {
        int i;
        try {
            i = C7565c4.m20290a(str);
        } catch (C7591f4 e) {
            i = str.getBytes(C7602h1.f17862a).length;
        }
        return m20025g(i) + i;
    }

    /* renamed from: a */
    public static AbstractC7639m0 m20058a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new C7641b(byteBuffer);
        }
        if (byteBuffer.isDirect() && !byteBuffer.isReadOnly()) {
            return C7543a4.m20348c() ? new C7644e(byteBuffer) : new C7643d(byteBuffer);
        }
        throw new IllegalArgumentException("ByteBuffer is read-only");
    }

    /* renamed from: a */
    public static AbstractC7639m0 m20056a(byte[] bArr) {
        return new C7640a(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static int m20055b(double d) {
        return 8;
    }

    /* renamed from: b */
    public static int m20054b(float f) {
        return 4;
    }

    /* renamed from: b */
    public static int m20053b(int i, double d) {
        return m20032e(i) + 8;
    }

    /* renamed from: b */
    public static int m20052b(int i, float f) {
        return m20032e(i) + 4;
    }

    /* renamed from: b */
    public static int m20050b(int i, AbstractC7627k2 k2Var, AbstractC7554b3 b3Var) {
        return m20032e(i) + m20062a(k2Var, b3Var);
    }

    /* renamed from: b */
    public static int m20049b(int i, C7687s1 s1Var) {
        return (m20032e(1) << 1) + m20024g(2, i) + m20065a(3, s1Var);
    }

    /* renamed from: b */
    public static int m20048b(int i, String str) {
        return m20032e(i) + m20060a(str);
    }

    /* renamed from: b */
    public static int m20047b(int i, boolean z) {
        return m20032e(i) + 1;
    }

    @Deprecated
    /* renamed from: b */
    public static int m20045b(AbstractC7627k2 k2Var) {
        return k2Var.mo20085g();
    }

    /* renamed from: b */
    public static int m20044b(boolean z) {
        return 1;
    }

    /* renamed from: b */
    public static int m20043b(byte[] bArr) {
        int length = bArr.length;
        return m20025g(length) + length;
    }

    /* renamed from: c */
    public static int m20040c(int i, AbstractC7539a0 a0Var) {
        int e = m20032e(i);
        int size = a0Var.size();
        return e + m20025g(size) + size;
    }

    /* renamed from: c */
    public static int m20039c(int i, AbstractC7627k2 k2Var) {
        return m20032e(i) + m20063a(k2Var);
    }

    @Deprecated
    /* renamed from: c */
    public static int m20038c(int i, AbstractC7627k2 k2Var, AbstractC7554b3 b3Var) {
        int e = m20032e(i);
        AbstractC7671q qVar = (AbstractC7671q) k2Var;
        int h = qVar.mo19827h();
        int i2 = h;
        if (h == -1) {
            i2 = b3Var.mo19859c(qVar);
            qVar.mo19829a(i2);
        }
        return (e << 1) + i2;
    }

    /* renamed from: d */
    public static int m20036d(int i, long j) {
        return m20032e(i) + m20030e(j);
    }

    /* renamed from: d */
    public static int m20035d(int i, AbstractC7539a0 a0Var) {
        return (m20032e(1) << 1) + m20024g(2, i) + m20040c(3, a0Var);
    }

    /* renamed from: d */
    public static int m20034d(int i, AbstractC7627k2 k2Var) {
        return (m20032e(1) << 1) + m20024g(2, i) + m20039c(3, k2Var);
    }

    /* renamed from: d */
    public static int m20033d(long j) {
        return m20030e(j);
    }

    /* renamed from: e */
    public static int m20032e(int i) {
        return m20025g(i << 3);
    }

    /* renamed from: e */
    public static int m20031e(int i, long j) {
        return m20032e(i) + m20030e(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m20030e(long r5) {
        /*
            r0 = -128(0xffffffffffffff80, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000c
            r0 = 1
            return r0
        L_0x000c:
            r0 = r5
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0015
            r0 = 10
            return r0
        L_0x0015:
            r0 = -34359738368(0xfffffff800000000, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x002a
            r0 = 6
            r7 = r0
            r0 = r5
            r1 = 28
            long r0 = r0 >>> r1
            r5 = r0
            goto L_0x002c
        L_0x002a:
            r0 = 2
            r7 = r0
        L_0x002c:
            r0 = r7
            r8 = r0
            r0 = r5
            r9 = r0
            r0 = -2097152(0xffffffffffe00000, double:NaN)
            r1 = r5
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0045
            r0 = r7
            r1 = 2
            int r0 = r0 + r1
            r8 = r0
            r0 = r5
            r1 = 14
            long r0 = r0 >>> r1
            r9 = r0
        L_0x0045:
            r0 = r8
            r7 = r0
            r0 = r9
            r1 = -16384(0xffffffffffffc000, double:NaN)
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0056
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r7 = r0
        L_0x0056:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.AbstractC7639m0.m20030e(long):int");
    }

    /* renamed from: f */
    public static int m20029f(int i) {
        if (i >= 0) {
            return m20025g(i);
        }
        return 10;
    }

    /* renamed from: f */
    public static int m20028f(int i, int i2) {
        return m20032e(i) + m20029f(i2);
    }

    /* renamed from: f */
    public static int m20027f(int i, long j) {
        return m20032e(i) + m20030e(m20015i(j));
    }

    /* renamed from: f */
    public static int m20026f(long j) {
        return m20030e(m20015i(j));
    }

    /* renamed from: g */
    public static int m20025g(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    /* renamed from: g */
    public static int m20024g(int i, int i2) {
        return m20032e(i) + m20025g(i2);
    }

    /* renamed from: g */
    public static int m20023g(int i, long j) {
        return m20032e(i) + 8;
    }

    /* renamed from: g */
    public static int m20022g(long j) {
        return 8;
    }

    /* renamed from: h */
    public static int m20021h(int i) {
        return m20025g(m20010l(i));
    }

    /* renamed from: h */
    public static int m20020h(int i, int i2) {
        return m20032e(i) + m20025g(m20010l(i2));
    }

    /* renamed from: h */
    public static int m20019h(int i, long j) {
        return m20032e(i) + 8;
    }

    /* renamed from: h */
    public static int m20018h(long j) {
        return 8;
    }

    /* renamed from: i */
    public static int m20017i(int i) {
        return 4;
    }

    /* renamed from: i */
    public static int m20016i(int i, int i2) {
        return m20032e(i) + 4;
    }

    /* renamed from: i */
    public static long m20015i(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: j */
    public static int m20014j(int i) {
        return 4;
    }

    /* renamed from: j */
    public static int m20013j(int i, int i2) {
        return m20032e(i) + 4;
    }

    /* renamed from: k */
    public static int m20012k(int i) {
        return m20029f(i);
    }

    /* renamed from: k */
    public static int m20011k(int i, int i2) {
        return m20032e(i) + m20029f(i2);
    }

    /* renamed from: l */
    public static int m20010l(int i) {
        return (i >> 31) ^ (i << 1);
    }

    @Deprecated
    /* renamed from: m */
    public static int m20009m(int i) {
        return m20025g(i);
    }

    /* renamed from: a */
    public abstract void mo19999a() throws IOException;

    /* renamed from: a */
    public abstract void mo19998a(byte b) throws IOException;

    /* renamed from: a */
    public final void m20069a(double d) throws IOException {
        mo19977c(Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m20068a(float f) throws IOException {
        mo19975d(Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo19997a(int i) throws IOException;

    /* renamed from: a */
    public final void m20067a(int i, double d) throws IOException {
        mo19978c(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m20066a(int i, float f) throws IOException {
        mo19974e(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo19996a(int i, int i2) throws IOException;

    /* renamed from: a */
    public abstract void mo19995a(int i, long j) throws IOException;

    /* renamed from: a */
    public abstract void mo19994a(int i, AbstractC7539a0 a0Var) throws IOException;

    /* renamed from: a */
    public abstract void mo19993a(int i, AbstractC7627k2 k2Var) throws IOException;

    /* renamed from: a */
    public abstract void mo19992a(int i, AbstractC7627k2 k2Var, AbstractC7554b3 b3Var) throws IOException;

    /* renamed from: a */
    public abstract void mo19991a(int i, String str) throws IOException;

    /* renamed from: a */
    public abstract void mo19990a(int i, boolean z) throws IOException;

    /* renamed from: a */
    public abstract void mo19989a(long j) throws IOException;

    /* renamed from: a */
    public final void m20059a(String str, C7591f4 f4Var) throws IOException {
        f17915b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) f4Var);
        byte[] bytes = str.getBytes(C7602h1.f17862a);
        try {
            mo19987b(bytes.length);
            mo19641a(bytes, 0, bytes.length);
        } catch (C7642c e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new C7642c(e2);
        }
    }

    /* renamed from: a */
    public final void m20057a(boolean z) throws IOException {
        mo19998a(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public abstract int mo19988b();

    /* renamed from: b */
    public abstract void mo19987b(int i) throws IOException;

    /* renamed from: b */
    public abstract void mo19986b(int i, int i2) throws IOException;

    /* renamed from: b */
    public final void m20051b(int i, long j) throws IOException {
        mo19995a(i, m20015i(j));
    }

    /* renamed from: b */
    public abstract void mo19985b(int i, AbstractC7539a0 a0Var) throws IOException;

    /* renamed from: b */
    public abstract void mo19984b(int i, AbstractC7627k2 k2Var) throws IOException;

    /* renamed from: b */
    public final void m20046b(long j) throws IOException {
        mo19989a(m20015i(j));
    }

    /* renamed from: b */
    public abstract void mo19980b(byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: c */
    public final void m20041c(int i) throws IOException {
        mo19987b(m20010l(i));
    }

    /* renamed from: c */
    public abstract void mo19979c(int i, int i2) throws IOException;

    /* renamed from: c */
    public abstract void mo19978c(int i, long j) throws IOException;

    /* renamed from: c */
    public abstract void mo19977c(long j) throws IOException;

    /* renamed from: d */
    public abstract void mo19975d(int i) throws IOException;

    /* renamed from: d */
    public final void m20037d(int i, int i2) throws IOException {
        mo19979c(i, m20010l(i2));
    }

    /* renamed from: e */
    public abstract void mo19974e(int i, int i2) throws IOException;
}
