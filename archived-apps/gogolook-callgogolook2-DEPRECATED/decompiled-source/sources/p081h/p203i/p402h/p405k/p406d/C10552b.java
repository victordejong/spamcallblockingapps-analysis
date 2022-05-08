package p081h.p203i.p402h.p405k.p406d;
/* renamed from: h.i.h.k.d.b */
/* loaded from: classes2-dex2jar.jar:h/i/h/k/d/b.class */
public final class C10552b {

    /* renamed from: a */
    public final C10551a f24028a;

    /* renamed from: b */
    public final int[] f24029b;

    public C10552b(C10551a aVar, int[] iArr) {
        if (iArr.length != 0) {
            this.f24028a = aVar;
            int length = iArr.length;
            if (length <= 1 || iArr[0] != 0) {
                this.f24029b = iArr;
                return;
            }
            int i = 1;
            while (i < length && iArr[i] == 0) {
                i++;
            }
            if (i == length) {
                this.f24029b = new int[]{0};
                return;
            }
            this.f24029b = new int[length - i];
            int[] iArr2 = this.f24029b;
            System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public int m11429a(int i) {
        int[] iArr = this.f24029b;
        return iArr[(iArr.length - 1) - i];
    }

    /* renamed from: a */
    public C10552b m11428a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        } else if (i2 == 0) {
            return this.f24028a.m11435b();
        } else {
            int length = this.f24029b.length;
            int[] iArr = new int[i + length];
            for (int i3 = 0; i3 < length; i3++) {
                iArr[i3] = this.f24028a.m11433b(this.f24029b[i3], i2);
            }
            return new C10552b(this.f24028a, iArr);
        }
    }

    /* renamed from: a */
    public C10552b m11427a(C10552b bVar) {
        if (!this.f24028a.equals(bVar.f24028a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        } else if (m11424c()) {
            return bVar;
        } else {
            if (bVar.m11424c()) {
                return this;
            }
            int[] iArr = this.f24029b;
            int[] iArr2 = bVar.f24029b;
            int[] iArr3 = iArr;
            int[] iArr4 = iArr2;
            if (iArr.length > iArr2.length) {
                iArr3 = iArr2;
                iArr4 = iArr;
            }
            int[] iArr5 = new int[iArr4.length];
            int length = iArr4.length - iArr3.length;
            System.arraycopy(iArr4, 0, iArr5, 0, length);
            for (int i = length; i < iArr4.length; i++) {
                iArr5[i] = C10551a.m11431c(iArr3[i - length], iArr4[i]);
            }
            return new C10552b(this.f24028a, iArr5);
        }
    }

    /* renamed from: a */
    public int[] m11430a() {
        return this.f24029b;
    }

    /* renamed from: b */
    public int m11426b() {
        return this.f24029b.length - 1;
    }

    /* renamed from: b */
    public C10552b[] m11425b(C10552b bVar) {
        if (!this.f24028a.equals(bVar.f24028a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        } else if (!bVar.m11424c()) {
            C10552b b = this.f24028a.m11435b();
            int b2 = this.f24028a.m11434b(bVar.m11429a(bVar.m11426b()));
            C10552b bVar2 = this;
            while (bVar2.m11426b() >= bVar.m11426b() && !bVar2.m11424c()) {
                int b3 = bVar2.m11426b() - bVar.m11426b();
                int b4 = this.f24028a.m11433b(bVar2.m11429a(bVar2.m11426b()), b2);
                C10552b a = bVar.m11428a(b3, b4);
                b = b.m11427a(this.f24028a.m11436a(b3, b4));
                bVar2 = bVar2.m11427a(a);
            }
            return new C10552b[]{b, bVar2};
        } else {
            throw new IllegalArgumentException("Divide by 0");
        }
    }

    /* renamed from: c */
    public C10552b m11423c(C10552b bVar) {
        if (!this.f24028a.equals(bVar.f24028a)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        } else if (m11424c() || bVar.m11424c()) {
            return this.f24028a.m11435b();
        } else {
            int[] iArr = this.f24029b;
            int length = iArr.length;
            int[] iArr2 = bVar.f24029b;
            int length2 = iArr2.length;
            int[] iArr3 = new int[(length + length2) - 1];
            for (int i = 0; i < length; i++) {
                int i2 = iArr[i];
                for (int i3 = 0; i3 < length2; i3++) {
                    int i4 = i + i3;
                    iArr3[i4] = C10551a.m11431c(iArr3[i4], this.f24028a.m11433b(i2, iArr2[i3]));
                }
            }
            return new C10552b(this.f24028a, iArr3);
        }
    }

    /* renamed from: c */
    public boolean m11424c() {
        return this.f24029b[0] == 0;
    }

    public String toString() {
        int i;
        StringBuilder sb = new StringBuilder(m11426b() * 8);
        for (int b = m11426b(); b >= 0; b--) {
            int a = m11429a(b);
            if (a != 0) {
                if (a < 0) {
                    sb.append(" - ");
                    i = -a;
                } else {
                    i = a;
                    if (sb.length() > 0) {
                        sb.append(" + ");
                        i = a;
                    }
                }
                if (b == 0 || i != 1) {
                    int c = this.f24028a.m11432c(i);
                    if (c == 0) {
                        sb.append('1');
                    } else if (c == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(c);
                    }
                }
                if (b != 0) {
                    if (b == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(b);
                    }
                }
            }
        }
        return sb.toString();
    }
}
