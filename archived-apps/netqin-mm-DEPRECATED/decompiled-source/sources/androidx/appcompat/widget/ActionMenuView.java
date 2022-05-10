package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.LinearLayoutCompat;
import p012b.p016b.p024p.p025j.AbstractC0662m;
import p012b.p016b.p024p.p025j.AbstractC0664n;
import p012b.p016b.p024p.p025j.C0647g;
import p012b.p016b.p024p.p025j.C0651i;
import p012b.p016b.p026q.C0708l0;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView.class */
public class ActionMenuView extends LinearLayoutCompat implements C0647g.AbstractC0649b, AbstractC0664n {

    /* renamed from: A */
    public AbstractC0125d f489A;

    /* renamed from: p */
    public C0647g f490p;

    /* renamed from: q */
    public Context f491q;

    /* renamed from: r */
    public int f492r;

    /* renamed from: s */
    public boolean f493s;

    /* renamed from: t */
    public ActionMenuPresenter f494t;

    /* renamed from: u */
    public AbstractC0662m.AbstractC0663a f495u;

    /* renamed from: v */
    public C0647g.AbstractC0648a f496v;

    /* renamed from: w */
    public boolean f497w;

    /* renamed from: x */
    public int f498x;

    /* renamed from: y */
    public int f499y;

