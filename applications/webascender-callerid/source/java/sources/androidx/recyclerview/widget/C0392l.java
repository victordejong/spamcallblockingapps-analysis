package androidx.recyclerview.widget;

import android.view.View;
/* renamed from: androidx.recyclerview.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/l.class */
class C0392l {

    /* renamed from: b */
    int f2131b;

    /* renamed from: c */
    int f2132c;

    /* renamed from: d */
    int f2133d;

    /* renamed from: e */
    int f2134e;

    /* renamed from: h */
    boolean f2137h;

    /* renamed from: i */
    boolean f2138i;

    /* renamed from: a */
    boolean f2130a = true;

    /* renamed from: f */
    int f2135f = 0;

    /* renamed from: g */
    int f2136g = 0;

    C0392l() {
    }

    /* renamed from: a */
    boolean m4912a(RecyclerView$a0 recyclerView$a0) {
        int i = this.f2132c;
        return i >= 0 && i < recyclerView$a0.m5295b();
    }

    /* renamed from: b */
    View m4911b(RecyclerView$v recyclerView$v) {
        View m5069o = recyclerView$v.m5069o(this.f2132c);
        this.f2132c += this.f2133d;
        return m5069o;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f2131b + ", mCurrentPosition=" + this.f2132c + ", mItemDirection=" + this.f2133d + ", mLayoutDirection=" + this.f2134e + ", mStartLine=" + this.f2135f + ", mEndLine=" + this.f2136g + '}';
    }
}
