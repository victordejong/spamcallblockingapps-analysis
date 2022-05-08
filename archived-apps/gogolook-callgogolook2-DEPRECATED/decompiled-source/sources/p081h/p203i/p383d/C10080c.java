package p081h.p203i.p383d;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* renamed from: h.i.d.c */
/* loaded from: classes2-dex2jar.jar:h/i/d/c.class */
public class C10080c {

    /* renamed from: a */
    public ByteBuffer f22789a;

    /* renamed from: b */
    public int f22790b;

    /* renamed from: c */
    public int f22791c;

    /* renamed from: d */
    public int[] f22792d;

    /* renamed from: e */
    public int f22793e;

    /* renamed from: f */
    public boolean f22794f;

    /* renamed from: g */
    public boolean f22795g;

    /* renamed from: h */
    public int f22796h;

    /* renamed from: i */
    public int[] f22797i;

    /* renamed from: j */
    public int f22798j;

    /* renamed from: k */
    public int f22799k;

    /* renamed from: l */
    public boolean f22800l;

    /* renamed from: m */
    public AbstractC10081a f22801m;

    /* renamed from: n */
    public final AbstractC10085e f22802n;

    /* renamed from: h.i.d.c$a */
    /* loaded from: classes2-dex2jar.jar:h/i/d/c$a.class */
    public static abstract class AbstractC10081a {
        /* renamed from: a */
        public abstract ByteBuffer mo13414a(int i);

        /* renamed from: a */
        public void m13415a(ByteBuffer byteBuffer) {
        }
    }

    /* renamed from: h.i.d.c$b */
    /* loaded from: classes2-dex2jar.jar:h/i/d/c$b.class */
    public static final class C10082b extends AbstractC10081a {

        /* renamed from: a */
        public static final C10082b f22803a = new C10082b();

        @Override // p081h.p203i.p383d.C10080c.AbstractC10081a
        /* renamed from: a */
        public ByteBuffer mo13414a(int i) {
            return ByteBuffer.allocate(i).order(ByteOrder.LITTLE_ENDIAN);
        }
    }

    public C10080c(int i) {
        this(i, C10082b.f22803a, null, AbstractC10085e.m13412a());
    }

    public C10080c(int i, AbstractC10081a aVar, ByteBuffer byteBuffer, AbstractC10085e eVar) {
        this.f22791c = 1;
        this.f22792d = null;
        this.f22793e = 0;
        this.f22794f = false;
        this.f22795g = false;
        this.f22797i = new int[16];
        this.f22798j = 0;
        this.f22799k = 0;
        this.f22800l = false;
        int i2 = i <= 0 ? 1 : i;
        this.f22801m = aVar;
        if (byteBuffer != null) {
            this.f22789a = byteBuffer;
            this.f22789a.clear();
            this.f22789a.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f22789a = aVar.mo13414a(i2);
        }
        this.f22802n = eVar;
        this.f22790b = this.f22789a.capacity();
    }

    /* renamed from: a */
    public static ByteBuffer m13438a(ByteBuffer byteBuffer, AbstractC10081a aVar) {
        int capacity = byteBuffer.capacity();
        if (((-1073741824) & capacity) == 0) {
            int i = capacity == 0 ? 1 : capacity << 1;
            byteBuffer.position(0);
            ByteBuffer a = aVar.mo13414a(i);
            a.position(a.clear().capacity() - capacity);
            a.put(byteBuffer);
            return a;
        }
        throw new AssertionError("FlatBuffers: cannot grow buffer beyond 2 gigabytes.");
    }

    /* renamed from: a */
    public int m13439a(CharSequence charSequence) {
        int a = this.f22802n.mo13400a(charSequence);
        m13449a((byte) 0);
        m13424c(1, a, 1);
        ByteBuffer byteBuffer = this.f22789a;
        int i = this.f22790b - a;
        this.f22790b = i;
        byteBuffer.position(i);
        this.f22802n.mo13398a(charSequence, this.f22789a);
        return m13426c();
    }

    /* renamed from: a */
    public ByteBuffer m13450a() {
        m13423d();
        return this.f22789a;
    }

    /* renamed from: a */
    public void m13449a(byte b) {
        m13445a(1, 0);
        m13434b(b);
    }

