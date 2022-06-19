package androidx.recyclerview.widget;

import android.util.SparseArray;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a0.class */
public class RecyclerView$a0 {

    /* renamed from: b */
    private SparseArray<Object> f1919b;

    /* renamed from: m */
    int f1930m;

    /* renamed from: n */
    long f1931n;

    /* renamed from: o */
    int f1932o;

    /* renamed from: p */
    int f1933p;

    /* renamed from: q */
    int f1934q;

    /* renamed from: a */
    int f1918a = -1;

    /* renamed from: c */
    int f1920c = 0;

    /* renamed from: d */
    int f1921d = 0;

    /* renamed from: e */
    int f1922e = 1;

    /* renamed from: f */
    int f1923f = 0;

    /* renamed from: g */
    boolean f1924g = false;

    /* renamed from: h */
    boolean f1925h = false;

    /* renamed from: i */
    boolean f1926i = false;

    /* renamed from: j */
    boolean f1927j = false;

    /* renamed from: k */
    boolean f1928k = false;

    /* renamed from: l */
    boolean f1929l = false;

    /* renamed from: a */
    void m5296a(int i) {
        if ((this.f1922e & i) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f1922e));
    }

    /* renamed from: b */
    public int m5295b() {
        return this.f1925h ? this.f1920c - this.f1921d : this.f1923f;
    }

    /* renamed from: c */
    public int m5294c() {
        return this.f1918a;
    }

    /* renamed from: d */
    public boolean m5293d() {
        return this.f1918a != -1;
    }

    /* renamed from: e */
    public boolean m5292e() {
        return this.f1925h;
    }

    /* renamed from: f */
    public void m5291f(RecyclerView$g recyclerView$g) {
        this.f1922e = 1;
        this.f1923f = recyclerView$g.getItemCount();
        this.f1925h = false;
        this.f1926i = false;
        this.f1927j = false;
    }

    /* renamed from: g */
    public boolean m5290g() {
        return this.f1929l;
    }

    public String toString() {
        return "State{mTargetPosition=" + this.f1918a + ", mData=" + this.f1919b + ", mItemCount=" + this.f1923f + ", mIsMeasuring=" + this.f1927j + ", mPreviousLayoutItemCount=" + this.f1920c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f1921d + ", mStructureChanged=" + this.f1924g + ", mInPreLayout=" + this.f1925h + ", mRunSimpleAnimations=" + this.f1928k + ", mRunPredictiveAnimations=" + this.f1929l + '}';
    }
}
