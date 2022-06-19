package androidx.recyclerview.widget;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$b.class */
class StaggeredGridLayoutManager$b {

    /* renamed from: a */
    int f1994a;

    /* renamed from: b */
    int f1995b;

    /* renamed from: c */
    boolean f1996c;

    /* renamed from: d */
    boolean f1997d;

    /* renamed from: e */
    boolean f1998e;

    /* renamed from: f */
    int[] f1999f;

    /* renamed from: g */
    final /* synthetic */ StaggeredGridLayoutManager f2000g;

    StaggeredGridLayoutManager$b(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f2000g = staggeredGridLayoutManager;
        m5045c();
    }

    /* renamed from: a */
    void m5047a() {
        this.f1995b = this.f1996c ? this.f2000g.u.m4894i() : this.f2000g.u.m4890m();
    }

    /* renamed from: b */
    void m5046b(int i) {
        if (this.f1996c) {
            this.f1995b = this.f2000g.u.m4894i() - i;
        } else {
            this.f1995b = this.f2000g.u.m4890m() + i;
        }
    }

    /* renamed from: c */
    void m5045c() {
        this.f1994a = -1;
        this.f1995b = Integer.MIN_VALUE;
        this.f1996c = false;
        this.f1997d = false;
        this.f1998e = false;
        int[] iArr = this.f1999f;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }

    /* renamed from: d */
    void m5044d(StaggeredGridLayoutManager$f[] staggeredGridLayoutManager$fArr) {
        int length = staggeredGridLayoutManager$fArr.length;
        int[] iArr = this.f1999f;
        if (iArr == null || iArr.length < length) {
            this.f1999f = new int[this.f2000g.t.length];
        }
        for (int i = 0; i < length; i++) {
            this.f1999f[i] = staggeredGridLayoutManager$fArr[i].m5008p(Integer.MIN_VALUE);
        }
    }
}