    /* renamed from: a */
    public void m13448a(double d) {
        m13445a(8, 0);
        m13433b(d);
    }

    /* renamed from: a */
    public void m13447a(int i) {
        m13445a(4, 0);
        m13418f(i);
    }

    /* renamed from: a */
    public void m13446a(int i, double d, double d2) {
        if (this.f22800l || d != d2) {
            m13448a(d);
            m13417g(i);
        }
    }

    /* renamed from: a */
    public void m13445a(int i, int i2) {
        if (i > this.f22791c) {
            this.f22791c = i;
        }
        int capacity = ((((this.f22789a.capacity() - this.f22790b) + i2) ^ (-1)) + 1) & (i - 1);
        while (this.f22790b < capacity + i + i2) {
            int capacity2 = this.f22789a.capacity();
            ByteBuffer byteBuffer = this.f22789a;
            this.f22789a = m13438a(byteBuffer, this.f22801m);
            if (byteBuffer != this.f22789a) {
                this.f22801m.m13415a(byteBuffer);
            }
            this.f22790b += this.f22789a.capacity() - capacity2;
        }
        m13420e(capacity);
    }

    /* renamed from: a */
    public void m13444a(int i, int i2, int i3) {
        if (this.f22800l || i2 != i3) {
            m13447a(i2);
            m13417g(i);
        }
    }

    /* renamed from: a */
    public void m13443a(int i, long j, long j2) {
        if (this.f22800l || j != j2) {
            m13440a(j);
            m13417g(i);
        }
    }

    /* renamed from: a */
    public void m13442a(int i, boolean z) {
        m13445a(this.f22791c, (z ? 4 : 0) + 4);
        m13432b(i);
        if (z) {
            m13447a(this.f22789a.capacity() - this.f22790b);
        }
        this.f22789a.position(this.f22790b);
        this.f22795g = true;
    }

    /* renamed from: a */
    public void m13441a(int i, boolean z, boolean z2) {
        if (this.f22800l || z != z2) {
            m13436a(z);
            m13417g(i);
        }
    }

    /* renamed from: a */
    public void m13440a(long j) {
        m13445a(8, 0);
        m13429b(j);
    }

    /* renamed from: a */
    public void m13437a(short s) {
        m13445a(2, 0);
        m13428b(s);
    }

    /* renamed from: a */
    public void m13436a(boolean z) {
        m13445a(1, 0);
        m13427b(z);
    }

    /* renamed from: b */
    public int m13435b() {
        int i;
        if (this.f22792d == null || !this.f22794f) {
            throw new AssertionError("FlatBuffers: endTable called without startTable");
        }
        m13447a(0);
        int f = m13419f();
        int i2 = this.f22793e - 1;
        while (i2 >= 0 && this.f22792d[i2] == 0) {
            i2--;
        }
        for (int i3 = i2; i3 >= 0; i3--) {
            int[] iArr = this.f22792d;
            m13437a((short) (iArr[i3] != 0 ? f - iArr[i3] : 0));
        }
        m13437a((short) (f - this.f22796h));
        m13437a((short) ((i2 + 1 + 2) * 2));
        int i4 = 0;
        loop2: while (true) {
            if (i4 >= this.f22798j) {
                i = 0;
                break;
            }
            int capacity = this.f22789a.capacity() - this.f22797i[i4];
            int i5 = this.f22790b;
            short s = this.f22789a.getShort(capacity);
            if (s == this.f22789a.getShort(i5)) {
                for (int i6 = 2; i6 < s; i6 += 2) {
                    if (this.f22789a.getShort(capacity + i6) != this.f22789a.getShort(i5 + i6)) {
                        break;
                    }
                }
                i = this.f22797i[i4];
                break loop2;
            }
            i4++;
        }
        if (i != 0) {
            this.f22790b = this.f22789a.capacity() - f;
            this.f22789a.putInt(this.f22790b, i - f);
        } else {
            int i7 = this.f22798j;
            int[] iArr2 = this.f22797i;
            if (i7 == iArr2.length) {
                this.f22797i = Arrays.copyOf(iArr2, i7 * 2);
            }
            int[] iArr3 = this.f22797i;
            int i8 = this.f22798j;
            this.f22798j = i8 + 1;
            iArr3[i8] = m13419f();
            ByteBuffer byteBuffer = this.f22789a;
            byteBuffer.putInt(byteBuffer.capacity() - f, m13419f() - f);
        }
        this.f22794f = false;
        return f;
    }

