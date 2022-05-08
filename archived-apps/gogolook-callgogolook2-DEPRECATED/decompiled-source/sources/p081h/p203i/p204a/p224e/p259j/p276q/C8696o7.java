package p081h.p203i.p204a.p224e.p259j.p276q;

import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import kotlinx.coroutines.scheduling.CoroutineScheduler;
/* renamed from: h.i.a.e.j.q.o7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/o7.class */
public final class C8696o7 {

    /* renamed from: a */
    public final ByteBuffer f19913a;

    /* renamed from: b */
    public AbstractC8632i3 f19914b;

    /* renamed from: c */
    public int f19915c;

    public C8696o7(ByteBuffer byteBuffer) {
        this.f19913a = byteBuffer;
        this.f19913a.order(ByteOrder.LITTLE_ENDIAN);
    }

    public C8696o7(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    /* renamed from: a */
    public static int m17264a(CharSequence charSequence) {
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
    public static int m17262a(String str) {
        int a = m17264a((CharSequence) str);
        return m17247e(a) + a;
    }

    /* renamed from: a */
    public static C8696o7 m17260a(byte[] bArr, int i, int i2) {
        return new C8696o7(bArr, 0, i2);
    }

    /* renamed from: a */
    public static void m17263a(CharSequence charSequence, ByteBuffer byteBuffer) {
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
    public static int m17255b(int i, AbstractC8768w7 w7Var) {
        int c = m17251c(i);
        int b = w7Var.m17077b();
        return c + m17247e(b) + b;
    }

    /* renamed from: b */
    public static int m17254b(int i, String str) {
        return m17251c(i) + m17262a(str);
    }

    /* renamed from: b */
    public static int m17253b(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if ((CoroutineScheduler.PARKED_VERSION_MASK & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    /* renamed from: b */
    public static C8696o7 m17252b(byte[] bArr) {
        return m17260a(bArr, 0, bArr.length);
    }

    /* renamed from: c */
    public static int m17251c(int i) {
        return m17247e(i << 3);
    }

    /* renamed from: c */
    public static int m17250c(int i, int i2) {
        return m17251c(i) + m17248d(i2);
    }

    /* renamed from: c */
    public static int m17249c(int i, long j) {
        return m17251c(i) + m17253b(j);
    }

    /* renamed from: d */
    public static int m17248d(int i) {
        if (i >= 0) {
            return m17247e(i);
        }
        return 10;
    }

    /* renamed from: e */
    public static int m17247e(int i) {
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

    /* renamed from: a */
    public final AbstractC8632i3 m17276a() throws IOException {
        if (this.f19914b == null) {
            this.f19914b = AbstractC8632i3.m17538a(this.f19913a);
            this.f19915c = this.f19913a.position();
        } else if (this.f19915c != this.f19913a.position()) {
            this.f19914b.mo17460b(this.f19913a.array(), this.f19915c, this.f19913a.position() - this.f19915c);
            this.f19915c = this.f19913a.position();
        }
        return this.f19914b;
    }

    /* renamed from: a */
    public final void m17275a(int i) throws IOException {
        byte b = (byte) i;
        if (this.f19913a.hasRemaining()) {
            this.f19913a.put(b);
            return;
        }
        throw new C8705p7(this.f19913a.position(), this.f19913a.limit());
    }

    /* renamed from: a */
    public final void m17274a(int i, double d) throws IOException {
        m17272a(i, 1);
        long doubleToLongBits = Double.doubleToLongBits(d);
        if (this.f19913a.remaining() >= 8) {
            this.f19913a.putLong(doubleToLongBits);
            return;
        }
        throw new C8705p7(this.f19913a.position(), this.f19913a.limit());
    }

    /* renamed from: a */
    public final void m17273a(int i, float f) throws IOException {
        m17272a(i, 5);
        int floatToIntBits = Float.floatToIntBits(f);
        if (this.f19913a.remaining() >= 4) {
            this.f19913a.putInt(floatToIntBits);
            return;
        }
        throw new C8705p7(this.f19913a.position(), this.f19913a.limit());
    }

    /* renamed from: a */
    public final void m17272a(int i, int i2) throws IOException {
        m17258b((i << 3) | i2);
    }

    /* renamed from: a */
    public final void m17271a(int i, long j) throws IOException {
        m17272a(i, 0);
        m17266a(j);
    }

    /* renamed from: a */
    public final void m17270a(int i, AbstractC8648j5 j5Var) throws IOException {
        AbstractC8632i3 a = m17276a();
        a.mo17474a(i, j5Var);
        a.mo17479a();
        this.f19915c = this.f19913a.position();
    }

    /* renamed from: a */
    public final void m17269a(int i, AbstractC8768w7 w7Var) throws IOException {
        m17272a(i, 2);
        m17265a(w7Var);
    }

    /* renamed from: a */
    public final void m17268a(int i, String str) throws IOException {
        m17272a(i, 2);
        try {
            int e = m17247e(str.length());
            if (e == m17247e(str.length() * 3)) {
                int position = this.f19913a.position();
                if (this.f19913a.remaining() >= e) {
                    this.f19913a.position(position + e);
                    m17263a(str, this.f19913a);
                    int position2 = this.f19913a.position();
                    this.f19913a.position(position);
                    m17258b((position2 - position) - e);
                    this.f19913a.position(position2);
                    return;
                }
                throw new C8705p7(position + e, this.f19913a.limit());
            }
            m17258b(m17264a((CharSequence) str));
            m17263a(str, this.f19913a);
        } catch (BufferOverflowException e2) {
            C8705p7 p7Var = new C8705p7(this.f19913a.position(), this.f19913a.limit());
            p7Var.initCause(e2);
            throw p7Var;
        }
    }

    /* renamed from: a */
    public final void m17267a(int i, boolean z) throws IOException {
        m17272a(i, 0);
        byte b = z ? (byte) 1 : (byte) 0;
        if (this.f19913a.hasRemaining()) {
            this.f19913a.put(b);
            return;
        }
        throw new C8705p7(this.f19913a.position(), this.f19913a.limit());
    }

    /* renamed from: a */
    public final void m17266a(long j) throws IOException {
        while (((-128) & j) != 0) {
            m17275a((((int) j) & 127) | 128);
            j >>>= 7;
        }
        m17275a((int) j);
    }

    /* renamed from: a */
    public final void m17265a(AbstractC8768w7 w7Var) throws IOException {
        m17258b(w7Var.m17075d());
        w7Var.mo16952a(this);
    }

    /* renamed from: a */
    public final void m17261a(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this.f19913a.remaining() >= length) {
            this.f19913a.put(bArr, 0, length);
            return;
        }
        throw new C8705p7(this.f19913a.position(), this.f19913a.limit());
    }

    /* renamed from: b */
    public final void m17259b() {
        if (this.f19913a.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.f19913a.remaining())));
        }
    }

    /* renamed from: b */
    public final void m17258b(int i) throws IOException {
        while ((i & (-128)) != 0) {
            m17275a((i & 127) | 128);
            i >>>= 7;
        }
        m17275a(i);
    }

    /* renamed from: b */
    public final void m17257b(int i, int i2) throws IOException {
        m17272a(i, 0);
        if (i2 >= 0) {
            m17258b(i2);
        } else {
            m17266a(i2);
        }
    }

    /* renamed from: b */
    public final void m17256b(int i, long j) throws IOException {
        m17272a(i, 0);
        m17266a(j);
    }
}
