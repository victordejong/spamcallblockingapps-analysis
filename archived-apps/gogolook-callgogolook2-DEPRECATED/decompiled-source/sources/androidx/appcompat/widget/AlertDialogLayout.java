package androidx.appcompat.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0054R;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.ViewCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AlertDialogLayout.class */
public class AlertDialogLayout extends LinearLayoutCompat {
    public AlertDialogLayout(@Nullable Context context) {
        super(context);
    }

    public AlertDialogLayout(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void forceUniformWidth(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) childAt.getLayoutParams();
                if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1) {
                    int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                    ((ViewGroup.MarginLayoutParams) layoutParams).height = childAt.getMeasuredHeight();
                    measureChildWithMargins(childAt, makeMeasureSpec, 0, i2, 0);
                    ((ViewGroup.MarginLayoutParams) layoutParams).height = i4;
                }
            }
        }
    }

    public static int resolveMinimumHeight(View view) {
        int minimumHeight = ViewCompat.getMinimumHeight(view);
        if (minimumHeight > 0) {
            return minimumHeight;
        }
        if (!(view instanceof ViewGroup)) {
            return 0;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (viewGroup.getChildCount() == 1) {
            return resolveMinimumHeight(viewGroup.getChildAt(0));
        }
        return 0;
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    private boolean tryOnMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int childCount = getChildCount();
        View view = null;
        View view2 = null;
        View view3 = null;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                int id = childAt.getId();
                if (id == C0054R.C0056id.topPanel) {
                    view = childAt;
                } else if (id == C0054R.C0056id.buttonPanel) {
                    view3 = childAt;
                } else if ((id != C0054R.C0056id.contentPanel && id != C0054R.C0056id.customPanel) || view2 != null) {
                    return false;
                } else {
                    view2 = childAt;
                }
            }
        }
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (view != null) {
            view.measure(i, 0);
            paddingTop += view.getMeasuredHeight();
            i3 = View.combineMeasuredStates(0, view.getMeasuredState());
        } else {
            i3 = 0;
        }
        if (view3 != null) {
            view3.measure(i, 0);
            i5 = resolveMinimumHeight(view3);
            i4 = view3.getMeasuredHeight() - i5;
            paddingTop += i5;
            i3 = View.combineMeasuredStates(i3, view3.getMeasuredState());
        } else {
            i5 = 0;
            i4 = 0;
        }
        if (view2 != null) {
            view2.measure(i, mode == 0 ? 0 : View.MeasureSpec.makeMeasureSpec(Math.max(0, size - paddingTop), mode));
            i6 = view2.getMeasuredHeight();
            paddingTop += i6;
            i3 = View.combineMeasuredStates(i3, view2.getMeasuredState());
        } else {
            i6 = 0;
        }
        int i8 = size - paddingTop;
        int i9 = i3;
        int i10 = i8;
        int i11 = paddingTop;
        if (view3 != null) {
            int min = Math.min(i8, i4);
            i10 = i8;
            int i12 = i5;
            if (min > 0) {
                i10 = i8 - min;
                i12 = i5 + min;
            }
            view3.measure(i, View.MeasureSpec.makeMeasureSpec(i12, 1073741824));
            i11 = (paddingTop - i5) + view3.getMeasuredHeight();
            i9 = View.combineMeasuredStates(i3, view3.getMeasuredState());
        }
        int i13 = i9;
        int i14 = i11;
        if (view2 != null) {
            i13 = i9;
            i14 = i11;
            if (i10 > 0) {
                view2.measure(i, View.MeasureSpec.makeMeasureSpec(i6 + i10, mode));
                i14 = (i11 - i6) + view2.getMeasuredHeight();
                i13 = View.combineMeasuredStates(i9, view2.getMeasuredState());
            }
        }
        int i15 = 0;
        for (int i16 = 0; i16 < childCount; i16++) {
            View childAt2 = getChildAt(i16);
            i15 = i15;
            if (childAt2.getVisibility() != 8) {
                i15 = Math.max(i15, childAt2.getMeasuredWidth());
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i15 + getPaddingLeft() + getPaddingRight(), i, i13), View.resolveSizeAndState(i14, i2, 0));
        if (mode2 == 1073741824) {
            return true;
        }
        forceUniformWidth(childCount, i2);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x013c  */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AlertDialogLayout.onLayout(boolean, int, int, int, int):void");
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        if (!tryOnMeasure(i, i2)) {
            super.onMeasure(i, i2);
        }
    }
}
