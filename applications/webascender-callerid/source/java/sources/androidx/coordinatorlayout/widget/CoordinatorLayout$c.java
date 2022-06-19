package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import f.h.l.b0;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$c.class */
public abstract class CoordinatorLayout$c<V extends View> {
    public CoordinatorLayout$c() {
    }

    public CoordinatorLayout$c(Context context, AttributeSet attributeSet) {
    }

    public boolean blocksInteractionBelow(CoordinatorLayout coordinatorLayout, V v) {
        return getScrimOpacity(coordinatorLayout, v) > 0.0f;
    }

    public boolean getInsetDodgeRect(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
        return false;
    }

    public int getScrimColor(CoordinatorLayout coordinatorLayout, V v) {
        return -16777216;
    }

    public float getScrimOpacity(CoordinatorLayout coordinatorLayout, V v) {
        return 0.0f;
    }

    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, V v, View view) {
        return false;
    }

    public b0 onApplyWindowInsets(CoordinatorLayout coordinatorLayout, V v, b0 b0Var) {
        return b0Var;
    }

    public void onAttachedToLayoutParams(CoordinatorLayout$f coordinatorLayout$f) {
    }

    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, V v, View view) {
        return false;
    }

    public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, V v, View view) {
    }

    public void onDetachedFromLayoutParams() {
    }

    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        return false;
    }

    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i) {
        return false;
    }

    public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
        return false;
    }

    public boolean onNestedFling(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2, boolean z) {
        return false;
    }

    public boolean onNestedPreFling(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
        return false;
    }

    @Deprecated
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
    }

    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(coordinatorLayout, v, view, i, i2, iArr);
        }
    }

    @Deprecated
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
    }

    @Deprecated
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(coordinatorLayout, v, view, i, i2, i3, i4);
        }
    }

    public void onNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        iArr[0] = iArr[0] + i3;
        iArr[1] = iArr[1] + i4;
        onNestedScroll(coordinatorLayout, v, view, i, i2, i3, i4, i5);
    }

    @Deprecated
    public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
    }

    public void onNestedScrollAccepted(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(coordinatorLayout, v, view, view2, i);
        }
    }

    public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
        return false;
    }

    public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
    }

    public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, V v) {
        return View.BaseSavedState.EMPTY_STATE;
    }

    @Deprecated
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        return false;
    }

    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        if (i2 == 0) {
            return onStartNestedScroll(coordinatorLayout, v, view, view2, i);
        }
        return false;
    }

    @Deprecated
    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view) {
    }

    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
        if (i == 0) {
            onStopNestedScroll(coordinatorLayout, v, view);
        }
    }

    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        return false;
    }
}
