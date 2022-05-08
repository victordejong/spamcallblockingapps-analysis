package p081h.p203i.p402h.p405k.p406d;
/* renamed from: h.i.h.k.d.a */
/* loaded from: classes2-dex2jar.jar:h/i/h/k/d/a.class */
public final class C10551a {

    /* renamed from: g */
    public static final C10551a f24016g = new C10551a(4201, 4096, 1);

    /* renamed from: h */
    public static final C10551a f24017h = new C10551a(1033, 1024, 1);

    /* renamed from: i */
    public static final C10551a f24018i = new C10551a(67, 64, 1);

    /* renamed from: j */
    public static final C10551a f24019j = new C10551a(19, 16, 1);

    /* renamed from: k */
    public static final C10551a f24020k = new C10551a(285, 256, 0);

    /* renamed from: l */
    public static final C10551a f24021l = new C10551a(301, 256, 1);

    /* renamed from: a */
    public final int[] f24022a;

    /* renamed from: b */
    public final int[] f24023b;

    /* renamed from: c */
    public final C10552b f24024c;

    /* renamed from: d */
    public final int f24025d;

    /* renamed from: e */
    public final int f24026e;

    /* renamed from: f */
    public final int f24027f;

    public C10551a(int i, int i2, int i3) {
        this.f24026e = i;
        this.f24025d = i2;
        this.f24027f = i3;
        this.f24022a = new int[i2];
        this.f24023b = new int[i2];
        int i4 = 1;
        for (int i5 = 0; i5 < i2; i5++) {
            this.f24022a[i5] = i4;
            int i6 = i4 << 1;
            i4 = i6;
            if (i6 >= i2) {
                i4 = (i6 ^ i) & (i2 - 1);
            }
        }
        for (int i7 = 0; i7 < i2 - 1; i7++) {
            this.f24023b[this.f24022a[i7]] = i7;
        }
        this.f24024c = new C10552b(this, new int[]{0});
        new C10552b(this, new int[]{1});
    }

    /* renamed from: c */
    public static int m11431c(int i, int i2) {
        return i ^ i2;
    }

    /* renamed from: a */
    public int m11438a() {
        return this.f24027f;
    }

    /* renamed from: a */
    public int m11437a(int i) {
        return this.f24022a[i];
    }

    /* renamed from: a */
    public C10552b m11436a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        } else if (i2 == 0) {
            return this.f24024c;
        } else {
            int[] iArr = new int[i + 1];
            iArr[0] = i2;
            return new C10552b(this, iArr);
        }
    }

    /* renamed from: b */
    public int m11434b(int i) {
        if (i != 0) {
            return this.f24022a[(this.f24025d - this.f24023b[i]) - 1];
        }
        throw new ArithmeticException();
    }

    /* renamed from: b */
    public int m11433b(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.f24022a;
        int[] iArr2 = this.f24023b;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.f24025d - 1)];
    }

    /* renamed from: b */
    public C10552b m11435b() {
        return this.f24024c;
    }

    /* renamed from: c */
    public int m11432c(int i) {
        if (i != 0) {
            return this.f24023b[i];
        }
        throw new IllegalArgumentException();
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.f24026e) + ',' + this.f24025d + ')';
    }
}
