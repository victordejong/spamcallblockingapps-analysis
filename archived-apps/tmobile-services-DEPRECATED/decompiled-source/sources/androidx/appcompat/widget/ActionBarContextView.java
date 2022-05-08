package androidx.appcompat.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.core.view.ViewCompat;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionBarContextView.class */
public class ActionBarContextView extends AbsActionBarView {

    /* renamed from: n */
    private CharSequence f767n;

    /* renamed from: o */
    private CharSequence f768o;

    /* renamed from: p */
    private View f769p;

    /* renamed from: q */
    private View f770q;

    /* renamed from: r */
    private LinearLayout f771r;

    /* renamed from: s */
    private TextView f772s;

    /* renamed from: t */
    private TextView f773t;

    /* renamed from: u */
    private int f774u;

    /* renamed from: v */
    private int f775v;

    /* renamed from: w */
    private boolean f776w;

    /* renamed from: x */
    private int f777x;

    public ActionBarContextView(@NonNull Context context) {
        this(context, null);
    }

    public ActionBarContextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0042R.attr.actionModeStyle);
    }

    public ActionBarContextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TintTypedArray v = TintTypedArray.m21244v(context, attributeSet, C0042R.styleable.ActionMode, i, 0);
        ViewCompat.m19177q0(this, v.m21259g(C0042R.styleable.ActionMode_background));
        this.f774u = v.m21252n(C0042R.styleable.ActionMode_titleTextStyle, 0);
        this.f775v = v.m21252n(C0042R.styleable.ActionMode_subtitleTextStyle, 0);
        this.f748j = v.m21253m(C0042R.styleable.ActionMode_height, 0);
        this.f777x = v.m21252n(C0042R.styleable.ActionMode_closeItemLayout, C0042R.layout.abc_action_mode_close_item_material);
        v.m21243w();
    }

    /* renamed from: j */
    private void m21766j() {
        if (this.f771r == null) {
            LayoutInflater.from(getContext()).inflate(C0042R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f771r = linearLayout;
            this.f772s = (TextView) linearLayout.findViewById(C0042R.C0045id.action_bar_title);
            this.f773t = (TextView) this.f771r.findViewById(C0042R.C0045id.action_bar_subtitle);
            if (this.f774u != 0) {
                this.f772s.setTextAppearance(getContext(), this.f774u);
            }
            if (this.f775v != 0) {
                this.f773t.setTextAppearance(getContext(), this.f775v);
            }
        }
        this.f772s.setText(this.f767n);
        this.f773t.setText(this.f768o);
        boolean isEmpty = TextUtils.isEmpty(this.f767n);
        boolean z = !TextUtils.isEmpty(this.f768o);
        this.f773t.setVisibility(z ? 0 : 8);
        LinearLayout linearLayout2 = this.f771r;
        int i = 0;
        if (!(!isEmpty)) {
            i = z ? 0 : 8;
        }
        linearLayout2.setVisibility(i);
        if (this.f771r.getParent() == null) {
            addView(this.f771r);
        }
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    /* renamed from: g */
    public boolean mo21769g() {
        ActionMenuPresenter actionMenuPresenter = this.f747i;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.m21731N();
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f768o;
    }

    public CharSequence getTitle() {
        return this.f767n;
    }

    /* renamed from: h */
    public void m21768h() {
        if (this.f769p == null) {
            m21764l();
        }
    }

    /* renamed from: i */
    public void m21767i(final ActionMode actionMode) {
        View view = this.f769p;
        if (view == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(this.f777x, (ViewGroup) this, false);
            this.f769p = inflate;
            addView(inflate);
        } else if (view.getParent() == null) {
            addView(this.f769p);
        }
        this.f769p.findViewById(C0042R.C0045id.action_mode_close_button).setOnClickListener(new View.OnClickListener(this) { // from class: androidx.appcompat.widget.ActionBarContextView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                actionMode.mo21976c();
            }
        });
        MenuBuilder menuBuilder = (MenuBuilder) actionMode.mo21974e();
        ActionMenuPresenter actionMenuPresenter = this.f747i;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m21743B();
        }
        ActionMenuPresenter actionMenuPresenter2 = new ActionMenuPresenter(getContext());
        this.f747i = actionMenuPresenter2;
        actionMenuPresenter2.m21732M(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        menuBuilder.m21872c(this.f747i, this.f745g);
        ActionMenuView actionMenuView = (ActionMenuView) this.f747i.mo21727r(this);
        this.f746h = actionMenuView;
        ViewCompat.m19177q0(actionMenuView, null);
        addView(this.f746h, layoutParams);
    }

    /* renamed from: k */
    public boolean m21765k() {
        return this.f776w;
    }

    /* renamed from: l */
    public void m21764l() {
        removeAllViews();
        this.f770q = null;
        this.f746h = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.f747i;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m21740E();
            this.f747i.m21739F();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            accessibilityEvent.setSource(this);
            accessibilityEvent.setClassName(ActionBarContextView.class.getName());
            accessibilityEvent.setPackageName(getContext().getPackageName());
            accessibilityEvent.setContentDescription(this.f767n);
            return;
        }
        super.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean b = ViewUtils.m21149b(this);
        int paddingRight = b ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        View view = this.f769p;
        int i5 = paddingRight;
        if (view != null) {
            i5 = paddingRight;
            if (view.getVisibility() != 8) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f769p.getLayoutParams();
                int i6 = b ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
                int i7 = b ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
                int d = AbsActionBarView.m21775d(paddingRight, i6, b);
                i5 = AbsActionBarView.m21775d(d + m21774e(this.f769p, d, paddingTop, paddingTop2, b), i7, b);
            }
        }
        LinearLayout linearLayout = this.f771r;
        int i8 = i5;
        if (linearLayout != null) {
            i8 = i5;
            if (this.f770q == null) {
                i8 = i5;
                if (linearLayout.getVisibility() != 8) {
                    i8 = i5 + m21774e(this.f771r, i5, paddingTop, paddingTop2, b);
                }
            }
        }
        View view2 = this.f770q;
        if (view2 != null) {
            m21774e(view2, i8, paddingTop, paddingTop2, b);
        }
        int paddingLeft = b ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        ActionMenuView actionMenuView = this.f746h;
        if (actionMenuView != null) {
            m21774e(actionMenuView, paddingLeft, paddingTop, paddingTop2, !b);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = 1073741824;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        } else if (View.MeasureSpec.getMode(i2) != 0) {
            int size = View.MeasureSpec.getSize(i);
            int i4 = this.f748j;
            if (i4 <= 0) {
                i4 = View.MeasureSpec.getSize(i2);
            }
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int i5 = i4 - paddingTop;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE);
            View view = this.f769p;
            int i6 = paddingLeft;
            if (view != null) {
                int c = m21776c(view, paddingLeft, makeMeasureSpec, 0);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f769p.getLayoutParams();
                i6 = c - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
            }
            ActionMenuView actionMenuView = this.f746h;
            int i7 = i6;
            if (actionMenuView != null) {
                i7 = i6;
                if (actionMenuView.getParent() == this) {
                    i7 = m21776c(this.f746h, i6, makeMeasureSpec, 0);
                }
            }
            LinearLayout linearLayout = this.f771r;
            int i8 = i7;
            if (linearLayout != null) {
                i8 = i7;
                if (this.f770q == null) {
                    if (this.f776w) {
                        this.f771r.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                        int measuredWidth = this.f771r.getMeasuredWidth();
                        boolean z = measuredWidth <= i7;
                        i8 = i7;
                        if (z) {
                            i8 = i7 - measuredWidth;
                        }
                        this.f771r.setVisibility(z ? 0 : 8);
                    } else {
                        i8 = m21776c(linearLayout, i7, makeMeasureSpec, 0);
                    }
                }
            }
            View view2 = this.f770q;
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
                this.f770q.measure(View.MeasureSpec.makeMeasureSpec(i11, i9), View.MeasureSpec.makeMeasureSpec(i13, i3));
            }
            if (this.f748j <= 0) {
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

    @Override // androidx.appcompat.widget.AbsActionBarView
    public void setContentHeight(int i) {
        this.f748j = i;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f770q;
        if (view2 != null) {
            removeView(view2);
        }
        this.f770q = view;
        if (!(view == null || (linearLayout = this.f771r) == null)) {
            removeView(linearLayout);
            this.f771r = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f768o = charSequence;
        m21766j();
    }

    public void setTitle(CharSequence charSequence) {
        this.f767n = charSequence;
        m21766j();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.f776w) {
            requestLayout();
        }
        this.f776w = z;
    }

    @Override // androidx.appcompat.widget.AbsActionBarView, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
