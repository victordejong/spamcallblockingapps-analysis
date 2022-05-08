package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.p037g.C0741t;
import com.google.android.material.C2913a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/snackbar/SnackbarContentLayout.class */
public class SnackbarContentLayout extends LinearLayout implements AbstractC3071k {

    /* renamed from: a */
    private TextView f18521a;

    /* renamed from: b */
    private Button f18522b;

    /* renamed from: c */
    private int f18523c;

    /* renamed from: d */
    private int f18524d;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2913a.C2924k.f17675cI);
        this.f18523c = obtainStyledAttributes.getDimensionPixelSize(C2913a.C2924k.f17676cJ, -1);
        this.f18524d = obtainStyledAttributes.getDimensionPixelSize(C2913a.C2924k.f17678cL, -1);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static void m928a(View view, int i, int i2) {
        if (C0741t.m8309v(view)) {
            C0741t.m8337b(view, C0741t.m8321j(view), i, C0741t.m8320k(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    /* renamed from: a */
    private boolean m929a(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (!(this.f18521a.getPaddingTop() == i2 && this.f18521a.getPaddingBottom() == i3)) {
            m928a(this.f18521a, i2, i3);
            z = true;
        }
        return z;
    }

    @Override // com.google.android.material.snackbar.AbstractC3071k
    /* renamed from: a */
    public final void mo922a() {
        this.f18521a.setAlpha(0.0f);
        this.f18521a.animate().alpha(1.0f).setDuration(180L).setStartDelay(70L).start();
        if (this.f18522b.getVisibility() == 0) {
            this.f18522b.setAlpha(0.0f);
            this.f18522b.animate().alpha(1.0f).setDuration(180L).setStartDelay(70L).start();
        }
    }

    @Override // com.google.android.material.snackbar.AbstractC3071k
    /* renamed from: b */
    public final void mo921b() {
        this.f18521a.setAlpha(1.0f);
        this.f18521a.animate().alpha(0.0f).setDuration(180L).setStartDelay(0L).start();
        if (this.f18522b.getVisibility() == 0) {
            this.f18522b.setAlpha(1.0f);
            this.f18522b.animate().alpha(0.0f).setDuration(180L).setStartDelay(0L).start();
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f18521a = (TextView) findViewById(C2913a.C2919f.f17499i);
        this.f18522b = (Button) findViewById(C2913a.C2919f.f17498h);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z;
        super.onMeasure(i, i2);
        int i3 = i;
        if (this.f18523c > 0) {
            int measuredWidth = getMeasuredWidth();
            int i4 = this.f18523c;
            i3 = i;
            if (measuredWidth > i4) {
                i3 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                super.onMeasure(i3, i2);
            }
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(C2913a.C2917d.f17480o);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(C2913a.C2917d.f17479n);
        boolean z2 = this.f18521a.getLayout().getLineCount() > 1;
        if (!z2 || this.f18524d <= 0 || this.f18522b.getMeasuredWidth() <= this.f18524d) {
            int i5 = z2 ? dimensionPixelSize : dimensionPixelSize2;
            if (m929a(0, i5, i5)) {
                z = true;
            }
            z = false;
        } else {
            if (m929a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
                z = true;
            }
            z = false;
        }
        if (z) {
            super.onMeasure(i3, i2);
        }
    }
}
