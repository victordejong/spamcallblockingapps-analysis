package androidx.slidingpanelayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.p037g.C0689a;
import androidx.core.p037g.C0741t;
import androidx.core.p037g.p038a.C0696d;
import androidx.customview.p039a.C0799e;
import androidx.customview.view.AbsSavedState;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout.class */
public class SlidingPaneLayout extends ViewGroup {

    /* renamed from: a */
    View f4922a;

    /* renamed from: b */
    float f4923b;

    /* renamed from: c */
    int f4924c;

    /* renamed from: d */
    boolean f4925d;

    /* renamed from: e */
    final C0799e f4926e;

    /* renamed from: f */
    boolean f4927f;

    /* renamed from: g */
    final ArrayList<RunnableC1156b> f4928g;

    /* renamed from: h */
    private int f4929h;

    /* renamed from: i */
    private int f4930i;

    /* renamed from: j */
    private Drawable f4931j;

    /* renamed from: k */
    private Drawable f4932k;

    /* renamed from: l */
    private final int f4933l;

    /* renamed from: m */
    private boolean f4934m;

    /* renamed from: n */
    private float f4935n;

    /* renamed from: o */
    private int f4936o;

    /* renamed from: p */
    private float f4937p;

    /* renamed from: q */
    private float f4938q;

    /* renamed from: r */
    private boolean f4939r;

    /* renamed from: s */
    private final Rect f4940s;

    /* renamed from: t */
    private Method f4941t;

    /* renamed from: u */
    private Field f4942u;

    /* renamed from: v */
    private boolean f4943v;

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: e */
        private static final int[] f4944e = {16843137};

        /* renamed from: a */
        public float f4945a;

        /* renamed from: b */
        boolean f4946b;

        /* renamed from: c */
        boolean f4947c;

        /* renamed from: d */
        Paint f4948d;

        public LayoutParams() {
            super(-1, -1);
            this.f4945a = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4945a = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f4944e);
            this.f4945a = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f4945a = 0.0f;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f4945a = 0.0f;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState.class */
    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1158a();

