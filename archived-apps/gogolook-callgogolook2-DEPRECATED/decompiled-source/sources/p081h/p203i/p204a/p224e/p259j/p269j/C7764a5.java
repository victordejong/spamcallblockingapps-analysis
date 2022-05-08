package p081h.p203i.p204a.p224e.p259j.p269j;

import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import kotlinx.coroutines.scheduling.CoroutineScheduler;
/* renamed from: h.i.a.e.j.j.a5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/a5.class */
public final class C7764a5 {

    /* renamed from: a */
    public final ByteBuffer f18192a;

    /* renamed from: b */
    public AbstractC7918t0 f18193b;

    /* renamed from: c */
    public int f18194c;

    public C7764a5(ByteBuffer byteBuffer) {
        this.f18192a = byteBuffer;
        this.f18192a.order(ByteOrder.LITTLE_ENDIAN);
    }

    public C7764a5(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    /* renamed from: a */
    public static int m19536a(CharSequence charSequence) {
        int i;
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        int i4 = 0;
        while (i4 < length && charSequence.charAt(i4) < 128) {
            i4++;
        }
        int i5 = length;
        while (true) {
            i = i5;
            if (i4 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i4);
            if (charAt < 2048) {
                i5 += (127 - charAt) >>> 31;
                i4++;
            } else {
                int length2 = charSequence.length();
                while (i4 < length2) {
                    char charAt2 = charSequence.charAt(i4);
                    if (charAt2 < 2048) {
                        i3 += (127 - charAt2) >>> 31;
                        i2 = i4;
                    } else {
                        int i6 = i3 + 2;
                        i3 = i6;
                        i2 = i4;
                        if (55296 <= charAt2) {
                            i3 = i6;
                            i2 = i4;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i4) >= 65536) {
                                i2 = i4 + 1;
                                i3 = i6;
                            } else {
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i4);
                                throw new IllegalArgumentException(sb.toString());
                            }
                        } else {
                            continue;
                        }
                    }
                    i4 = i2 + 1;
                }
                i = i5 + i3;
            }
        }
        if (i >= length) {
            return i;
        }
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(i + AnimatedStateListDrawableCompat.AnimatedStateListState.REVERSED_BIT);
        throw new IllegalArgumentException(sb2.toString());
    }

    /* renamed from: a */
    public static C7764a5 m19533a(byte[] bArr, int i, int i2) {
        return new C7764a5(bArr, 0, i2);
    }

    /* renamed from: a */
    public static void m19535a(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int i2;
        if (!byteBuffer.isReadOnly()) {
            int i3 = 0;
            int i4 = 0;
            if (byteBuffer.hasArray()) {
                try {
                    byte[] array = byteBuffer.array();
                    int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                    int remaining = byteBuffer.remaining();
                    int length = charSequence.length();
                    int i5 = remaining + arrayOffset;
                    while (i4 < length && (i2 = i4 + arrayOffset) < i5) {
                        char charAt = charSequence.charAt(i4);
                        if (charAt >= 128) {
                            break;
                        }
                        array[i2] = (byte) charAt;
                        i4++;
                    }
                    if (i4 == length) {
                        i = arrayOffset + length;
                    } else {
                        int i6 = arrayOffset + i4;
                        while (true) {
                            i = i6;
                            if (i4 >= length) {
                                break;
                            }
                            char charAt2 = charSequence.charAt(i4);
                            if (charAt2 < 128 && i6 < i5) {
                                i6++;
                                array[i6] = (byte) charAt2;
                            } else if (charAt2 < 2048 && i6 <= i5 - 2) {
                                int i7 = i6 + 1;
                                array[i6] = (byte) ((charAt2 >>> 6) | 960);
                                i6 = i7 + 1;
                                array[i7] = (byte) ((charAt2 & '?') | 128);
                            } else if ((charAt2 < 55296 || 57343 < charAt2) && i6 <= i5 - 3) {
                                int i8 = i6 + 1;
                                array[i6] = (byte) ((charAt2 >>> '\f') | 480);
                                int i9 = i8 + 1;
                                array[i8] = (byte) (((charAt2 >>> 6) & 63) | 128);
                                i6 = i9 + 1;
                                array[i9] = (byte) ((charAt2 & '?') | 128);
                            } else if (i6 <= i5 - 4) {
                                int i10 = i4 + 1;
                                if (i10 == charSequence.length()) {
                                    break;
                                }
                                char charAt3 = charSequence.charAt(i10);
                                if (!Character.isSurrogatePair(charAt2, charAt3)) {
                                    i4 = i10;
                                    break;
                                }
                                int codePoint = Character.toCodePoint(charAt2, charAt3);
                                int i11 = i6 + 1;
                                array[i6] = (byte) ((codePoint >>> 18) | 240);
                                int i12 = i11 + 1;
                                array[i11] = (byte) (((codePoint >>> 12) & 63) | 128);
                                int i13 = i12 + 1;
                                array[i12] = (byte) (((codePoint >>> 6) & 63) | 128);
                                i6 = i13 + 1;
                                array[i13] = (byte) ((codePoint & 63) | 128);
                                i4 = i10;
                            } else {
                                StringBuilder sb = new StringBuilder(37);
                                sb.append("Failed writing ");
                                sb.append(charAt2);
                                sb.append(" at index ");
                                sb.append(i6);
                                throw new ArrayIndexOutOfBoundsException(sb.toString());
                            }
                            i4++;
                        }
                        StringBuilder sb2 = new StringBuilder(39);
                        sb2.append("Unpaired surrogate at index ");
                        sb2.append(i4 - 1);
                        throw new IllegalArgumentException(sb2.toString());
                    }
                    byteBuffer.position(i - byteBuffer.arrayOffset());
                } catch (ArrayIndexOutOfBoundsException e) {
                    BufferOverflowException bufferOverflowException = new BufferOverflowException();
                    bufferOverflowException.initCause(e);
                    throw bufferOverflowException;
                }
            } else {
                int length2 = charSequence.length();
                while (i3 < length2) {
                    char charAt4 = charSequence.charAt(i3);
                    if (charAt4 < 128) {
                        byteBuffer.put((byte) charAt4);
                    } else if (charAt4 < 2048) {
                        byteBuffer.put((byte) ((charAt4 >>> 6) | 960));
                        byteBuffer.put((byte) ((charAt4 & '?') | 128));
                    } else if (charAt4 < 55296 || 57343 < charAt4) {
                        byteBuffer.put((byte) ((charAt4 >>> '\f') | 480));
                        byteBuffer.put((byte) (((charAt4 >>> 6) & 63) | 128));
                        byteBuffer.put((byte) ((charAt4 & '?') | 128));
                    } else {
                        int i14 = i3 + 1;
                        if (i14 != charSequence.length()) {
                            char charAt5 = charSequence.charAt(i14);
                            if (Character.isSurrogatePair(charAt4, charAt5)) {
                                int codePoint2 = Character.toCodePoint(charAt4, charAt5);
                                byteBuffer.put((byte) ((codePoint2 >>> 18) | 240));
                                byteBuffer.put((byte) (((codePoint2 >>> 12) & 63) | 128));
                                byteBuffer.put((byte) (((codePoint2 >>> 6) & 63) | 128));
                                byteBuffer.put((byte) ((codePoint2 & 63) | 128));
                                i3 = i14;
                            } else {
                                i3 = i14;
                            }
                        }
                        StringBuilder sb3 = new StringBuilder(39);
                        sb3.append("Unpaired surrogate at index ");
                        sb3.append(i3 - 1);
                        throw new IllegalArgumentException(sb3.toString());
                    }
                    i3++;
                }
            }
        } else {
            throw new ReadOnlyBufferException();
        }
    }

    /* renamed from: b */
    public static int m19530b(int i, long j) {
        return m19523e(i) + (((-128) & j) == 0 ? 1 : ((-16384) & j) == 0 ? 2 : (CoroutineScheduler.PARKED_VERSION_MASK & j) == 0 ? 3 : ((-268435456) & j) == 0 ? 4 : ((-34359738368L) & j) == 0 ? 5 : ((-4398046511104L) & j) == 0 ? 6 : ((-562949953421312L) & j) == 0 ? 7 : ((-72057594037927936L) & j) == 0 ? 8 : (j & Long.MIN_VALUE) == 0 ? 9 : 10);
    }

    /* renamed from: b */
    public static int m19529b(int i, AbstractC7843j5 j5Var) {
        int e = m19523e(i);
        int b = j5Var.m19273b();
        return e + m19524d(b) + b;
    }

    /* renamed from: b */
    public static int m19528b(int i, String str) {
        int e = m19523e(i);
        int a = m19536a(str);
        return e + m19524d(a) + a;
    }

    /* renamed from: b */
    public static C7764a5 m19527b(byte[] bArr) {
        return m19533a(bArr, 0, bArr.length);
    }

    /* renamed from: c */
    public static int m19526c(int i) {
        if (i >= 0) {
            return m19524d(i);
        }
        return 10;
    }

    /* renamed from: c */
    public static int m19525c(int i, int i2) {
        return m19523e(i) + m19526c(i2);
    }

    /* renamed from: d */
    public static int m19524d(int i) {
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

    /* renamed from: e */
    public static int m19523e(int i) {
        return m19524d(i << 3);
    }

    /* renamed from: a */
    public final void m19545a() {
        if (this.f18192a.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.f18192a.remaining())));
        }
    }

    /* renamed from: a */
    public final void m19544a(byte b) throws IOException {
        if (this.f18192a.hasRemaining()) {
            this.f18192a.put(b);
            return;
        }
        throw new C7772b5(this.f18192a.position(), this.f18192a.limit());
    }

    /* renamed from: a */
    public final void m19543a(int i) throws IOException {
        byte b = (byte) i;
        if (this.f18192a.hasRemaining()) {
            this.f18192a.put(b);
            return;
        }
        throw new C7772b5(this.f18192a.position(), this.f18192a.limit());
    }

    /* renamed from: a */
    public final void m19542a(int i, int i2) throws IOException {
        m19532b((i << 3) | i2);
    }

    /* renamed from: a */
    public final void m19541a(int i, long j) throws IOException {
        m19542a(i, 0);
        m19537a(j);
    }

    /* renamed from: a */
    public final void m19540a(int i, AbstractC7843j5 j5Var) throws IOException {
        m19542a(i, 2);
        if (j5Var.f18376a < 0) {
            j5Var.m19273b();
        }
        m19532b(j5Var.f18376a);
        j5Var.mo18861a(this);
    }

    /* renamed from: a */
    public final void m19539a(int i, AbstractC7925t2 t2Var) throws IOException {
        if (this.f18193b == null) {
            this.f18193b = AbstractC7918t0.m18980a(this.f18192a);
            this.f18194c = this.f18192a.position();
        } else if (this.f18194c != this.f18192a.position()) {
            this.f18193b.mo18901b(this.f18192a.array(), this.f18194c, this.f18192a.position() - this.f18194c);
            this.f18194c = this.f18192a.position();
        }
        AbstractC7918t0 t0Var = this.f18193b;
        t0Var.mo18915a(4, t2Var);
        t0Var.mo18921a();
        this.f18194c = this.f18192a.position();
    }

    /* renamed from: a */
    public final void m19538a(int i, String str) throws IOException {
        m19542a(i, 2);
        try {
            int d = m19524d(str.length());
            if (d == m19524d(str.length() * 3)) {
                int position = this.f18192a.position();
                if (this.f18192a.remaining() >= d) {
                    this.f18192a.position(position + d);
                    m19535a(str, this.f18192a);
                    int position2 = this.f18192a.position();
                    this.f18192a.position(position);
                    m19532b((position2 - position) - d);
                    this.f18192a.position(position2);
                    return;
                }
                throw new C7772b5(position + d, this.f18192a.limit());
            }
            m19532b(m19536a(str));
            m19535a(str, this.f18192a);
        } catch (BufferOverflowException e) {
            C7772b5 b5Var = new C7772b5(this.f18192a.position(), this.f18192a.limit());
            b5Var.initCause(e);
            throw b5Var;
        }
    }

    /* renamed from: a */
    public final void m19537a(long j) throws IOException {
        while (((-128) & j) != 0) {
            m19543a((((int) j) & 127) | 128);
            j >>>= 7;
        }
        m19543a((int) j);
    }

    /* renamed from: a */
    public final void m19534a(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.f18192a.remaining() >= length) {
            this.f18192a.put(bArr, 0, length);
            return;
        }
        throw new C7772b5(this.f18192a.position(), this.f18192a.limit());
    }

    /* renamed from: b */
    public final void m19532b(int i) throws IOException {
        while ((i & (-128)) != 0) {
            m19543a((i & 127) | 128);
            i >>>= 7;
        }
        m19543a(i);
    }

    /* renamed from: b */
    public final void m19531b(int i, int i2) throws IOException {
        m19542a(i, 0);
        if (i2 >= 0) {
            m19532b(i2);
        } else {
            m19537a(i2);
        }
    }
}
