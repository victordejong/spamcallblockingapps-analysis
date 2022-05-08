package android.support.design.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.annotation.VisibleForTesting;
import android.support.design.C0089R;
import android.support.design.animation.AnimationUtils;
import android.support.design.internal.ThemeEnforcement;
import android.support.design.widget.CoordinatorLayout;
import android.support.p001v4.math.MathUtils;
import android.support.p001v4.util.ObjectsCompat;
import android.support.p001v4.view.AbsSavedState;
import android.support.p001v4.view.NestedScrollingChild;
import android.support.p001v4.view.OnApplyWindowInsetsListener;
import android.support.p001v4.view.ViewCompat;
import android.support.p001v4.view.WindowInsetsCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
@CoordinatorLayout.DefaultBehavior(Behavior.class)
/* loaded from: classes-dex2jar.jar:android/support/design/widget/AppBarLayout.class */
public class AppBarLayout extends LinearLayout {
    private static final int INVALID_SCROLL_RANGE = -1;
    static final int PENDING_ACTION_ANIMATE_ENABLED = 4;
    static final int PENDING_ACTION_COLLAPSED = 2;
    static final int PENDING_ACTION_EXPANDED = 1;
    static final int PENDING_ACTION_FORCE = 8;
    static final int PENDING_ACTION_NONE = 0;
    private int downPreScrollRange;
    private int downScrollRange;
    private boolean haveChildWithInterpolator;
    private WindowInsetsCompat lastInsets;
    private boolean liftOnScroll;
    private boolean liftable;
    private boolean liftableOverride;
    private boolean lifted;
    private List<BaseOnOffsetChangedListener> listeners;
    private int pendingAction;
    private int[] tmpStatesArray;
    private int totalScrollRange;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:android/support/design/widget/AppBarLayout$BaseBehavior.class */
    public static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {
        private static final int INVALID_POSITION = -1;
        private static final int MAX_OFFSET_ANIMATION_DURATION = 600;
        private WeakReference<View> lastNestedScrollingChildRef;
        private int lastStartedType;
        private ValueAnimator offsetAnimator;
        private int offsetDelta;
        private int offsetToChildIndexOnLayout = -1;
        private boolean offsetToChildIndexOnLayoutIsMinHeight;
        private float offsetToChildIndexOnLayoutPerc;
        private BaseDragCallback onDragCallback;

        /* loaded from: classes-dex2jar.jar:android/support/design/widget/AppBarLayout$BaseBehavior$BaseDragCallback.class */
        public static abstract class BaseDragCallback<T extends AppBarLayout> {
            public abstract boolean canDrag(@NonNull T t);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* loaded from: classes-dex2jar.jar:android/support/design/widget/AppBarLayout$BaseBehavior$SavedState.class */
        public static class SavedState extends AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: android.support.design.widget.AppBarLayout.BaseBehavior.SavedState.1
                @Override // android.os.Parcelable.Creator
                public SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(parcel, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.ClassLoaderCreator
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new SavedState(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };
            boolean firstVisibleChildAtMinimumHeight;
            int firstVisibleChildIndex;
            float firstVisibleChildPercentageShown;

            public SavedState(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.firstVisibleChildIndex = parcel.readInt();
                this.firstVisibleChildPercentageShown = parcel.readFloat();
                this.firstVisibleChildAtMinimumHeight = parcel.readByte() != 0;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            @Override // android.support.p001v4.view.AbsSavedState, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.firstVisibleChildIndex);
                parcel.writeFloat(this.firstVisibleChildPercentageShown);
                parcel.writeByte(this.firstVisibleChildAtMinimumHeight ? (byte) 1 : (byte) 0);
            }
        }

        public BaseBehavior() {
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        private void animateOffsetTo(CoordinatorLayout coordinatorLayout, T t, int i, float f) {
            int abs = Math.abs(getTopBottomOffsetForScrollingSibling() - i);
            float abs2 = Math.abs(f);
            animateOffsetWithDuration(coordinatorLayout, t, i, abs2 > 0.0f ? Math.round((abs / abs2) * 1000.0f) * 3 : (int) (((abs / t.getHeight()) + 1.0f) * 150.0f));
        }

        private void animateOffsetWithDuration(final CoordinatorLayout coordinatorLayout, final T t, int i, int i2) {
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            if (topBottomOffsetForScrollingSibling != i) {
                if (this.offsetAnimator == null) {
                    this.offsetAnimator = new ValueAnimator();
                    this.offsetAnimator.setInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
                    this.offsetAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: android.support.design.widget.AppBarLayout.BaseBehavior.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            BaseBehavior.this.setHeaderTopBottomOffset(coordinatorLayout, t, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                        }
                    });
                } else {
                    this.offsetAnimator.cancel();
                }
                this.offsetAnimator.setDuration(Math.min(i2, 600));
                this.offsetAnimator.setIntValues(topBottomOffsetForScrollingSibling, i);
                this.offsetAnimator.start();
            } else if (this.offsetAnimator != null && this.offsetAnimator.isRunning()) {
                this.offsetAnimator.cancel();
            }
        }

        private boolean canScrollChildren(CoordinatorLayout coordinatorLayout, T t, View view) {
            return t.hasScrollableChildren() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight();
        }

        private static boolean checkFlag(int i, int i2) {
            return (i & i2) == i2;
        }

        @Nullable
        private View findFirstScrollingChild(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if (childAt instanceof NestedScrollingChild) {
                    return childAt;
                }
            }
            return null;
        }

