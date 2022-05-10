package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Utf8;
import com.google.protobuf.WireFormat;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: c.d.h.j */
/* loaded from: classes2-dex2jar.jar:c/d/h/j.class */
public abstract class AbstractC6327j {

    /* renamed from: a */
    public int f19933a;

    /* renamed from: b */
    public int f19934b;

    /* renamed from: c */
    public int f19935c;

    /* renamed from: d */
    public C6335k f19936d;

    /* renamed from: c.d.h.j$b */
    /* loaded from: classes2-dex2jar.jar:c/d/h/j$b.class */
    public static final class C6329b extends AbstractC6327j {

        /* renamed from: e */
        public final byte[] f19937e;

        /* renamed from: f */
        public final boolean f19938f;

        /* renamed from: g */
        public int f19939g;

        /* renamed from: h */
        public int f19940h;

        /* renamed from: i */
        public int f19941i;

        /* renamed from: j */
        public int f19942j;

        /* renamed from: k */
        public int f19943k;

        /* renamed from: l */
        public boolean f19944l;

        /* renamed from: m */
        public int f19945m;

        public C6329b(byte[] bArr, int i, int i2, boolean z) {
            super();
            this.f19945m = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            this.f19937e = bArr;
            this.f19939g = i2 + i;
            this.f19941i = i;
            this.f19942j = i;
            this.f19938f = z;
        }

        /* renamed from: A */
        public final void m21460A() {
            int i = this.f19939g + this.f19940h;
            this.f19939g = i;
            int i2 = i - this.f19942j;
            int i3 = this.f19945m;
            if (i2 > i3) {
                int i4 = i2 - i3;
                this.f19940h = i4;
                this.f19939g = i - i4;
                return;
            }
            this.f19940h = 0;
        }

        /* renamed from: B */
        public void m21459B() throws IOException {
            int r;
            do {
                r = mo21396r();
                if (r == 0) {
                    return;
                }
            } while (mo21410e(r));
        }

        /* renamed from: C */
        public final void m21458C() throws IOException {
            if (this.f19939g - this.f19941i >= 10) {
                m21457D();
            } else {
                m21456E();
            }
        }

