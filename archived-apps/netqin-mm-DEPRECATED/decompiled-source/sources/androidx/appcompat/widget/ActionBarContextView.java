package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import p012b.p016b.C0574a;
import p012b.p016b.C0579f;
import p012b.p016b.C0580g;
import p012b.p016b.C0583j;
import p012b.p016b.p024p.AbstractC0622b;
import p012b.p016b.p024p.p025j.C0647g;
import p012b.p016b.p026q.AbstractC0673a;
import p012b.p016b.p026q.C0691f0;
import p012b.p016b.p026q.C0708l0;
import p012b.p042i.p054p.C1002u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContextView.class */
public class ActionBarContextView extends AbstractC0673a {

    /* renamed from: i */
    public CharSequence f412i;

    /* renamed from: j */
    public CharSequence f413j;

    /* renamed from: k */
    public View f414k;

    /* renamed from: l */
    public View f415l;

    /* renamed from: m */
    public LinearLayout f416m;

    /* renamed from: n */
    public TextView f417n;

    /* renamed from: o */
    public TextView f418o;

    /* renamed from: p */
    public int f419p;

    /* renamed from: q */
    public int f420q;

    /* renamed from: r */
    public boolean f421r;

    /* renamed from: s */
    public int f422s;

    /* renamed from: androidx.appcompat.widget.ActionBarContextView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContextView$a.class */
    public class View$OnClickListenerC0109a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC0622b f423a;

