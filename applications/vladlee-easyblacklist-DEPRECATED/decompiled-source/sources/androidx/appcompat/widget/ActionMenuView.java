package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.appcompat.view.menu.AbstractC0386s;
import androidx.appcompat.view.menu.AbstractC0388t;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.view.menu.C0375m;
import androidx.appcompat.widget.LinearLayoutCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView.class */
public class ActionMenuView extends LinearLayoutCompat implements C0371k.AbstractC0373b, AbstractC0388t {

    /* renamed from: a */
    C0371k.AbstractC0372a f1838a;

    /* renamed from: b */
    AbstractC0406d f1839b;

    /* renamed from: c */
    private C0371k f1840c;

    /* renamed from: d */
    private Context f1841d;

    /* renamed from: e */
    private int f1842e;

    /* renamed from: f */
    private boolean f1843f;

    /* renamed from: g */
    private ActionMenuPresenter f1844g;

    /* renamed from: h */
    private AbstractC0386s.AbstractC0387a f1845h;

    /* renamed from: i */
    private boolean f1846i;

    /* renamed from: j */
    private int f1847j;

    /* renamed from: k */
    private int f1848k;

    /* renamed from: l */
    private int f1849l;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$LayoutParams.class */
    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {
        @ViewDebug.ExportedProperty

        /* renamed from: a */
        public boolean f1850a;
        @ViewDebug.ExportedProperty

        /* renamed from: b */
        public int f1851b;
        @ViewDebug.ExportedProperty

        /* renamed from: c */
        public int f1852c;
        @ViewDebug.ExportedProperty

        /* renamed from: d */
        public boolean f1853d;
        @ViewDebug.ExportedProperty

        /* renamed from: e */
        public boolean f1854e;

        /* renamed from: f */
        boolean f1855f;

        public LayoutParams() {
            super(-2, -2);
            this.f1850a = false;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.f1850a = layoutParams.f1850a;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$a.class */
    public interface AbstractC0403a {
        /* renamed from: d_ */
        boolean mo9456d_();

        /* renamed from: e */
        boolean mo9455e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ActionMenuView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$b.class */
    public static final class C0404b implements AbstractC0386s.AbstractC0387a {
        C0404b() {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s.AbstractC0387a
        /* renamed from: a */
        public final void mo9453a(C0371k kVar, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s.AbstractC0387a
        /* renamed from: a */
        public final boolean mo9454a(C0371k kVar) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ActionMenuView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$c.class */
    public final class C0405c implements C0371k.AbstractC0372a {
        C0405c() {
        }

        @Override // androidx.appcompat.view.menu.C0371k.AbstractC0372a
        /* renamed from: a */
        public final void mo949a(C0371k kVar) {
            if (ActionMenuView.this.f1838a != null) {
                ActionMenuView.this.f1838a.mo949a(kVar);
            }
        }

        @Override // androidx.appcompat.view.menu.C0371k.AbstractC0372a
        /* renamed from: a */
        public final boolean mo948a(C0371k kVar, MenuItem menuItem) {
            return ActionMenuView.this.f1839b != null && ActionMenuView.this.f1839b.mo9078a(menuItem);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionMenuView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ActionMenuView$d.class */
    public interface AbstractC0406d {
        /* renamed from: a */
        boolean mo9078a(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m9390n();
        float f = context.getResources().getDisplayMetrics().density;
        this.f1848k = (int) (56.0f * f);
        this.f1849l = (int) (f * 4.0f);
        this.f1841d = context;
        this.f1842e = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m9474a(View view, int i, int i2, int i3, int i4) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = true;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.m9654c();
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
        if (layoutParams.f1850a || !z2) {
            z = false;
        }
        layoutParams.f1853d = z;
        layoutParams.f1851b = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), makeMeasureSpec);
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static LayoutParams m9473a(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return m9457p();
        }
        LayoutParams layoutParams2 = layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : new LayoutParams(layoutParams);
        if (layoutParams2.f1965h <= 0) {
            layoutParams2.f1965h = 16;
        }
        return layoutParams2;
    }

    /* renamed from: b */
    public static LayoutParams m9468b() {
        LayoutParams p = m9457p();
        p.f1850a = true;
        return p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* renamed from: d */
    private boolean m9464d(int i) {
        if (i == 0) {
            return false;
        }
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        boolean z = false;
        if (i < getChildCount()) {
            z = false;
            if (childAt instanceof AbstractC0403a) {
                z = false | ((AbstractC0403a) childAt).mo9455e();
            }
        }
        boolean z2 = z;
        if (i > 0) {
            z2 = z;
            if (childAt2 instanceof AbstractC0403a) {
                z2 = z | ((AbstractC0403a) childAt2).mo9456d_();
            }
        }
        return z2;
    }

    /* renamed from: p */
    private static LayoutParams m9457p() {
        LayoutParams layoutParams = new LayoutParams();
        layoutParams.f1965h = 16;
        return layoutParams;
    }

    /* renamed from: a */
    public final void m9475a(int i) {
        if (this.f1842e != i) {
            this.f1842e = i;
            if (i == 0) {
                this.f1841d = getContext();
            } else {
                this.f1841d = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t
    /* renamed from: a */
    public final void mo1063a(C0371k kVar) {
        this.f1840c = kVar;
    }

    /* renamed from: a */
    public final void m9471a(AbstractC0386s.AbstractC0387a aVar, C0371k.AbstractC0372a aVar2) {
        this.f1845h = aVar;
        this.f1838a = aVar2;
    }

    /* renamed from: a */
    public final void m9470a(ActionMenuPresenter actionMenuPresenter) {
        this.f1844g = actionMenuPresenter;
        this.f1844g.m9492a(this);
    }

    /* renamed from: a */
    public final void m9469a(boolean z) {
        this.f1843f = z;
    }

    /* renamed from: a */
    public final boolean m9476a() {
        return this.f1843f;
    }

    @Override // androidx.appcompat.view.menu.C0371k.AbstractC0373b
    /* renamed from: a */
    public final boolean mo9472a(C0375m mVar) {
        return this.f1840c.m9617a(mVar, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: b */
    public final /* synthetic */ LinearLayoutCompat.LayoutParams mo9395b(ViewGroup.LayoutParams layoutParams) {
        return m9473a(layoutParams);
    }

    /* renamed from: c */
    public final Menu m9466c() {
        if (this.f1840c == null) {
            Context context = getContext();
            this.f1840c = new C0371k(context);
            this.f1840c.mo9539a(new C0405c());
            this.f1844g = new ActionMenuPresenter(context);
            this.f1844g.m9487e();
            ActionMenuPresenter actionMenuPresenter = this.f1844g;
            AbstractC0386s.AbstractC0387a aVar = this.f1845h;
            if (aVar == null) {
                aVar = new C0404b();
            }
            actionMenuPresenter.mo1002a(aVar);
            this.f1840c.m9613a(this.f1844g, this.f1841d);
            this.f1844g.m9492a(this);
        }
        return this.f1840c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: d */
    public final C0371k m9465d() {
        return this.f1840c;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    /* renamed from: e */
    public final boolean m9463e() {
        ActionMenuPresenter actionMenuPresenter = this.f1844g;
        return actionMenuPresenter != null && actionMenuPresenter.m9483h();
    }

    /* renamed from: f */
    public final boolean m9462f() {
        ActionMenuPresenter actionMenuPresenter = this.f1844g;
        return actionMenuPresenter != null && actionMenuPresenter.m9482i();
    }

    /* renamed from: g */
    public final boolean m9461g() {
        ActionMenuPresenter actionMenuPresenter = this.f1844g;
        return actionMenuPresenter != null && actionMenuPresenter.m9479l();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return m9457p();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m9473a(layoutParams);
    }

    /* renamed from: h */
    public final boolean m9460h() {
        ActionMenuPresenter actionMenuPresenter = this.f1844g;
        if (actionMenuPresenter == null) {
            return false;
        }
        return actionMenuPresenter.f1812j != null || actionMenuPresenter.m9479l();
    }

    /* renamed from: i */
    public final void m9459i() {
        ActionMenuPresenter actionMenuPresenter = this.f1844g;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m9481j();
        }
    }

    /* renamed from: j */
    public final void m9458j() {
        this.f1844g.m9484g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* renamed from: k */
    public final /* synthetic */ LinearLayoutCompat.LayoutParams mo9393k() {
        return m9457p();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.f1844g;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.mo999a(false);
            if (this.f1844g.m9479l()) {
                this.f1844g.m9482i();
                this.f1844g.m9483h();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m9459i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (!this.f1846i) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i4 - i2) / 2;
        int m = m9391m();
        int i8 = i3 - i;
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        boolean a = C0499ca.m9031a(this);
        int i9 = (i8 - paddingRight) - paddingLeft;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            i10 = i10;
            i11 = i11;
            i9 = i9;
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f1850a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int i13 = measuredWidth;
                    if (m9464d(i12)) {
                        i13 = measuredWidth + m;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a) {
                        i6 = getPaddingLeft() + layoutParams.leftMargin;
                        i5 = i6 + i13;
                    } else {
                        i5 = (getWidth() - getPaddingRight()) - layoutParams.rightMargin;
                        i6 = i5 - i13;
                    }
                    int i14 = i7 - (measuredHeight / 2);
                    childAt.layout(i6, i14, i5, measuredHeight + i14);
                    i9 -= i13;
                    i10 = 1;
                    i11 = i11;
                } else {
                    i9 -= (childAt.getMeasuredWidth() + layoutParams.leftMargin) + layoutParams.rightMargin;
                    m9464d(i12);
                    i11++;
                    i10 = i10;
                }
            }
        }
        if (childCount == 1 && i10 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i15 = (i8 / 2) - (measuredWidth2 / 2);
            int i16 = i7 - (measuredHeight2 / 2);
            childAt2.layout(i15, i16, measuredWidth2 + i15, measuredHeight2 + i16);
            return;
        }
        int i17 = i11 - (i10 ^ 1);
        int max = Math.max(0, i17 > 0 ? i9 / i17 : 0);
        if (a) {
            int width = getWidth() - getPaddingRight();
            for (int i18 = 0; i18 < childCount; i18++) {
                View childAt3 = getChildAt(i18);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                width = width;
                if (childAt3.getVisibility() != 8) {
                    width = width;
                    if (!layoutParams2.f1850a) {
                        int i19 = width - layoutParams2.rightMargin;
                        int measuredWidth3 = childAt3.getMeasuredWidth();
                        int measuredHeight3 = childAt3.getMeasuredHeight();
                        int i20 = i7 - (measuredHeight3 / 2);
                        childAt3.layout(i19 - measuredWidth3, i20, i19, measuredHeight3 + i20);
                        width = i19 - ((measuredWidth3 + layoutParams2.leftMargin) + max);
                    }
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i21 = 0; i21 < childCount; i21++) {
            View childAt4 = getChildAt(i21);
            LayoutParams layoutParams3 = (LayoutParams) childAt4.getLayoutParams();
            paddingLeft2 = paddingLeft2;
            if (childAt4.getVisibility() != 8) {
                paddingLeft2 = paddingLeft2;
                if (!layoutParams3.f1850a) {
                    int i22 = paddingLeft2 + layoutParams3.leftMargin;
                    int measuredWidth4 = childAt4.getMeasuredWidth();
                    int measuredHeight4 = childAt4.getMeasuredHeight();
                    int i23 = i7 - (measuredHeight4 / 2);
                    childAt4.layout(i22, i23, i22 + measuredWidth4, measuredHeight4 + i23);
                    paddingLeft2 = i22 + measuredWidth4 + layoutParams3.rightMargin + max;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0391, code lost:
        if (r21 > 1) goto L_0x0394;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v169 */
    /* JADX WARN: Type inference failed for: r0v170, types: [long] */
    /* JADX WARN: Type inference failed for: r0v221 */
    /* JADX WARN: Type inference failed for: r0v297 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1, types: [long] */
    /* JADX WARN: Type inference failed for: r23v10 */
    /* JADX WARN: Type inference failed for: r23v13 */
    /* JADX WARN: Type inference failed for: r23v14 */
    /* JADX WARN: Type inference failed for: r23v5, types: [long] */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Type inference failed for: r23v8 */
    /* JADX WARN: Type inference failed for: r23v9 */
    /* JADX WARN: Type inference failed for: r29v0 */
    /* JADX WARN: Type inference failed for: r29v11 */
    /* JADX WARN: Type inference failed for: r29v12 */
    /* JADX WARN: Type inference failed for: r29v3 */
    /* JADX WARN: Type inference failed for: r29v5 */
    /* JADX WARN: Type inference failed for: r29v6, types: [long] */
    /* JADX WARN: Type inference failed for: r29v7, types: [long] */
    /* JADX WARN: Type inference failed for: r29v8 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 1385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuView.onMeasure(int, int):void");
    }
}