    /* renamed from: b */
    public void m13434b(byte b) {
        ByteBuffer byteBuffer = this.f22789a;
        int i = this.f22790b - 1;
        this.f22790b = i;
        byteBuffer.put(i, b);
    }

    /* renamed from: b */
    public void m13433b(double d) {
        ByteBuffer byteBuffer = this.f22789a;
        int i = this.f22790b - 8;
        this.f22790b = i;
        byteBuffer.putDouble(i, d);
    }

    /* renamed from: b */
    public void m13432b(int i) {
        m13445a(4, 0);
        m13418f((m13419f() - i) + 4);
    }

    /* renamed from: b */
    public void m13431b(int i, int i2) {
        int capacity = this.f22789a.capacity() - i;
        if (!(this.f22789a.getShort((capacity - this.f22789a.getInt(capacity)) + i2) != 0)) {
            throw new AssertionError("FlatBuffers: field " + i2 + " must be set");
        }
    }

    /* renamed from: b */
    public void m13430b(int i, int i2, int i3) {
        if (this.f22800l || i2 != i3) {
            m13432b(i2);
            m13417g(i);
        }
    }

    /* renamed from: b */
    public void m13429b(long j) {
        ByteBuffer byteBuffer = this.f22789a;
        int i = this.f22790b - 8;
        this.f22790b = i;
        byteBuffer.putLong(i, j);
    }

    /* renamed from: b */
    public void m13428b(short s) {
        ByteBuffer byteBuffer = this.f22789a;
        int i = this.f22790b - 2;
        this.f22790b = i;
        byteBuffer.putShort(i, s);
    }

    /* renamed from: b */
    public void m13427b(boolean z) {
        ByteBuffer byteBuffer = this.f22789a;
        int i = this.f22790b - 1;
        this.f22790b = i;
        byteBuffer.put(i, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: c */
    public int m13426c() {
        if (this.f22794f) {
            this.f22794f = false;
            m13418f(this.f22799k);
            return m13419f();
        }
        throw new AssertionError("FlatBuffers: endVector called without startVector");
    }

    /* renamed from: c */
    public void m13425c(int i) {
        m13442a(i, false);
    }

    /* renamed from: c */
    public void m13424c(int i, int i2, int i3) {
        m13421e();
        this.f22799k = i2;
        int i4 = i * i2;
        m13445a(4, i4);
        m13445a(i3, i4);
        this.f22794f = true;
    }

    /* renamed from: d */
    public void m13423d() {
        if (!this.f22795g) {
            throw new AssertionError("FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish().");
        }
    }

    /* renamed from: d */
    public void m13422d(int i) {
        m13442a(i, true);
    }

    /* renamed from: e */
    public void m13421e() {
        if (this.f22794f) {
            throw new AssertionError("FlatBuffers: object serialization must not be nested.");
        }
    }

    /* renamed from: e */
    public void m13420e(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            ByteBuffer byteBuffer = this.f22789a;
            int i3 = this.f22790b - 1;
            this.f22790b = i3;
            byteBuffer.put(i3, (byte) 0);
        }
    }

    /* renamed from: f */
    public int m13419f() {
        return this.f22789a.capacity() - this.f22790b;
    }

    /* renamed from: f */
    public void m13418f(int i) {
        ByteBuffer byteBuffer = this.f22789a;
        int i2 = this.f22790b - 4;
        this.f22790b = i2;
        byteBuffer.putInt(i2, i);
    }

    /* renamed from: g */
    public void m13417g(int i) {
        this.f22792d[i] = m13419f();
    }

    /* renamed from: h */
    public void m13416h(int i) {
        m13421e();
        int[] iArr = this.f22792d;
        if (iArr == null || iArr.length < i) {
            this.f22792d = new int[i];
        }
        this.f22793e = i;
        Arrays.fill(this.f22792d, 0, this.f22793e, 0);
        this.f22794f = true;
        this.f22796h = m13419f();
    }
}
