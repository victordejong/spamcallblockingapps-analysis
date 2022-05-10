package p131c.p161d.p282e.p315q.p318p0.p321j.p326r.p327a;

import android.view.View;
import android.widget.ScrollView;
/* renamed from: c.d.e.q.p0.j.r.a.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/r/a/d.class */
public class C5630d {

    /* renamed from: a */
    public View f18703a;

    /* renamed from: b */
    public boolean f18704b;

    /* renamed from: c */
    public int f18705c;

    public C5630d(View view, boolean z) {
        this.f18703a = view;
        this.f18704b = z;
    }

    /* renamed from: a */
    public int m23374a() {
        if (this.f18703a.getVisibility() == 8) {
            return 0;
        }
        View view = this.f18703a;
        if (!(view instanceof ScrollView)) {
            return view.getMeasuredHeight();
        }
        ScrollView scrollView = (ScrollView) view;
        return scrollView.getPaddingBottom() + scrollView.getPaddingTop() + scrollView.getChildAt(0).getMeasuredHeight();
    }

    /* renamed from: a */
    public void m23373a(int i, int i2) {
        C5627b.m23385a(this.f18703a, i, i2);
    }

    /* renamed from: b */
    public int m23372b() {
        return this.f18705c;
    }

    /* renamed from: b */
    public void m23371b(int i, int i2) {
        this.f18705c = i2;
    }

    /* renamed from: c */
    public View m23370c() {
        return this.f18703a;
    }

    /* renamed from: d */
    public boolean m23369d() {
        return this.f18704b;
    }
}