        /* renamed from: D */
        public final void m21457D() throws IOException {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.f19937e;
                int i2 = this.f19941i;
                this.f19941i = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: E */
        public final void m21456E() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (m21453u() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: a */
        public int mo21420a() {
            return this.f19941i - this.f19942j;
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: a */
        public void mo21419a(int i) throws InvalidProtocolBufferException {
            if (this.f19943k != i) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: b */
        public void mo21416b(int i) {
            this.f19945m = i;
            m21460A();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: b */
        public boolean mo21417b() throws IOException {
            return this.f19941i == this.f19939g;
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: c */
        public int mo21413c(int i) throws InvalidProtocolBufferException {
            if (i >= 0) {
                int a = i + mo21420a();
                int i2 = this.f19945m;
                if (a <= i2) {
                    this.f19945m = a;
                    m21460A();
                    return i2;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: c */
        public boolean mo21414c() throws IOException {
            return m21449y() != 0;
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: d */
        public ByteString mo21412d() throws IOException {
            int x = m21450x();
            if (x > 0) {
                int i = this.f19939g;
                int i2 = this.f19941i;
                if (x <= i - i2) {
                    ByteString copyFrom = (!this.f19938f || !this.f19944l) ? ByteString.copyFrom(this.f19937e, this.f19941i, x) : ByteString.wrap(this.f19937e, i2, x);
                    this.f19941i += x;
                    return copyFrom;
                }
            }
            return x == 0 ? ByteString.EMPTY : ByteString.wrap(m21455g(x));
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: e */
        public double mo21411e() throws IOException {
            return Double.longBitsToDouble(m21451w());
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: e */
        public boolean mo21410e(int i) throws IOException {
            int b = WireFormat.m6839b(i);
            if (b == 0) {
                m21458C();
                return true;
            } else if (b == 1) {
                m21454h(8);
                return true;
            } else if (b == 2) {
                m21454h(m21450x());
                return true;
            } else if (b == 3) {
                m21459B();
                mo21419a(WireFormat.m6840a(WireFormat.m6841a(i), 4));
                return true;
            } else if (b == 4) {
                return false;
            } else {
                if (b == 5) {
                    m21454h(4);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: f */
        public int mo21409f() throws IOException {
            return m21450x();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: g */
        public int mo21408g() throws IOException {
            return m21452v();
        }

        /* renamed from: g */
        public byte[] m21455g(int i) throws IOException {
            if (i > 0) {
                int i2 = this.f19939g;
                int i3 = this.f19941i;
                if (i <= i2 - i3) {
                    int i4 = i + i3;
                    this.f19941i = i4;
                    return Arrays.copyOfRange(this.f19937e, i3, i4);
                }
            }
            if (i > 0) {
                throw InvalidProtocolBufferException.truncatedMessage();
            } else if (i == 0) {
                return C6381y.f20054b;
            } else {
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: h */
        public long mo21406h() throws IOException {
            return m21451w();
        }

        /* renamed from: h */
        public void m21454h(int i) throws IOException {
            if (i >= 0) {
                int i2 = this.f19939g;
                int i3 = this.f19941i;
                if (i <= i2 - i3) {
                    this.f19941i = i3 + i;
                    return;
                }
            }
            if (i < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: i */
        public float mo21405i() throws IOException {
            return Float.intBitsToFloat(m21452v());
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: j */
        public int mo21404j() throws IOException {
            return m21450x();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: k */
        public long mo21403k() throws IOException {
            return m21449y();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: l */
        public int mo21402l() throws IOException {
            return m21452v();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: m */
        public long mo21401m() throws IOException {
            return m21451w();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: n */
        public int mo21400n() throws IOException {
            return AbstractC6327j.m21461f(m21450x());
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: o */
        public long mo21399o() throws IOException {
            return AbstractC6327j.m21469a(m21449y());
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: p */
        public String mo21398p() throws IOException {
            int x = m21450x();
            if (x > 0 && x <= this.f19939g - this.f19941i) {
                String str = new String(this.f19937e, this.f19941i, x, C6381y.f20053a);
                this.f19941i += x;
                return str;
            } else if (x == 0) {
                return "";
            } else {
                if (x < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: q */
        public String mo21397q() throws IOException {
            int x = m21450x();
            if (x > 0) {
                int i = this.f19939g;
                int i2 = this.f19941i;
                if (x <= i - i2) {
                    String b = Utf8.m6884b(this.f19937e, i2, x);
                    this.f19941i += x;
                    return b;
                }
            }
            if (x == 0) {
                return "";
            }
            if (x <= 0) {
                throw InvalidProtocolBufferException.negativeSize();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: r */
        public int mo21396r() throws IOException {
            if (mo21417b()) {
                this.f19943k = 0;
                return 0;
            }
            int x = m21450x();
            this.f19943k = x;
            if (WireFormat.m6841a(x) != 0) {
                return this.f19943k;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: s */
        public int mo21395s() throws IOException {
            return m21450x();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: t */
        public long mo21394t() throws IOException {
            return m21449y();
        }

        /* renamed from: u */
        public byte m21453u() throws IOException {
            int i = this.f19941i;
            if (i != this.f19939g) {
                byte[] bArr = this.f19937e;
                this.f19941i = i + 1;
                return bArr[i];
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* renamed from: v */
        public int m21452v() throws IOException {
            int i = this.f19941i;
            if (this.f19939g - i >= 4) {
                byte[] bArr = this.f19937e;
                this.f19941i = i + 4;
                return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* renamed from: w */
        public long m21451w() throws IOException {
            int i = this.f19941i;
            if (this.f19939g - i >= 8) {
                byte[] bArr = this.f19937e;
                this.f19941i = i + 8;
                return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x010d, code lost:
            if (r0[r0] < 0) goto L_0x0110;
         */
        /* renamed from: x */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int m21450x() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 286
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p367h.AbstractC6327j.C6329b.m21450x():int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x015c, code lost:
            if (r0[r0] < 0) goto L_0x015f;
         */
        /* renamed from: y */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long m21449y() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 370
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p367h.AbstractC6327j.C6329b.m21449y():long");
        }

        /* renamed from: z */
        public long m21448z() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte u = m21453u();
                j |= (u & Byte.MAX_VALUE) << i;
                if ((u & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }
    }

    /* renamed from: c.d.h.j$c */
    /* loaded from: classes2-dex2jar.jar:c/d/h/j$c.class */
    public static final class C6330c extends AbstractC6327j {

        /* renamed from: e */
        public final InputStream f19946e;

        /* renamed from: f */
        public final byte[] f19947f;

        /* renamed from: g */
        public int f19948g;

        /* renamed from: h */
        public int f19949h;

        /* renamed from: i */
        public int f19950i;

        /* renamed from: j */
        public int f19951j;

        /* renamed from: k */
        public int f19952k;

        /* renamed from: l */
        public int f19953l;

        /* renamed from: m */
        public AbstractC6331a f19954m;

        /* renamed from: c.d.h.j$c$a */
        /* loaded from: classes2-dex2jar.jar:c/d/h/j$c$a.class */
        public interface AbstractC6331a {
            /* renamed from: a */
            void m21428a();
        }

        public C6330c(InputStream inputStream, int i) {
            super();
            this.f19953l = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            this.f19954m = null;
            C6381y.m21007a(inputStream, "input");
            this.f19946e = inputStream;
            this.f19947f = new byte[i];
            this.f19948g = 0;
            this.f19950i = 0;
            this.f19952k = 0;
        }

        /* renamed from: A */
        public final void m21447A() {
            int i = this.f19948g + this.f19949h;
            this.f19948g = i;
            int i2 = this.f19952k + i;
            int i3 = this.f19953l;
            if (i2 > i3) {
                int i4 = i2 - i3;
                this.f19949h = i4;
                this.f19948g = i - i4;
                return;
            }
            this.f19949h = 0;
        }

        /* renamed from: B */
        public void m21446B() throws IOException {
            int r;
            do {
                r = mo21396r();
                if (r == 0) {
                    return;
                }
            } while (mo21410e(r));
        }

        /* renamed from: C */
        public final void m21445C() throws IOException {
            if (this.f19948g - this.f19950i >= 10) {
                m21444D();
            } else {
                m21443E();
            }
        }

        /* renamed from: D */
        public final void m21444D() throws IOException {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.f19947f;
                int i2 = this.f19950i;
                this.f19950i = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: E */
        public final void m21443E() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (m21434u() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: a */
        public int mo21420a() {
            return this.f19952k + this.f19950i;
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: a */
        public void mo21419a(int i) throws InvalidProtocolBufferException {
            if (this.f19951j != i) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        /* renamed from: a */
        public final byte[] m21442a(int i, boolean z) throws IOException {
            byte[] h = m21440h(i);
            if (h != null) {
                byte[] bArr = h;
                if (z) {
                    bArr = (byte[]) h.clone();
                }
                return bArr;
            }
            int i2 = this.f19950i;
            int i3 = this.f19948g;
            int i4 = i3 - i2;
            this.f19952k += i3;
            this.f19950i = 0;
            this.f19948g = 0;
            List<byte[]> i5 = m21439i(i - i4);
            byte[] bArr2 = new byte[i];
            System.arraycopy(this.f19947f, i2, bArr2, 0, i4);
            int i6 = i4;
            for (byte[] bArr3 : i5) {
                System.arraycopy(bArr3, 0, bArr2, i6, bArr3.length);
                i6 += bArr3.length;
            }
            return bArr2;
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: b */
        public void mo21416b(int i) {
            this.f19953l = i;
            m21447A();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: b */
        public boolean mo21417b() throws IOException {
            boolean z = true;
            if (this.f19950i != this.f19948g || m21435m(1)) {
                z = false;
            }
            return z;
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: c */
        public int mo21413c(int i) throws InvalidProtocolBufferException {
            if (i >= 0) {
                int i2 = i + this.f19952k + this.f19950i;
                int i3 = this.f19953l;
                if (i2 <= i3) {
                    this.f19953l = i2;
                    m21447A();
                    return i3;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: c */
        public boolean mo21414c() throws IOException {
            return m21430y() != 0;
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: d */
        public ByteString mo21412d() throws IOException {
            int x = m21431x();
            int i = this.f19948g;
            int i2 = this.f19950i;
            if (x > i - i2 || x <= 0) {
                return x == 0 ? ByteString.EMPTY : m21441g(x);
            }
            ByteString copyFrom = ByteString.copyFrom(this.f19947f, i2, x);
            this.f19950i += x;
            return copyFrom;
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: e */
        public double mo21411e() throws IOException {
            return Double.longBitsToDouble(m21432w());
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: e */
        public boolean mo21410e(int i) throws IOException {
            int b = WireFormat.m6839b(i);
            if (b == 0) {
                m21445C();
                return true;
            } else if (b == 1) {
                m21437k(8);
                return true;
            } else if (b == 2) {
                m21437k(m21431x());
                return true;
            } else if (b == 3) {
                m21446B();
                mo21419a(WireFormat.m6840a(WireFormat.m6841a(i), 4));
                return true;
            } else if (b == 4) {
                return false;
            } else {
                if (b == 5) {
                    m21437k(4);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: f */
        public int mo21409f() throws IOException {
            return m21431x();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: g */
        public int mo21408g() throws IOException {
            return m21433v();
        }

        /* renamed from: g */
        public final ByteString m21441g(int i) throws IOException {
            byte[] h = m21440h(i);
            if (h != null) {
                return ByteString.copyFrom(h);
            }
            int i2 = this.f19950i;
            int i3 = this.f19948g;
            int i4 = i3 - i2;
            this.f19952k += i3;
            this.f19950i = 0;
            this.f19948g = 0;
            List<byte[]> i5 = m21439i(i - i4);
            byte[] bArr = new byte[i];
            System.arraycopy(this.f19947f, i2, bArr, 0, i4);
            int i6 = i4;
            for (byte[] bArr2 : i5) {
                System.arraycopy(bArr2, 0, bArr, i6, bArr2.length);
                i6 += bArr2.length;
            }
            return ByteString.wrap(bArr);
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: h */
        public long mo21406h() throws IOException {
            return m21432w();
        }

        /* renamed from: h */
        public final byte[] m21440h(int i) throws IOException {
            if (i == 0) {
                return C6381y.f20054b;
            }
            if (i >= 0) {
                int i2 = this.f19952k;
                int i3 = this.f19950i;
                int i4 = i2 + i3 + i;
                if (i4 - this.f19935c <= 0) {
                    int i5 = this.f19953l;
                    if (i4 <= i5) {
                        int i6 = this.f19948g - i3;
                        int i7 = i - i6;
                        if (i7 >= 4096 && i7 > this.f19946e.available()) {
                            return null;
                        }
                        byte[] bArr = new byte[i];
                        System.arraycopy(this.f19947f, this.f19950i, bArr, 0, i6);
                        this.f19952k += this.f19948g;
                        this.f19950i = 0;
                        this.f19948g = 0;
                        while (i6 < i) {
                            int read = this.f19946e.read(bArr, i6, i - i6);
                            if (read != -1) {
                                this.f19952k += read;
                                i6 += read;
                            } else {
                                throw InvalidProtocolBufferException.truncatedMessage();
                            }
                        }
                        return bArr;
                    }
                    m21437k((i5 - i2) - i3);
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: i */
        public float mo21405i() throws IOException {
            return Float.intBitsToFloat(m21433v());
        }

        /* renamed from: i */
        public final List<byte[]> m21439i(int i) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i > 0) {
                int min = Math.min(i, 4096);
                byte[] bArr = new byte[min];
                int i2 = 0;
                while (i2 < min) {
                    int read = this.f19946e.read(bArr, i2, min - i2);
                    if (read != -1) {
                        this.f19952k += read;
                        i2 += read;
                    } else {
                        throw InvalidProtocolBufferException.truncatedMessage();
                    }
                }
                i -= min;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: j */
        public int mo21404j() throws IOException {
            return m21431x();
        }

        /* renamed from: j */
        public final void m21438j(int i) throws IOException {
            if (m21435m(i)) {
                return;
            }
            if (i > (this.f19935c - this.f19952k) - this.f19950i) {
                throw InvalidProtocolBufferException.sizeLimitExceeded();
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: k */
        public long mo21403k() throws IOException {
            return m21430y();
        }

        /* renamed from: k */
        public void m21437k(int i) throws IOException {
            int i2 = this.f19948g;
            int i3 = this.f19950i;
            if (i > i2 - i3 || i < 0) {
                m21436l(i);
            } else {
                this.f19950i = i3 + i;
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: l */
        public int mo21402l() throws IOException {
            return m21433v();
        }

        /* renamed from: l */
        public final void m21436l(int i) throws IOException {
            if (i >= 0) {
                int i2 = this.f19952k;
                int i3 = this.f19950i;
                int i4 = this.f19953l;
                if (i2 + i3 + i <= i4) {
                    int i5 = 0;
                    if (this.f19954m == null) {
                        this.f19952k = i2 + i3;
                        int i6 = this.f19948g;
                        this.f19948g = 0;
                        this.f19950i = 0;
                        i5 = i6 - i3;
                        while (i5 < i) {
                            try {
                                long j = i - i5;
                                long skip = this.f19946e.skip(j);
                                if (skip < 0 || skip > j) {
                                    throw new IllegalStateException(this.f19946e.getClass() + "#skip returned invalid result: " + skip + "\nThe InputStream implementation is buggy.");
                                } else if (skip == 0) {
                                    break;
                                } else {
                                    i5 += (int) skip;
                                }
                            } finally {
                                this.f19952k += i5;
                                m21447A();
                            }
                        }
                    }
                    if (i5 < i) {
                        int i7 = this.f19948g;
                        int i8 = i7 - this.f19950i;
                        this.f19950i = i7;
                        m21438j(1);
                        while (true) {
                            int i9 = i - i8;
                            int i10 = this.f19948g;
                            if (i9 > i10) {
                                i8 += i10;
                                this.f19950i = i10;
                                m21438j(1);
                            } else {
                                this.f19950i = i9;
                                return;
                            }
                        }
                    }
                } else {
                    m21437k((i4 - i2) - i3);
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } else {
                throw InvalidProtocolBufferException.negativeSize();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: m */
        public long mo21401m() throws IOException {
            return m21432w();
        }

        /* renamed from: m */
        public final boolean m21435m(int i) throws IOException {
            int i2 = this.f19950i;
            if (i2 + i > this.f19948g) {
                int i3 = this.f19935c;
                int i4 = this.f19952k;
                if (i > (i3 - i4) - i2 || i4 + i2 + i > this.f19953l) {
                    return false;
                }
                AbstractC6331a aVar = this.f19954m;
                if (aVar != null) {
                    aVar.m21428a();
                }
                int i5 = this.f19950i;
                if (i5 > 0) {
                    int i6 = this.f19948g;
                    if (i6 > i5) {
                        byte[] bArr = this.f19947f;
                        System.arraycopy(bArr, i5, bArr, 0, i6 - i5);
                    }
                    this.f19952k += i5;
                    this.f19948g -= i5;
                    this.f19950i = 0;
                }
                InputStream inputStream = this.f19946e;
                byte[] bArr2 = this.f19947f;
                int i7 = this.f19948g;
                int read = inputStream.read(bArr2, i7, Math.min(bArr2.length - i7, (this.f19935c - this.f19952k) - i7));
                if (read == 0 || read < -1 || read > this.f19947f.length) {
                    throw new IllegalStateException(this.f19946e.getClass() + "#read(byte[]) returned invalid result: " + read + "\nThe InputStream implementation is buggy.");
                } else if (read <= 0) {
                    return false;
                } else {
                    this.f19948g += read;
                    m21447A();
                    return this.f19948g >= i ? true : m21435m(i);
                }
            } else {
                throw new IllegalStateException("refillBuffer() called when " + i + " bytes were already available in buffer");
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: n */
        public int mo21400n() throws IOException {
            return AbstractC6327j.m21461f(m21431x());
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: o */
        public long mo21399o() throws IOException {
            return AbstractC6327j.m21469a(m21430y());
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: p */
        public String mo21398p() throws IOException {
            int x = m21431x();
            if (x > 0 && x <= this.f19948g - this.f19950i) {
                String str = new String(this.f19947f, this.f19950i, x, C6381y.f20053a);
                this.f19950i += x;
                return str;
            } else if (x == 0) {
                return "";
            } else {
                if (x > this.f19948g) {
                    return new String(m21442a(x, false), C6381y.f20053a);
                }
                m21438j(x);
                String str2 = new String(this.f19947f, this.f19950i, x, C6381y.f20053a);
                this.f19950i += x;
                return str2;
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: q */
        public String mo21397q() throws IOException {
            byte[] bArr;
            int x = m21431x();
            int i = this.f19950i;
            if (x <= this.f19948g - i && x > 0) {
                bArr = this.f19947f;
                this.f19950i = i + x;
            } else if (x == 0) {
                return "";
            } else {
                if (x <= this.f19948g) {
                    m21438j(x);
                    bArr = this.f19947f;
                    this.f19950i = x + 0;
                } else {
                    bArr = m21442a(x, false);
                }
                i = 0;
            }
            return Utf8.m6884b(bArr, i, x);
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: r */
        public int mo21396r() throws IOException {
            if (mo21417b()) {
                this.f19951j = 0;
                return 0;
            }
            int x = m21431x();
            this.f19951j = x;
            if (WireFormat.m6841a(x) != 0) {
                return this.f19951j;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: s */
        public int mo21395s() throws IOException {
            return m21431x();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: t */
        public long mo21394t() throws IOException {
            return m21430y();
        }

        /* renamed from: u */
        public byte m21434u() throws IOException {
            if (this.f19950i == this.f19948g) {
                m21438j(1);
            }
            byte[] bArr = this.f19947f;
            int i = this.f19950i;
            this.f19950i = i + 1;
            return bArr[i];
        }

        /* renamed from: v */
        public int m21433v() throws IOException {
            int i = this.f19950i;
            int i2 = i;
            if (this.f19948g - i < 4) {
                m21438j(4);
                i2 = this.f19950i;
            }
            byte[] bArr = this.f19947f;
            this.f19950i = i2 + 4;
            return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
        }

        /* renamed from: w */
        public long m21432w() throws IOException {
            int i = this.f19950i;
            int i2 = i;
            if (this.f19948g - i < 8) {
                m21438j(8);
                i2 = this.f19950i;
            }
            byte[] bArr = this.f19947f;
            this.f19950i = i2 + 8;
            return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x010f, code lost:
            if (r0[r0] < 0) goto L_0x0112;
         */
        /* renamed from: x */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int m21431x() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 288
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p367h.AbstractC6327j.C6330c.m21431x():int");
        }

        /* JADX WARN: Code restructure failed: missing block: B:37:0x015d, code lost:
            if (r0[r0] < 0) goto L_0x0160;
         */
        /* renamed from: y */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long m21430y() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 371
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p367h.AbstractC6327j.C6330c.m21430y():long");
        }

        /* renamed from: z */
        public long m21429z() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte u = m21434u();
                j |= (u & Byte.MAX_VALUE) << i;
                if ((u & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }
    }

    /* renamed from: c.d.h.j$d */
    /* loaded from: classes2-dex2jar.jar:c/d/h/j$d.class */
    public static final class C6332d extends AbstractC6327j {

        /* renamed from: e */
        public final ByteBuffer f19955e;

        /* renamed from: f */
        public final boolean f19956f;

        /* renamed from: g */
        public final long f19957g;

        /* renamed from: h */
        public long f19958h;

        /* renamed from: i */
        public long f19959i;

        /* renamed from: j */
        public long f19960j;

        /* renamed from: k */
        public int f19961k;

        /* renamed from: l */
        public int f19962l;

        /* renamed from: m */
        public boolean f19963m;

        /* renamed from: n */
        public int f19964n;

        public C6332d(ByteBuffer byteBuffer, boolean z) {
            super();
            this.f19964n = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            this.f19955e = byteBuffer;
            long a = C6347m1.m21235a(byteBuffer);
            this.f19957g = a;
            this.f19958h = a + byteBuffer.limit();
            long position = this.f19957g + byteBuffer.position();
            this.f19959i = position;
            this.f19960j = position;
            this.f19956f = z;
        }

        /* renamed from: G */
        public static boolean m21421G() {
            return C6347m1.m21215e();
        }

        /* renamed from: A */
        public final void m21427A() {
            long j = this.f19958h + this.f19961k;
            this.f19958h = j;
            int i = (int) (j - this.f19960j);
            int i2 = this.f19964n;
            if (i > i2) {
                int i3 = i - i2;
                this.f19961k = i3;
                this.f19958h = j - i3;
                return;
            }
            this.f19961k = 0;
        }

        /* renamed from: B */
        public final int m21426B() {
            return (int) (this.f19958h - this.f19959i);
        }

        /* renamed from: C */
        public void m21425C() throws IOException {
            int r;
            do {
                r = mo21396r();
                if (r == 0) {
                    return;
                }
            } while (mo21410e(r));
        }

        /* renamed from: D */
        public final void m21424D() throws IOException {
            if (m21426B() >= 10) {
                m21423E();
            } else {
                m21422F();
            }
        }

        /* renamed from: E */
        public final void m21423E() throws IOException {
            for (int i = 0; i < 10; i++) {
                long j = this.f19959i;
                this.f19959i = 1 + j;
                if (C6347m1.m21248a(j) >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        /* renamed from: F */
        public final void m21422F() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (m21393u() >= 0) {
                    return;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: a */
        public int mo21420a() {
            return (int) (this.f19959i - this.f19960j);
        }

        /* renamed from: a */
        public final ByteBuffer m21418a(long j, long j2) throws IOException {
            int position = this.f19955e.position();
            int limit = this.f19955e.limit();
            try {
                try {
                    this.f19955e.position(m21415b(j));
                    this.f19955e.limit(m21415b(j2));
                    ByteBuffer slice = this.f19955e.slice();
                    this.f19955e.position(position);
                    this.f19955e.limit(limit);
                    return slice;
                } catch (IllegalArgumentException e) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
            } catch (Throwable th) {
                this.f19955e.position(position);
                this.f19955e.limit(limit);
                throw th;
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: a */
        public void mo21419a(int i) throws InvalidProtocolBufferException {
            if (this.f19962l != i) {
                throw InvalidProtocolBufferException.invalidEndTag();
            }
        }

        /* renamed from: b */
        public final int m21415b(long j) {
            return (int) (j - this.f19957g);
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: b */
        public void mo21416b(int i) {
            this.f19964n = i;
            m21427A();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: b */
        public boolean mo21417b() throws IOException {
            return this.f19959i == this.f19958h;
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: c */
        public int mo21413c(int i) throws InvalidProtocolBufferException {
            if (i >= 0) {
                int a = i + mo21420a();
                int i2 = this.f19964n;
                if (a <= i2) {
                    this.f19964n = a;
                    m21427A();
                    return i2;
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            throw InvalidProtocolBufferException.negativeSize();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: c */
        public boolean mo21414c() throws IOException {
            return m21389y() != 0;
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: d */
        public ByteString mo21412d() throws IOException {
            int x = m21390x();
            if (x <= 0 || x > m21426B()) {
                if (x == 0) {
                    return ByteString.EMPTY;
                }
                if (x < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            } else if (!this.f19956f || !this.f19963m) {
                byte[] bArr = new byte[x];
                long j = x;
                C6347m1.m21247a(this.f19959i, bArr, 0L, j);
                this.f19959i += j;
                return ByteString.wrap(bArr);
            } else {
                long j2 = this.f19959i;
                long j3 = x;
                ByteBuffer a = m21418a(j2, j2 + j3);
                this.f19959i += j3;
                return ByteString.wrap(a);
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: e */
        public double mo21411e() throws IOException {
            return Double.longBitsToDouble(m21391w());
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: e */
        public boolean mo21410e(int i) throws IOException {
            int b = WireFormat.m6839b(i);
            if (b == 0) {
                m21424D();
                return true;
            } else if (b == 1) {
                m21407g(8);
                return true;
            } else if (b == 2) {
                m21407g(m21390x());
                return true;
            } else if (b == 3) {
                m21425C();
                mo21419a(WireFormat.m6840a(WireFormat.m6841a(i), 4));
                return true;
            } else if (b == 4) {
                return false;
            } else {
                if (b == 5) {
                    m21407g(4);
                    return true;
                }
                throw InvalidProtocolBufferException.invalidWireType();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: f */
        public int mo21409f() throws IOException {
            return m21390x();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: g */
        public int mo21408g() throws IOException {
            return m21392v();
        }

        /* renamed from: g */
        public void m21407g(int i) throws IOException {
            if (i >= 0 && i <= m21426B()) {
                this.f19959i += i;
            } else if (i < 0) {
                throw InvalidProtocolBufferException.negativeSize();
            } else {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: h */
        public long mo21406h() throws IOException {
            return m21391w();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: i */
        public float mo21405i() throws IOException {
            return Float.intBitsToFloat(m21392v());
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: j */
        public int mo21404j() throws IOException {
            return m21390x();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: k */
        public long mo21403k() throws IOException {
            return m21389y();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: l */
        public int mo21402l() throws IOException {
            return m21392v();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: m */
        public long mo21401m() throws IOException {
            return m21391w();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: n */
        public int mo21400n() throws IOException {
            return AbstractC6327j.m21461f(m21390x());
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: o */
        public long mo21399o() throws IOException {
            return AbstractC6327j.m21469a(m21389y());
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: p */
        public String mo21398p() throws IOException {
            int x = m21390x();
            if (x > 0 && x <= m21426B()) {
                byte[] bArr = new byte[x];
                long j = x;
                C6347m1.m21247a(this.f19959i, bArr, 0L, j);
                String str = new String(bArr, C6381y.f20053a);
                this.f19959i += j;
                return str;
            } else if (x == 0) {
                return "";
            } else {
                if (x < 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: q */
        public String mo21397q() throws IOException {
            int x = m21390x();
            if (x > 0 && x <= m21426B()) {
                String b = Utf8.m6886b(this.f19955e, m21415b(this.f19959i), x);
                this.f19959i += x;
                return b;
            } else if (x == 0) {
                return "";
            } else {
                if (x <= 0) {
                    throw InvalidProtocolBufferException.negativeSize();
                }
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: r */
        public int mo21396r() throws IOException {
            if (mo21417b()) {
                this.f19962l = 0;
                return 0;
            }
            int x = m21390x();
            this.f19962l = x;
            if (WireFormat.m6841a(x) != 0) {
                return this.f19962l;
            }
            throw InvalidProtocolBufferException.invalidTag();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: s */
        public int mo21395s() throws IOException {
            return m21390x();
        }

        @Override // p131c.p161d.p367h.AbstractC6327j
        /* renamed from: t */
        public long mo21394t() throws IOException {
            return m21389y();
        }

        /* renamed from: u */
        public byte m21393u() throws IOException {
            long j = this.f19959i;
            if (j != this.f19958h) {
                this.f19959i = 1 + j;
                return C6347m1.m21248a(j);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* renamed from: v */
        public int m21392v() throws IOException {
            long j = this.f19959i;
            if (this.f19958h - j >= 4) {
                this.f19959i = 4 + j;
                return ((C6347m1.m21248a(j + 3) & 255) << 24) | (C6347m1.m21248a(j) & 255) | ((C6347m1.m21248a(1 + j) & 255) << 8) | ((C6347m1.m21248a(2 + j) & 255) << 16);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* renamed from: w */
        public long m21391w() throws IOException {
            long j = this.f19959i;
            if (this.f19958h - j >= 8) {
                this.f19959i = 8 + j;
                return ((C6347m1.m21248a(j + 7) & 255) << 56) | (C6347m1.m21248a(j) & 255) | ((C6347m1.m21248a(1 + j) & 255) << 8) | ((C6347m1.m21248a(2 + j) & 255) << 16) | ((C6347m1.m21248a(3 + j) & 255) << 24) | ((C6347m1.m21248a(4 + j) & 255) << 32) | ((C6347m1.m21248a(5 + j) & 255) << 40) | ((C6347m1.m21248a(6 + j) & 255) << 48);
            }
            throw InvalidProtocolBufferException.truncatedMessage();
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x0116, code lost:
            if (p131c.p161d.p367h.C6347m1.m21248a((long) r0) < 0) goto L_0x0119;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v25, types: [long] */
        /* JADX WARN: Type inference failed for: r0v35, types: [long] */
        /* JADX WARN: Type inference failed for: r0v45, types: [long] */
        /* JADX WARN: Type inference failed for: r0v51, types: [long] */
        /* JADX WARN: Type inference failed for: r0v57, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r6v10 */
        /* JADX WARN: Type inference failed for: r6v11 */
        /* JADX WARN: Type inference failed for: r6v12 */
        /* JADX WARN: Type inference failed for: r6v13 */
        /* JADX WARN: Type inference failed for: r6v2, types: [long] */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v6 */
        /* JADX WARN: Type inference failed for: r6v7 */
        /* JADX WARN: Type inference failed for: r6v8 */
        /* JADX WARN: Unknown variable types count: 7 */
        /* renamed from: x */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int m21390x() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 295
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p367h.AbstractC6327j.C6332d.m21390x():int");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v17, types: [long] */
        /* JADX WARN: Type inference failed for: r0v29, types: [long] */
        /* JADX WARN: Type inference failed for: r0v60, types: [long] */
        /* JADX WARN: Type inference failed for: r0v63, types: [long] */
        /* JADX WARN: Type inference failed for: r7v18 */
        /* JADX WARN: Type inference failed for: r7v19 */
        /* JADX WARN: Type inference failed for: r7v2, types: [long] */
        /* JADX WARN: Type inference failed for: r7v20 */
        /* JADX WARN: Type inference failed for: r7v21 */
        /* JADX WARN: Type inference failed for: r7v6 */
        /* JADX WARN: Type inference failed for: r7v7 */
        /* JADX WARN: Type inference failed for: r9v1, types: [long] */
        /* JADX WARN: Type inference failed for: r9v17 */
        /* JADX WARN: Type inference failed for: r9v18 */
        /* JADX WARN: Type inference failed for: r9v19 */
        /* JADX WARN: Type inference failed for: r9v20 */
        /* JADX WARN: Type inference failed for: r9v21 */
        /* JADX WARN: Type inference failed for: r9v5 */
        /* JADX WARN: Unknown variable types count: 6 */
        /* renamed from: y */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long m21389y() throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 370
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p367h.AbstractC6327j.C6332d.m21389y():long");
        }

        /* renamed from: z */
        public long m21388z() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte u = m21393u();
                j |= (u & Byte.MAX_VALUE) << i;
                if ((u & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.malformedVarint();
        }
    }

    public AbstractC6327j() {
        this.f19934b = 100;
        this.f19935c = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
    }

    /* renamed from: a */
    public static long m21469a(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: a */
    public static AbstractC6327j m21468a(InputStream inputStream) {
        return m21467a(inputStream, 4096);
    }

    /* renamed from: a */
    public static AbstractC6327j m21467a(InputStream inputStream, int i) {
        if (i > 0) {
            return inputStream == null ? m21465a(C6381y.f20054b) : new C6330c(inputStream, i);
        }
        throw new IllegalArgumentException("bufferSize must be > 0");
    }

    /* renamed from: a */
    public static AbstractC6327j m21466a(ByteBuffer byteBuffer, boolean z) {
        if (byteBuffer.hasArray()) {
            return m21463a(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining(), z);
        }
        if (byteBuffer.isDirect() && C6332d.m21421G()) {
            return new C6332d(byteBuffer, z);
        }
        int remaining = byteBuffer.remaining();
        byte[] bArr = new byte[remaining];
        byteBuffer.duplicate().get(bArr);
        return m21463a(bArr, 0, remaining, true);
    }

    /* renamed from: a */
    public static AbstractC6327j m21465a(byte[] bArr) {
        return m21464a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static AbstractC6327j m21464a(byte[] bArr, int i, int i2) {
        return m21463a(bArr, i, i2, false);
    }

    /* renamed from: a */
    public static AbstractC6327j m21463a(byte[] bArr, int i, int i2, boolean z) {
        C6329b bVar = new C6329b(bArr, i, i2, z);
        try {
            bVar.mo21413c(i2);
            return bVar;
        } catch (InvalidProtocolBufferException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: f */
    public static int m21461f(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: a */
    public abstract int mo21420a();

    /* renamed from: a */
    public abstract void mo21419a(int i) throws InvalidProtocolBufferException;

    /* renamed from: b */
    public abstract void mo21416b(int i);

    /* renamed from: b */
    public abstract boolean mo21417b() throws IOException;

    /* renamed from: c */
    public abstract int mo21413c(int i) throws InvalidProtocolBufferException;

    /* renamed from: c */
    public abstract boolean mo21414c() throws IOException;

    /* renamed from: d */
    public final int m21462d(int i) {
        if (i >= 0) {
            int i2 = this.f19935c;
            this.f19935c = i;
            return i2;
        }
        throw new IllegalArgumentException("Size limit cannot be negative: " + i);
    }

    /* renamed from: d */
    public abstract ByteString mo21412d() throws IOException;

    /* renamed from: e */
    public abstract double mo21411e() throws IOException;

    /* renamed from: e */
    public abstract boolean mo21410e(int i) throws IOException;

    /* renamed from: f */
    public abstract int mo21409f() throws IOException;

    /* renamed from: g */
    public abstract int mo21408g() throws IOException;

    /* renamed from: h */
    public abstract long mo21406h() throws IOException;

    /* renamed from: i */
    public abstract float mo21405i() throws IOException;

    /* renamed from: j */
    public abstract int mo21404j() throws IOException;

    /* renamed from: k */
    public abstract long mo21403k() throws IOException;

    /* renamed from: l */
    public abstract int mo21402l() throws IOException;

    /* renamed from: m */
    public abstract long mo21401m() throws IOException;

    /* renamed from: n */
    public abstract int mo21400n() throws IOException;

    /* renamed from: o */
    public abstract long mo21399o() throws IOException;

    /* renamed from: p */
    public abstract String mo21398p() throws IOException;

    /* renamed from: q */
    public abstract String mo21397q() throws IOException;

    /* renamed from: r */
    public abstract int mo21396r() throws IOException;

    /* renamed from: s */
    public abstract int mo21395s() throws IOException;

    /* renamed from: t */
    public abstract long mo21394t() throws IOException;
}
