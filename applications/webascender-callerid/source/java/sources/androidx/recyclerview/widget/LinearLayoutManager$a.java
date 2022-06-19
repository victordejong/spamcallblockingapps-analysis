package androidx.recyclerview.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$a.class */
class LinearLayoutManager$a {

    /* renamed from: a */
    AbstractC0396q f1892a;

    /* renamed from: b */
    int f1893b;

    /* renamed from: c */
    int f1894c;

    /* renamed from: d */
    boolean f1895d;

    /* renamed from: e */
    boolean f1896e;

    LinearLayoutManager$a() {
        m5308e();
    }

    /* renamed from: a */
    void m5312a() {
        this.f1894c = this.f1895d ? this.f1892a.m4894i() : this.f1892a.m4890m();
    }

    /* renamed from: b */
    public void m5311b(View view, int i) {
        if (this.f1895d) {
            this.f1894c = this.f1892a.m4899d(view) + this.f1892a.m4888o();
        } else {
            this.f1894c = this.f1892a.m4896g(view);
        }
        this.f1893b = i;
    }

    /* renamed from: c */
    public void m5310c(View view, int i) {
        int m4888o = this.f1892a.m4888o();
        if (m4888o >= 0) {
            m5311b(view, i);
            return;
        }
        this.f1893b = i;
        if (this.f1895d) {
            int m4894i = (this.f1892a.m4894i() - m4888o) - this.f1892a.m4899d(view);
            this.f1894c = this.f1892a.m4894i() - m4894i;
            if (m4894i <= 0) {
                return;
            }
            int m4898e = this.f1892a.m4898e(view);
            int i2 = this.f1894c;
            int m4890m = this.f1892a.m4890m();
            int min = (i2 - m4898e) - (m4890m + Math.min(this.f1892a.m4896g(view) - m4890m, 0));
            if (min >= 0) {
                return;
            }
            this.f1894c += Math.min(m4894i, -min);
            return;
        }
        int m4896g = this.f1892a.m4896g(view);
        int m4890m2 = m4896g - this.f1892a.m4890m();
        this.f1894c = m4896g;
        if (m4890m2 <= 0) {
            return;
        }
        int m4898e2 = this.f1892a.m4898e(view);
        int m4894i2 = (this.f1892a.m4894i() - Math.min(0, (this.f1892a.m4894i() - m4888o) - this.f1892a.m4899d(view))) - (m4896g + m4898e2);
        if (m4894i2 >= 0) {
            return;
        }
        this.f1894c -= Math.min(m4890m2, -m4894i2);
    }

    /* renamed from: d */
    boolean m5309d(View view, RecyclerView$a0 recyclerView$a0) {
        RecyclerView$p recyclerView$p = (RecyclerView$p) view.getLayoutParams();
        return !recyclerView$p.m5118c() && recyclerView$p.m5120a() >= 0 && recyclerView$p.m5120a() < recyclerView$a0.m5295b();
    }

    /* renamed from: e */
    void m5308e() {
        this.f1893b = -1;
        this.f1894c = Integer.MIN_VALUE;
        this.f1895d = false;
        this.f1896e = false;
    }

    public String toString() {
        return "AnchorInfo{mPosition=" + this.f1893b + ", mCoordinate=" + this.f1894c + ", mLayoutFromEnd=" + this.f1895d + ", mValid=" + this.f1896e + '}';
    }
}
