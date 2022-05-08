package p081h.p203i.p204a.p224e.p259j.p271l;

import java.io.IOException;
import java.util.Arrays;
import p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8228l9;
/* renamed from: h.i.a.e.j.l.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/h.class */
public final class C8130h {

    /* renamed from: e */
    public static final C8130h f18854e = new C8130h(0, new int[0], new Object[0], false);

    /* renamed from: a */
    public int f18855a;

    /* renamed from: b */
    public int[] f18856b;

    /* renamed from: c */
    public Object[] f18857c;

    /* renamed from: d */
    public int f18858d;

    public C8130h() {
        this(0, new int[8], new Object[8], true);
    }

    public C8130h(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f18858d = -1;
        this.f18855a = i;
        this.f18856b = iArr;
        this.f18857c = objArr;
    }

    /* renamed from: a */
    public static C8130h m18492a(C8130h hVar, C8130h hVar2) {
        int i = hVar.f18855a + hVar2.f18855a;
        int[] copyOf = Arrays.copyOf(hVar.f18856b, i);
        System.arraycopy(hVar2.f18856b, 0, copyOf, hVar.f18855a, hVar2.f18855a);
        Object[] copyOf2 = Arrays.copyOf(hVar.f18857c, i);
        System.arraycopy(hVar2.f18857c, 0, copyOf2, hVar.f18855a, hVar2.f18855a);
        return new C8130h(i, copyOf, copyOf2, true);
    }

    /* renamed from: a */
    public static void m18493a(int i, Object obj, AbstractC8468z zVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            zVar.mo17927e(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            zVar.mo17939b(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            zVar.mo17951a(i2, (AbstractC8209k8) obj);
        } else if (i3 != 3) {
            if (i3 == 5) {
                zVar.mo17931d(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(C8389u9.m18136c());
        } else if (zVar.mo17942b() == AbstractC8228l9.C8234f.f19075k) {
            zVar.mo17941b(i2);
            ((C8130h) obj).m18488b(zVar);
            zVar.mo17956a(i2);
        } else {
            zVar.mo17956a(i2);
            ((C8130h) obj).m18488b(zVar);
            zVar.mo17941b(i2);
        }
    }

    /* renamed from: d */
    public static C8130h m18486d() {
        return f18854e;
    }

    /* renamed from: a */
    public final void m18494a() {
    }

    /* renamed from: a */
    public final void m18491a(AbstractC8468z zVar) throws IOException {
        if (zVar.mo17942b() == AbstractC8228l9.C8234f.f19076l) {
            for (int i = this.f18855a - 1; i >= 0; i--) {
                zVar.mo17949a(this.f18856b[i] >>> 3, this.f18857c[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.f18855a; i2++) {
            zVar.mo17949a(this.f18856b[i2] >>> 3, this.f18857c[i2]);
        }
    }

    /* renamed from: a */
    public final void m18490a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.f18855a; i2++) {
            C8483za.m17904a(sb, i, String.valueOf(this.f18856b[i2] >>> 3), this.f18857c[i2]);
        }
    }

    /* renamed from: b */
    public final int m18489b() {
        int i;
        int i2 = this.f18858d;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.f18855a; i4++) {
            int i5 = this.f18856b[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = AbstractC8447x8.m18045e(i6, ((Long) this.f18857c[i4]).longValue());
            } else if (i7 == 1) {
                i = AbstractC8447x8.m18037g(i6, ((Long) this.f18857c[i4]).longValue());
            } else if (i7 == 2) {
                i = AbstractC8447x8.m18053c(i6, (AbstractC8209k8) this.f18857c[i4]);
            } else if (i7 == 3) {
                i = (AbstractC8447x8.m18046e(i6) << 1) + ((C8130h) this.f18857c[i4]).m18489b();
            } else if (i7 == 5) {
                i = AbstractC8447x8.m18030i(i6, ((Integer) this.f18857c[i4]).intValue());
            } else {
                throw new IllegalStateException(C8389u9.m18136c());
            }
            i3 += i;
        }
        this.f18858d = i3;
        return i3;
    }

    /* renamed from: b */
    public final void m18488b(AbstractC8468z zVar) throws IOException {
        if (this.f18855a != 0) {
            if (zVar.mo17942b() == AbstractC8228l9.C8234f.f19075k) {
                for (int i = 0; i < this.f18855a; i++) {
                    m18493a(this.f18856b[i], this.f18857c[i], zVar);
                }
                return;
            }
            for (int i2 = this.f18855a - 1; i2 >= 0; i2--) {
                m18493a(this.f18856b[i2], this.f18857c[i2], zVar);
            }
        }
    }

    /* renamed from: c */
    public final int m18487c() {
        int i = this.f18858d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f18855a; i3++) {
            i2 += AbstractC8447x8.m18048d(this.f18856b[i3] >>> 3, (AbstractC8209k8) this.f18857c[i3]);
        }
        this.f18858d = i2;
        return i2;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C8130h)) {
            return false;
        }
        C8130h hVar = (C8130h) obj;
        int i = this.f18855a;
        if (i != hVar.f18855a) {
            return false;
        }
        int[] iArr = this.f18856b;
        int[] iArr2 = hVar.f18856b;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                z = true;
                break;
            } else if (iArr[i2] != iArr2[i2]) {
                z = false;
                break;
            } else {
                i2++;
            }
        }
        if (!z) {
            return false;
        }
        Object[] objArr = this.f18857c;
        Object[] objArr2 = hVar.f18857c;
        int i3 = this.f18855a;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z2 = true;
                break;
            } else if (!objArr[i4].equals(objArr2[i4])) {
                z2 = false;
                break;
            } else {
                i4++;
            }
        }
        return z2;
    }

    public final int hashCode() {
        int i = this.f18855a;
        int[] iArr = this.f18856b;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.f18857c;
        int i5 = this.f18855a;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }
}
