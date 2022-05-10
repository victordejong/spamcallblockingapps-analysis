package p012b.p076s.p078b.p079a.p080a1;
/* renamed from: b.s.b.a.a1.o */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/o.class */
public final class C1183o {

    /* renamed from: a */
    public byte[] f4734a;

    /* renamed from: b */
    public int f4735b;

    /* renamed from: c */
    public int f4736c;

    /* renamed from: d */
    public int f4737d;

    public C1183o() {
        this.f4734a = C1167d0.f4693f;
    }

    public C1183o(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public C1183o(byte[] bArr, int i) {
        this.f4734a = bArr;
        this.f4737d = i;
    }

    /* renamed from: a */
    public int m34385a(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
        this.f4736c += i;
        int i3 = 0;
        while (true) {
            i2 = this.f4736c;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.f4736c = i4;
            byte[] bArr = this.f4734a;
            int i5 = this.f4735b;
            this.f4735b = i5 + 1;
            i3 |= (bArr[i5] & 255) << i4;
        }
        byte[] bArr2 = this.f4734a;
        int i6 = this.f4735b;
        byte b = bArr2[i6];
        if (i2 == 8) {
            this.f4736c = 0;
            this.f4735b = i6 + 1;
        }
        m34386a();
        return ((-1) >>> (32 - i)) & (i3 | ((b & 255) >> (8 - i2)));
    }

    /* renamed from: a */
    public final void m34386a() {
        int i;
        int i2 = this.f4735b;
        C1160a.m34518b(i2 >= 0 && (i2 < (i = this.f4737d) || (i2 == i && this.f4736c == 0)));
    }

    /* renamed from: a */
    public void m34384a(int i, int i2) {
        int i3;
        int i4 = i;
        if (i2 < 32) {
            i4 = i & ((1 << i2) - 1);
        }
        int min = Math.min(8 - this.f4736c, i2);
        int i5 = (8 - this.f4736c) - min;
        byte[] bArr = this.f4734a;
        int i6 = this.f4735b;
        bArr[i6] = (byte) (((65280 >> i3) | ((1 << i5) - 1)) & bArr[i6]);
        int i7 = i2 - min;
        bArr[i6] = (byte) (((i4 >>> i7) << i5) | bArr[i6]);
        int i8 = i6 + 1;
        while (i7 > 8) {
            this.f4734a[i8] = (byte) (i4 >>> (i7 - 8));
            i7 -= 8;
            i8++;
        }
        int i9 = 8 - i7;
        byte[] bArr2 = this.f4734a;
        bArr2[i8] = (byte) (bArr2[i8] & ((1 << i9) - 1));
        bArr2[i8] = (byte) (((i4 & ((1 << i7) - 1)) << i9) | bArr2[i8]);
        m34376c(i2);
        m34386a();
    }

    /* renamed from: a */
    public void m34383a(C1184p pVar) {
        m34381a(pVar.f4738a, pVar.m34361d());
        m34378b(pVar.m34363c() * 8);
    }

    /* renamed from: a */
    public void m34382a(byte[] bArr) {
        m34381a(bArr, bArr.length);
    }

    /* renamed from: a */
    public void m34381a(byte[] bArr, int i) {
        this.f4734a = bArr;
        this.f4735b = 0;
        this.f4736c = 0;
        this.f4737d = i;
    }

    /* renamed from: a */
    public void m34380a(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 3) + i;
        while (i < i3) {
            byte[] bArr2 = this.f4734a;
            int i4 = this.f4735b;
            int i5 = i4 + 1;
            this.f4735b = i5;
            byte b = bArr2[i4];
            int i6 = this.f4736c;
            bArr[i] = (byte) (b << i6);
            bArr[i] = (byte) (((255 & bArr2[i5]) >> (8 - i6)) | bArr[i]);
            i++;
        }
        int i7 = i2 & 7;
        if (i7 != 0) {
            bArr[i3] = (byte) (bArr[i3] & (255 >> i7));
            int i8 = this.f4736c;
            if (i8 + i7 > 8) {
                byte b2 = bArr[i3];
                byte[] bArr3 = this.f4734a;
                int i9 = this.f4735b;
                this.f4735b = i9 + 1;
                bArr[i3] = (byte) (b2 | ((bArr3[i9] & 255) << i8));
                this.f4736c = i8 - 8;
            }
            int i10 = this.f4736c + i7;
            this.f4736c = i10;
            byte[] bArr4 = this.f4734a;
            int i11 = this.f4735b;
            bArr[i3] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i7))) | bArr[i3]);
            if (i10 == 8) {
                this.f4736c = 0;
                this.f4735b = i11 + 1;
            }
            m34386a();
        }
    }

    /* renamed from: b */
    public int m34379b() {
        return ((this.f4737d - this.f4735b) * 8) - this.f4736c;
    }

    /* renamed from: b */
    public void m34378b(int i) {
        int i2 = i / 8;
        this.f4735b = i2;
        this.f4736c = i - (i2 * 8);
        m34386a();
    }

    /* renamed from: c */
    public void m34377c() {
        if (this.f4736c != 0) {
            this.f4736c = 0;
            this.f4735b++;
            m34386a();
        }
    }

    /* renamed from: c */
    public void m34376c(int i) {
        int i2 = i / 8;
        int i3 = this.f4735b + i2;
        this.f4735b = i3;
        int i4 = this.f4736c + (i - (i2 * 8));
        this.f4736c = i4;
        if (i4 > 7) {
            this.f4735b = i3 + 1;
            this.f4736c = i4 - 8;
        }
        m34386a();
    }

    /* renamed from: d */
    public int m34375d() {
        return (this.f4735b * 8) + this.f4736c;
    }

    /* renamed from: e */
    public boolean m34374e() {
        boolean z = (this.f4734a[this.f4735b] & (128 >> this.f4736c)) != 0;
        m34373f();
        return z;
    }

    /* renamed from: f */
    public void m34373f() {
        int i = this.f4736c + 1;
        this.f4736c = i;
        if (i == 8) {
            this.f4736c = 0;
            this.f4735b++;
        }
        m34386a();
    }
}