        /* renamed from: a */
        boolean f4949a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel) {
            super(parcel, null);
            this.f4949a = parcel.readInt() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f4949a ? 1 : 0);
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$a.class */
    final class C1155a extends C0689a {

        /* renamed from: b */
        private final Rect f4951b = new Rect();

        C1155a() {
        }

        /* renamed from: c */
        private boolean m6680c(View view) {
            return SlidingPaneLayout.this.m6682c(view);
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: a */
        public final void mo802a(View view, C0696d dVar) {
            C0696d a = C0696d.m8526a(dVar);
            super.mo802a(view, a);
            Rect rect = this.f4951b;
            a.m8532a(rect);
            dVar.m8518b(rect);
            a.m8510c(rect);
            dVar.m8505d(rect);
            dVar.m8498e(a.m8487i());
            dVar.m8525a(a.m8473q());
            dVar.m8514b(a.m8472r());
            dVar.m8499e(a.m8470t());
            dVar.m8484j(a.m8477n());
            dVar.m8488h(a.m8481l());
            dVar.m8507c(a.m8493g());
            dVar.m8502d(a.m8490h());
            dVar.m8494f(a.m8485j());
            dVar.m8491g(a.m8483k());
            dVar.m8486i(a.m8479m());
            dVar.m8535a(a.m8506d());
            dVar.m8519b(a.m8501e());
            a.m8469u();
            dVar.m8514b((CharSequence) SlidingPaneLayout.class.getName());
            dVar.m8517b(view);
            ViewParent h = C0741t.m8323h(view);
            if (h instanceof View) {
                dVar.m8504d((View) h);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i);
                if (!m6680c(childAt) && childAt.getVisibility() == 0) {
                    C0741t.m8358a(childAt, 1);
                    dVar.m8509c(childAt);
                }
            }
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: a */
        public final boolean mo6681a(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (!m6680c(view)) {
                return super.mo6681a(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        @Override // androidx.core.p037g.C0689a
        /* renamed from: d */
        public final void mo1060d(View view, AccessibilityEvent accessibilityEvent) {
            super.mo1060d(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$b.class */
    public final class RunnableC1156b implements Runnable {

        /* renamed from: a */
        final View f4952a;

        RunnableC1156b(View view) {
            this.f4952a = view;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f4952a.getParent() == SlidingPaneLayout.this) {
                this.f4952a.setLayerType(0, null);
                SlidingPaneLayout.this.m6684b(this.f4952a);
            }
            SlidingPaneLayout.this.f4928g.remove(this);
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$c */
    /* loaded from: classes-dex2jar.jar:androidx/slidingpanelayout/widget/SlidingPaneLayout$c.class */
    private final class C1157c extends C0799e.AbstractC0800a {
        C1157c() {
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: a */
        public final int mo1435a(View view) {
            return SlidingPaneLayout.this.f4924c;
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: a */
        public final void mo1343a(int i) {
            if (SlidingPaneLayout.this.f4926e.m8084a() != 0) {
                return;
            }
            if (SlidingPaneLayout.this.f4923b == 0.0f) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                slidingPaneLayout.m6688a(slidingPaneLayout.f4922a);
                SlidingPaneLayout.this.sendAccessibilityEvent(32);
                SlidingPaneLayout.this.f4927f = false;
                return;
            }
            SlidingPaneLayout.this.sendAccessibilityEvent(32);
            SlidingPaneLayout.this.f4927f = true;
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: a */
        public final void mo6679a(int i, int i2) {
            SlidingPaneLayout.this.f4926e.m8072a(SlidingPaneLayout.this.f4922a, i2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x00a1, code lost:
            if (r4.f4954a.f4923b > 0.5f) goto L_0x00a4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0040, code lost:
            if (r4.f4954a.f4923b > 0.5f) goto L_0x0043;
         */
        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo1342a(android.view.View r5, float r6, float r7) {
            /*
                r4 = this;
                r0 = r5
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                androidx.slidingpanelayout.widget.SlidingPaneLayout$LayoutParams r0 = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) r0
                r8 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                boolean r0 = r0.m6686b()
                if (r0 == 0) goto L_0x006d
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r0 = r0.getPaddingRight()
                r1 = r8
                int r1 = r1.rightMargin
                int r0 = r0 + r1
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0043
                r0 = r9
                r10 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x004f
                r0 = r9
                r10 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                float r0 = r0.f4923b
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x004f
            L_0x0043:
                r0 = r9
                r1 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r1 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r1 = r1.f4924c
                int r0 = r0 + r1
                r10 = r0
            L_0x004f:
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                android.view.View r0 = r0.f4922a
                int r0 = r0.getWidth()
                r9 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r0 = r0.getWidth()
                r1 = r10
                int r0 = r0 - r1
                r1 = r9
                int r0 = r0 - r1
                r10 = r0
                goto L_0x00b0
            L_0x006d:
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r0 = r0.getPaddingLeft()
                r10 = r0
                r0 = r8
                int r0 = r0.leftMargin
                r1 = r10
                int r0 = r0 + r1
                r9 = r0
                r0 = r6
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                r11 = r0
                r0 = r11
                if (r0 > 0) goto L_0x00a4
                r0 = r9
                r10 = r0
                r0 = r11
                if (r0 != 0) goto L_0x00b0
                r0 = r9
                r10 = r0
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                float r0 = r0.f4923b
                r1 = 1056964608(0x3f000000, float:0.5)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x00b0
            L_0x00a4:
                r0 = r9
                r1 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r1 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                int r1 = r1.f4924c
                int r0 = r0 + r1
                r10 = r0
            L_0x00b0:
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                androidx.customview.a.e r0 = r0.f4926e
                r1 = r10
                r2 = r5
                int r2 = r2.getTop()
                boolean r0 = r0.m8077a(r1, r2)
                r0 = r4
                androidx.slidingpanelayout.widget.SlidingPaneLayout r0 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this
                r0.invalidate()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.C1157c.mo1342a(android.view.View, float, float):void");
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: a */
        public final void mo1341a(View view, int i) {
            SlidingPaneLayout.this.m6689a(i);
            SlidingPaneLayout.this.invalidate();
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: b */
        public final void mo1434b(View view, int i) {
            SlidingPaneLayout.this.m6691a();
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: c */
        public final boolean mo1339c(View view, int i) {
            if (SlidingPaneLayout.this.f4925d) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).f4946b;
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: d */
        public final int mo1338d(View view, int i) {
            int i2;
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.f4922a.getLayoutParams();
            if (SlidingPaneLayout.this.m6686b()) {
                int width = SlidingPaneLayout.this.getWidth() - ((SlidingPaneLayout.this.getPaddingRight() + layoutParams.rightMargin) + SlidingPaneLayout.this.f4922a.getWidth());
                i2 = Math.max(Math.min(i, width), width - SlidingPaneLayout.this.f4924c);
            } else {
                int paddingLeft = SlidingPaneLayout.this.getPaddingLeft() + layoutParams.leftMargin;
                i2 = Math.min(Math.max(i, paddingLeft), SlidingPaneLayout.this.f4924c + paddingLeft);
            }
            return i2;
        }

        @Override // androidx.customview.p039a.C0799e.AbstractC0800a
        /* renamed from: e */
        public final int mo1337e(View view, int i) {
            return view.getTop();
        }
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4929h = -858993460;
        this.f4939r = true;
        this.f4940s = new Rect();
        this.f4928g = new ArrayList<>();
        float f = context.getResources().getDisplayMetrics().density;
        this.f4933l = (int) ((32.0f * f) + 0.5f);
        setWillNotDraw(false);
        C0741t.m8348a(this, new C1155a());
        C0741t.m8358a((View) this, 1);
        this.f4926e = C0799e.m8069a(this, 0.5f, new C1157c());
        this.f4926e.m8083a(f * 400.0f);
    }

    /* renamed from: a */
    private void m6687a(View view, float f, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f > 0.0f && i != 0) {
            int i2 = (int) ((((-16777216) & i) >>> 24) * f);
            if (layoutParams.f4948d == null) {
                layoutParams.f4948d = new Paint();
            }
            layoutParams.f4948d.setColorFilter(new PorterDuffColorFilter((i2 << 24) | (i & 16777215), PorterDuff.Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, layoutParams.f4948d);
            }
            m6684b(view);
        } else if (view.getLayerType() != 0) {
            if (layoutParams.f4948d != null) {
                layoutParams.f4948d.setColorFilter(null);
            }
            RunnableC1156b bVar = new RunnableC1156b(view);
            this.f4928g.add(bVar);
            C0741t.m8344a(this, bVar);
        }
    }

    /* renamed from: a */
    private boolean m6690a(float f) {
        int i;
        if (!this.f4934m) {
            return false;
        }
        boolean b = m6686b();
        LayoutParams layoutParams = (LayoutParams) this.f4922a.getLayoutParams();
        if (b) {
            i = (int) (getWidth() - (((getPaddingRight() + layoutParams.rightMargin) + (f * this.f4924c)) + this.f4922a.getWidth()));
        } else {
            i = (int) (getPaddingLeft() + layoutParams.leftMargin + (f * this.f4924c));
        }
        C0799e eVar = this.f4926e;
        View view = this.f4922a;
        if (!eVar.m8071a(view, i, view.getTop())) {
            return false;
        }
        m6691a();
        C0741t.m8329e(this);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m6685b(float r6) {
        /*
            Method dump skipped, instructions count: 199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.m6685b(float):void");
    }

    /* renamed from: c */
    private boolean m6683c() {
        if (!this.f4939r && !m6690a(0.0f)) {
            return false;
        }
        this.f4927f = false;
        return true;
    }

    /* renamed from: a */
    final void m6691a() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    /* renamed from: a */
    final void m6689a(int i) {
        if (this.f4922a == null) {
            this.f4923b = 0.0f;
            return;
        }
        boolean b = m6686b();
        LayoutParams layoutParams = (LayoutParams) this.f4922a.getLayoutParams();
        int width = this.f4922a.getWidth();
        int i2 = i;
        if (b) {
            i2 = (getWidth() - i) - width;
        }
        this.f4923b = (i2 - ((b ? getPaddingRight() : getPaddingLeft()) + (b ? layoutParams.rightMargin : layoutParams.leftMargin))) / this.f4924c;
        if (this.f4936o != 0) {
            m6685b(this.f4923b);
        }
        if (layoutParams.f4947c) {
            m6687a(this.f4922a, this.f4923b, this.f4929h);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x014e A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void m6688a(android.view.View r4) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.m6688a(android.view.View):void");
    }

    /* renamed from: b */
    final void m6684b(View view) {
        Field field;
        if (Build.VERSION.SDK_INT >= 17) {
            C0741t.m8354a(view, ((LayoutParams) view.getLayoutParams()).f4948d);
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            if (!this.f4943v) {
                try {
                    this.f4941t = View.class.getDeclaredMethod("getDisplayList", null);
                } catch (NoSuchMethodException e) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", e);
                }
                try {
                    this.f4942u = View.class.getDeclaredField("mRecreateDisplayList");
                    this.f4942u.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", e2);
                }
                this.f4943v = true;
            }
            if (this.f4941t == null || (field = this.f4942u) == null) {
                view.invalidate();
                return;
            }
            try {
                field.setBoolean(view, true);
                this.f4941t.invoke(view, null);
            } catch (Exception e3) {
                Log.e("SlidingPaneLayout", "Error refreshing display list state", e3);
            }
        }
        C0741t.m8357a(this, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    /* renamed from: b */
    final boolean m6686b() {
        return C0741t.m8325g(this) == 1;
    }

    /* renamed from: c */
    final boolean m6682c(View view) {
        if (view == null) {
            return false;
        }
        return this.f4934m && ((LayoutParams) view.getLayoutParams()).f4947c && this.f4923b > 0.0f;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (!this.f4926e.m8050g()) {
            return;
        }
        if (!this.f4934m) {
            this.f4926e.m8051f();
        } else {
            C0741t.m8329e(this);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        super.draw(canvas);
        Drawable drawable = m6686b() ? this.f4932k : this.f4931j;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt != null && drawable != null) {
            int top = childAt.getTop();
            int bottom = childAt.getBottom();
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (m6686b()) {
                i2 = childAt.getRight();
                i = intrinsicWidth + i2;
            } else {
                int left = childAt.getLeft();
                i = left;
                i2 = left - intrinsicWidth;
            }
            drawable.setBounds(i2, top, i, bottom);
            drawable.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (this.f4934m && !layoutParams.f4946b && this.f4922a != null) {
            canvas.getClipBounds(this.f4940s);
            if (m6686b()) {
                Rect rect = this.f4940s;
                rect.left = Math.max(rect.left, this.f4922a.getRight());
            } else {
                Rect rect2 = this.f4940s;
                rect2.right = Math.min(rect2.right, this.f4922a.getLeft());
            }
            canvas.clipRect(this.f4940s);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return drawChild;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f4939r = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f4939r = true;
        int size = this.f4928g.size();
        for (int i = 0; i < size; i++) {
            this.f4928g.get(i).run();
        }
        this.f4928g.clear();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View childAt;
        int actionMasked = motionEvent.getActionMasked();
        if (!this.f4934m && actionMasked == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            this.f4927f = !C0799e.m8059b(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (!this.f4934m || (this.f4925d && actionMasked != 0)) {
            this.f4926e.m8053e();
            return super.onInterceptTouchEvent(motionEvent);
        } else if (actionMasked == 3 || actionMasked == 1) {
            this.f4926e.m8053e();
            return false;
        } else {
            if (actionMasked == 0) {
                this.f4925d = false;
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.f4937p = x;
                this.f4938q = y;
                if (C0799e.m8059b(this.f4922a, (int) x, (int) y) && m6682c(this.f4922a)) {
                    z = true;
                    return this.f4926e.m8074a(motionEvent) || z;
                }
            } else if (actionMasked == 2) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                float abs = Math.abs(x2 - this.f4937p);
                float abs2 = Math.abs(y2 - this.f4938q);
                if (abs > this.f4926e.m8055d() && abs2 > abs) {
                    this.f4926e.m8053e();
                    this.f4925d = true;
                    return false;
                }
            }
            z = false;
            if (this.f4926e.m8074a(motionEvent)) {
                return true;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean b = m6686b();
        C0799e eVar = this.f4926e;
        if (b) {
            eVar.m8078a(2);
        } else {
            eVar.m8078a(1);
        }
        int i9 = i3 - i;
        int paddingRight = b ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = b ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f4939r) {
            this.f4923b = (!this.f4934m || !this.f4927f) ? 0.0f : 1.0f;
        }
        int i10 = paddingRight;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.f4946b) {
                    int i12 = layoutParams.leftMargin;
                    int i13 = layoutParams.rightMargin;
                    int i14 = i9 - paddingLeft;
                    int min = (Math.min(paddingRight, i14 - this.f4933l) - i10) - (i12 + i13);
                    this.f4924c = min;
                    int i15 = b ? layoutParams.rightMargin : layoutParams.leftMargin;
                    layoutParams.f4947c = ((i10 + i15) + min) + (measuredWidth / 2) > i14;
                    int i16 = (int) (min * this.f4923b);
                    i10 = i15 + i16 + i10;
                    this.f4923b = i16 / this.f4924c;
                    i5 = 0;
                } else {
                    i5 = (!this.f4934m || (i8 = this.f4936o) == 0) ? 0 : (int) ((1.0f - this.f4923b) * i8);
                    i10 = paddingRight;
                }
                if (b) {
                    i7 = (i9 - i10) + i5;
                    i6 = i7 - measuredWidth;
                } else {
                    i6 = i10 - i5;
                    i7 = i6 + measuredWidth;
                }
                childAt.layout(i6, paddingTop, i7, childAt.getMeasuredHeight() + paddingTop);
                paddingRight += childAt.getWidth();
            }
        }
        if (this.f4939r) {
            if (this.f4934m) {
                if (this.f4936o != 0) {
                    m6685b(this.f4923b);
                }
                if (((LayoutParams) this.f4922a.getLayoutParams()).f4947c) {
                    m6687a(this.f4922a, this.f4923b, this.f4929h);
                }
            } else {
                for (int i17 = 0; i17 < childCount; i17++) {
                    m6687a(getChildAt(i17), 0.0f, this.f4929h);
                }
            }
            m6688a(this.f4922a);
        }
        this.f4939r = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0239  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 1056
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.SlidingPaneLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m8047a());
        if (!savedState.f4949a) {
            m6683c();
        } else if (this.f4939r || m6690a(1.0f)) {
            this.f4927f = true;
        }
        this.f4927f = savedState.f4949a;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        boolean z = this.f4934m;
        savedState.f4949a = z ? !z || this.f4923b == 1.0f : this.f4927f;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.f4939r = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f4934m) {
            return super.onTouchEvent(motionEvent);
        }
        this.f4926e.m8061b(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.f4937p = x;
            this.f4938q = y;
            return true;
        } else if (actionMasked != 1 || !m6682c(this.f4922a)) {
            return true;
        } else {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float f = x2 - this.f4937p;
            float f2 = y2 - this.f4938q;
            int d = this.f4926e.m8055d();
            if ((f * f) + (f2 * f2) >= d * d || !C0799e.m8059b(this.f4922a, (int) x2, (int) y2)) {
                return true;
            }
            m6683c();
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!isInTouchMode() && !this.f4934m) {
            this.f4927f = view == this.f4922a;
        }
    }
}
