package androidx.recyclerview.widget;

import android.view.View;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$c.class */
class LinearLayoutManager$c {

    /* renamed from: b */
    int f1902b;

    /* renamed from: c */
    int f1903c;

    /* renamed from: d */
    int f1904d;

    /* renamed from: e */
    int f1905e;

    /* renamed from: f */
    int f1906f;

    /* renamed from: g */
    int f1907g;

    /* renamed from: j */
    boolean f1910j;

    /* renamed from: k */
    int f1911k;

    /* renamed from: m */
    boolean f1913m;

    /* renamed from: a */
    boolean f1901a = true;

    /* renamed from: h */
    int f1908h = 0;

    /* renamed from: i */
    int f1909i = 0;

    /* renamed from: l */
    List<RecyclerView$d0> f1912l = null;

    LinearLayoutManager$c() {
    }

    /* renamed from: e */
    private View m5302e() {
        int size = this.f1912l.size();
        for (int i = 0; i < size; i++) {
            View view = this.f1912l.get(i).itemView;
            RecyclerView$p recyclerView$p = (RecyclerView$p) view.getLayoutParams();
            if (!recyclerView$p.m5118c() && this.f1904d == recyclerView$p.m5120a()) {
                m5305b(view);
                return view;
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m5306a() {
        m5305b(null);
    }

    /* renamed from: b */
    public void m5305b(View view) {
        View m5301f = m5301f(view);
        if (m5301f == null) {
            this.f1904d = -1;
        } else {
            this.f1904d = ((RecyclerView$p) m5301f.getLayoutParams()).m5120a();
        }
    }

    /* renamed from: c */
    boolean m5304c(RecyclerView$a0 recyclerView$a0) {
        int i = this.f1904d;
        return i >= 0 && i < recyclerView$a0.m5295b();
    }

    /* renamed from: d */
    View m5303d(RecyclerView$v recyclerView$v) {
        if (this.f1912l != null) {
            return m5302e();
        }
        View m5069o = recyclerView$v.m5069o(this.f1904d);
        this.f1904d += this.f1905e;
        return m5069o;
    }

    /* renamed from: f */
    public View m5301f(View view) {
        View view2;
        int size = this.f1912l.size();
        View view3 = null;
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        while (true) {
            view2 = view3;
            if (i2 >= size) {
                break;
            }
            View view4 = this.f1912l.get(i2).itemView;
            RecyclerView$p recyclerView$p = (RecyclerView$p) view4.getLayoutParams();
            View view5 = view3;
            int i3 = i;
            if (view4 != view) {
                if (recyclerView$p.m5118c()) {
                    view5 = view3;
                    i3 = i;
                } else {
                    int m5120a = (recyclerView$p.m5120a() - this.f1904d) * this.f1905e;
                    if (m5120a < 0) {
                        view5 = view3;
                        i3 = i;
                    } else {
                        view5 = view3;
                        i3 = i;
                        if (m5120a >= i) {
                            continue;
                        } else if (m5120a == 0) {
                            view2 = view4;
                            break;
                        } else {
                            i3 = m5120a;
                            view5 = view4;
                        }
                    }
                }
            }
            i2++;
            view3 = view5;
            i = i3;
        }
        return view2;
    }
}
