package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.recyclerview.widget.StaggeredGridLayoutManager$d;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$f.class */
class StaggeredGridLayoutManager$f {

    /* renamed from: a */
    ArrayList<View> f2017a = new ArrayList<>();

    /* renamed from: b */
    int f2018b = Integer.MIN_VALUE;

    /* renamed from: c */
    int f2019c = Integer.MIN_VALUE;

    /* renamed from: d */
    int f2020d = 0;

    /* renamed from: e */
    final int f2021e;

    /* renamed from: f */
    final /* synthetic */ StaggeredGridLayoutManager f2022f;

    StaggeredGridLayoutManager$f(StaggeredGridLayoutManager staggeredGridLayoutManager, int i) {
        this.f2022f = staggeredGridLayoutManager;
        this.f2021e = i;
    }

    /* renamed from: a */
    void m5023a(View view) {
        StaggeredGridLayoutManager.c m5010n = m5010n(view);
        m5010n.e = this;
        this.f2017a.add(view);
        this.f2019c = Integer.MIN_VALUE;
        if (this.f2017a.size() == 1) {
            this.f2018b = Integer.MIN_VALUE;
        }
        if (m5010n.m5118c() || m5010n.m5119b()) {
            this.f2020d += this.f2022f.u.m4898e(view);
        }
    }

    /* renamed from: b */
    void m5022b(boolean z, int i) {
        int m5012l = z ? m5012l(Integer.MIN_VALUE) : m5008p(Integer.MIN_VALUE);
        m5019e();
        if (m5012l == Integer.MIN_VALUE) {
            return;
        }
        if (z && m5012l < this.f2022f.u.m4894i()) {
            return;
        }
        if (!z && m5012l > this.f2022f.u.m4890m()) {
            return;
        }
        int i2 = m5012l;
        if (i != Integer.MIN_VALUE) {
            i2 = m5012l + i;
        }
        this.f2019c = i2;
        this.f2018b = i2;
    }

    /* renamed from: c */
    void m5021c() {
        StaggeredGridLayoutManager$d.C0368a m5038f;
        ArrayList<View> arrayList = this.f2017a;
        View view = arrayList.get(arrayList.size() - 1);
        StaggeredGridLayoutManager.c m5010n = m5010n(view);
        this.f2019c = this.f2022f.u.m4899d(view);
        if (!m5010n.f || (m5038f = this.f2022f.E.m5038f(m5010n.m5120a())) == null || m5038f.f2004g != 1) {
            return;
        }
        this.f2019c += m5038f.m5028a(this.f2021e);
    }

    /* renamed from: d */
    void m5020d() {
        StaggeredGridLayoutManager$d.C0368a m5038f;
        View view = this.f2017a.get(0);
        StaggeredGridLayoutManager.c m5010n = m5010n(view);
        this.f2018b = this.f2022f.u.m4896g(view);
        if (!m5010n.f || (m5038f = this.f2022f.E.m5038f(m5010n.m5120a())) == null || m5038f.f2004g != -1) {
            return;
        }
        this.f2018b -= m5038f.m5028a(this.f2021e);
    }

    /* renamed from: e */
    void m5019e() {
        this.f2017a.clear();
        m5007q();
        this.f2020d = 0;
    }

    /* renamed from: f */
    public int m5018f() {
        return this.f2022f.z ? m5015i(this.f2017a.size() - 1, -1, true) : m5015i(0, this.f2017a.size(), true);
    }

    /* renamed from: g */
    public int m5017g() {
        return this.f2022f.z ? m5015i(0, this.f2017a.size(), true) : m5015i(this.f2017a.size() - 1, -1, true);
    }

