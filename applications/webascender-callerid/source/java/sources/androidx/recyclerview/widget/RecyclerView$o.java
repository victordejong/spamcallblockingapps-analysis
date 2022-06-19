package androidx.recyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.C0398w;
import f.h.l.c0.c;
import f.h.l.t;
import f.r.c;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o.class */
public abstract class RecyclerView$o {

    /* renamed from: a */
    C0378f f1945a;

    /* renamed from: b */
    RecyclerView f1946b;

    /* renamed from: c */
    private final C0398w.AbstractC0400b f1947c;

    /* renamed from: d */
    private final C0398w.AbstractC0400b f1948d;

    /* renamed from: e */
    C0398w f1949e;

    /* renamed from: f */
    C0398w f1950f;

    /* renamed from: g */
    RecyclerView$z f1951g;

    /* renamed from: h */
    boolean f1952h = false;

    /* renamed from: i */
    boolean f1953i = false;

    /* renamed from: j */
    boolean f1954j = false;

    /* renamed from: k */
    private boolean f1955k = true;

    /* renamed from: l */
    private boolean f1956l = true;

    /* renamed from: m */
    int f1957m;

    /* renamed from: n */
    boolean f1958n;

    /* renamed from: o */
    private int f1959o;

    /* renamed from: p */
    private int f1960p;

    /* renamed from: q */
    private int f1961q;

    /* renamed from: r */
    private int f1962r;

    /* renamed from: androidx.recyclerview.widget.RecyclerView$o$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$c.class */
    public interface AbstractC0363c {
        /* renamed from: a */
        void m5121a(int i, int i2);
    }

    /* renamed from: androidx.recyclerview.widget.RecyclerView$o$d */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$o$d.class */
    public static class C0364d {

        /* renamed from: a */
        public int f1963a;

        /* renamed from: b */
        public int f1964b;

        /* renamed from: c */
        public boolean f1965c;

        /* renamed from: d */
        public boolean f1966d;
    }