        private static View getAppBarChildOnOffset(AppBarLayout appBarLayout, int i) {
            int abs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                if (abs >= childAt.getTop() && abs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        private int getChildIndexOnOffset(T t, int i) {
            int childCount = t.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int i3 = top;
                int i4 = bottom;
                if (checkFlag(layoutParams.getScrollFlags(), 32)) {
                    i3 = top - layoutParams.topMargin;
                    i4 = bottom + layoutParams.bottomMargin;
                }
                int i5 = -i;
                if (i3 <= i5 && i4 >= i5) {
                    return i2;
                }
            }
            return -1;
        }

        private int interpolateOffset(T t, int i) {
            int abs = Math.abs(i);
            int childCount = t.getChildCount();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                }
                View childAt = t.getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Interpolator scrollInterpolator = layoutParams.getScrollInterpolator();
                if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                    i3++;
                } else if (scrollInterpolator != null) {
                    int scrollFlags = layoutParams.getScrollFlags();
                    if ((scrollFlags & 1) != 0) {
                        int height = 0 + childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
                        i2 = height;
                        if ((scrollFlags & 2) != 0) {
                            i2 = height - ViewCompat.getMinimumHeight(childAt);
                        }
                    }
                    int i4 = i2;
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        i4 = i2 - t.getTopInset();
                    }
                    if (i4 > 0) {
                        int top = childAt.getTop();
                        float f = i4;
                        return Integer.signum(i) * (childAt.getTop() + Math.round(f * scrollInterpolator.getInterpolation((abs - top) / f)));
                    }
                }
            }
            return i;
        }

        private boolean shouldJumpElevationState(CoordinatorLayout coordinatorLayout, T t) {
            List<View> dependents = coordinatorLayout.getDependents(t);
            int size = dependents.size();
            boolean z = false;
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) dependents.get(i).getLayoutParams()).getBehavior();
                if (behavior instanceof ScrollingViewBehavior) {
                    if (((ScrollingViewBehavior) behavior).getOverlayTop() != 0) {
                        z = true;
                    }
                    return z;
                }
            }
            return false;
        }

        private void snapToChildIfNeeded(CoordinatorLayout coordinatorLayout, T t) {
            int i;
            int i2;
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            int childIndexOnOffset = getChildIndexOnOffset(t, topBottomOffsetForScrollingSibling);
            if (childIndexOnOffset >= 0) {
                View childAt = t.getChildAt(childIndexOnOffset);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int scrollFlags = layoutParams.getScrollFlags();
                if ((scrollFlags & 17) == 17) {
                    int i3 = -childAt.getTop();
                    int i4 = -childAt.getBottom();
                    int i5 = i4;
                    if (childIndexOnOffset == t.getChildCount() - 1) {
                        i5 = i4 + t.getTopInset();
                    }
                    if (checkFlag(scrollFlags, 2)) {
                        i = i5 + ViewCompat.getMinimumHeight(childAt);
                        i2 = i3;
                    } else {
                        i2 = i3;
                        i = i5;
                        if (checkFlag(scrollFlags, 5)) {
                            i = ViewCompat.getMinimumHeight(childAt) + i5;
                            if (topBottomOffsetForScrollingSibling < i) {
                                i2 = i;
                                i = i5;
                            } else {
                                i2 = i3;
                            }
                        }
                    }
                    int i6 = i2;
                    int i7 = i;
                    if (checkFlag(scrollFlags, 32)) {
                        i6 = i2 + layoutParams.topMargin;
                        i7 = i - layoutParams.bottomMargin;
                    }
                    int i8 = i6;
                    if (topBottomOffsetForScrollingSibling < (i7 + i6) / 2) {
                        i8 = i7;
                    }
                    animateOffsetTo(coordinatorLayout, t, MathUtils.clamp(i8, -t.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        private void stopNestedScrollIfNeeded(int i, T t, View view, int i2) {
            if (i2 == 1) {
                int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
                if ((i < 0 && topBottomOffsetForScrollingSibling == 0) || (i > 0 && topBottomOffsetForScrollingSibling == (-t.getDownNestedScrollRange()))) {
                    ViewCompat.stopNestedScroll(view, 1);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0076  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00a7  */
        /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void updateAppBarLayoutDrawableState(android.support.design.widget.CoordinatorLayout r5, T r6, int r7, int r8, boolean r9) {
            /*
                r4 = this;
                r0 = r6
                r1 = r7
                android.view.View r0 = getAppBarChildOnOffset(r0, r1)
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L_0x00be
                r0 = r10
                android.view.ViewGroup$LayoutParams r0 = r0.getLayoutParams()
                android.support.design.widget.AppBarLayout$LayoutParams r0 = (android.support.design.widget.AppBarLayout.LayoutParams) r0
                int r0 = r0.getScrollFlags()
                r11 = r0
                r0 = r11
                r1 = 1
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0068
                r0 = r10
                int r0 = android.support.p001v4.view.ViewCompat.getMinimumHeight(r0)
                r12 = r0
                r0 = r8
                if (r0 <= 0) goto L_0x004c
                r0 = r11
                r1 = 12
                r0 = r0 & r1
                if (r0 == 0) goto L_0x004c
                r0 = r7
                int r0 = -r0
                r1 = r10
                int r1 = r1.getBottom()
                r2 = r12
                int r1 = r1 - r2
                r2 = r6
                int r2 = r2.getTopInset()
                int r1 = r1 - r2
                if (r0 < r1) goto L_0x0068
            L_0x0046:
                r0 = 1
                r13 = r0
                goto L_0x006b
            L_0x004c:
                r0 = r11
                r1 = 2
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0068
                r0 = r7
                int r0 = -r0
                r1 = r10
                int r1 = r1.getBottom()
                r2 = r12
                int r1 = r1 - r2
                r2 = r6
                int r2 = r2.getTopInset()
                int r1 = r1 - r2
                if (r0 < r1) goto L_0x0068
                goto L_0x0046
            L_0x0068:
                r0 = 0
                r13 = r0
            L_0x006b:
                r0 = r13
                r14 = r0
                r0 = r6
                boolean r0 = r0.isLiftOnScroll()
                if (r0 == 0) goto L_0x0097
                r0 = r4
                r1 = r5
                android.view.View r0 = r0.findFirstScrollingChild(r1)
                r10 = r0
                r0 = r13
                r14 = r0
                r0 = r10
                if (r0 == 0) goto L_0x0097
                r0 = r10
                int r0 = r0.getScrollY()
                if (r0 <= 0) goto L_0x0094
                r0 = 1
                r14 = r0
                goto L_0x0097
            L_0x0094:
                r0 = 0
                r14 = r0
            L_0x0097:
                r0 = r6
                r1 = r14
                boolean r0 = r0.setLiftedState(r1)
                r14 = r0
                int r0 = android.os.Build.VERSION.SDK_INT
                r1 = 11
                if (r0 < r1) goto L_0x00be
                r0 = r9
                if (r0 != 0) goto L_0x00ba
                r0 = r14
                if (r0 == 0) goto L_0x00be
                r0 = r4
                r1 = r5
                r2 = r6
                boolean r0 = r0.shouldJumpElevationState(r1, r2)
                if (r0 == 0) goto L_0x00be
            L_0x00ba:
                r0 = r6
                r0.jumpDrawablesToCurrentState()
            L_0x00be:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.design.widget.AppBarLayout.BaseBehavior.updateAppBarLayoutDrawableState(android.support.design.widget.CoordinatorLayout, android.support.design.widget.AppBarLayout, int, int, boolean):void");
        }

        boolean canDragView(T t) {
            if (this.onDragCallback != null) {
                return this.onDragCallback.canDrag(t);
            }
            boolean z = true;
            if (this.lastNestedScrollingChildRef == null) {
                return true;
            }
            View view = this.lastNestedScrollingChildRef.get();
            if (view == null || !view.isShown() || view.canScrollVertically(-1)) {
                z = false;
            }
            return z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.design.widget.HeaderBehavior
        /* bridge */ /* synthetic */ boolean canDragView(View view) {
            return canDragView((BaseBehavior<T>) ((AppBarLayout) view));
        }

        int getMaxDragOffset(T t) {
            return -t.getDownNestedScrollRange();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.design.widget.HeaderBehavior
        /* bridge */ /* synthetic */ int getMaxDragOffset(View view) {
            return getMaxDragOffset((BaseBehavior<T>) ((AppBarLayout) view));
        }

        int getScrollRangeForDragFling(T t) {
            return t.getTotalScrollRange();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.design.widget.HeaderBehavior
        /* bridge */ /* synthetic */ int getScrollRangeForDragFling(View view) {
            return getScrollRangeForDragFling((BaseBehavior<T>) ((AppBarLayout) view));
        }

        @Override // android.support.design.widget.HeaderBehavior
        int getTopBottomOffsetForScrollingSibling() {
            return getTopAndBottomOffset() + this.offsetDelta;
        }

        @VisibleForTesting
        boolean isOffsetAnimatorRunning() {
            return this.offsetAnimator != null && this.offsetAnimator.isRunning();
        }

        void onFlingFinished(CoordinatorLayout coordinatorLayout, T t) {
            snapToChildIfNeeded(coordinatorLayout, t);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.design.widget.HeaderBehavior
        /* bridge */ /* synthetic */ void onFlingFinished(CoordinatorLayout coordinatorLayout, View view) {
            onFlingFinished(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, T t, int i) {
            boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) t, i);
            int pendingAction = t.getPendingAction();
            if (this.offsetToChildIndexOnLayout >= 0 && (pendingAction & 8) == 0) {
                View childAt = t.getChildAt(this.offsetToChildIndexOnLayout);
                int i2 = -childAt.getBottom();
                setHeaderTopBottomOffset(coordinatorLayout, t, this.offsetToChildIndexOnLayoutIsMinHeight ? i2 + ViewCompat.getMinimumHeight(childAt) + t.getTopInset() : i2 + Math.round(childAt.getHeight() * this.offsetToChildIndexOnLayoutPerc));
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i3 = -t.getUpNestedPreScrollRange();
                    if (z) {
                        animateOffsetTo(coordinatorLayout, t, i3, 0.0f);
                    } else {
                        setHeaderTopBottomOffset(coordinatorLayout, t, i3);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        animateOffsetTo(coordinatorLayout, t, 0, 0.0f);
                    } else {
                        setHeaderTopBottomOffset(coordinatorLayout, t, 0);
                    }
                }
            }
            t.resetPendingAction();
            this.offsetToChildIndexOnLayout = -1;
            setTopAndBottomOffset(MathUtils.clamp(getTopAndBottomOffset(), -t.getTotalScrollRange(), 0));
            updateAppBarLayoutDrawableState(coordinatorLayout, t, getTopAndBottomOffset(), 0, true);
            t.dispatchOffsetUpdates(getTopAndBottomOffset());
            return onLayoutChild;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.design.widget.ViewOffsetBehavior, android.support.design.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
            return onLayoutChild(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i);
        }

        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3, int i4) {
            if (((CoordinatorLayout.LayoutParams) t.getLayoutParams()).height != -2) {
                return super.onMeasureChild(coordinatorLayout, (CoordinatorLayout) t, i, i2, i3, i4);
            }
            coordinatorLayout.onMeasureChild(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return onMeasureChild(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i, i2, i3, i4);
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            int i5;
            if (i2 != 0) {
                if (i2 < 0) {
                    int i6 = -t.getTotalScrollRange();
                    i5 = t.getDownNestedPreScrollRange() + i6;
                    i4 = i6;
                } else {
                    i4 = -t.getUpNestedPreScrollRange();
                    i5 = 0;
                }
                if (i4 != i5) {
                    iArr[1] = scroll(coordinatorLayout, t, i2, i4, i5);
                    stopNestedScrollIfNeeded(i2, t, view, i3);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int[] iArr, int i3) {
            onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i, i2, iArr, i3);
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int i3, int i4, int i5) {
            if (i4 < 0) {
                scroll(coordinatorLayout, t, i4, -t.getDownNestedScrollRange(), 0);
                stopNestedScrollIfNeeded(i4, t, view, i5);
            }
            if (t.isLiftOnScroll()) {
                t.setLiftedState(view.getScrollY() > 0);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5) {
            onNestedScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i, i2, i3, i4, i5);
        }

        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) t, savedState.getSuperState());
                this.offsetToChildIndexOnLayout = savedState.firstVisibleChildIndex;
                this.offsetToChildIndexOnLayoutPerc = savedState.firstVisibleChildPercentageShown;
                this.offsetToChildIndexOnLayoutIsMinHeight = savedState.firstVisibleChildAtMinimumHeight;
                return;
            }
            super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) t, parcelable);
            this.offsetToChildIndexOnLayout = -1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, View view, Parcelable parcelable) {
            onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), parcelable);
        }

        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, T t) {
            Parcelable onSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) t);
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = t.getChildCount();
            boolean z = false;
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(onSaveInstanceState);
                    savedState.firstVisibleChildIndex = i;
                    if (bottom == ViewCompat.getMinimumHeight(childAt) + t.getTopInset()) {
                        z = true;
                    }
                    savedState.firstVisibleChildAtMinimumHeight = z;
                    savedState.firstVisibleChildPercentageShown = bottom / childAt.getHeight();
                    return savedState;
                }
            }
            return onSaveInstanceState;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, View view) {
            return onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view));
        }

        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, T t, View view, View view2, int i, int i2) {
            boolean z = (i & 2) != 0 && (t.isLiftOnScroll() || canScrollChildren(coordinatorLayout, t, view));
            if (z && this.offsetAnimator != null) {
                this.offsetAnimator.cancel();
            }
            this.lastNestedScrollingChildRef = null;
            this.lastStartedType = i2;
            return z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            return onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, view3, i, i2);
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, T t, View view, int i) {
            if (this.lastStartedType == 0 || i == 1) {
                snapToChildIfNeeded(coordinatorLayout, t);
            }
            this.lastNestedScrollingChildRef = new WeakReference<>(view);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i) {
            onStopNestedScroll(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), view2, i);
        }

        public void setDragCallback(@Nullable BaseDragCallback baseDragCallback) {
            this.onDragCallback = baseDragCallback;
        }

        int setHeaderTopBottomOffset(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3) {
            int i4;
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            if (i2 == 0 || topBottomOffsetForScrollingSibling < i2 || topBottomOffsetForScrollingSibling > i3) {
                this.offsetDelta = 0;
                i4 = 0;
            } else {
                int clamp = MathUtils.clamp(i, i2, i3);
                i4 = 0;
                if (topBottomOffsetForScrollingSibling != clamp) {
                    int interpolateOffset = t.hasChildWithInterpolator() ? interpolateOffset(t, clamp) : clamp;
                    boolean topAndBottomOffset = setTopAndBottomOffset(interpolateOffset);
                    i4 = topBottomOffsetForScrollingSibling - clamp;
                    this.offsetDelta = clamp - interpolateOffset;
                    if (!topAndBottomOffset && t.hasChildWithInterpolator()) {
                        coordinatorLayout.dispatchDependentViewsChanged(t);
                    }
                    t.dispatchOffsetUpdates(getTopAndBottomOffset());
                    updateAppBarLayoutDrawableState(coordinatorLayout, t, clamp, clamp < topBottomOffsetForScrollingSibling ? -1 : 1, false);
                }
            }
            return i4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.design.widget.HeaderBehavior
        /* bridge */ /* synthetic */ int setHeaderTopBottomOffset(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3) {
            return setHeaderTopBottomOffset(coordinatorLayout, (CoordinatorLayout) ((AppBarLayout) view), i, i2, i3);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/design/widget/AppBarLayout$BaseOnOffsetChangedListener.class */
    public interface BaseOnOffsetChangedListener<T extends AppBarLayout> {
        void onOffsetChanged(T t, int i);
    }

    /* loaded from: classes-dex2jar.jar:android/support/design/widget/AppBarLayout$Behavior.class */
    public static class Behavior extends BaseBehavior<AppBarLayout> {

        /* loaded from: classes-dex2jar.jar:android/support/design/widget/AppBarLayout$Behavior$DragCallback.class */
        public static abstract class DragCallback extends BaseBehavior.BaseDragCallback<AppBarLayout> {
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.support.design.widget.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        @Override // android.support.design.widget.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            return super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i);
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3, int i4) {
            return super.onMeasureChild(coordinatorLayout, (CoordinatorLayout) appBarLayout, i, i2, i3, i4);
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedPreScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
            super.onNestedPreScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, iArr, i3);
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5) {
            super.onNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i, i2, i3, i4, i5);
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            super.onRestoreInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout, parcelable);
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            return super.onSaveInstanceState(coordinatorLayout, (CoordinatorLayout) appBarLayout);
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
            return super.onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, view2, i, i2);
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void onStopNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
            super.onStopNestedScroll(coordinatorLayout, (CoordinatorLayout) appBarLayout, view, i);
        }

        @Override // android.support.design.widget.AppBarLayout.BaseBehavior
        public /* bridge */ /* synthetic */ void setDragCallback(@Nullable BaseBehavior.BaseDragCallback baseDragCallback) {
            super.setDragCallback(baseDragCallback);
        }

        @Override // android.support.design.widget.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i) {
            return super.setLeftAndRightOffset(i);
        }

        @Override // android.support.design.widget.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i) {
            return super.setTopAndBottomOffset(i);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/design/widget/AppBarLayout$LayoutParams.class */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        static final int COLLAPSIBLE_FLAGS = 10;
        static final int FLAG_QUICK_RETURN = 5;
        static final int FLAG_SNAP = 17;
        public static final int SCROLL_FLAG_ENTER_ALWAYS = 4;
        public static final int SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED = 8;
        public static final int SCROLL_FLAG_EXIT_UNTIL_COLLAPSED = 2;
        public static final int SCROLL_FLAG_SCROLL = 1;
        public static final int SCROLL_FLAG_SNAP = 16;
        public static final int SCROLL_FLAG_SNAP_MARGINS = 32;
        int scrollFlags;
        Interpolator scrollInterpolator;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes-dex2jar.jar:android/support/design/widget/AppBarLayout$LayoutParams$ScrollFlags.class */
        public @interface ScrollFlags {
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.scrollFlags = 1;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2, f);
            this.scrollFlags = 1;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.scrollFlags = 1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0089R.styleable.AppBarLayout_Layout);
            this.scrollFlags = obtainStyledAttributes.getInt(C0089R.styleable.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (obtainStyledAttributes.hasValue(C0089R.styleable.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.scrollInterpolator = android.view.animation.AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(C0089R.styleable.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        @RequiresApi(19)
        public LayoutParams(LayoutParams layoutParams) {
            super((LinearLayout.LayoutParams) layoutParams);
            this.scrollFlags = 1;
            this.scrollFlags = layoutParams.scrollFlags;
            this.scrollInterpolator = layoutParams.scrollInterpolator;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.scrollFlags = 1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.scrollFlags = 1;
        }

        @RequiresApi(19)
        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.scrollFlags = 1;
        }

        public int getScrollFlags() {
            return this.scrollFlags;
        }

        public Interpolator getScrollInterpolator() {
            return this.scrollInterpolator;
        }

        boolean isCollapsible() {
            boolean z = true;
            if ((this.scrollFlags & 1) != 1 || (this.scrollFlags & 10) == 0) {
                z = false;
            }
            return z;
        }

        public void setScrollFlags(int i) {
            this.scrollFlags = i;
        }

        public void setScrollInterpolator(Interpolator interpolator) {
            this.scrollInterpolator = interpolator;
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/design/widget/AppBarLayout$OnOffsetChangedListener.class */
    public interface OnOffsetChangedListener extends BaseOnOffsetChangedListener<AppBarLayout> {
        @Override // android.support.design.widget.AppBarLayout.BaseOnOffsetChangedListener
        void onOffsetChanged(AppBarLayout appBarLayout, int i);
    }

    /* loaded from: classes-dex2jar.jar:android/support/design/widget/AppBarLayout$ScrollingViewBehavior.class */
    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0089R.styleable.ScrollingViewBehavior_Layout);
            setOverlayTop(obtainStyledAttributes.getDimensionPixelSize(C0089R.styleable.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            obtainStyledAttributes.recycle();
        }

        private static int getAppBarLayoutOffset(AppBarLayout appBarLayout) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) appBarLayout.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                return ((BaseBehavior) behavior).getTopBottomOffsetForScrollingSibling();
            }
            return 0;
        }

        private void offsetChildAsNeeded(View view, View view2) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior instanceof BaseBehavior) {
                ViewCompat.offsetTopAndBottom(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) behavior).offsetDelta) + getVerticalLayoutGap()) - getOverlapPixelsForOffset(view2));
            }
        }

        private void updateLiftedStateIfNeeded(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.isLiftOnScroll()) {
                    appBarLayout.setLiftedState(view.getScrollY() > 0);
                }
            }
        }

        @Override // android.support.design.widget.HeaderScrollingViewBehavior
        AppBarLayout findFirstDependency(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // android.support.design.widget.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        @Override // android.support.design.widget.HeaderScrollingViewBehavior
        float getOverlapRatioForOffset(View view) {
            int i;
            if (!(view instanceof AppBarLayout)) {
                return 0.0f;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int totalScrollRange = appBarLayout.getTotalScrollRange();
            int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
            int appBarLayoutOffset = getAppBarLayoutOffset(appBarLayout);
            if ((downNestedPreScrollRange == 0 || totalScrollRange + appBarLayoutOffset > downNestedPreScrollRange) && (i = totalScrollRange - downNestedPreScrollRange) != 0) {
                return (appBarLayoutOffset / i) + 1.0f;
            }
            return 0.0f;
        }

        @Override // android.support.design.widget.HeaderScrollingViewBehavior
        int getScrollRange(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.getScrollRange(view);
        }

        @Override // android.support.design.widget.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            offsetChildAsNeeded(view, view2);
            updateLiftedStateIfNeeded(view, view2);
            return false;
        }

        @Override // android.support.design.widget.ViewOffsetBehavior, android.support.design.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
            return super.onLayoutChild(coordinatorLayout, view, i);
        }

        @Override // android.support.design.widget.HeaderScrollingViewBehavior, android.support.design.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            return super.onMeasureChild(coordinatorLayout, view, i, i2, i3, i4);
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public boolean onRequestChildRectangleOnScreen(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout findFirstDependency = findFirstDependency(coordinatorLayout.getDependencies(view));
            if (findFirstDependency == null) {
                return false;
            }
            rect.offset(view.getLeft(), view.getTop());
            Rect rect2 = this.tempRect1;
            rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
            if (rect2.contains(rect)) {
                return false;
            }
            findFirstDependency.setExpanded(false, !z);
            return true;
        }

        @Override // android.support.design.widget.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i) {
            return super.setLeftAndRightOffset(i);
        }

        @Override // android.support.design.widget.ViewOffsetBehavior
        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i) {
            return super.setTopAndBottomOffset(i);
        }
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.totalScrollRange = -1;
        this.downPreScrollRange = -1;
        this.downScrollRange = -1;
        this.pendingAction = 0;
        setOrientation(1);
        if (Build.VERSION.SDK_INT >= 21) {
            ViewUtilsLollipop.setBoundsViewOutlineProvider(this);
            ViewUtilsLollipop.setStateListAnimatorFromAttrs(this, attributeSet, 0, C0089R.C0095style.Widget_Design_AppBarLayout);
        }
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, C0089R.styleable.AppBarLayout, 0, C0089R.C0095style.Widget_Design_AppBarLayout, new int[0]);
        ViewCompat.setBackground(this, obtainStyledAttributes.getDrawable(C0089R.styleable.AppBarLayout_android_background));
        if (obtainStyledAttributes.hasValue(C0089R.styleable.AppBarLayout_expanded)) {
            setExpanded(obtainStyledAttributes.getBoolean(C0089R.styleable.AppBarLayout_expanded, false), false, false);
        }
        if (Build.VERSION.SDK_INT >= 21 && obtainStyledAttributes.hasValue(C0089R.styleable.AppBarLayout_elevation)) {
            ViewUtilsLollipop.setDefaultAppBarLayoutStateListAnimator(this, obtainStyledAttributes.getDimensionPixelSize(C0089R.styleable.AppBarLayout_elevation, 0));
        }
        if (Build.VERSION.SDK_INT >= 26) {
            if (obtainStyledAttributes.hasValue(C0089R.styleable.AppBarLayout_android_keyboardNavigationCluster)) {
                setKeyboardNavigationCluster(obtainStyledAttributes.getBoolean(C0089R.styleable.AppBarLayout_android_keyboardNavigationCluster, false));
            }
            if (obtainStyledAttributes.hasValue(C0089R.styleable.AppBarLayout_android_touchscreenBlocksFocus)) {
                setTouchscreenBlocksFocus(obtainStyledAttributes.getBoolean(C0089R.styleable.AppBarLayout_android_touchscreenBlocksFocus, false));
            }
        }
        this.liftOnScroll = obtainStyledAttributes.getBoolean(C0089R.styleable.AppBarLayout_liftOnScroll, false);
        obtainStyledAttributes.recycle();
        ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() { // from class: android.support.design.widget.AppBarLayout.1
            @Override // android.support.p001v4.view.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return AppBarLayout.this.onWindowInsetChanged(windowInsetsCompat);
            }
        });
    }

    private boolean hasCollapsibleChild() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((LayoutParams) getChildAt(i).getLayoutParams()).isCollapsible()) {
                return true;
            }
        }
        return false;
    }

    private void invalidateScrollRanges() {
        this.totalScrollRange = -1;
        this.downPreScrollRange = -1;
        this.downScrollRange = -1;
    }

    private void setExpanded(boolean z, boolean z2, boolean z3) {
        int i = z ? 1 : 2;
        int i2 = 0;
        int i3 = z2 ? 4 : 0;
        if (z3) {
            i2 = 8;
        }
        this.pendingAction = i | i3 | i2;
        requestLayout();
    }

    private boolean setLiftableState(boolean z) {
        if (this.liftable == z) {
            return false;
        }
        this.liftable = z;
        refreshDrawableState();
        return true;
    }

    public void addOnOffsetChangedListener(BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        if (this.listeners == null) {
            this.listeners = new ArrayList();
        }
        if (baseOnOffsetChangedListener != null && !this.listeners.contains(baseOnOffsetChangedListener)) {
            this.listeners.add(baseOnOffsetChangedListener);
        }
    }

    public void addOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        addOnOffsetChangedListener((BaseOnOffsetChangedListener) onOffsetChangedListener);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    void dispatchOffsetUpdates(int i) {
        if (this.listeners != null) {
            int size = this.listeners.size();
            for (int i2 = 0; i2 < size; i2++) {
                BaseOnOffsetChangedListener baseOnOffsetChangedListener = this.listeners.get(i2);
                if (baseOnOffsetChangedListener != null) {
                    baseOnOffsetChangedListener.onOffsetChanged(this, i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (Build.VERSION.SDK_INT < 19 || !(layoutParams instanceof LinearLayout.LayoutParams)) ? layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams) : new LayoutParams((LinearLayout.LayoutParams) layoutParams);
    }

    int getDownNestedPreScrollRange() {
        if (this.downPreScrollRange != -1) {
            return this.downPreScrollRange;
        }
        int i = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i2 = layoutParams.scrollFlags;
            if ((i2 & 5) != 5) {
                i = i;
                if (i > 0) {
                    break;
                }
            } else {
                int i3 = i + layoutParams.topMargin + layoutParams.bottomMargin;
                i = (i2 & 8) != 0 ? i3 + ViewCompat.getMinimumHeight(childAt) : (i2 & 2) != 0 ? i3 + (measuredHeight - ViewCompat.getMinimumHeight(childAt)) : i3 + (measuredHeight - getTopInset());
            }
        }
        int max = Math.max(0, i);
        this.downPreScrollRange = max;
        return max;
    }

    int getDownNestedScrollRange() {
        int i;
        if (this.downScrollRange != -1) {
            return this.downScrollRange;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i4 = layoutParams.topMargin;
            int i5 = layoutParams.bottomMargin;
            int i6 = layoutParams.scrollFlags;
            i = i3;
            if ((i6 & 1) == 0) {
                break;
            }
            i3 += measuredHeight + i4 + i5;
            if ((i6 & 2) != 0) {
                i = i3 - (ViewCompat.getMinimumHeight(childAt) + getTopInset());
                break;
            }
            i2++;
        }
        int max = Math.max(0, i);
        this.downScrollRange = max;
        return max;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int minimumHeight = ViewCompat.getMinimumHeight(this);
        if (minimumHeight != 0) {
            return (minimumHeight * 2) + topInset;
        }
        int childCount = getChildCount();
        int minimumHeight2 = childCount >= 1 ? ViewCompat.getMinimumHeight(getChildAt(childCount - 1)) : 0;
        return minimumHeight2 != 0 ? (minimumHeight2 * 2) + topInset : getHeight() / 3;
    }

    int getPendingAction() {
        return this.pendingAction;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    @VisibleForTesting
    final int getTopInset() {
        return this.lastInsets != null ? this.lastInsets.getSystemWindowInsetTop() : 0;
    }

    public final int getTotalScrollRange() {
        int i;
        if (this.totalScrollRange != -1) {
            return this.totalScrollRange;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i4 = layoutParams.scrollFlags;
            i = i3;
            if ((i4 & 1) == 0) {
                break;
            }
            i3 += measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin;
            if ((i4 & 2) != 0) {
                i = i3 - ViewCompat.getMinimumHeight(childAt);
                break;
            }
            i2++;
        }
        int max = Math.max(0, i - getTopInset());
        this.totalScrollRange = max;
        return max;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    boolean hasChildWithInterpolator() {
        return this.haveChildWithInterpolator;
    }

    boolean hasScrollableChildren() {
        return getTotalScrollRange() != 0;
    }

    public boolean isLiftOnScroll() {
        return this.liftOnScroll;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        if (this.tmpStatesArray == null) {
            this.tmpStatesArray = new int[4];
        }
        int[] iArr = this.tmpStatesArray;
        int[] onCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        iArr[0] = this.liftable ? C0089R.C0090attr.state_liftable : -C0089R.C0090attr.state_liftable;
        iArr[1] = (!this.liftable || !this.lifted) ? -C0089R.C0090attr.state_lifted : C0089R.C0090attr.state_lifted;
        iArr[2] = this.liftable ? C0089R.C0090attr.state_collapsible : -C0089R.C0090attr.state_collapsible;
        iArr[3] = (!this.liftable || !this.lifted) ? -C0089R.C0090attr.state_collapsed : C0089R.C0090attr.state_collapsed;
        return mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        invalidateScrollRanges();
        boolean z2 = false;
        this.haveChildWithInterpolator = false;
        int childCount = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount) {
                break;
            } else if (((LayoutParams) getChildAt(i5).getLayoutParams()).getScrollInterpolator() != null) {
                this.haveChildWithInterpolator = true;
                break;
            } else {
                i5++;
            }
        }
        if (!this.liftableOverride) {
            if (this.liftOnScroll || hasCollapsibleChild()) {
                z2 = true;
            }
            setLiftableState(z2);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        invalidateScrollRanges();
    }

    WindowInsetsCompat onWindowInsetChanged(WindowInsetsCompat windowInsetsCompat) {
        WindowInsetsCompat windowInsetsCompat2 = ViewCompat.getFitsSystemWindows(this) ? windowInsetsCompat : null;
        if (!ObjectsCompat.equals(this.lastInsets, windowInsetsCompat2)) {
            this.lastInsets = windowInsetsCompat2;
            invalidateScrollRanges();
        }
        return windowInsetsCompat;
    }

    public void removeOnOffsetChangedListener(BaseOnOffsetChangedListener baseOnOffsetChangedListener) {
        if (this.listeners != null && baseOnOffsetChangedListener != null) {
            this.listeners.remove(baseOnOffsetChangedListener);
        }
    }

    public void removeOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        removeOnOffsetChangedListener((BaseOnOffsetChangedListener) onOffsetChangedListener);
    }

    void resetPendingAction() {
        this.pendingAction = 0;
    }

    public void setExpanded(boolean z) {
        setExpanded(z, ViewCompat.isLaidOut(this));
    }

    public void setExpanded(boolean z, boolean z2) {
        setExpanded(z, z2, true);
    }

    public void setLiftOnScroll(boolean z) {
        this.liftOnScroll = z;
    }

    public boolean setLiftable(boolean z) {
        this.liftableOverride = true;
        return setLiftableState(z);
    }

    public boolean setLifted(boolean z) {
        return setLiftedState(z);
    }

    boolean setLiftedState(boolean z) {
        if (this.lifted == z) {
            return false;
        }
        this.lifted = z;
        refreshDrawableState();
        return true;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    @Deprecated
    public void setTargetElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            ViewUtilsLollipop.setDefaultAppBarLayoutStateListAnimator(this, f);
        }
    }
}