        public View$OnClickListenerC0109a(AbstractC0622b bVar) {
            this.f423a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f423a.mo36695a();
        }
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0574a.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0691f0 a = C0691f0.m36414a(context, attributeSet, C0583j.ActionMode, i, 0);
        C1002u.m35240a(this, a.m36412b(C0583j.ActionMode_background));
        this.f419p = a.m36401g(C0583j.ActionMode_titleTextStyle, 0);
        this.f420q = a.m36401g(C0583j.ActionMode_subtitleTextStyle, 0);
        this.f3346e = a.m36403f(C0583j.ActionMode_height, 0);
        this.f422s = a.m36401g(C0583j.ActionMode_closeItemLayout, C0580g.abc_action_mode_close_item_material);
        a.m36413b();
    }

    /* renamed from: a */
    public void m39083a() {
        if (this.f414k == null) {
            m39079d();
        }
    }

    /* renamed from: a */
    public void m39082a(AbstractC0622b bVar) {
        View view = this.f414k;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.f422s, (ViewGroup) this, false);
            this.f414k = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.f414k);
        }
        this.f414k.findViewById(C0579f.action_mode_close_button).setOnClickListener(new View$OnClickListenerC0109a(bVar));
        C0647g gVar = (C0647g) bVar.mo36687c();
        ActionMenuPresenter actionMenuPresenter = this.f3345d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m39060c();
        }
        ActionMenuPresenter actionMenuPresenter2 = new ActionMenuPresenter(getContext());
        this.f3345d = actionMenuPresenter2;
        actionMenuPresenter2.m39055d(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        gVar.m36609a(this.f3345d, this.f3343b);
        ActionMenuView actionMenuView = (ActionMenuView) this.f3345d.mo36644b(this);
        this.f3344c = actionMenuView;
        C1002u.m35240a(actionMenuView, (Drawable) null);
        addView(this.f3344c, layoutParams);
    }

    /* renamed from: b */
    public final void m39081b() {
        if (this.f416m == null) {
            LayoutInflater.from(getContext()).inflate(C0580g.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f416m = linearLayout;
            this.f417n = (TextView) linearLayout.findViewById(C0579f.action_bar_title);
            this.f418o = (TextView) this.f416m.findViewById(C0579f.action_bar_subtitle);
            if (this.f419p != 0) {
                this.f417n.setTextAppearance(getContext(), this.f419p);
            }
            if (this.f420q != 0) {
                this.f418o.setTextAppearance(getContext(), this.f420q);
            }
        }
        this.f417n.setText(this.f412i);
        this.f418o.setText(this.f413j);
        boolean isEmpty = TextUtils.isEmpty(this.f412i);
        boolean z = !TextUtils.isEmpty(this.f413j);
        this.f418o.setVisibility(z ? 0 : 8);
        LinearLayout linearLayout2 = this.f416m;
        int i = 0;
        if (!(!isEmpty)) {
            i = z ? 0 : 8;
        }
        linearLayout2.setVisibility(i);
        if (this.f416m.getParent() == null) {
            addView(this.f416m);
        }
    }

    /* renamed from: c */
    public boolean m39080c() {
        return this.f421r;
    }

    /* renamed from: d */
    public void m39079d() {
        removeAllViews();
        this.f415l = null;
        this.f3344c = null;
    }

    /* renamed from: e */
    public boolean m39078e() {
        ActionMenuPresenter actionMenuPresenter = this.f3345d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.m39047i();
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // p012b.p016b.p026q.AbstractC0673a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // p012b.p016b.p026q.AbstractC0673a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f413j;
    }

    public CharSequence getTitle() {
        return this.f412i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.f3345d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m39054e();
            this.f3345d.m39052f();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            accessibilityEvent.setSource(this);
            accessibilityEvent.setClassName(ActionBarContextView.class.getName());
            accessibilityEvent.setPackageName(getContext().getPackageName());
            accessibilityEvent.setContentDescription(this.f412i);
            return;
        }
        super.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean a = C0708l0.m36319a(this);
        int paddingRight = a ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.f414k;
        int i5 = paddingRight;
        if (view != null) {
            i5 = paddingRight;
            if (view.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f414k.getLayoutParams();
                int i6 = a ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
                int i7 = a ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
                int a2 = AbstractC0673a.m36491a(paddingRight, i6, a);
                i5 = AbstractC0673a.m36491a(a2 + m36488a(this.f414k, a2, paddingTop, paddingTop2, a), i7, a);
            }
        }
        LinearLayout linearLayout = this.f416m;
        int i8 = i5;
        if (linearLayout != null) {
            i8 = i5;
            if (this.f415l == null) {
                i8 = i5;
                if (linearLayout.getVisibility() != 8) {
                    i8 = i5 + m36488a(this.f416m, i5, paddingTop, paddingTop2, a);
                }
            }
        }
        View view2 = this.f415l;
        if (view2 != null) {
            m36488a(view2, i8, paddingTop, paddingTop2, a);
        }
        int paddingLeft = a ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        ActionMenuView actionMenuView = this.f3344c;
        if (actionMenuView != null) {
            m36488a(actionMenuView, paddingLeft, paddingTop, paddingTop2, !a);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = 1073741824;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        } else if (View.MeasureSpec.getMode(i2) != 0) {
            int size = View.MeasureSpec.getSize(i);
            int i4 = this.f3346e;
            if (i4 <= 0) {
                i4 = View.MeasureSpec.getSize(i2);
            }
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int i5 = i4 - paddingTop;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE);
            View view = this.f414k;
            int i6 = paddingLeft;
            if (view != null) {
                int a = m36489a(view, paddingLeft, makeMeasureSpec, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f414k.getLayoutParams();
                i6 = a - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
            }
            ActionMenuView actionMenuView = this.f3344c;
            int i7 = i6;
            if (actionMenuView != null) {
                i7 = i6;
                if (actionMenuView.getParent() == this) {
                    i7 = m36489a(this.f3344c, i6, makeMeasureSpec, 0);
                }
            }
            LinearLayout linearLayout = this.f416m;
            int i8 = i7;
            if (linearLayout != null) {
                i8 = i7;
                if (this.f415l == null) {
                    if (this.f421r) {
                        this.f416m.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.f416m.getMeasuredWidth();
                        boolean z = measuredWidth <= i7;
                        i8 = i7;
                        if (z) {
                            i8 = i7 - measuredWidth;
                        }
                        this.f416m.setVisibility(z ? 0 : 8);
                    } else {
                        i8 = m36489a(linearLayout, i7, makeMeasureSpec, 0);
                    }
                }
            }
            View view2 = this.f415l;
            if (view2 != null) {
                ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                int i9 = layoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
                int i10 = layoutParams.width;
                int i11 = i8;
                if (i10 >= 0) {
                    i11 = Math.min(i10, i8);
                }
                if (layoutParams.height == -2) {
                    i3 = Integer.MIN_VALUE;
                }
                int i12 = layoutParams.height;
                int i13 = i5;
                if (i12 >= 0) {
                    i13 = Math.min(i12, i5);
                }
                this.f415l.measure(View.MeasureSpec.makeMeasureSpec(i11, i9), View.MeasureSpec.makeMeasureSpec(i13, i3));
            }
            if (this.f3346e <= 0) {
                int childCount = getChildCount();
                int i14 = 0;
                for (int i15 = 0; i15 < childCount; i15++) {
                    int measuredHeight = getChildAt(i15).getMeasuredHeight() + paddingTop;
                    i14 = i14;
                    if (measuredHeight > i14) {
                        i14 = measuredHeight;
                    }
                }
                setMeasuredDimension(size, i14);
                return;
            }
            setMeasuredDimension(size, i4);
        } else {
            throw new IllegalStateException(ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
    }

    @Override // p012b.p016b.p026q.AbstractC0673a
    public void setContentHeight(int i) {
        this.f3346e = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f415l;
        if (view2 != null) {
            removeView(view2);
        }
        this.f415l = view;
        if (!(view == null || (linearLayout = this.f416m) == null)) {
            removeView(linearLayout);
            this.f416m = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f413j = charSequence;
        m39081b();
    }

    public void setTitle(CharSequence charSequence) {
        this.f412i = charSequence;
        m39081b();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.f421r) {
            requestLayout();
        }
        this.f421r = z;
    }

    @Override // p012b.p016b.p026q.AbstractC0673a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
