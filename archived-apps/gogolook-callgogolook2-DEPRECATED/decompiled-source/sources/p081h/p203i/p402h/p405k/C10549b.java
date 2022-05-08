package p081h.p203i.p402h.p405k;

import java.util.Arrays;
/* renamed from: h.i.h.k.b */
/* loaded from: classes2-dex2jar.jar:h/i/h/k/b.class */
public final class C10549b implements Cloneable {

    /* renamed from: a */
    public final int f23980a;

    /* renamed from: b */
    public final int f23981b;

    /* renamed from: c */
    public final int f23982c;

    /* renamed from: d */
    public final int[] f23983d;

    public C10549b(int i) {
        this(i, i);
    }

    public C10549b(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f23980a = i;
        this.f23981b = i2;
        this.f23982c = (i + 31) / 32;
        this.f23983d = new int[this.f23982c * i2];
    }

    public C10549b(int i, int i2, int i3, int[] iArr) {
        this.f23980a = i;
        this.f23981b = i2;
        this.f23982c = i3;
        this.f23983d = iArr;
    }

    /* renamed from: a */
    public String m11446a(String str, String str2) {
        return m11445a(str, str2, "\n");
    }

    /* renamed from: a */
    public final String m11445a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(this.f23981b * (this.f23980a + 1));
        for (int i = 0; i < this.f23981b; i++) {
            for (int i2 = 0; i2 < this.f23980a; i2++) {
                sb.append(m11448a(i2, i) ? str : str2);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public void m11447a(int i, int i2, int i3, int i4) {
        if (i2 < 0 || i < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        } else if (i4 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        } else {
            int i5 = i3 + i;
            int i6 = i4 + i2;
            if (i6 > this.f23981b || i5 > this.f23980a) {
                throw new IllegalArgumentException("The region must fit inside the matrix");
            }
            while (i2 < i6) {
                int i7 = this.f23982c;
                for (int i8 = i; i8 < i5; i8++) {
                    int[] iArr = this.f23983d;
                    int i9 = (i8 / 32) + (i7 * i2);
                    iArr[i9] = iArr[i9] | (1 << (i8 & 31));
                }
                i2++;
            }
        }
    }

    /* renamed from: a */
    public boolean m11448a(int i, int i2) {
        return ((this.f23983d[(i2 * this.f23982c) + (i / 32)] >>> (i & 31)) & 1) != 0;
    }

    /* renamed from: b */
    public void m11444b(int i, int i2) {
        int i3 = (i2 * this.f23982c) + (i / 32);
        int[] iArr = this.f23983d;
        iArr[i3] = (1 << (i & 31)) | iArr[i3];
    }

    public C10549b clone() {
        return new C10549b(this.f23980a, this.f23981b, this.f23982c, (int[]) this.f23983d.clone());
    }

    /* renamed from: d */
    public void m11443d() {
        int length = this.f23983d.length;
        for (int i = 0; i < length; i++) {
            this.f23983d[i] = 0;
        }
    }

    /* renamed from: e */
    public int m11442e() {
        return this.f23981b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C10549b)) {
            return false;
        }
        C10549b bVar = (C10549b) obj;
        return this.f23980a == bVar.f23980a && this.f23981b == bVar.f23981b && this.f23982c == bVar.f23982c && Arrays.equals(this.f23983d, bVar.f23983d);
    }

    /* renamed from: f */
    public int m11441f() {
        return this.f23980a;
    }

    public int hashCode() {
        int i = this.f23980a;
        return (((((((i * 31) + i) * 31) + this.f23981b) * 31) + this.f23982c) * 31) + Arrays.hashCode(this.f23983d);
    }

    public String toString() {
        return m11446a("X ", "  ");
    }
}
