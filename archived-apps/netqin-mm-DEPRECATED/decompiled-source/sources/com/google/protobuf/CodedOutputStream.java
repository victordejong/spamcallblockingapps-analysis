package com.google.protobuf;

import com.google.protobuf.Utf8;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p367h.AbstractC6275a;
import p131c.p161d.p367h.AbstractC6287c1;
import p131c.p161d.p367h.AbstractC6324i;
import p131c.p161d.p367h.AbstractC6354n0;
import p131c.p161d.p367h.C6283b0;
import p131c.p161d.p367h.C6288d;
import p131c.p161d.p367h.C6339l;
import p131c.p161d.p367h.C6347m1;
import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/CodedOutputStream.class */
public abstract class CodedOutputStream extends AbstractC6324i {

    /* renamed from: c */
    public static final Logger f31105c = Logger.getLogger(CodedOutputStream.class.getName());

    /* renamed from: d */
    public static final boolean f31106d = C6347m1.m21220d();

    /* renamed from: a */
    public C6339l f31107a;

    /* renamed from: b */
    public boolean f31108b;

    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/CodedOutputStream$OutOfSpaceException.class */
    public static class OutOfSpaceException extends IOException {
        public static final String MESSAGE = "CodedOutputStream was writing to a flat byte array and ran out of space.";
        public static final long serialVersionUID = -6947486886997889499L;

        public OutOfSpaceException() {
            super(MESSAGE);
        }

