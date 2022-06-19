package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import f.m.c;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.h */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/h.class */
public final class C0274h extends FrameLayout {

    /* renamed from: f */
    private ArrayList<View> f1515f;

    /* renamed from: g */
    private ArrayList<View> f1516g;

    /* renamed from: h */
    private boolean f1517h = true;

    public C0274h(Context context, AttributeSet attributeSet, AbstractC0281n abstractC0281n) {
        super(context, attributeSet);
        String str;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.e);
        String string = classAttribute == null ? obtainStyledAttributes.getString(c.f) : classAttribute;
        String string2 = obtainStyledAttributes.getString(c.g);
        obtainStyledAttributes.recycle();
        int id = getId();
        Fragment m5658i0 = abstractC0281n.m5658i0(id);
        if (string == null || m5658i0 != null) {
            return;
        }
        if (id > 0) {
            Fragment m5753a = abstractC0281n.m5625t0().m5753a(context.getClassLoader(), string);
            m5753a.onInflate(context, attributeSet, (Bundle) null);
            AbstractC0300y m5644n = abstractC0281n.m5644n();
            m5644n.m5521u(true);
            m5644n.m5538d(this, m5753a, string2);
            m5644n.m5530l();
            return;
        }
        if (string2 != null) {
            str = " with tag " + string2;
        } else {
            str = "";
        }
        throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + string + str);
    }

    /* renamed from: a */
    private void m5778a(View view) {
        ArrayList<View> arrayList = this.f1516g;
        if (arrayList == null || !arrayList.contains(view)) {
            return;
        }
        if (this.f1515f == null) {
            this.f1515f = new ArrayList<>();
        }
        this.f1515f.add(view);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (AbstractC0281n.m5730C0(view) != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    protected boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        if (AbstractC0281n.m5730C0(view) != null) {
            return super.addViewInLayout(view, i, layoutParams, z);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.f1517h && this.f1515f != null) {
            for (int i = 0; i < this.f1515f.size(); i++) {
                super.drawChild(canvas, this.f1515f.get(i), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        ArrayList<View> arrayList;
        if (!this.f1517h || (arrayList = this.f1515f) == null || arrayList.size() <= 0 || !this.f1515f.contains(view)) {
            return super.drawChild(canvas, view, j);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(View view) {
        ArrayList<View> arrayList = this.f1516g;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.f1515f;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.f1517h = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        for (int i = 0; i < getChildCount(); i++) {
            getChildAt(i).dispatchApplyWindowInsets(new WindowInsets(windowInsets));
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            m5778a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z) {
        if (z) {
            m5778a(view);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        m5778a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        m5778a(getChildAt(i));
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        m5778a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m5778a(getChildAt(i3));
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            m5778a(getChildAt(i3));
        }
        super.removeViewsInLayout(i, i2);
    }

    public void setDrawDisappearingViewsLast(boolean z) {
        this.f1517h = z;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            super.setLayoutTransition(layoutTransition);
            return;
        }
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.f1516g == null) {
                this.f1516g = new ArrayList<>();
            }
            this.f1516g.add(view);
        }
        super.startViewTransition(view);
    }
}
