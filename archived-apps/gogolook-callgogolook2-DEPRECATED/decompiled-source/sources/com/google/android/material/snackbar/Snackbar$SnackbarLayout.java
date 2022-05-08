package com.google.android.material.snackbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.RestrictTo;
import p081h.p203i.p204a.p294f.p314t.C9266d;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2-dex2jar.jar:com/google/android/material/snackbar/Snackbar$SnackbarLayout.class */
public final class Snackbar$SnackbarLayout extends C9266d {
    public Snackbar$SnackbarLayout(Context context) {
        super(context);
    }

    public Snackbar$SnackbarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int childCount = getChildCount();
        int measuredWidth = getMeasuredWidth();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getLayoutParams().width == -1) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec((measuredWidth - paddingLeft) - paddingRight, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), 1073741824));
            }
        }
    }
}
