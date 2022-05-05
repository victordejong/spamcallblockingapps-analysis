package androidx.appcompat.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.C0247a;
import androidx.core.p037g.C0712aa;
import androidx.core.p037g.C0741t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContextView.class */
public class ActionBarContextView extends AbstractC0426a {

    /* renamed from: g */
    private CharSequence f1770g;

    /* renamed from: h */
    private CharSequence f1771h;

    /* renamed from: i */
    private View f1772i;

    /* renamed from: j */
    private View f1773j;

    /* renamed from: k */
    private LinearLayout f1774k;

    /* renamed from: l */
    private TextView f1775l;

    /* renamed from: m */
    private TextView f1776m;

    /* renamed from: n */
    private int f1777n;

    /* renamed from: o */
    private int f1778o;

    /* renamed from: p */
    private boolean f1779p;

    /* renamed from: q */
    private int f1780q;

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0247a.C0248a.f569j);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0484bm a = C0484bm.m9092a(context, attributeSet, C0247a.C0257j.f1011y, i, 0);
        C0741t.m8351a(this, a.m9099a(C0247a.C0257j.f1012z));
        this.f1777n = a.m9082f(C0247a.C0257j.f743D, 0);
        this.f1778o = a.m9082f(C0247a.C0257j.f742C, 0);
        this.f2167e = a.m9084e(C0247a.C0257j.f741B, 0);
        this.f1780q = a.m9082f(C0247a.C0257j.f740A, C0247a.C0254g.f702d);
        a.m9100a();
    }

    /* renamed from: g */
    private void m9514g() {
        if (this.f1774k == null) {
            LayoutInflater.from(getContext()).inflate(C0247a.C0254g.f699a, this);
            this.f1774k = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f1775l = (TextView) this.f1774k.findViewById(C0247a.C0253f.f677e);
            this.f1776m = (TextView) this.f1774k.findViewById(C0247a.C0253f.f676d);
            if (this.f1777n != 0) {
                this.f1775l.setTextAppearance(getContext(), this.f1777n);
            }
            if (this.f1778o != 0) {
                this.f1776m.setTextAppearance(getContext(), this.f1778o);
            }
        }
        this.f1775l.setText(this.f1770g);
        this.f1776m.setText(this.f1771h);
        boolean isEmpty = TextUtils.isEmpty(this.f1770g);
        boolean z = !TextUtils.isEmpty(this.f1771h);
        this.f1776m.setVisibility(z ? 0 : 8);
        LinearLayout linearLayout = this.f1774k;
        int i = 0;
        if (!(!isEmpty)) {
            i = z ? 0 : 8;
        }
        linearLayout.setVisibility(i);
        if (this.f1774k.getParent() == null) {
            addView(this.f1774k);
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0426a
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ C0712aa mo9243a(int i, long j) {
        return super.mo9243a(i, j);
    }

    @Override // androidx.appcompat.widget.AbstractC0426a
    /* renamed from: a */
    public final void mo9245a(int i) {
        this.f2167e = i;
    }

    /* renamed from: a */
    public final void m9524a(View view) {
        LinearLayout linearLayout;
        View view2 = this.f1773j;
        if (view2 != null) {
            removeView(view2);
        }
        this.f1773j = view;
        if (!(view == null || (linearLayout = this.f1774k) == null)) {
            removeView(linearLayout);
            this.f1774k = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x002c, code lost:
        if (r0.getParent() == null) goto L_0x001d;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9523a(androidx.appcompat.view.AbstractC0343b r7) {
        /*
            r6 = this;
            r0 = r6
            android.view.View r0 = r0.f1772i
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0028
            r0 = r6
            r1 = r6
            android.content.Context r1 = r1.getContext()
            android.view.LayoutInflater r1 = android.view.LayoutInflater.from(r1)
            r2 = r6
            int r2 = r2.f1780q
            r3 = r6
            r4 = 0
            android.view.View r1 = r1.inflate(r2, r3, r4)
            r0.f1772i = r1
        L_0x001d:
            r0 = r6
            r1 = r6
            android.view.View r1 = r1.f1772i
            r0.addView(r1)
            goto L_0x0032
        L_0x0028:
            r0 = r8
            android.view.ViewParent r0 = r0.getParent()
            if (r0 != 0) goto L_0x0032
            goto L_0x001d
        L_0x0032:
            r0 = r6
            android.view.View r0 = r0.f1772i
            int r1 = androidx.appcompat.C0247a.C0253f.f681i
            android.view.View r0 = r0.findViewById(r1)
            androidx.appcompat.widget.c r1 = new androidx.appcompat.widget.c
            r2 = r1
            r3 = r6
            r4 = r7
            r2.<init>(r3, r4)
            r0.setOnClickListener(r1)
            r0 = r7
            android.view.Menu r0 = r0.mo9687b()
            androidx.appcompat.view.menu.k r0 = (androidx.appcompat.view.menu.C0371k) r0
            r8 = r0
            r0 = r6
            androidx.appcompat.widget.ActionMenuPresenter r0 = r0.f2166d
            if (r0 == 0) goto L_0x005f
            r0 = r6
            androidx.appcompat.widget.ActionMenuPresenter r0 = r0.f2166d
            boolean r0 = r0.m9481j()
        L_0x005f:
            r0 = r6
            androidx.appcompat.widget.ActionMenuPresenter r1 = new androidx.appcompat.widget.ActionMenuPresenter
            r2 = r1
            r3 = r6
            android.content.Context r3 = r3.getContext()
            r2.<init>(r3)
            r0.f2166d = r1
            r0 = r6
            androidx.appcompat.widget.ActionMenuPresenter r0 = r0.f2166d
            r0.m9487e()
            android.view.ViewGroup$LayoutParams r0 = new android.view.ViewGroup$LayoutParams
            r1 = r0
            r2 = -2
            r3 = -1
            r1.<init>(r2, r3)
            r7 = r0
            r0 = r8
            r1 = r6
            androidx.appcompat.widget.ActionMenuPresenter r1 = r1.f2166d
            r2 = r6
            android.content.Context r2 = r2.f2164b
            r0.m9613a(r1, r2)
            r0 = r6
            r1 = r6
            androidx.appcompat.widget.ActionMenuPresenter r1 = r1.f2166d
            r2 = r6
            androidx.appcompat.view.menu.t r1 = r1.mo9498a(r2)
            androidx.appcompat.widget.ActionMenuView r1 = (androidx.appcompat.widget.ActionMenuView) r1
            r0.f2165c = r1
            r0 = r6
            androidx.appcompat.widget.ActionMenuView r0 = r0.f2165c
            r1 = 0
            androidx.core.p037g.C0741t.m8351a(r0, r1)
            r0 = r6
            r1 = r6
            androidx.appcompat.widget.ActionMenuView r1 = r1.f2165c
            r2 = r7
            r0.addView(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContextView.m9523a(androidx.appcompat.view.b):void");
    }

    /* renamed from: a */
    public final void m9522a(CharSequence charSequence) {
        this.f1770g = charSequence;
        m9514g();
    }

    /* renamed from: a */
    public final void m9521a(boolean z) {
        if (z != this.f1779p) {
            requestLayout();
        }
        this.f1779p = z;
    }

    @Override // androidx.appcompat.widget.AbstractC0426a
    /* renamed from: a */
    public final boolean mo9246a() {
        if (this.f2166d != null) {
            return this.f2166d.m9483h();
        }
        return false;
    }

    /* renamed from: b */
    public final CharSequence m9520b() {
        return this.f1770g;
    }

    /* renamed from: b */
    public final void m9519b(CharSequence charSequence) {
        this.f1771h = charSequence;
        m9514g();
    }

    /* renamed from: c */
    public final CharSequence m9518c() {
        return this.f1771h;
    }

    /* renamed from: d */
    public final void m9517d() {
        if (this.f1772i == null) {
            m9516e();
        }
    }

    /* renamed from: e */
    public final void m9516e() {
        removeAllViews();
        this.f1773j = null;
        this.f2165c = null;
    }

    /* renamed from: f */
    public final boolean m9515f() {
        return this.f1779p;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f2166d != null) {
            this.f2166d.m9482i();
            this.f2166d.m9480k();
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0426a, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            accessibilityEvent.setSource(this);
            accessibilityEvent.setClassName(getClass().getName());
            accessibilityEvent.setPackageName(getContext().getPackageName());
            accessibilityEvent.setContentDescription(this.f1770g);
            return;
        }
        super.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean a = C0499ca.m9031a(this);
        int paddingRight = a ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.f1772i;
        int i5 = paddingRight;
        if (view != null) {
            i5 = paddingRight;
            if (view.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1772i.getLayoutParams();
                int i6 = a ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
                int i7 = a ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
                int a2 = m9244a(paddingRight, i6, a);
                i5 = m9244a(a2 + m9241a(this.f1772i, a2, paddingTop, paddingTop2, a), i7, a);
            }
        }
        LinearLayout linearLayout = this.f1774k;
        int i8 = i5;
        if (linearLayout != null) {
            i8 = i5;
            if (this.f1773j == null) {
                i8 = i5;
                if (linearLayout.getVisibility() != 8) {
                    i8 = i5 + m9241a(this.f1774k, i5, paddingTop, paddingTop2, a);
                }
            }
        }
        View view2 = this.f1773j;
        if (view2 != null) {
            m9241a(view2, i8, paddingTop, paddingTop2, a);
        }
        int paddingLeft = a ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        if (this.f2165c != null) {
            m9241a(this.f2165c, paddingLeft, paddingTop, paddingTop2, !a);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = 1073741824;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        } else if (View.MeasureSpec.getMode(i2) != 0) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = this.f2167e > 0 ? this.f2167e : View.MeasureSpec.getSize(i2);
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int i4 = size2 - paddingTop;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
            View view = this.f1772i;
            int i5 = paddingLeft;
            if (view != null) {
                int a = m9242a(view, paddingLeft, makeMeasureSpec);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1772i.getLayoutParams();
                i5 = a - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
            }
            int i6 = i5;
            if (this.f2165c != null) {
                i6 = i5;
                if (this.f2165c.getParent() == this) {
                    i6 = m9242a(this.f2165c, i5, makeMeasureSpec);
                }
            }
            LinearLayout linearLayout = this.f1774k;
            int i7 = i6;
            if (linearLayout != null) {
                i7 = i6;
                if (this.f1773j == null) {
                    if (this.f1779p) {
                        this.f1774k.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.f1774k.getMeasuredWidth();
                        boolean z = measuredWidth <= i6;
                        i7 = i6;
                        if (z) {
                            i7 = i6 - measuredWidth;
                        }
                        this.f1774k.setVisibility(z ? 0 : 8);
                    } else {
                        i7 = m9242a(linearLayout, i6, makeMeasureSpec);
                    }
                }
            }
            View view2 = this.f1773j;
            if (view2 != null) {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                int i8 = layoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
                int i9 = i7;
                if (layoutParams.width >= 0) {
                    i9 = Math.min(layoutParams.width, i7);
                }
                if (layoutParams.height == -2) {
                    i3 = Integer.MIN_VALUE;
                }
                int i10 = i4;
                if (layoutParams.height >= 0) {
                    i10 = Math.min(layoutParams.height, i4);
                }
                this.f1773j.measure(View.MeasureSpec.makeMeasureSpec(i9, i8), View.MeasureSpec.makeMeasureSpec(i10, i3));
            }
            if (this.f2167e <= 0) {
                int childCount = getChildCount();
                int i11 = 0;
                for (int i12 = 0; i12 < childCount; i12++) {
                    int measuredHeight = getChildAt(i12).getMeasuredHeight() + paddingTop;
                    i11 = i11;
                    if (measuredHeight > i11) {
                        i11 = measuredHeight;
                    }
                }
                setMeasuredDimension(size, i11);
                return;
            }
            setMeasuredDimension(size, size2);
        } else {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
    }

    @Override // androidx.appcompat.widget.AbstractC0426a, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.AbstractC0426a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
