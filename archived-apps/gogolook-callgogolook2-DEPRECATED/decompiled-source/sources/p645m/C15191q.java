package p645m;

import java.util.Arrays;
/* renamed from: m.q */
/* loaded from: classes3-dex2jar.jar:m/q.class */
public final class C15191q extends C15175f {

    /* renamed from: f */
    public final transient byte[][] f33200f;

    /* renamed from: g */
    public final transient int[] f33201g;

    /* JADX WARN: Type inference failed for: r1v4, types: [byte[], byte[][]] */
    public C15191q(C15170c cVar, int i) {
        super(null);
        C15196u.m262a(cVar.f33160b, 0L, i);
        C15189o oVar = cVar.f33159a;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = oVar.f33193c;
            int i6 = oVar.f33192b;
            if (i5 != i6) {
                i3 += i5 - i6;
                i4++;
                oVar = oVar.f33196f;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        this.f33200f = new byte[i4];
        this.f33201g = new int[i4 * 2];
        C15189o oVar2 = cVar.f33159a;
        int i7 = 0;
        while (i2 < i) {
            this.f33200f[i7] = oVar2.f33191a;
            int i8 = i2 + (oVar2.f33193c - oVar2.f33192b);
            i2 = i8;
            if (i8 > i) {
                i2 = i;
            }
            int[] iArr = this.f33201g;
            iArr[i7] = i2;
            iArr[this.f33200f.length + i7] = oVar2.f33192b;
            oVar2.f33194d = true;
            i7++;
            oVar2 = oVar2.f33196f;
        }
    }

    private Object writeReplace() {
        return m264j();
    }

    @Override // p645m.C15175f
    /* renamed from: a */
    public byte mo278a(int i) {
        C15196u.m262a(this.f33201g[this.f33200f.length - 1], i, 1L);
        int b = m272b(i);
        int i2 = b == 0 ? 0 : this.f33201g[b - 1];
        int[] iArr = this.f33201g;
        byte[][] bArr = this.f33200f;
        return bArr[b][(i - i2) + iArr[bArr.length + b]];
    }

    @Override // p645m.C15175f
    /* renamed from: a */
    public String mo279a() {
        return m264j().mo279a();
    }

    @Override // p645m.C15175f
    /* renamed from: a */
    public C15175f mo277a(int i, int i2) {
        return m264j().mo277a(i, i2);
    }

    @Override // p645m.C15175f
    /* renamed from: a */
    public void mo274a(C15170c cVar) {
        int length = this.f33200f.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.f33201g;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            C15189o oVar = new C15189o(this.f33200f[i], i3, (i3 + i4) - i2, true, false);
            C15189o oVar2 = cVar.f33159a;
            if (oVar2 == null) {
                oVar.f33197g = oVar;
                oVar.f33196f = oVar;
                cVar.f33159a = oVar;
            } else {
                oVar2.f33197g.m285a(oVar);
            }
            i++;
            i2 = i4;
        }
        cVar.f33160b += i2;
    }

    @Override // p645m.C15175f
    /* renamed from: a */
    public boolean mo276a(int i, C15175f fVar, int i2, int i3) {
        if (i < 0 || i > mo268f() - i3) {
            return false;
        }
        int b = m272b(i);
        while (i3 > 0) {
            int i4 = b == 0 ? 0 : this.f33201g[b - 1];
            int min = Math.min(i3, ((this.f33201g[b] - i4) + i4) - i);
            int[] iArr = this.f33201g;
            byte[][] bArr = this.f33200f;
            if (!fVar.mo275a(i2, bArr[b], (i - i4) + iArr[bArr.length + b], min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            b++;
        }
        return true;
    }

    @Override // p645m.C15175f
    /* renamed from: a */
    public boolean mo275a(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > mo268f() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int b = m272b(i);
        while (i3 > 0) {
            int i4 = b == 0 ? 0 : this.f33201g[b - 1];
            int min = Math.min(i3, ((this.f33201g[b] - i4) + i4) - i);
            int[] iArr = this.f33201g;
            byte[][] bArr2 = this.f33200f;
            if (!C15196u.m259a(bArr2[b], (i - i4) + iArr[bArr2.length + b], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            b++;
        }
        return true;
    }

    /* renamed from: b */
    public final int m272b(int i) {
        int binarySearch = Arrays.binarySearch(this.f33201g, 0, this.f33200f.length, i + 1);
        if (binarySearch < 0) {
            binarySearch ^= -1;
        }
        return binarySearch;
    }

    @Override // p645m.C15175f
    /* renamed from: b */
    public String mo273b() {
        return m264j().mo273b();
    }

    @Override // p645m.C15175f
    /* renamed from: c */
    public C15175f mo271c() {
        return m264j().mo271c();
    }

    @Override // p645m.C15175f
    /* renamed from: d */
    public C15175f mo270d() {
        return m264j().mo270d();
    }

    @Override // p645m.C15175f
    /* renamed from: e */
    public C15175f mo269e() {
        return m264j().mo269e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002b, code lost:
        if (mo276a(0, r0, 0, mo268f()) != false) goto L_0x0033;
     */
    @Override // p645m.C15175f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            r8 = r0
            r0 = r7
            r1 = r6
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r7
            boolean r0 = r0 instanceof p645m.C15175f
            if (r0 == 0) goto L_0x0031
            r0 = r7
            m.f r0 = (p645m.C15175f) r0
            r7 = r0
            r0 = r7
            int r0 = r0.mo268f()
            r1 = r6
            int r1 = r1.mo268f()
            if (r0 != r1) goto L_0x0031
            r0 = r6
            r1 = 0
            r2 = r7
            r3 = 0
            r4 = r6
            int r4 = r4.mo268f()
            boolean r0 = r0.mo276a(r1, r2, r3, r4)
            if (r0 == 0) goto L_0x0031
            goto L_0x0033
        L_0x0031:
            r0 = 0
            r8 = r0
        L_0x0033:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p645m.C15191q.equals(java.lang.Object):boolean");
    }

    @Override // p645m.C15175f
    /* renamed from: f */
    public int mo268f() {
        return this.f33201g[this.f33200f.length - 1];
    }

    @Override // p645m.C15175f
    /* renamed from: g */
    public C15175f mo267g() {
        return m264j().mo267g();
    }

    @Override // p645m.C15175f
    /* renamed from: h */
    public byte[] mo266h() {
        int[] iArr = this.f33201g;
        byte[][] bArr = this.f33200f;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr2 = this.f33201g;
            int i3 = iArr2[length + i];
            int i4 = iArr2[i];
            System.arraycopy(this.f33200f[i], i3, bArr2, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr2;
    }

    @Override // p645m.C15175f
    public int hashCode() {
        int i = this.f33166b;
        if (i != 0) {
            return i;
        }
        int length = this.f33200f.length;
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i2 < length) {
            byte[] bArr = this.f33200f[i2];
            int[] iArr = this.f33201g;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            for (int i7 = i5; i7 < (i6 - i4) + i5; i7++) {
                i3 = (i3 * 31) + bArr[i7];
            }
            i2++;
            i4 = i6;
        }
        this.f33166b = i3;
        return i3;
    }

    @Override // p645m.C15175f
    /* renamed from: i */
    public String mo265i() {
        return m264j().mo265i();
    }

    /* renamed from: j */
    public final C15175f m264j() {
        return new C15175f(mo266h());
    }

    @Override // p645m.C15175f
    public String toString() {
        return m264j().toString();
    }
}
