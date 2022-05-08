package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.p031b.C0623a;
import androidx.core.p037g.C0719ag;
import androidx.core.p037g.C0723c;
import androidx.core.p037g.C0741t;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/HeaderScrollingViewBehavior.class */
public abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {

    /* renamed from: a */
    final Rect f17893a = new Rect();

    /* renamed from: b */
    final Rect f17894b = new Rect();

    /* renamed from: c */
    private int f17895c = 0;

    /* renamed from: d */
    private int f17896d;

    public HeaderScrollingViewBehavior() {
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    float mo1466a(View view) {
        return 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m1467a() {
        return this.f17895c;
    }

    /* renamed from: a */
    abstract View mo1464a(List<View> list);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public boolean mo1465a(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View a;
        int i5 = view.getLayoutParams().height;
        if ((i5 != -1 && i5 != -2) || (a = mo1464a(coordinatorLayout.m8805b(view))) == null) {
            return false;
        }
        if (C0741t.m8311t(a) && !C0741t.m8311t(view)) {
            C0741t.m8334b(view, true);
            if (C0741t.m8311t(view)) {
                view.requestLayout();
                return true;
            }
        }
        int size = View.MeasureSpec.getSize(i3);
        int i6 = size;
        if (size == 0) {
            i6 = coordinatorLayout.getHeight();
        }
        int measuredHeight = a.getMeasuredHeight();
        coordinatorLayout.m8812a(view, i, i2, View.MeasureSpec.makeMeasureSpec((i6 - measuredHeight) + mo1462b(a), i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
        return true;
    }

    /* renamed from: b */
    public final int m1463b() {
        return this.f17896d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public int mo1462b(View view) {
        return view.getMeasuredHeight();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    /* renamed from: b */
    public final void mo1458b(CoordinatorLayout coordinatorLayout, View view, int i) {
        int i2;
        View a = mo1464a(coordinatorLayout.m8805b(view));
        if (a != null) {
            CoordinatorLayout.C0583d dVar = (CoordinatorLayout.C0583d) view.getLayoutParams();
            Rect rect = this.f17893a;
            rect.set(coordinatorLayout.getPaddingLeft() + dVar.leftMargin, a.getBottom() + dVar.topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - dVar.rightMargin, ((coordinatorLayout.getHeight() + a.getBottom()) - coordinatorLayout.getPaddingBottom()) - dVar.bottomMargin);
            C0719ag q_ = coordinatorLayout.m8795q_();
            if (q_ != null && C0741t.m8311t(coordinatorLayout) && !C0741t.m8311t(view)) {
                rect.left += q_.m8438a();
                rect.right -= q_.m8433c();
            }
            Rect rect2 = this.f17894b;
            int i3 = dVar.f2661c;
            int i4 = i3;
            if (i3 == 0) {
                i4 = 8388659;
            }
            C0723c.m8414a(i4, view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
            int c = m1460c(a);
            view.layout(rect2.left, rect2.top - c, rect2.right, rect2.bottom - c);
            i2 = rect2.top - a.getBottom();
        } else {
            super.mo1458b(coordinatorLayout, (CoordinatorLayout) view, i);
            i2 = 0;
        }
        this.f17895c = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final int m1460c(View view) {
        if (this.f17896d == 0) {
            return 0;
        }
        float a = mo1466a(view);
        int i = this.f17896d;
        return C0623a.m8692a((int) (a * i), 0, i);
    }

    /* renamed from: c */
    public final void m1461c(int i) {
        this.f17896d = i;
    }
}
