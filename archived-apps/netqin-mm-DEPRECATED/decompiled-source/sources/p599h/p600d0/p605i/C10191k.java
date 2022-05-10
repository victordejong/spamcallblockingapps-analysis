package p599h.p600d0.p605i;

import com.google.common.collect.RegularImmutableMap;
import java.util.Arrays;
/* renamed from: h.d0.i.k */
/* loaded from: classes2-dex2jar.jar:h/d0/i/k.class */
public final class C10191k {

    /* renamed from: a */
    public int f37642a;

    /* renamed from: b */
    public final int[] f37643b = new int[10];

    /* renamed from: a */
    public int m1122a(int i) {
        return this.f37643b[i];
    }

    /* renamed from: a */
    public C10191k m1121a(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.f37643b;
            if (i < iArr.length) {
                this.f37642a = (1 << i) | this.f37642a;
                iArr[i] = i2;
            }
        }
        return this;
    }

    /* renamed from: a */
    public void m1123a() {
        this.f37642a = 0;
        Arrays.fill(this.f37643b, 0);
    }

    /* renamed from: a */
    public void m1120a(C10191k kVar) {
        for (int i = 0; i < 10; i++) {
            if (kVar.m1114d(i)) {
                m1121a(i, kVar.m1122a(i));
            }
        }
    }

    /* renamed from: b */
    public int m1119b() {
        return (this.f37642a & 2) != 0 ? this.f37643b[1] : -1;
    }

    /* renamed from: b */
    public int m1118b(int i) {
        if ((this.f37642a & 16) != 0) {
            i = this.f37643b[4];
        }
        return i;
    }

    /* renamed from: c */
    public int m1117c() {
        return (this.f37642a & 128) != 0 ? this.f37643b[7] : RegularImmutableMap.SHORT_MASK;
    }

    /* renamed from: c */
    public int m1116c(int i) {
        if ((this.f37642a & 32) != 0) {
            i = this.f37643b[5];
        }
        return i;
    }

    /* renamed from: d */
    public int m1115d() {
        return Integer.bitCount(this.f37642a);
    }

    /* renamed from: d */
    public boolean m1114d(int i) {
        boolean z = true;
        if (((1 << i) & this.f37642a) == 0) {
            z = false;
        }
        return z;
    }
}
