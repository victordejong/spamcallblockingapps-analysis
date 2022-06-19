package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
/* renamed from: androidx.recyclerview.widget.q */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/q.class */
public abstract class AbstractC0396q {

    /* renamed from: a */
    protected final RecyclerView$o f2140a;

    /* renamed from: b */
    private int f2141b;

    /* renamed from: c */
    final Rect f2142c;

    private AbstractC0396q(RecyclerView$o recyclerView$o) {
        this.f2141b = Integer.MIN_VALUE;
        this.f2142c = new Rect();
        this.f2140a = recyclerView$o;
    }

    /* synthetic */ AbstractC0396q(RecyclerView$o recyclerView$o, a aVar) {
        this(recyclerView$o);
    }

    /* renamed from: a */
    public static AbstractC0396q m4902a(RecyclerView$o recyclerView$o) {
        return new a(recyclerView$o);
    }

    /* renamed from: b */
    public static AbstractC0396q m4901b(RecyclerView$o recyclerView$o, int i) {
        if (i != 0) {
            if (i != 1) {
                throw new IllegalArgumentException("invalid orientation");
            }
            return m4900c(recyclerView$o);
        }
        return m4902a(recyclerView$o);
    }

    /* renamed from: c */
    public static AbstractC0396q m4900c(RecyclerView$o recyclerView$o) {
        return new b(recyclerView$o);
    }

    /* renamed from: d */
    public abstract int m4899d(View view);

    /* renamed from: e */
    public abstract int m4898e(View view);

    /* renamed from: f */
    public abstract int m4897f(View view);

    /* renamed from: g */
    public abstract int m4896g(View view);

    /* renamed from: h */
    public abstract int m4895h();

    /* renamed from: i */
    public abstract int m4894i();

    /* renamed from: j */
    public abstract int m4893j();

    /* renamed from: k */
    public abstract int m4892k();

    /* renamed from: l */
    public abstract int m4891l();

    /* renamed from: m */
    public abstract int m4890m();

    /* renamed from: n */
    public abstract int m4889n();

    /* renamed from: o */
    public int m4888o() {
        return Integer.MIN_VALUE == this.f2141b ? 0 : m4889n() - this.f2141b;
    }

    /* renamed from: p */
    public abstract int m4887p(View view);

    /* renamed from: q */
    public abstract int m4886q(View view);

    /* renamed from: r */
    public abstract void m4885r(int i);

    /* renamed from: s */
    public void m4884s() {
        this.f2141b = m4889n();
    }
}
