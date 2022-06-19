package androidx.constraintlayout.widget;

import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
/* renamed from: androidx.constraintlayout.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/e.class */
public class C0166e extends ViewGroup {

    /* renamed from: f */
    C0160d f902f;

    /* renamed from: a */
    public a generateDefaultLayoutParams() {
        return new a(-2, -2);
    }

    /* renamed from: b */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.C0151b(layoutParams);
    }

    public C0160d getConstraintSet() {
        if (this.f902f == null) {
            this.f902f = new C0160d();
        }
        this.f902f.m6263h(this);
        return this.f902f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }
}