    /* renamed from: h */
    int m5016h(int i, int i2, boolean z, boolean z2, boolean z3) {
        int m4890m = this.f2022f.u.m4890m();
        int m4894i = this.f2022f.u.m4894i();
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View view = this.f2017a.get(i);
            int m4896g = this.f2022f.u.m4896g(view);
            int m4899d = this.f2022f.u.m4899d(view);
            boolean z4 = false;
            boolean z5 = !z3 ? m4896g < m4894i : m4896g <= m4894i;
            if (!z3 ? m4899d > m4890m : m4899d >= m4890m) {
                z4 = true;
            }
            if (z5 && z4) {
                if (!z || !z2) {
                    if (z2) {
                        return this.f2022f.m5177h0(view);
                    }
                    if (m4896g < m4890m || m4899d > m4894i) {
                        return this.f2022f.m5177h0(view);
                    }
                } else if (m4896g >= m4890m && m4899d <= m4894i) {
                    return this.f2022f.m5177h0(view);
                }
            }
            i += i3;
        }
        return -1;
    }

    /* renamed from: i */
    int m5015i(int i, int i2, boolean z) {
        return m5016h(i, i2, false, false, z);
    }

    /* renamed from: j */
    public int m5014j() {
        return this.f2020d;
    }

    /* renamed from: k */
    int m5013k() {
        int i = this.f2019c;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        m5021c();
        return this.f2019c;
    }

    /* renamed from: l */
    int m5012l(int i) {
        int i2 = this.f2019c;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (this.f2017a.size() == 0) {
            return i;
        }
        m5021c();
        return this.f2019c;
    }

    /* renamed from: m */
    public View m5011m(int i, int i2) {
        View view;
        View view2 = null;
        if (i2 != -1) {
            int size = this.f2017a.size() - 1;
            View view3 = null;
            while (true) {
                View view4 = view3;
                view = view4;
                if (size < 0) {
                    break;
                }
                View view5 = this.f2017a.get(size);
                StaggeredGridLayoutManager staggeredGridLayoutManager = this.f2022f;
                if (staggeredGridLayoutManager.z) {
                    view = view4;
                    if (staggeredGridLayoutManager.m5177h0(view5) >= i) {
                        break;
                    }
                }
                StaggeredGridLayoutManager staggeredGridLayoutManager2 = this.f2022f;
                if (!staggeredGridLayoutManager2.z && staggeredGridLayoutManager2.m5177h0(view5) <= i) {
                    view = view4;
                    break;
                }
                view = view4;
                if (!view5.hasFocusable()) {
                    break;
                }
                size--;
                view3 = view5;
            }
        } else {
            int size2 = this.f2017a.size();
            int i3 = 0;
            while (true) {
                view = view2;
                if (i3 >= size2) {
                    break;
                }
                View view6 = this.f2017a.get(i3);
                StaggeredGridLayoutManager staggeredGridLayoutManager3 = this.f2022f;
                if (staggeredGridLayoutManager3.z) {
                    view = view2;
                    if (staggeredGridLayoutManager3.m5177h0(view6) <= i) {
                        break;
                    }
                }
                StaggeredGridLayoutManager staggeredGridLayoutManager4 = this.f2022f;
                if (!staggeredGridLayoutManager4.z && staggeredGridLayoutManager4.m5177h0(view6) >= i) {
                    view = view2;
                    break;
                }
                view = view2;
                if (!view6.hasFocusable()) {
                    break;
                }
                i3++;
                view2 = view6;
            }
        }
        return view;
    }

    /* renamed from: n */
    StaggeredGridLayoutManager.c m5010n(View view) {
        return view.getLayoutParams();
    }

    /* renamed from: o */
    int m5009o() {
        int i = this.f2018b;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        m5020d();
        return this.f2018b;
    }

    /* renamed from: p */
    public int m5008p(int i) {
        int i2 = this.f2018b;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (this.f2017a.size() == 0) {
            return i;
        }
        m5020d();
        return this.f2018b;
    }

    /* renamed from: q */
    void m5007q() {
        this.f2018b = Integer.MIN_VALUE;
        this.f2019c = Integer.MIN_VALUE;
    }

    /* renamed from: r */
    void m5006r(int i) {
        int i2 = this.f2018b;
        if (i2 != Integer.MIN_VALUE) {
            this.f2018b = i2 + i;
        }
        int i3 = this.f2019c;
        if (i3 != Integer.MIN_VALUE) {
            this.f2019c = i3 + i;
        }
    }

    /* renamed from: s */
    void m5005s() {
        int size = this.f2017a.size();
        View remove = this.f2017a.remove(size - 1);
        StaggeredGridLayoutManager.c m5010n = m5010n(remove);
        m5010n.e = null;
        if (m5010n.m5118c() || m5010n.m5119b()) {
            this.f2020d -= this.f2022f.u.m4898e(remove);
        }
        if (size == 1) {
            this.f2018b = Integer.MIN_VALUE;
        }
        this.f2019c = Integer.MIN_VALUE;
    }

    /* renamed from: t */
    void m5004t() {
        View remove = this.f2017a.remove(0);
        StaggeredGridLayoutManager.c m5010n = m5010n(remove);
        m5010n.e = null;
        if (this.f2017a.size() == 0) {
            this.f2019c = Integer.MIN_VALUE;
        }
        if (m5010n.m5118c() || m5010n.m5119b()) {
            this.f2020d -= this.f2022f.u.m4898e(remove);
        }
        this.f2018b = Integer.MIN_VALUE;
    }

    /* renamed from: u */
    void m5003u(View view) {
        StaggeredGridLayoutManager.c m5010n = m5010n(view);
        m5010n.e = this;
        this.f2017a.add(0, view);
        this.f2018b = Integer.MIN_VALUE;
        if (this.f2017a.size() == 1) {
            this.f2019c = Integer.MIN_VALUE;
        }
        if (m5010n.m5118c() || m5010n.m5119b()) {
            this.f2020d += this.f2022f.u.m4898e(view);
        }
    }

    /* renamed from: v */
    void m5002v(int i) {
        this.f2018b = i;
        this.f2019c = i;
    }
}