    /* renamed from: z */
    public int f500z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$LayoutParams.class */
    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {
        @ViewDebug.ExportedProperty

        /* renamed from: c */
        public boolean f501c;
        @ViewDebug.ExportedProperty

        /* renamed from: d */
        public int f502d;
        @ViewDebug.ExportedProperty

        /* renamed from: e */
        public int f503e;
        @ViewDebug.ExportedProperty

        /* renamed from: f */
        public boolean f504f;
        @ViewDebug.ExportedProperty

        /* renamed from: g */
        public boolean f505g;

        /* renamed from: h */
        public boolean f506h;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f501c = false;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.f501c = layoutParams.f501c;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$a.class */
    public interface AbstractC0122a {
        /* renamed from: a */
        boolean mo39033a();

        /* renamed from: b */
        boolean mo39032b();
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$b.class */
    public static class C0123b implements AbstractC0662m.AbstractC0663a {
        @Override // p012b.p016b.p024p.p025j.AbstractC0662m.AbstractC0663a
        /* renamed from: a */
        public void mo36521a(C0647g gVar, boolean z) {
        }

        @Override // p012b.p016b.p024p.p025j.AbstractC0662m.AbstractC0663a
        /* renamed from: a */
        public boolean mo36522a(C0647g gVar) {
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$c.class */
    public class C0124c implements C0647g.AbstractC0648a {
        public C0124c() {
        }

        @Override // p012b.p016b.p024p.p025j.C0647g.AbstractC0648a
        /* renamed from: a */
        public void mo36577a(C0647g gVar) {
            C0647g.AbstractC0648a aVar = ActionMenuView.this.f496v;
            if (aVar != null) {
                aVar.mo36577a(gVar);
            }
        }

        @Override // p012b.p016b.p024p.p025j.C0647g.AbstractC0648a
        /* renamed from: a */
        public boolean mo36576a(C0647g gVar, MenuItem menuItem) {
            AbstractC0125d dVar = ActionMenuView.this.f489A;
            return dVar != null && dVar.onMenuItemClick(menuItem);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$d.class */
    public interface AbstractC0125d {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f499y = (int) (56.0f * f);
        this.f500z = (int) (f * 4.0f);
        this.f491q = context;
        this.f492r = 0;
    }

    /* renamed from: b */
    public static int m39044b(View view, int i, int i2, int i3, int i4) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = true;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.m39094e();
        int i5 = 2;
        if (i2 <= 0 || (z2 && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i, Integer.MIN_VALUE), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i6 = measuredWidth / i;
            i5 = i6;
            if (measuredWidth % i != 0) {
                i5 = i6 + 1;
            }
            if (!z2 || i5 < 2) {
            }
        }
        if (layoutParams.f501c || !z2) {
            z = false;
        }
        layoutParams.f504f = z;
        layoutParams.f502d = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), makeMeasureSpec);
        return i5;
    }

    @Override // p012b.p016b.p024p.p025j.AbstractC0664n
    /* renamed from: a */
    public void mo36520a(C0647g gVar) {
        this.f490p = gVar;
    }

    /* renamed from: a */
    public void m39045a(AbstractC0662m.AbstractC0663a aVar, C0647g.AbstractC0648a aVar2) {
        this.f495u = aVar;
        this.f496v = aVar2;
    }

    @Override // p012b.p016b.p024p.p025j.C0647g.AbstractC0649b
    /* renamed from: a */
    public boolean mo36575a(C0651i iVar) {
        return this.f490p.m36613a(iVar, 0);
    }

    /* renamed from: c */
    public void m39043c() {
        ActionMenuPresenter actionMenuPresenter = this.f494t;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m39060c();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: d */
    public LayoutParams m39042d() {
        LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.f501c = true;
        return generateDefaultLayoutParams;
    }

    /* renamed from: d */
    public boolean m39041d(int i) {
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        boolean z = false;
        if (i < getChildCount()) {
            z = false;
            if (childAt instanceof AbstractC0122a) {
                z = false | ((AbstractC0122a) childAt).mo39033a();
            }
        }
        boolean z2 = z;
        if (i > 0) {
            z2 = z;
            if (childAt2 instanceof AbstractC0122a) {
                z2 = z | ((AbstractC0122a) childAt2).mo39032b();
            }
        }
        return z2;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v141 */
    /* JADX WARN: Type inference failed for: r0v142, types: [long] */
    /* JADX WARN: Type inference failed for: r0v185 */
    /* JADX WARN: Type inference failed for: r0v257 */
    /* JADX WARN: Type inference failed for: r22v13 */
    /* JADX WARN: Type inference failed for: r22v14 */
    /* JADX WARN: Type inference failed for: r22v5, types: [long] */
    /* JADX WARN: Type inference failed for: r22v6 */
    /* JADX WARN: Type inference failed for: r22v7 */
    /* JADX WARN: Type inference failed for: r33v0 */
    /* JADX WARN: Type inference failed for: r33v4 */
    /* JADX WARN: Type inference failed for: r33v5, types: [long] */
    /* JADX WARN: Type inference failed for: r33v6, types: [long] */
    /* JADX WARN: Type inference failed for: r33v7 */
    /* JADX WARN: Type inference failed for: r33v8 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m39039e(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 1192
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuView.m39039e(int, int):void");
    }

    /* renamed from: e */
    public boolean m39040e() {
        ActionMenuPresenter actionMenuPresenter = this.f494t;
        return actionMenuPresenter != null && actionMenuPresenter.m39054e();
    }

    /* renamed from: f */
    public boolean m39038f() {
        ActionMenuPresenter actionMenuPresenter = this.f494t;
        return actionMenuPresenter != null && actionMenuPresenter.m39050g();
    }

    /* renamed from: g */
    public boolean m39037g() {
        ActionMenuPresenter actionMenuPresenter = this.f494t;
        return actionMenuPresenter != null && actionMenuPresenter.m39048h();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.f629b = 16;
        return layoutParams;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        LayoutParams layoutParams2 = layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : new LayoutParams(layoutParams);
        if (layoutParams2.f629b <= 0) {
            layoutParams2.f629b = 16;
        }
        return layoutParams2;
    }

    public Menu getMenu() {
        if (this.f490p == null) {
            Context context = getContext();
            C0647g gVar = new C0647g(context);
            this.f490p = gVar;
            gVar.mo36501a(new C0124c());
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(context);
            this.f494t = actionMenuPresenter;
            actionMenuPresenter.m39055d(true);
            ActionMenuPresenter actionMenuPresenter2 = this.f494t;
            AbstractC0662m.AbstractC0663a aVar = this.f495u;
            if (aVar == null) {
                aVar = new C0123b();
            }
            actionMenuPresenter2.mo36511a(aVar);
            this.f490p.m36609a(this.f494t, this.f491q);
            this.f494t.m39062a(this);
        }
        return this.f490p;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        return this.f494t.m39057d();
    }

    public int getPopupTheme() {
        return this.f492r;
    }

    public int getWindowAnimations() {
        return 0;
    }

    /* renamed from: h */
    public boolean m39036h() {
        return this.f493s;
    }

    /* renamed from: i */
    public C0647g m39035i() {
        return this.f490p;
    }

    /* renamed from: j */
    public boolean m39034j() {
        ActionMenuPresenter actionMenuPresenter = this.f494t;
        return actionMenuPresenter != null && actionMenuPresenter.m39047i();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.f494t;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.mo36509a(false);
            if (this.f494t.m39048h()) {
                this.f494t.m39054e();
                this.f494t.m39047i();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m39043c();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (!this.f497w) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i8 = i3 - i;
        int paddingRight = (i8 - getPaddingRight()) - getPaddingLeft();
        boolean a = C0708l0.m36319a(this);
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f501c) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int i12 = measuredWidth;
                    if (m39041d(i11)) {
                        i12 = measuredWidth + dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a) {
                        i5 = getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                        i6 = i5 + i12;
                    } else {
                        i6 = (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        i5 = i6 - i12;
                    }
                    int i13 = i7 - (measuredHeight / 2);
                    childAt.layout(i5, i13, i6, measuredHeight + i13);
                    paddingRight -= i12;
                    i9 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    m39041d(i11);
                    i10++;
                }
            }
        }
        if (childCount == 1 && i9 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i14 = (i8 / 2) - (measuredWidth2 / 2);
            int i15 = i7 - (measuredHeight2 / 2);
            childAt2.layout(i14, i15, measuredWidth2 + i14, measuredHeight2 + i15);
            return;
        }
        int i16 = i10 - (i9 ^ 1);
        int max = Math.max(0, i16 > 0 ? paddingRight / i16 : 0);
        if (a) {
            int width = getWidth() - getPaddingRight();
            for (int i17 = 0; i17 < childCount; i17++) {
                View childAt3 = getChildAt(i17);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                width = width;
                if (childAt3.getVisibility() != 8) {
                    if (layoutParams2.f501c) {
                        width = width;
                    } else {
                        int i18 = width - ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                        int measuredWidth3 = childAt3.getMeasuredWidth();
                        int measuredHeight3 = childAt3.getMeasuredHeight();
                        int i19 = i7 - (measuredHeight3 / 2);
                        childAt3.layout(i18 - measuredWidth3, i19, i18, measuredHeight3 + i19);
                        width = i18 - ((measuredWidth3 + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin) + max);
                    }
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i20 = 0; i20 < childCount; i20++) {
            View childAt4 = getChildAt(i20);
            LayoutParams layoutParams3 = (LayoutParams) childAt4.getLayoutParams();
            paddingLeft = paddingLeft;
            if (childAt4.getVisibility() != 8) {
                if (layoutParams3.f501c) {
                    paddingLeft = paddingLeft;
                } else {
                    int i21 = paddingLeft + ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin;
                    int measuredWidth4 = childAt4.getMeasuredWidth();
                    int measuredHeight4 = childAt4.getMeasuredHeight();
                    int i22 = i7 - (measuredHeight4 / 2);
                    childAt4.layout(i21, i22, i21 + measuredWidth4, measuredHeight4 + i22);
                    paddingLeft = i21 + measuredWidth4 + ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin + max;
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        C0647g gVar;
        boolean z = this.f497w;
        boolean z2 = View.MeasureSpec.getMode(i) == 1073741824;
        this.f497w = z2;
        if (z != z2) {
            this.f498x = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (!(!this.f497w || (gVar = this.f490p) == null || size == this.f498x)) {
            this.f498x = size;
            gVar.m36595c(true);
        }
        int childCount = getChildCount();
        if (!this.f497w || childCount <= 0) {
            for (int i3 = 0; i3 < childCount; i3++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i3).getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = 0;
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = 0;
            }
            super.onMeasure(i, i2);
            return;
        }
        m39039e(i, i2);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.f494t.m39058c(z);
    }

    public void setOnMenuItemClickListener(AbstractC0125d dVar) {
        this.f489A = dVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        this.f494t.m39065a(drawable);
    }

    public void setOverflowReserved(boolean z) {
        this.f493s = z;
    }

    public void setPopupTheme(int i) {
        if (this.f492r != i) {
            this.f492r = i;
            if (i == 0) {
                this.f491q = getContext();
            } else {
                this.f491q = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.f494t = actionMenuPresenter;
        actionMenuPresenter.m39062a(this);
    }
}