    public RecyclerView$o() {
        a aVar = new a(this);
        this.f1947c = aVar;
        b bVar = new b(this);
        this.f1948d = bVar;
        this.f1949e = new C0398w(aVar);
        this.f1950f = new C0398w(bVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002a, code lost:
        if (r5 != 1073741824) goto L29;
     */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m5232K(int r4, int r5, int r6, int r7, boolean r8) {
        /*
            r0 = 0
            r1 = r4
            r2 = r6
            int r1 = r1 - r2
            int r0 = java.lang.Math.max(r0, r1)
            r6 = r0
            r0 = r8
            if (r0 == 0) goto L30
            r0 = r7
            if (r0 < 0) goto L14
            goto L34
        L14:
            r0 = r7
            r1 = -1
            if (r0 != r1) goto L66
            r0 = r5
            r4 = r0
            r0 = r5
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L41
            r0 = r5
            if (r0 == 0) goto L66
            r0 = r5
            r4 = r0
            r0 = r5
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 == r1) goto L41
            goto L66
        L30:
            r0 = r7
            if (r0 < 0) goto L3a
        L34:
            r0 = 1073741824(0x40000000, float:2.0)
            r4 = r0
            goto L6a
        L3a:
            r0 = r7
            r1 = -1
            if (r0 != r1) goto L46
            r0 = r5
            r4 = r0
        L41:
            r0 = r6
            r7 = r0
            goto L6a
        L46:
            r0 = r7
            r1 = -2
            if (r0 != r1) goto L66
            r0 = r5
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L60
            r0 = r5
            r1 = 1073741824(0x40000000, float:2.0)
            if (r0 != r1) goto L5b
            goto L60
        L5b:
            r0 = 0
            r4 = r0
            goto L41
        L60:
            r0 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r0
            goto L41
        L66:
            r0 = 0
            r4 = r0
            r0 = 0
            r7 = r0
        L6a:
            r0 = r7
            r1 = r4
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView$o.m5232K(int, int, int, int, boolean):int");
    }

    /* renamed from: L */
    private int[] m5229L(View view, Rect rect) {
        int m5186e0 = m5186e0();
        int m5180g0 = m5180g0();
        int m5156o0 = m5156o0();
        int m5183f0 = m5183f0();
        int m5206W = m5206W();
        int m5189d0 = m5189d0();
        int left = (view.getLeft() + rect.left) - view.getScrollX();
        int top = (view.getTop() + rect.top) - view.getScrollY();
        int width = rect.width();
        int height = rect.height();
        int i = left - m5186e0;
        int min = Math.min(0, i);
        int i2 = top - m5180g0;
        int min2 = Math.min(0, i2);
        int i3 = (width + left) - (m5156o0 - m5183f0);
        int max = Math.max(0, i3);
        int max2 = Math.max(0, (height + top) - (m5206W - m5189d0));
        if (m5200Z() == 1) {
            min = max != 0 ? max : Math.max(min, i3);
        } else if (min == 0) {
            min = Math.min(i, max);
        }
        if (min2 == 0) {
            min2 = Math.min(i2, max2);
        }
        return new int[]{min, min2};
    }

    /* renamed from: f */
    private void m5184f(View view, int i, boolean z) {
        RecyclerView$d0 h0 = RecyclerView.h0(view);
        if (z || h0.isRemoved()) {
            this.f1946b.k.m4867b(h0);
        } else {
            this.f1946b.k.m4853p(h0);
        }
        RecyclerView$p recyclerView$p = (RecyclerView$p) view.getLayoutParams();
        if (h0.wasReturnedFromScrap() || h0.isScrap()) {
            if (h0.isScrap()) {
                h0.unScrap();
            } else {
                h0.clearReturnedFromScrapFlag();
            }
            this.f1945a.m4977c(view, i, view.getLayoutParams(), false);
        } else if (view.getParent() == this.f1946b) {
            int m4967m = this.f1945a.m4967m(view);
            int i2 = i;
            if (i == -1) {
                i2 = this.f1945a.m4973g();
            }
            if (m4967m == -1) {
                throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f1946b.indexOfChild(view) + this.f1946b.Q());
            } else if (m4967m != i2) {
                this.f1946b.r.m5258B0(m4967m, i2);
            }
        } else {
            this.f1945a.m4979a(view, i, false);
            recyclerView$p.f1969c = true;
            RecyclerView$z recyclerView$z = this.f1951g;
            if (recyclerView$z != null && recyclerView$z.isRunning()) {
                this.f1951g.onChildAttachedToWindow(view);
            }
        }
        if (recyclerView$p.f1970d) {
            h0.itemView.invalidate();
            recyclerView$p.f1970d = false;
        }
    }

    /* renamed from: i0 */
    public static C0364d m5174i0(Context context, AttributeSet attributeSet, int i, int i2) {
        C0364d c0364d = new C0364d();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.a, i, i2);
        c0364d.f1963a = obtainStyledAttributes.getInt(c.b, 1);
        c0364d.f1964b = obtainStyledAttributes.getInt(c.l, 1);
        c0364d.f1965c = obtainStyledAttributes.getBoolean(c.k, false);
        c0364d.f1966d = obtainStyledAttributes.getBoolean(c.m, false);
        obtainStyledAttributes.recycle();
        return c0364d;
    }

    /* renamed from: n */
    public static int m5160n(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 1073741824) {
                size = Math.max(i2, i3);
            }
            return size;
        }
        return Math.min(size, Math.max(i2, i3));
    }

    /* renamed from: t0 */
    private boolean m5141t0(RecyclerView recyclerView, int i, int i2) {
        View focusedChild = recyclerView.getFocusedChild();
        if (focusedChild == null) {
            return false;
        }
        int m5186e0 = m5186e0();
        int m5180g0 = m5180g0();
        int m5156o0 = m5156o0();
        int m5183f0 = m5183f0();
        int m5206W = m5206W();
        int m5189d0 = m5189d0();
        Rect rect = this.f1946b.n;
        m5220P(focusedChild, rect);
        return rect.left - i < m5156o0 - m5183f0 && rect.right - i > m5186e0 && rect.top - i2 < m5206W - m5189d0 && rect.bottom - i2 > m5180g0;
    }

    /* renamed from: v1 */
    private void m5134v1(RecyclerView$v recyclerView$v, int i, View view) {
        RecyclerView$d0 h0 = RecyclerView.h0(view);
        if (h0.shouldIgnore()) {
            return;
        }
        if (h0.isInvalid() && !h0.isRemoved() && !this.f1946b.q.hasStableIds()) {
            m5149q1(i);
            recyclerView$v.m5094C(h0);
            return;
        }
        m5130x(i);
        recyclerView$v.m5093D(view);
        this.f1946b.k.m4858k(h0);
    }

    /* renamed from: w0 */
    private static boolean m5132w0(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        boolean z = false;
        if (i3 <= 0 || i == i3) {
            if (mode == Integer.MIN_VALUE) {
                boolean z2 = false;
                if (size >= i) {
                    z2 = true;
                }
                return z2;
            } else if (mode == 0) {
                return true;
            } else {
                if (mode != 1073741824) {
                    return false;
                }
                if (size == i) {
                    z = true;
                }
                return z;
            }
        }
        return false;
    }

    /* renamed from: y */
    private void m5127y(int i, View view) {
        this.f1945a.m4976d(i);
    }

    /* renamed from: A */
    void m5262A(RecyclerView recyclerView, RecyclerView$v recyclerView$v) {
        this.f1953i = false;
        m5237I0(recyclerView, recyclerView$v);
    }

    /* renamed from: A0 */
    public void m5261A0(View view, int i, int i2) {
        RecyclerView$p recyclerView$p = (RecyclerView$p) view.getLayoutParams();
        Rect m0 = this.f1946b.m0(view);
        int i3 = m0.left;
        int i4 = m0.right;
        int i5 = m0.top;
        int i6 = m0.bottom;
        int m5232K = m5232K(m5156o0(), m5153p0(), m5186e0() + m5183f0() + ((ViewGroup.MarginLayoutParams) recyclerView$p).leftMargin + ((ViewGroup.MarginLayoutParams) recyclerView$p).rightMargin + i + i3 + i4, ((ViewGroup.MarginLayoutParams) recyclerView$p).width, m5169k());
        int m5232K2 = m5232K(m5206W(), m5204X(), m5180g0() + m5189d0() + ((ViewGroup.MarginLayoutParams) recyclerView$p).topMargin + ((ViewGroup.MarginLayoutParams) recyclerView$p).bottomMargin + i2 + i5 + i6, ((ViewGroup.MarginLayoutParams) recyclerView$p).height, m5166l());
        if (m5245F1(view, m5232K, m5232K2, recyclerView$p)) {
            view.measure(m5232K, m5232K2);
        }
    }

    /* renamed from: A1 */
    void m5260A1(int i, int i2) {
        this.f1961q = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        this.f1959o = mode;
        if (mode == 0 && !RecyclerView.F0) {
            this.f1961q = 0;
        }
        this.f1962r = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.f1960p = mode2;
        if (mode2 != 0 || RecyclerView.F0) {
            return;
        }
        this.f1962r = 0;
    }

    /* renamed from: B */
    public View m5259B(View view) {
        View S;
        RecyclerView recyclerView = this.f1946b;
        if (recyclerView == null || (S = recyclerView.S(view)) == null || this.f1945a.m4966n(S)) {
            return null;
        }
        return S;
    }

    /* renamed from: B0 */
    public void m5258B0(int i, int i2) {
        View m5238I = m5238I(i);
        if (m5238I != null) {
            m5130x(i);
            m5178h(m5238I, i2);
            return;
        }
        throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i + this.f1946b.toString());
    }

    /* renamed from: B1 */
    public void m5257B1(int i, int i2) {
        RecyclerView.f(this.f1946b, i, i2);
    }

    /* renamed from: C */
    public View m5256C(int i) {
        int m5235J = m5235J();
        for (int i2 = 0; i2 < m5235J; i2++) {
            View m5238I = m5238I(i2);
            RecyclerView$d0 h0 = RecyclerView.h0(m5238I);
            if (h0 != null && h0.getLayoutPosition() == i && !h0.shouldIgnore() && (this.f1946b.m0.m5292e() || !h0.isRemoved())) {
                return m5238I;
            }
        }
        return null;
    }

    /* renamed from: C0 */
    public void m5255C0(int i) {
        RecyclerView recyclerView = this.f1946b;
        if (recyclerView != null) {
            recyclerView.C0(i);
        }
    }

    /* renamed from: C1 */
    public void m5254C1(Rect rect, int i, int i2) {
        int width = rect.width();
        int m5186e0 = m5186e0();
        int m5183f0 = m5183f0();
        int height = rect.height();
        int m5180g0 = m5180g0();
        m5257B1(m5160n(i, width + m5186e0 + m5183f0, m5192c0()), m5160n(i2, height + m5180g0 + m5189d0(), m5195b0()));
    }

    /* renamed from: D */
    public abstract RecyclerView$p m5253D();

    /* renamed from: D0 */
    public void m5252D0(int i) {
        RecyclerView recyclerView = this.f1946b;
        if (recyclerView != null) {
            recyclerView.D0(i);
        }
    }

    /* renamed from: D1 */
    void m5251D1(int i, int i2) {
        int m5235J = m5235J();
        if (m5235J == 0) {
            this.f1946b.x(i, i2);
            return;
        }
        int i3 = 0;
        int i4 = Integer.MIN_VALUE;
        int i5 = Integer.MIN_VALUE;
        int i6 = Integer.MAX_VALUE;
        int i7 = Integer.MAX_VALUE;
        while (true) {
            int i8 = i7;
            if (i3 >= m5235J) {
                this.f1946b.n.set(i6, i8, i4, i5);
                m5254C1(this.f1946b.n, i, i2);
                return;
            }
            View m5238I = m5238I(i3);
            Rect rect = this.f1946b.n;
            m5220P(m5238I, rect);
            int i9 = rect.left;
            int i10 = i6;
            if (i9 < i6) {
                i10 = i9;
            }
            int i11 = rect.right;
            int i12 = i4;
            if (i11 > i4) {
                i12 = i11;
            }
            int i13 = rect.top;
            int i14 = i8;
            if (i13 < i8) {
                i14 = i13;
            }
            int i15 = rect.bottom;
            int i16 = i5;
            if (i15 > i5) {
                i16 = i15;
            }
            i3++;
            i4 = i12;
            i5 = i16;
            i6 = i10;
            i7 = i14;
        }
    }

    /* renamed from: E */
    public RecyclerView$p m5250E(Context context, AttributeSet attributeSet) {
        return new RecyclerView$p(context, attributeSet);
    }

    /* renamed from: E0 */
    public void m5249E0(RecyclerView$g recyclerView$g, RecyclerView$g recyclerView$g2) {
    }

    /* renamed from: E1 */
    void m5248E1(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.f1946b = null;
            this.f1945a = null;
            this.f1961q = 0;
            this.f1962r = 0;
        } else {
            this.f1946b = recyclerView;
            this.f1945a = recyclerView.j;
            this.f1961q = recyclerView.getWidth();
            this.f1962r = recyclerView.getHeight();
        }
        this.f1959o = 1073741824;
        this.f1960p = 1073741824;
    }

    /* renamed from: F */
    public RecyclerView$p m5247F(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof RecyclerView$p ? new RecyclerView$p((RecyclerView$p) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new RecyclerView$p((ViewGroup.MarginLayoutParams) layoutParams) : new RecyclerView$p(layoutParams);
    }

    /* renamed from: F0 */
    public boolean m5246F0(RecyclerView recyclerView, ArrayList<View> arrayList, int i, int i2) {
        return false;
    }

    /* renamed from: F1 */
    boolean m5245F1(View view, int i, int i2, RecyclerView$p recyclerView$p) {
        return view.isLayoutRequested() || !this.f1955k || !m5132w0(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) recyclerView$p).width) || !m5132w0(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) recyclerView$p).height);
    }

    /* renamed from: G */
    public int m5244G() {
        return -1;
    }

    /* renamed from: G0 */
    public void m5243G0(RecyclerView recyclerView) {
    }

    /* renamed from: G1 */
    boolean m5242G1() {
        return false;
    }

    /* renamed from: H */
    public int m5241H(View view) {
        return ((RecyclerView$p) view.getLayoutParams()).f1968b.bottom;
    }

    @Deprecated
    /* renamed from: H0 */
    public void m5240H0(RecyclerView recyclerView) {
    }

    /* renamed from: H1 */
    boolean m5239H1(View view, int i, int i2, RecyclerView$p recyclerView$p) {
        return !this.f1955k || !m5132w0(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) recyclerView$p).width) || !m5132w0(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) recyclerView$p).height);
    }

    /* renamed from: I */
    public View m5238I(int i) {
        C0378f c0378f = this.f1945a;
        return c0378f != null ? c0378f.m4974f(i) : null;
    }

    /* renamed from: I0 */
    public void m5237I0(RecyclerView recyclerView, RecyclerView$v recyclerView$v) {
        m5240H0(recyclerView);
    }

    /* renamed from: I1 */
    public void m5236I1(RecyclerView recyclerView, RecyclerView$a0 recyclerView$a0, int i) {
        Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
    }

    /* renamed from: J */
    public int m5235J() {
        C0378f c0378f = this.f1945a;
        return c0378f != null ? c0378f.m4973g() : 0;
    }

    /* renamed from: J0 */
    public View m5234J0(View view, int i, RecyclerView$v recyclerView$v, RecyclerView$a0 recyclerView$a0) {
        return null;
    }

    /* renamed from: J1 */
    public void m5233J1(RecyclerView$z recyclerView$z) {
        RecyclerView$z recyclerView$z2 = this.f1951g;
        if (recyclerView$z2 != null && recyclerView$z != recyclerView$z2 && recyclerView$z2.isRunning()) {
            this.f1951g.stop();
        }
        this.f1951g = recyclerView$z;
        recyclerView$z.start(this.f1946b, this);
    }

    /* renamed from: K0 */
    public void m5231K0(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.f1946b;
        m5228L0(recyclerView.g, recyclerView.m0, accessibilityEvent);
    }

    /* renamed from: K1 */
    void m5230K1() {
        RecyclerView$z recyclerView$z = this.f1951g;
        if (recyclerView$z != null) {
            recyclerView$z.stop();
        }
    }

    /* renamed from: L0 */
    public void m5228L0(RecyclerView$v recyclerView$v, RecyclerView$a0 recyclerView$a0, AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.f1946b;
        if (recyclerView == null || accessibilityEvent == null) {
            return;
        }
        boolean z = true;
        if (!recyclerView.canScrollVertically(1)) {
            z = true;
            if (!this.f1946b.canScrollVertically(-1)) {
                z = true;
                if (!this.f1946b.canScrollHorizontally(-1)) {
                    z = this.f1946b.canScrollHorizontally(1);
                }
            }
        }
        accessibilityEvent.setScrollable(z);
        RecyclerView$g recyclerView$g = this.f1946b.q;
        if (recyclerView$g == null) {
            return;
        }
        accessibilityEvent.setItemCount(recyclerView$g.getItemCount());
    }

    /* renamed from: L1 */
    public boolean m5227L1() {
        return false;
    }

    /* renamed from: M */
    public boolean m5226M() {
        RecyclerView recyclerView = this.f1946b;
        return recyclerView != null && recyclerView.l;
    }

    /* renamed from: M0 */
    void m5225M0(f.h.l.c0.c cVar) {
        RecyclerView recyclerView = this.f1946b;
        m5223N0(recyclerView.g, recyclerView.m0, cVar);
    }

    /* renamed from: N */
    public int m5224N(RecyclerView$v recyclerView$v, RecyclerView$a0 recyclerView$a0) {
        RecyclerView recyclerView = this.f1946b;
        int i = 1;
        if (recyclerView != null) {
            if (recyclerView.q == null) {
                i = 1;
            } else {
                i = 1;
                if (m5169k()) {
                    i = this.f1946b.q.getItemCount();
                }
            }
        }
        return i;
    }

    /* renamed from: N0 */
    public void m5223N0(RecyclerView$v recyclerView$v, RecyclerView$a0 recyclerView$a0, f.h.l.c0.c cVar) {
        if (this.f1946b.canScrollVertically(-1) || this.f1946b.canScrollHorizontally(-1)) {
            cVar.a(8192);
            cVar.q0(true);
        }
        if (this.f1946b.canScrollVertically(1) || this.f1946b.canScrollHorizontally(1)) {
            cVar.a(4096);
            cVar.q0(true);
        }
        cVar.Z(c.b.a(m5168k0(recyclerView$v, recyclerView$a0), m5224N(recyclerView$v, recyclerView$a0), m5135v0(recyclerView$v, recyclerView$a0), m5165l0(recyclerView$v, recyclerView$a0)));
    }

    /* renamed from: O */
    public int m5222O(View view) {
        return view.getBottom() + m5241H(view);
    }

    /* renamed from: O0 */
    void m5221O0(View view, f.h.l.c0.c cVar) {
        RecyclerView$d0 h0 = RecyclerView.h0(view);
        if (h0 == null || h0.isRemoved() || this.f1945a.m4966n(h0.itemView)) {
            return;
        }
        RecyclerView recyclerView = this.f1946b;
        m5219P0(recyclerView.g, recyclerView.m0, view, cVar);
    }

    /* renamed from: P */
    public void m5220P(View view, Rect rect) {
        RecyclerView.j0(view, rect);
    }

    /* renamed from: P0 */
    public void m5219P0(RecyclerView$v recyclerView$v, RecyclerView$a0 recyclerView$a0, View view, f.h.l.c0.c cVar) {
        cVar.a0(c.c.a(m5166l() ? m5177h0(view) : 0, 1, m5169k() ? m5177h0(view) : 0, 1, false, false));
    }

    /* renamed from: Q */
    public int m5218Q(View view) {
        return view.getLeft() - m5198a0(view);
    }

    /* renamed from: Q0 */
    public View m5217Q0(View view, int i) {
        return null;
    }

    /* renamed from: R */
    public int m5216R(View view) {
        Rect rect = ((RecyclerView$p) view.getLayoutParams()).f1968b;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    /* renamed from: R0 */
    public void m5215R0(RecyclerView recyclerView, int i, int i2) {
    }

    /* renamed from: S */
    public int m5214S(View view) {
        Rect rect = ((RecyclerView$p) view.getLayoutParams()).f1968b;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    /* renamed from: S0 */
    public void m5213S0(RecyclerView recyclerView) {
    }

    /* renamed from: T */
    public int m5212T(View view) {
        return view.getRight() + m5171j0(view);
    }

    /* renamed from: T0 */
    public void m5211T0(RecyclerView recyclerView, int i, int i2, int i3) {
    }

    /* renamed from: U */
    public int m5210U(View view) {
        return view.getTop() - m5162m0(view);
    }

    /* renamed from: U0 */
    public void m5209U0(RecyclerView recyclerView, int i, int i2) {
    }

    /* renamed from: V */
    public View m5208V() {
        View focusedChild;
        RecyclerView recyclerView = this.f1946b;
        if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f1945a.m4966n(focusedChild)) {
            return null;
        }
        return focusedChild;
    }

    /* renamed from: V0 */
    public void m5207V0(RecyclerView recyclerView, int i, int i2) {
    }

    /* renamed from: W */
    public int m5206W() {
        return this.f1962r;
    }

    /* renamed from: W0 */
    public void m5205W0(RecyclerView recyclerView, int i, int i2, Object obj) {
        m5207V0(recyclerView, i, i2);
    }

    /* renamed from: X */
    public int m5204X() {
        return this.f1960p;
    }

    /* renamed from: X0 */
    public void m5203X0(RecyclerView$v recyclerView$v, RecyclerView$a0 recyclerView$a0) {
        Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
    }

    /* renamed from: Y */
    public int m5202Y() {
        RecyclerView recyclerView = this.f1946b;
        RecyclerView$g adapter = recyclerView != null ? recyclerView.getAdapter() : null;
        return adapter != null ? adapter.getItemCount() : 0;
    }

    /* renamed from: Y0 */
    public void m5201Y0(RecyclerView$a0 recyclerView$a0) {
    }

    /* renamed from: Z */
    public int m5200Z() {
        return t.B(this.f1946b);
    }

    /* renamed from: Z0 */
    public void m5199Z0(RecyclerView$v recyclerView$v, RecyclerView$a0 recyclerView$a0, int i, int i2) {
        this.f1946b.x(i, i2);
    }

    /* renamed from: a0 */
    public int m5198a0(View view) {
        return ((RecyclerView$p) view.getLayoutParams()).f1968b.left;
    }

    @Deprecated
    /* renamed from: a1 */
    public boolean m5197a1(RecyclerView recyclerView, View view, View view2) {
        return m5129x0() || recyclerView.x0();
    }

    /* renamed from: b */
    public void m5196b(View view) {
        m5193c(view, -1);
    }

    /* renamed from: b0 */
    public int m5195b0() {
        return t.C(this.f1946b);
    }

    /* renamed from: b1 */
    public boolean m5194b1(RecyclerView recyclerView, RecyclerView$a0 recyclerView$a0, View view, View view2) {
        return m5197a1(recyclerView, view, view2);
    }

    /* renamed from: c */
    public void m5193c(View view, int i) {
        m5184f(view, i, true);
    }

    /* renamed from: c0 */
    public int m5192c0() {
        return t.D(this.f1946b);
    }

    /* renamed from: c1 */
    public void m5191c1(Parcelable parcelable) {
    }

    /* renamed from: d */
    public void m5190d(View view) {
        m5187e(view, -1);
    }

    /* renamed from: d0 */
    public int m5189d0() {
        RecyclerView recyclerView = this.f1946b;
        return recyclerView != null ? recyclerView.getPaddingBottom() : 0;
    }

    /* renamed from: d1 */
    public Parcelable m5188d1() {
        return null;
    }

    /* renamed from: e */
    public void m5187e(View view, int i) {
        m5184f(view, i, false);
    }

    /* renamed from: e0 */
    public int m5186e0() {
        RecyclerView recyclerView = this.f1946b;
        return recyclerView != null ? recyclerView.getPaddingLeft() : 0;
    }

    /* renamed from: e1 */
    public void m5185e1(int i) {
    }

    /* renamed from: f0 */
    public int m5183f0() {
        RecyclerView recyclerView = this.f1946b;
        return recyclerView != null ? recyclerView.getPaddingRight() : 0;
    }

    /* renamed from: f1 */
    public void m5182f1(RecyclerView$z recyclerView$z) {
        if (this.f1951g == recyclerView$z) {
            this.f1951g = null;
        }
    }

    /* renamed from: g */
    public void m5181g(String str) {
        RecyclerView recyclerView = this.f1946b;
        if (recyclerView != null) {
            recyclerView.o(str);
        }
    }

    /* renamed from: g0 */
    public int m5180g0() {
        RecyclerView recyclerView = this.f1946b;
        return recyclerView != null ? recyclerView.getPaddingTop() : 0;
    }

    /* renamed from: g1 */
    boolean m5179g1(int i, Bundle bundle) {
        RecyclerView recyclerView = this.f1946b;
        return m5176h1(recyclerView.g, recyclerView.m0, i, bundle);
    }

    /* renamed from: h */
    public void m5178h(View view, int i) {
        m5175i(view, i, (RecyclerView$p) view.getLayoutParams());
    }

    /* renamed from: h0 */
    public int m5177h0(View view) {
        return ((RecyclerView$p) view.getLayoutParams()).m5120a();
    }

    /* renamed from: h1 */
    public boolean m5176h1(RecyclerView$v recyclerView$v, RecyclerView$a0 recyclerView$a0, int i, Bundle bundle) {
        int i2;
        int i3;
        int i4;
        int i5;
        RecyclerView recyclerView = this.f1946b;
        if (recyclerView == null) {
            return false;
        }
        if (i == 4096) {
            i5 = recyclerView.canScrollVertically(1) ? (m5206W() - m5180g0()) - m5189d0() : 0;
            i2 = i5;
            if (this.f1946b.canScrollHorizontally(1)) {
                i4 = (m5156o0() - m5186e0()) - m5183f0();
                int i6 = i5;
                i3 = i4;
                i2 = i6;
            }
            i3 = 0;
        } else if (i != 8192) {
            i3 = 0;
            i2 = 0;
        } else {
            i5 = recyclerView.canScrollVertically(-1) ? -((m5206W() - m5180g0()) - m5189d0()) : 0;
            i2 = i5;
            if (this.f1946b.canScrollHorizontally(-1)) {
                i4 = -((m5156o0() - m5186e0()) - m5183f0());
                int i62 = i5;
                i3 = i4;
                i2 = i62;
            }
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return false;
        }
        this.f1946b.r1(i3, i2, (Interpolator) null, Integer.MIN_VALUE, true);
        return true;
    }

    /* renamed from: i */
    public void m5175i(View view, int i, RecyclerView$p recyclerView$p) {
        RecyclerView$d0 h0 = RecyclerView.h0(view);
        if (h0.isRemoved()) {
            this.f1946b.k.m4867b(h0);
        } else {
            this.f1946b.k.m4853p(h0);
        }
        this.f1945a.m4977c(view, i, recyclerView$p, h0.isRemoved());
    }

    /* renamed from: i1 */
    boolean m5173i1(View view, int i, Bundle bundle) {
        RecyclerView recyclerView = this.f1946b;
        return m5170j1(recyclerView.g, recyclerView.m0, view, i, bundle);
    }

    /* renamed from: j */
    public void m5172j(View view, Rect rect) {
        RecyclerView recyclerView = this.f1946b;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.m0(view));
        }
    }

    /* renamed from: j0 */
    public int m5171j0(View view) {
        return ((RecyclerView$p) view.getLayoutParams()).f1968b.right;
    }

    /* renamed from: j1 */
    public boolean m5170j1(RecyclerView$v recyclerView$v, RecyclerView$a0 recyclerView$a0, View view, int i, Bundle bundle) {
        return false;
    }

    /* renamed from: k */
    public boolean m5169k() {
        return false;
    }

    /* renamed from: k0 */
    public int m5168k0(RecyclerView$v recyclerView$v, RecyclerView$a0 recyclerView$a0) {
        RecyclerView recyclerView = this.f1946b;
        int i = 1;
        if (recyclerView != null) {
            if (recyclerView.q == null) {
                i = 1;
            } else {
                i = 1;
                if (m5166l()) {
                    i = this.f1946b.q.getItemCount();
                }
            }
        }
        return i;
    }

    /* renamed from: k1 */
    public void m5167k1(RecyclerView$v recyclerView$v) {
        for (int m5235J = m5235J() - 1; m5235J >= 0; m5235J--) {
            if (!RecyclerView.h0(m5238I(m5235J)).shouldIgnore()) {
                m5158n1(m5235J, recyclerView$v);
            }
        }
    }

    /* renamed from: l */
    public boolean m5166l() {
        return false;
    }

    /* renamed from: l0 */
    public int m5165l0(RecyclerView$v recyclerView$v, RecyclerView$a0 recyclerView$a0) {
        return 0;
    }

    /* renamed from: l1 */
    void m5164l1(RecyclerView$v recyclerView$v) {
        int m5074j = recyclerView$v.m5074j();
        for (int i = m5074j - 1; i >= 0; i--) {
            View m5070n = recyclerView$v.m5070n(i);
            RecyclerView$d0 h0 = RecyclerView.h0(m5070n);
            if (!h0.shouldIgnore()) {
                h0.setIsRecyclable(false);
                if (h0.isTmpDetached()) {
                    this.f1946b.removeDetachedView(m5070n, false);
                }
                RecyclerView$l recyclerView$l = this.f1946b.R;
                if (recyclerView$l != null) {
                    recyclerView$l.endAnimation(h0);
                }
                h0.setIsRecyclable(true);
                recyclerView$v.m5059y(m5070n);
            }
        }
        recyclerView$v.m5079e();
        if (m5074j > 0) {
            this.f1946b.invalidate();
        }
    }

    /* renamed from: m */
    public boolean m5163m(RecyclerView$p recyclerView$p) {
        return recyclerView$p != null;
    }

    /* renamed from: m0 */
    public int m5162m0(View view) {
        return ((RecyclerView$p) view.getLayoutParams()).f1968b.top;
    }

    /* renamed from: m1 */
    public void m5161m1(View view, RecyclerView$v recyclerView$v) {
        m5152p1(view);
        recyclerView$v.m5095B(view);
    }

    /* renamed from: n0 */
    public void m5159n0(View view, boolean z, Rect rect) {
        Matrix matrix;
        if (z) {
            Rect rect2 = ((RecyclerView$p) view.getLayoutParams()).f1968b;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        } else {
            rect.set(0, 0, view.getWidth(), view.getHeight());
        }
        if (this.f1946b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.f1946b.p;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    /* renamed from: n1 */
    public void m5158n1(int i, RecyclerView$v recyclerView$v) {
        View m5238I = m5238I(i);
        m5149q1(i);
        recyclerView$v.m5095B(m5238I);
    }

    /* renamed from: o */
    public void m5157o(int i, int i2, RecyclerView$a0 recyclerView$a0, AbstractC0363c abstractC0363c) {
    }

    /* renamed from: o0 */
    public int m5156o0() {
        return this.f1961q;
    }

    /* renamed from: o1 */
    public boolean m5155o1(Runnable runnable) {
        RecyclerView recyclerView = this.f1946b;
        if (recyclerView != null) {
            return recyclerView.removeCallbacks(runnable);
        }
        return false;
    }

    /* renamed from: p */
    public void m5154p(int i, AbstractC0363c abstractC0363c) {
    }

    /* renamed from: p0 */
    public int m5153p0() {
        return this.f1959o;
    }

    /* renamed from: p1 */
    public void m5152p1(View view) {
        this.f1945a.m4964p(view);
    }

    /* renamed from: q */
    public int m5151q(RecyclerView$a0 recyclerView$a0) {
        return 0;
    }

    /* renamed from: q0 */
    boolean m5150q0() {
        int m5235J = m5235J();
        for (int i = 0; i < m5235J; i++) {
            ViewGroup.LayoutParams layoutParams = m5238I(i).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: q1 */
    public void m5149q1(int i) {
        if (m5238I(i) != null) {
            this.f1945a.m4963q(i);
        }
    }

    /* renamed from: r */
    public int m5148r(RecyclerView$a0 recyclerView$a0) {
        return 0;
    }

    /* renamed from: r0 */
    public boolean m5147r0() {
        return this.f1953i;
    }

    /* renamed from: r1 */
    public boolean m5146r1(RecyclerView recyclerView, View view, Rect rect, boolean z) {
        return m5143s1(recyclerView, view, rect, z, false);
    }

    /* renamed from: s */
    public int m5145s(RecyclerView$a0 recyclerView$a0) {
        return 0;
    }

    /* renamed from: s0 */
    public boolean m5144s0() {
        return this.f1954j;
    }

    /* renamed from: s1 */
    public boolean m5143s1(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        int[] m5229L = m5229L(view, rect);
        int i = m5229L[0];
        int i2 = m5229L[1];
        if (!z2 || m5141t0(recyclerView, i, i2)) {
            if (i == 0 && i2 == 0) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i, i2);
                return true;
            }
            recyclerView.o1(i, i2);
            return true;
        }
        return false;
    }

    /* renamed from: t */
    public int m5142t(RecyclerView$a0 recyclerView$a0) {
        return 0;
    }

    /* renamed from: t1 */
    public void m5140t1() {
        RecyclerView recyclerView = this.f1946b;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    /* renamed from: u */
    public int m5139u(RecyclerView$a0 recyclerView$a0) {
        return 0;
    }

    /* renamed from: u0 */
    public final boolean m5138u0() {
        return this.f1956l;
    }

    /* renamed from: u1 */
    public void m5137u1() {
        this.f1952h = true;
    }

    /* renamed from: v */
    public int m5136v(RecyclerView$a0 recyclerView$a0) {
        return 0;
    }

    /* renamed from: v0 */
    public boolean m5135v0(RecyclerView$v recyclerView$v, RecyclerView$a0 recyclerView$a0) {
        return false;
    }

    /* renamed from: w */
    public void m5133w(RecyclerView$v recyclerView$v) {
        for (int m5235J = m5235J() - 1; m5235J >= 0; m5235J--) {
            m5134v1(recyclerView$v, m5235J, m5238I(m5235J));
        }
    }

    /* renamed from: w1 */
    public int m5131w1(int i, RecyclerView$v recyclerView$v, RecyclerView$a0 recyclerView$a0) {
        return 0;
    }

    /* renamed from: x */
    public void m5130x(int i) {
        m5127y(i, m5238I(i));
    }

    /* renamed from: x0 */
    public boolean m5129x0() {
        RecyclerView$z recyclerView$z = this.f1951g;
        return recyclerView$z != null && recyclerView$z.isRunning();
    }

    /* renamed from: x1 */
    public void m5128x1(int i) {
    }

    /* renamed from: y0 */
    public boolean m5126y0(View view, boolean z, boolean z2) {
        boolean z3 = this.f1949e.m4879b(view, 24579) && this.f1950f.m4879b(view, 24579);
        return z ? z3 : !z3;
    }

    /* renamed from: y1 */
    public int m5125y1(int i, RecyclerView$v recyclerView$v, RecyclerView$a0 recyclerView$a0) {
        return 0;
    }

    /* renamed from: z */
    void m5124z(RecyclerView recyclerView) {
        this.f1953i = true;
        m5243G0(recyclerView);
    }

    /* renamed from: z0 */
    public void m5123z0(View view, int i, int i2, int i3, int i4) {
        RecyclerView$p recyclerView$p = (RecyclerView$p) view.getLayoutParams();
        Rect rect = recyclerView$p.f1968b;
        view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) recyclerView$p).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) recyclerView$p).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) recyclerView$p).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) recyclerView$p).bottomMargin);
    }

    /* renamed from: z1 */
    void m5122z1(RecyclerView recyclerView) {
        m5260A1(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }
}
