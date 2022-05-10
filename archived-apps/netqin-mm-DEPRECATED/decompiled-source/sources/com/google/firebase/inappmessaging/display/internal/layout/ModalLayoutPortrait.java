package com.google.firebase.inappmessaging.display.internal.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import p131c.p161d.p282e.p315q.p318p0.C5539f;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5562j;
import p131c.p161d.p282e.p315q.p318p0.p321j.p326r.p327a.C5627b;
import p131c.p161d.p282e.p315q.p318p0.p321j.p326r.p327a.C5628c;
import p131c.p161d.p282e.p315q.p318p0.p321j.p326r.p327a.C5630d;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait.class */
public class ModalLayoutPortrait extends BaseModalLayout {

    /* renamed from: e */
    public C5628c f30995e = new C5628c();

    /* renamed from: f */
    public int f30996f;

    public ModalLayoutPortrait(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: d */
    public final boolean m7296d(View view) {
        return view.getId() == C5539f.body_scroll || view.getId() == C5539f.image_view;
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        super.onLayout(z, i, i2, i3, i4);
        int paddingTop = getPaddingTop();
        int paddingLeft = getPaddingLeft();
        int size = getVisibleChildren().size();
        for (int i7 = 0; i7 < size; i7++) {
            View view = getVisibleChildren().get(i7);
            FrameLayout.LayoutParams c = m7298c(view);
            int measuredHeight = view.getMeasuredHeight();
            int measuredWidth = view.getMeasuredWidth();
            int i8 = measuredHeight + paddingTop;
            if ((c.gravity & 1) == 1) {
                int i9 = (i3 - i) / 2;
                int i10 = measuredWidth / 2;
                i5 = i9 - i10;
                i6 = i9 + i10;
            } else {
                i6 = paddingLeft + measuredWidth;
                i5 = paddingLeft;
            }
            C5562j.m23515a("Layout child " + i7);
            C5562j.m23513a("\t(top, bottom)", (float) paddingTop, (float) i8);
            C5562j.m23513a("\t(left, right)", (float) i5, (float) i6);
            view.layout(i5, paddingTop, i6, i8);
            int measuredHeight2 = paddingTop + view.getMeasuredHeight();
            paddingTop = measuredHeight2;
            if (i7 < size - 1) {
                paddingTop = measuredHeight2 + this.f30996f;
            }
        }
    }

    @Override // com.google.firebase.inappmessaging.display.internal.layout.BaseModalLayout, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f30996f = m7299c(24);
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int paddingBottom = getPaddingBottom();
        int paddingTop = getPaddingTop();
        int b = m7301b(i);
        int a = m7306a(i2);
        boolean z = true;
        int size = paddingBottom + paddingTop + ((getVisibleChildren().size() - 1) * this.f30996f);
        this.f30995e.m23379a(b, a);
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            this.f30995e.m23378a(childAt, m7296d(childAt));
        }
        C5562j.m23515a("Screen dimens: " + getDisplayMetrics());
        C5562j.m23513a("Max pct", getMaxWidthPct(), getMaxHeightPct());
        float f = (float) b;
        C5562j.m23513a("Base dimens", f, (float) a);
        for (C5630d dVar : this.f30995e.m23376c()) {
            C5562j.m23515a("Pre-measure child");
            dVar.m23373a(b, a);
        }
        int b2 = this.f30995e.m23377b() + size;
        C5562j.m23514a("Total reserved height", size);
        C5562j.m23514a("Total desired height", b2);
        if (b2 <= a) {
            z = false;
        }
        C5562j.m23515a("Total height constrained: " + z);
        if (z) {
            this.f30995e.m23380a((a - size) - this.f30995e.m23381a());
        }
        int i4 = size;
        for (C5630d dVar2 : this.f30995e.m23376c()) {
            C5562j.m23515a("Measuring child");
            C5627b.m23385a(dVar2.m23370c(), b - (paddingRight + paddingLeft), dVar2.m23372b());
            i4 += m7304a(dVar2.m23370c());
        }
        C5562j.m23513a("Measured dims", f, i4);
        setMeasuredDimension(b, i4);
    }
}