        public OutOfSpaceException(String str) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str);
        }

        public OutOfSpaceException(String str, Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str, th);
        }

        public OutOfSpaceException(Throwable th) {
            super(MESSAGE, th);
        }
    }

    /* renamed from: com.google.protobuf.CodedOutputStream$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/CodedOutputStream$b.class */
    public static abstract class AbstractC7926b extends CodedOutputStream {

        /* renamed from: e */
        public final byte[] f31109e;

        /* renamed from: f */
        public final int f31110f;

        /* renamed from: g */
        public int f31111g;

        /* renamed from: h */
        public int f31112h;

        public AbstractC7926b(int i) {
            super();
            if (i >= 0) {
                byte[] bArr = new byte[Math.max(i, 20)];
                this.f31109e = bArr;
                this.f31110f = bArr.length;
                return;
            }
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }

        /* renamed from: b */
        public final void m7004b(byte b) {
            byte[] bArr = this.f31109e;
            int i = this.f31111g;
            this.f31111g = i + 1;
            bArr[i] = b;
            this.f31112h++;
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: d */
        public final int mo6996d() {
            throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
        }

        /* renamed from: l */
        public final void m7003l(long j) {
            byte[] bArr = this.f31109e;
            int i = this.f31111g;
            int i2 = i + 1;
            this.f31111g = i2;
            bArr[i] = (byte) (j & 255);
            int i3 = i2 + 1;
            this.f31111g = i3;
            bArr[i2] = (byte) ((j >> 8) & 255);
            int i4 = i3 + 1;
            this.f31111g = i4;
            bArr[i3] = (byte) ((j >> 16) & 255);
            int i5 = i4 + 1;
            this.f31111g = i5;
            bArr[i4] = (byte) (255 & (j >> 24));
            int i6 = i5 + 1;
            this.f31111g = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i6 + 1;
            this.f31111g = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i7 + 1;
            this.f31111g = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.f31111g = i8 + 1;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
            this.f31112h += 8;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r7v0, types: [long] */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        /* renamed from: m */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m7002m(long r7) {
            /*
                Method dump skipped, instructions count: 227
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.CodedOutputStream.AbstractC7926b.m7002m(long):void");
        }

        /* renamed from: n */
        public final void m7001n(int i, int i2) {
            m6998t(WireFormat.m6840a(i, i2));
        }

        /* renamed from: r */
        public final void m7000r(int i) {
            byte[] bArr = this.f31109e;
            int i2 = this.f31111g;
            int i3 = i2 + 1;
            this.f31111g = i3;
            bArr[i2] = (byte) (i & 255);
            int i4 = i3 + 1;
            this.f31111g = i4;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i4 + 1;
            this.f31111g = i5;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.f31111g = i5 + 1;
            bArr[i5] = (byte) ((i >> 24) & 255);
            this.f31112h += 4;
        }

        /* renamed from: s */
        public final void m6999s(int i) {
            if (i >= 0) {
                m6998t(i);
            } else {
                m7002m(i);
            }
        }

        /* renamed from: t */
        public final void m6998t(int i) {
            int i2 = i;
            if (CodedOutputStream.f31106d) {
                long j = this.f31111g;
                while ((i & (-128)) != 0) {
                    byte[] bArr = this.f31109e;
                    int i3 = this.f31111g;
                    this.f31111g = i3 + 1;
                    C6347m1.m21233a(bArr, i3, (byte) ((i & 127) | 128));
                    i >>>= 7;
                }
                byte[] bArr2 = this.f31109e;
                int i4 = this.f31111g;
                this.f31111g = i4 + 1;
                C6347m1.m21233a(bArr2, i4, (byte) i);
                this.f31112h += (int) (this.f31111g - j);
                return;
            }
            while ((i2 & (-128)) != 0) {
                byte[] bArr3 = this.f31109e;
                int i5 = this.f31111g;
                this.f31111g = i5 + 1;
                bArr3[i5] = (byte) ((i2 & 127) | 128);
                this.f31112h++;
                i2 >>>= 7;
            }
            byte[] bArr4 = this.f31109e;
            int i6 = this.f31111g;
            this.f31111g = i6 + 1;
            bArr4[i6] = (byte) i2;
            this.f31112h++;
        }
    }

    /* renamed from: com.google.protobuf.CodedOutputStream$c */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/CodedOutputStream$c.class */
    public static class C7927c extends CodedOutputStream {

        /* renamed from: e */
        public final byte[] f31113e;

        /* renamed from: f */
        public final int f31114f;

        /* renamed from: g */
        public int f31115g;

        public C7927c(byte[] bArr, int i, int i2) {
            super();
            if (bArr != null) {
                int i3 = i + i2;
                if ((i | i2 | (bArr.length - i3)) >= 0) {
                    this.f31113e = bArr;
                    this.f31115g = i;
                    this.f31114f = i3;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
            }
            throw new NullPointerException("buffer");
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public final void mo6993a(byte b) throws IOException {
            try {
                byte[] bArr = this.f31113e;
                int i = this.f31115g;
                this.f31115g = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31115g), Integer.valueOf(this.f31114f), 1), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public final void mo6992a(int i, long j) throws IOException {
            mo6965f(i, 1);
            mo6988a(j);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public final void mo6991a(int i, ByteString byteString) throws IOException {
            mo6965f(i, 2);
            mo6987a(byteString);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public final void mo6990a(int i, String str) throws IOException {
            mo6965f(i, 2);
            mo6986a(str);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public final void mo6989a(int i, boolean z) throws IOException {
            mo6965f(i, 0);
            mo6993a(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public final void mo6988a(long j) throws IOException {
            try {
                byte[] bArr = this.f31113e;
                int i = this.f31115g;
                int i2 = i + 1;
                this.f31115g = i2;
                bArr[i] = (byte) (((int) j) & 255);
                byte[] bArr2 = this.f31113e;
                int i3 = i2 + 1;
                this.f31115g = i3;
                bArr2[i2] = (byte) (((int) (j >> 8)) & 255);
                byte[] bArr3 = this.f31113e;
                int i4 = i3 + 1;
                this.f31115g = i4;
                bArr3[i3] = (byte) (((int) (j >> 16)) & 255);
                byte[] bArr4 = this.f31113e;
                int i5 = i4 + 1;
                this.f31115g = i5;
                bArr4[i4] = (byte) (((int) (j >> 24)) & 255);
                byte[] bArr5 = this.f31113e;
                int i6 = i5 + 1;
                this.f31115g = i6;
                bArr5[i5] = (byte) (((int) (j >> 32)) & 255);
                byte[] bArr6 = this.f31113e;
                int i7 = i6 + 1;
                this.f31115g = i7;
                bArr6[i6] = (byte) (((int) (j >> 40)) & 255);
                byte[] bArr7 = this.f31113e;
                int i8 = i7 + 1;
                this.f31115g = i8;
                bArr7[i7] = (byte) (((int) (j >> 48)) & 255);
                byte[] bArr8 = this.f31113e;
                this.f31115g = i8 + 1;
                bArr8[i8] = (byte) (((int) (j >> 56)) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31115g), Integer.valueOf(this.f31114f), 1), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public final void mo6987a(ByteString byteString) throws IOException {
            mo6966f(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public final void mo6986a(String str) throws IOException {
            int i = this.f31115g;
            try {
                int p = CodedOutputStream.m7006p(str.length() * 3);
                int p2 = CodedOutputStream.m7006p(str.length());
                if (p2 == p) {
                    int i2 = i + p2;
                    this.f31115g = i2;
                    int a = Utf8.m6895a(str, this.f31113e, i2, mo6996d());
                    this.f31115g = i;
                    mo6966f((a - i) - p2);
                    this.f31115g = a;
                } else {
                    mo6966f(Utf8.m6897a(str));
                    this.f31115g = Utf8.m6895a(str, this.f31113e, this.f31115g, mo6996d());
                }
            } catch (Utf8.UnpairedSurrogateException e) {
                this.f31115g = i;
                m7070a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new OutOfSpaceException(e2);
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6324i
        /* renamed from: a */
        public final void mo6985a(ByteBuffer byteBuffer) throws IOException {
            m6997b(byteBuffer);
        }

        @Override // p131c.p161d.p367h.AbstractC6324i
        /* renamed from: a */
        public final void mo6984a(byte[] bArr, int i, int i2) throws IOException {
            m6995d(bArr, i, i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public void mo6983b() {
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public final void mo6982b(int i) throws IOException {
            try {
                byte[] bArr = this.f31113e;
                int i2 = this.f31115g;
                int i3 = i2 + 1;
                this.f31115g = i3;
                bArr[i2] = (byte) (i & 255);
                byte[] bArr2 = this.f31113e;
                int i4 = i3 + 1;
                this.f31115g = i4;
                bArr2[i3] = (byte) ((i >> 8) & 255);
                byte[] bArr3 = this.f31113e;
                int i5 = i4 + 1;
                this.f31115g = i5;
                bArr3[i4] = (byte) ((i >> 16) & 255);
                byte[] bArr4 = this.f31113e;
                this.f31115g = i5 + 1;
                bArr4[i5] = (byte) ((i >> 24) & 255);
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31115g), Integer.valueOf(this.f31114f), 1), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public final void mo6981b(int i, int i2) throws IOException {
            mo6965f(i, 5);
            mo6982b(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public final void mo6980b(int i, AbstractC6354n0 n0Var) throws IOException {
            mo6965f(1, 3);
            mo6964g(2, i);
            m6994e(3, n0Var);
            mo6965f(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public final void mo6979b(int i, AbstractC6354n0 n0Var, AbstractC6287c1 c1Var) throws IOException {
            mo6965f(i, 2);
            mo6966f(((AbstractC6275a) n0Var).m21696a(c1Var));
            c1Var.mo21081a((AbstractC6287c1) n0Var, (Writer) this.f31107a);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public final void mo6978b(int i, ByteString byteString) throws IOException {
            mo6965f(1, 3);
            mo6964g(2, i);
            mo6991a(3, byteString);
            mo6965f(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public final void mo6977b(AbstractC6354n0 n0Var) throws IOException {
            mo6966f(n0Var.mo6944o());
            n0Var.mo6957a(this);
        }

        /* renamed from: b */
        public final void m6997b(ByteBuffer byteBuffer) throws IOException {
            int remaining = byteBuffer.remaining();
            try {
                byteBuffer.get(this.f31113e, this.f31115g, remaining);
                this.f31115g += remaining;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31115g), Integer.valueOf(this.f31114f), Integer.valueOf(remaining)), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public final void mo6975b(byte[] bArr, int i, int i2) throws IOException {
            mo6966f(i2);
            m6995d(bArr, i, i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: c */
        public final void mo6974c(int i) throws IOException {
            if (i >= 0) {
                mo6966f(i);
            } else {
                mo6968e(i);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: c */
        public final void mo6973c(int i, int i2) throws IOException {
            mo6965f(i, 0);
            mo6974c(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: d */
        public final int mo6996d() {
            return this.f31114f - this.f31115g;
        }

        /* renamed from: d */
        public final void m6995d(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f31113e, this.f31115g, i2);
                this.f31115g += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31115g), Integer.valueOf(this.f31114f), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: e */
        public final void mo6970e(int i, long j) throws IOException {
            mo6965f(i, 0);
            mo6968e(j);
        }

        /* renamed from: e */
        public final void m6994e(int i, AbstractC6354n0 n0Var) throws IOException {
            mo6965f(i, 2);
            mo6977b(n0Var);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r11v0 */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2, types: [long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [long] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r9v0, types: [long] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo6968e(long r9) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 249
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.CodedOutputStream.C7927c.mo6968e(long):void");
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: f */
        public final void mo6966f(int i) throws IOException {
            int i2 = i;
            if (CodedOutputStream.f31106d) {
                i2 = i;
                if (!C6288d.m21669b()) {
                    i2 = i;
                    if (mo6996d() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.f31113e;
                            int i3 = this.f31115g;
                            this.f31115g = i3 + 1;
                            C6347m1.m21233a(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.f31113e;
                        int i4 = this.f31115g;
                        this.f31115g = i4 + 1;
                        C6347m1.m21233a(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.f31113e;
                            int i6 = this.f31115g;
                            this.f31115g = i6 + 1;
                            C6347m1.m21233a(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.f31113e;
                        int i7 = this.f31115g;
                        this.f31115g = i7 + 1;
                        C6347m1.m21233a(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.f31113e;
                            int i9 = this.f31115g;
                            this.f31115g = i9 + 1;
                            C6347m1.m21233a(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.f31113e;
                        int i10 = this.f31115g;
                        this.f31115g = i10 + 1;
                        C6347m1.m21233a(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.f31113e;
                            int i12 = this.f31115g;
                            this.f31115g = i12 + 1;
                            C6347m1.m21233a(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.f31113e;
                        int i13 = this.f31115g;
                        this.f31115g = i13 + 1;
                        C6347m1.m21233a(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.f31113e;
                        int i14 = this.f31115g;
                        this.f31115g = i14 + 1;
                        C6347m1.m21233a(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f31113e;
                    int i15 = this.f31115g;
                    this.f31115g = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f31115g), Integer.valueOf(this.f31114f), 1), e);
                }
            }
            byte[] bArr11 = this.f31113e;
            int i16 = this.f31115g;
            this.f31115g = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: f */
        public final void mo6965f(int i, int i2) throws IOException {
            mo6966f(WireFormat.m6840a(i, i2));
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: g */
        public final void mo6964g(int i, int i2) throws IOException {
            mo6965f(i, 0);
            mo6966f(i2);
        }
    }

    /* renamed from: com.google.protobuf.CodedOutputStream$d */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/CodedOutputStream$d.class */
    public static final class C7928d extends AbstractC7926b {

        /* renamed from: i */
        public final OutputStream f31116i;

        public C7928d(OutputStream outputStream, int i) {
            super(i);
            if (outputStream != null) {
                this.f31116i = outputStream;
                return;
            }
            throw new NullPointerException("out");
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public void mo6993a(byte b) throws IOException {
            if (this.f31111g == this.f31110f) {
                m6967f();
            }
            m7004b(b);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public void mo6992a(int i, long j) throws IOException {
            m6963u(18);
            m7001n(i, 1);
            m7003l(j);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public void mo6991a(int i, ByteString byteString) throws IOException {
            mo6965f(i, 2);
            mo6987a(byteString);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public void mo6990a(int i, String str) throws IOException {
            mo6965f(i, 2);
            mo6986a(str);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public void mo6989a(int i, boolean z) throws IOException {
            m6963u(11);
            m7001n(i, 0);
            m7004b(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public void mo6988a(long j) throws IOException {
            m6963u(8);
            m7003l(j);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public void mo6987a(ByteString byteString) throws IOException {
            mo6966f(byteString.size());
            byteString.writeTo(this);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: a */
        public void mo6986a(String str) throws IOException {
            int i;
            try {
                int length = str.length() * 3;
                int p = CodedOutputStream.m7006p(length);
                int i2 = p + length;
                if (i2 > this.f31110f) {
                    byte[] bArr = new byte[length];
                    int a = Utf8.m6895a(str, bArr, 0, length);
                    mo6966f(a);
                    mo6984a(bArr, 0, a);
                    return;
                }
                if (i2 > this.f31110f - this.f31111g) {
                    m6967f();
                }
                int p2 = CodedOutputStream.m7006p(str.length());
                int i3 = this.f31111g;
                try {
                    if (p2 == p) {
                        int i4 = i3 + p2;
                        this.f31111g = i4;
                        int a2 = Utf8.m6895a(str, this.f31109e, i4, this.f31110f - i4);
                        this.f31111g = i3;
                        i = (a2 - i3) - p2;
                        m6998t(i);
                        this.f31111g = a2;
                    } else {
                        i = Utf8.m6897a(str);
                        m6998t(i);
                        this.f31111g = Utf8.m6895a(str, this.f31109e, this.f31111g, i);
                    }
                    this.f31112h += i;
                } catch (Utf8.UnpairedSurrogateException e) {
                    this.f31112h -= this.f31111g - i3;
                    this.f31111g = i3;
                    throw e;
                } catch (ArrayIndexOutOfBoundsException e2) {
                    throw new OutOfSpaceException(e2);
                }
            } catch (Utf8.UnpairedSurrogateException e3) {
                m7070a(str, e3);
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6324i
        /* renamed from: a */
        public void mo6985a(ByteBuffer byteBuffer) throws IOException {
            m6976b(byteBuffer);
        }

        @Override // p131c.p161d.p367h.AbstractC6324i
        /* renamed from: a */
        public void mo6984a(byte[] bArr, int i, int i2) throws IOException {
            m6971d(bArr, i, i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public void mo6983b() throws IOException {
            if (this.f31111g > 0) {
                m6967f();
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public void mo6982b(int i) throws IOException {
            m6963u(4);
            m7000r(i);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public void mo6981b(int i, int i2) throws IOException {
            m6963u(14);
            m7001n(i, 5);
            m7000r(i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public void mo6980b(int i, AbstractC6354n0 n0Var) throws IOException {
            mo6965f(1, 3);
            mo6964g(2, i);
            m6969e(3, n0Var);
            mo6965f(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public void mo6979b(int i, AbstractC6354n0 n0Var, AbstractC6287c1 c1Var) throws IOException {
            mo6965f(i, 2);
            m6972d(n0Var, c1Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public void mo6978b(int i, ByteString byteString) throws IOException {
            mo6965f(1, 3);
            mo6964g(2, i);
            mo6991a(3, byteString);
            mo6965f(1, 4);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public void mo6977b(AbstractC6354n0 n0Var) throws IOException {
            mo6966f(n0Var.mo6944o());
            n0Var.mo6957a(this);
        }

        /* renamed from: b */
        public void m6976b(ByteBuffer byteBuffer) throws IOException {
            int remaining = byteBuffer.remaining();
            int i = this.f31110f;
            int i2 = this.f31111g;
            if (i - i2 >= remaining) {
                byteBuffer.get(this.f31109e, i2, remaining);
                this.f31111g += remaining;
                this.f31112h += remaining;
                return;
            }
            int i3 = i - i2;
            byteBuffer.get(this.f31109e, i2, i3);
            int i4 = remaining - i3;
            this.f31111g = this.f31110f;
            this.f31112h += i3;
            m6967f();
            while (true) {
                int i5 = this.f31110f;
                if (i4 > i5) {
                    byteBuffer.get(this.f31109e, 0, i5);
                    this.f31116i.write(this.f31109e, 0, this.f31110f);
                    int i6 = this.f31110f;
                    i4 -= i6;
                    this.f31112h += i6;
                } else {
                    byteBuffer.get(this.f31109e, 0, i4);
                    this.f31111g = i4;
                    this.f31112h += i4;
                    return;
                }
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: b */
        public void mo6975b(byte[] bArr, int i, int i2) throws IOException {
            mo6966f(i2);
            m6971d(bArr, i, i2);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: c */
        public void mo6974c(int i) throws IOException {
            if (i >= 0) {
                mo6966f(i);
            } else {
                mo6968e(i);
            }
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: c */
        public void mo6973c(int i, int i2) throws IOException {
            m6963u(20);
            m7001n(i, 0);
            m6999s(i2);
        }

        /* renamed from: d */
        public void m6972d(AbstractC6354n0 n0Var, AbstractC6287c1 c1Var) throws IOException {
            mo6966f(((AbstractC6275a) n0Var).m21696a(c1Var));
            c1Var.mo21081a((AbstractC6287c1) n0Var, (Writer) this.f31107a);
        }

        /* renamed from: d */
        public void m6971d(byte[] bArr, int i, int i2) throws IOException {
            int i3 = this.f31110f;
            int i4 = this.f31111g;
            if (i3 - i4 >= i2) {
                System.arraycopy(bArr, i, this.f31109e, i4, i2);
                this.f31111g += i2;
                this.f31112h += i2;
                return;
            }
            int i5 = i3 - i4;
            System.arraycopy(bArr, i, this.f31109e, i4, i5);
            int i6 = i + i5;
            int i7 = i2 - i5;
            this.f31111g = this.f31110f;
            this.f31112h += i5;
            m6967f();
            if (i7 <= this.f31110f) {
                System.arraycopy(bArr, i6, this.f31109e, 0, i7);
                this.f31111g = i7;
            } else {
                this.f31116i.write(bArr, i6, i7);
            }
            this.f31112h += i7;
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: e */
        public void mo6970e(int i, long j) throws IOException {
            m6963u(20);
            m7001n(i, 0);
            m7002m(j);
        }

        /* renamed from: e */
        public void m6969e(int i, AbstractC6354n0 n0Var) throws IOException {
            mo6965f(i, 2);
            mo6977b(n0Var);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: e */
        public void mo6968e(long j) throws IOException {
            m6963u(10);
            m7002m(j);
        }

        /* renamed from: f */
        public final void m6967f() throws IOException {
            this.f31116i.write(this.f31109e, 0, this.f31111g);
            this.f31111g = 0;
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: f */
        public void mo6966f(int i) throws IOException {
            m6963u(5);
            m6998t(i);
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: f */
        public void mo6965f(int i, int i2) throws IOException {
            mo6966f(WireFormat.m6840a(i, i2));
        }

        @Override // com.google.protobuf.CodedOutputStream
        /* renamed from: g */
        public void mo6964g(int i, int i2) throws IOException {
            m6963u(20);
            m7001n(i, 0);
            m6998t(i2);
        }

        /* renamed from: u */
        public final void m6963u(int i) throws IOException {
            if (this.f31110f - this.f31111g < i) {
                m6967f();
            }
        }
    }

    public CodedOutputStream() {
    }

    /* renamed from: a */
    public static int m7077a(int i, C6283b0 b0Var) {
        return (m7007o(1) * 2) + m7009m(2, i) + m7062b(3, b0Var);
    }

    /* renamed from: a */
    public static int m7074a(C6283b0 b0Var) {
        return m7019j(b0Var.m21680a());
    }

    /* renamed from: a */
    public static CodedOutputStream m7071a(OutputStream outputStream, int i) {
        return new C7928d(outputStream, i);
    }

    /* renamed from: b */
    public static int m7067b(double d) {
        return 8;
    }

    /* renamed from: b */
    public static int m7066b(float f) {
        return 4;
    }

    /* renamed from: b */
    public static int m7065b(int i, double d) {
        return m7007o(i) + m7067b(d);
    }

    /* renamed from: b */
    public static int m7064b(int i, float f) {
        return m7007o(i) + m7066b(f);
    }

    /* renamed from: b */
    public static int m7062b(int i, C6283b0 b0Var) {
        return m7007o(i) + m7074a(b0Var);
    }

    /* renamed from: b */
    public static int m7061b(int i, String str) {
        return m7007o(i) + m7056b(str);
    }

    /* renamed from: b */
    public static int m7060b(int i, boolean z) {
        return m7007o(i) + m7055b(z);
    }

    @Deprecated
    /* renamed from: b */
    public static int m7058b(AbstractC6354n0 n0Var, AbstractC6287c1 c1Var) {
        return ((AbstractC6275a) n0Var).m21696a(c1Var);
    }

    /* renamed from: b */
    public static int m7057b(ByteString byteString) {
        return m7019j(byteString.size());
    }

    /* renamed from: b */
    public static int m7056b(String str) {
        int i;
        try {
            i = Utf8.m6897a(str);
        } catch (Utf8.UnpairedSurrogateException e) {
            i = str.getBytes(C6381y.f20053a).length;
        }
        return m7019j(i);
    }

    /* renamed from: b */
    public static int m7055b(boolean z) {
        return 1;
    }

    /* renamed from: b */
    public static int m7054b(byte[] bArr) {
        return m7019j(bArr.length);
    }

    /* renamed from: c */
    public static int m7051c(int i, AbstractC6354n0 n0Var) {
        return (m7007o(1) * 2) + m7009m(2, i) + m7040d(3, n0Var);
    }

    @Deprecated
    /* renamed from: c */
    public static int m7050c(int i, AbstractC6354n0 n0Var, AbstractC6287c1 c1Var) {
        return (m7007o(i) * 2) + m7058b(n0Var, c1Var);
    }

    /* renamed from: c */
    public static int m7049c(int i, ByteString byteString) {
        return m7007o(i) + m7057b(byteString);
    }

    @Deprecated
    /* renamed from: c */
    public static int m7047c(AbstractC6354n0 n0Var) {
        return n0Var.mo6944o();
    }

    /* renamed from: c */
    public static int m7046c(AbstractC6354n0 n0Var, AbstractC6287c1 c1Var) {
        return m7019j(((AbstractC6275a) n0Var).m21696a(c1Var));
    }

    /* renamed from: c */
    public static CodedOutputStream m7045c(byte[] bArr) {
        return m7044c(bArr, 0, bArr.length);
    }

    /* renamed from: c */
    public static CodedOutputStream m7044c(byte[] bArr, int i, int i2) {
        return new C7927c(bArr, i, i2);
    }

    /* renamed from: d */
    public static int m7040d(int i, AbstractC6354n0 n0Var) {
        return m7007o(i) + m7036d(n0Var);
    }

    /* renamed from: d */
    public static int m7039d(int i, AbstractC6354n0 n0Var, AbstractC6287c1 c1Var) {
        return m7007o(i) + m7046c(n0Var, c1Var);
    }

    /* renamed from: d */
    public static int m7038d(int i, ByteString byteString) {
        return (m7007o(1) * 2) + m7009m(2, i) + m7049c(3, byteString);
    }

    /* renamed from: d */
    public static int m7036d(AbstractC6354n0 n0Var) {
        return m7019j(n0Var.mo6944o());
    }

    /* renamed from: f */
    public static int m7032f(int i, long j) {
        return m7007o(i) + m7031f(j);
    }

    /* renamed from: f */
    public static int m7031f(long j) {
        return 8;
    }

    /* renamed from: g */
    public static int m7030g(int i) {
        return m7023i(i);
    }

    /* renamed from: g */
    public static int m7029g(int i, long j) {
        return m7007o(i) + m7028g(j);
    }

    /* renamed from: g */
    public static int m7028g(long j) {
        return m7016j(j);
    }

    /* renamed from: h */
    public static int m7027h(int i) {
        return 4;
    }

    /* renamed from: h */
    public static int m7026h(int i, int i2) {
        return m7007o(i) + m7030g(i2);
    }

    /* renamed from: h */
    public static int m7025h(int i, long j) {
        return m7007o(i) + m7024h(j);
    }

    /* renamed from: h */
    public static int m7024h(long j) {
        return 8;
    }

    /* renamed from: i */
    public static int m7023i(int i) {
        if (i >= 0) {
            return m7006p(i);
        }
        return 10;
    }

    /* renamed from: i */
    public static int m7022i(int i, int i2) {
        return m7007o(i) + m7027h(i2);
    }

    /* renamed from: i */
    public static int m7021i(int i, long j) {
        return m7007o(i) + m7020i(j);
    }

    /* renamed from: i */
    public static int m7020i(long j) {
        return m7016j(m7013k(j));
    }

    /* renamed from: j */
    public static int m7019j(int i) {
        return m7006p(i) + i;
    }

    /* renamed from: j */
    public static int m7018j(int i, int i2) {
        return m7007o(i) + m7023i(i2);
    }

    /* renamed from: j */
    public static int m7017j(int i, long j) {
        return m7007o(i) + m7016j(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [long] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m7016j(long r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.CodedOutputStream.m7016j(long):int");
    }

    /* renamed from: k */
    public static int m7015k(int i) {
        if (i > 4096) {
            return 4096;
        }
        return i;
    }

    /* renamed from: k */
    public static int m7014k(int i, int i2) {
        return m7007o(i) + m7010m(i2);
    }

    /* renamed from: k */
    public static long m7013k(long j) {
        return (j >> 63) ^ (j << 1);
    }

    @Deprecated
    /* renamed from: l */
    public static int m7012l(int i) {
        return m7006p(i);
    }

    /* renamed from: l */
    public static int m7011l(int i, int i2) {
        return m7007o(i) + m7008n(i2);
    }

    /* renamed from: m */
    public static int m7010m(int i) {
        return 4;
    }

    /* renamed from: m */
    public static int m7009m(int i, int i2) {
        return m7007o(i) + m7006p(i2);
    }

    /* renamed from: n */
    public static int m7008n(int i) {
        return m7006p(m7005q(i));
    }

    /* renamed from: o */
    public static int m7007o(int i) {
        return m7006p(WireFormat.m6840a(i, 0));
    }

    /* renamed from: p */
    public static int m7006p(int i) {
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

    /* renamed from: q */
    public static int m7005q(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: a */
    public final void m7084a() {
        if (mo6996d() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* renamed from: a */
    public abstract void mo6993a(byte b) throws IOException;

    /* renamed from: a */
    public final void m7083a(double d) throws IOException {
        mo6988a(Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m7082a(float f) throws IOException {
        mo6982b(Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public final void m7081a(int i) throws IOException {
        mo6974c(i);
    }

    /* renamed from: a */
    public final void m7080a(int i, double d) throws IOException {
        mo6992a(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m7079a(int i, float f) throws IOException {
        mo6981b(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public final void m7078a(int i, int i2) throws IOException {
        mo6973c(i, i2);
    }

    /* renamed from: a */
    public abstract void mo6992a(int i, long j) throws IOException;

    @Deprecated
    /* renamed from: a */
    public final void m7076a(int i, AbstractC6354n0 n0Var) throws IOException {
        mo6965f(i, 3);
        m7073a(n0Var);
        mo6965f(i, 4);
    }

    @Deprecated
    /* renamed from: a */
    public final void m7075a(int i, AbstractC6354n0 n0Var, AbstractC6287c1 c1Var) throws IOException {
        mo6965f(i, 3);
        m7072a(n0Var, c1Var);
        mo6965f(i, 4);
    }

    /* renamed from: a */
    public abstract void mo6991a(int i, ByteString byteString) throws IOException;

    /* renamed from: a */
    public abstract void mo6990a(int i, String str) throws IOException;

    /* renamed from: a */
    public abstract void mo6989a(int i, boolean z) throws IOException;

    /* renamed from: a */
    public abstract void mo6988a(long j) throws IOException;

    @Deprecated
    /* renamed from: a */
    public final void m7073a(AbstractC6354n0 n0Var) throws IOException {
        n0Var.mo6957a(this);
    }

    @Deprecated
    /* renamed from: a */
    public final void m7072a(AbstractC6354n0 n0Var, AbstractC6287c1 c1Var) throws IOException {
        c1Var.mo21081a((AbstractC6287c1) n0Var, (Writer) this.f31107a);
    }

    /* renamed from: a */
    public abstract void mo6987a(ByteString byteString) throws IOException;

    /* renamed from: a */
    public abstract void mo6986a(String str) throws IOException;

    /* renamed from: a */
    public final void m7070a(String str, Utf8.UnpairedSurrogateException unpairedSurrogateException) throws IOException {
        f31105c.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) unpairedSurrogateException);
        byte[] bytes = str.getBytes(C6381y.f20053a);
        try {
            mo6966f(bytes.length);
            mo6984a(bytes, 0, bytes.length);
        } catch (OutOfSpaceException e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new OutOfSpaceException(e2);
        }
    }

    /* renamed from: a */
    public final void m7069a(boolean z) throws IOException {
        mo6993a(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: a */
    public final void m7068a(byte[] bArr) throws IOException {
        mo6975b(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public abstract void mo6983b() throws IOException;

    /* renamed from: b */
    public abstract void mo6982b(int i) throws IOException;

    /* renamed from: b */
    public abstract void mo6981b(int i, int i2) throws IOException;

    /* renamed from: b */
    public final void m7063b(int i, long j) throws IOException {
        mo6970e(i, j);
    }

    /* renamed from: b */
    public abstract void mo6980b(int i, AbstractC6354n0 n0Var) throws IOException;

    /* renamed from: b */
    public abstract void mo6979b(int i, AbstractC6354n0 n0Var, AbstractC6287c1 c1Var) throws IOException;

    /* renamed from: b */
    public abstract void mo6978b(int i, ByteString byteString) throws IOException;

    /* renamed from: b */
    public final void m7059b(long j) throws IOException {
        mo6968e(j);
    }

    /* renamed from: b */
    public abstract void mo6977b(AbstractC6354n0 n0Var) throws IOException;

    /* renamed from: b */
    public abstract void mo6975b(byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: c */
    public abstract void mo6974c(int i) throws IOException;

    /* renamed from: c */
    public abstract void mo6973c(int i, int i2) throws IOException;

    /* renamed from: c */
    public final void m7052c(int i, long j) throws IOException {
        mo6992a(i, j);
    }

    /* renamed from: c */
    public final void m7048c(long j) throws IOException {
        mo6988a(j);
    }

    /* renamed from: c */
    public boolean m7053c() {
        return this.f31108b;
    }

    /* renamed from: d */
    public abstract int mo6996d();

    /* renamed from: d */
    public final void m7043d(int i) throws IOException {
        mo6982b(i);
    }

    /* renamed from: d */
    public final void m7042d(int i, int i2) throws IOException {
        mo6981b(i, i2);
    }

    /* renamed from: d */
    public final void m7041d(int i, long j) throws IOException {
        mo6970e(i, m7013k(j));
    }

    /* renamed from: d */
    public final void m7037d(long j) throws IOException {
        mo6968e(m7013k(j));
    }

    /* renamed from: e */
    public final void m7034e(int i) throws IOException {
        mo6966f(m7005q(i));
    }

    /* renamed from: e */
    public final void m7033e(int i, int i2) throws IOException {
        mo6964g(i, m7005q(i2));
    }

    /* renamed from: e */
    public abstract void mo6970e(int i, long j) throws IOException;

    /* renamed from: e */
    public abstract void mo6968e(long j) throws IOException;

    /* renamed from: f */
    public abstract void mo6966f(int i) throws IOException;

    /* renamed from: f */
    public abstract void mo6965f(int i, int i2) throws IOException;

    /* renamed from: g */
    public abstract void mo6964g(int i, int i2) throws IOException;
}
