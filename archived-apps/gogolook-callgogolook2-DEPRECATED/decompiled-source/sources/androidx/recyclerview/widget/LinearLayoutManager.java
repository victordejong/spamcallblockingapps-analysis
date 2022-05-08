package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.FragmentTransaction;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager.class */
public class LinearLayoutManager extends RecyclerView.LayoutManager implements ItemTouchHelper.ViewDropHandler, RecyclerView.SmoothScroller.ScrollVectorProvider {
    public static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    public static final float MAX_SCROLL_FACTOR = 0.33333334f;
    public static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    public final AnchorInfo mAnchorInfo;
    public int mInitialPrefetchItemCount;
    public boolean mLastStackFromEnd;
    public final LayoutChunkResult mLayoutChunkResult;
    public LayoutState mLayoutState;
    public int mOrientation;
    public OrientationHelper mOrientationHelper;
    public SavedState mPendingSavedState;
    public int mPendingScrollPosition;
    public int mPendingScrollPositionOffset;
    public boolean mRecycleChildrenOnDetach;
    public int[] mReusableIntPair;
    public boolean mReverseLayout;
    public boolean mShouldReverseLayout;
    public boolean mSmoothScrollbarEnabled;
    public boolean mStackFromEnd;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$AnchorInfo.class */
    public static class AnchorInfo {
        public int mCoordinate;
        public boolean mLayoutFromEnd;
        public OrientationHelper mOrientationHelper;
        public int mPosition;
        public boolean mValid;

        public AnchorInfo() {
            reset();
        }

        public void assignCoordinateFromPadding() {
            this.mCoordinate = this.mLayoutFromEnd ? this.mOrientationHelper.getEndAfterPadding() : this.mOrientationHelper.getStartAfterPadding();
        }

        public void assignFromView(View view, int i) {
            if (this.mLayoutFromEnd) {
                this.mCoordinate = this.mOrientationHelper.getDecoratedEnd(view) + this.mOrientationHelper.getTotalSpaceChange();
            } else {
                this.mCoordinate = this.mOrientationHelper.getDecoratedStart(view);
            }
            this.mPosition = i;
        }

        public void assignFromViewAndKeepVisibleRect(View view, int i) {
            int totalSpaceChange = this.mOrientationHelper.getTotalSpaceChange();
            if (totalSpaceChange >= 0) {
                assignFromView(view, i);
                return;
            }
            this.mPosition = i;
            if (this.mLayoutFromEnd) {
                int endAfterPadding = (this.mOrientationHelper.getEndAfterPadding() - totalSpaceChange) - this.mOrientationHelper.getDecoratedEnd(view);
                this.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - endAfterPadding;
                if (endAfterPadding > 0) {
                    int decoratedMeasurement = this.mOrientationHelper.getDecoratedMeasurement(view);
                    int i2 = this.mCoordinate;
                    int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                    int min = (i2 - decoratedMeasurement) - (startAfterPadding + Math.min(this.mOrientationHelper.getDecoratedStart(view) - startAfterPadding, 0));
                    if (min < 0) {
                        this.mCoordinate += Math.min(endAfterPadding, -min);
                        return;
                    }
                    return;
                }
                return;
            }
            int decoratedStart = this.mOrientationHelper.getDecoratedStart(view);
            int startAfterPadding2 = decoratedStart - this.mOrientationHelper.getStartAfterPadding();
            this.mCoordinate = decoratedStart;
            if (startAfterPadding2 > 0) {
                int decoratedMeasurement2 = this.mOrientationHelper.getDecoratedMeasurement(view);
                int endAfterPadding2 = (this.mOrientationHelper.getEndAfterPadding() - Math.min(0, (this.mOrientationHelper.getEndAfterPadding() - totalSpaceChange) - this.mOrientationHelper.getDecoratedEnd(view))) - (decoratedStart + decoratedMeasurement2);
                if (endAfterPadding2 < 0) {
                    this.mCoordinate -= Math.min(startAfterPadding2, -endAfterPadding2);
                }
            }
        }

        public boolean isViewValidAsAnchor(View view, RecyclerView.State state) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            return !layoutParams.isItemRemoved() && layoutParams.getViewLayoutPosition() >= 0 && layoutParams.getViewLayoutPosition() < state.getItemCount();
        }

        public void reset() {
            this.mPosition = -1;
            this.mCoordinate = Integer.MIN_VALUE;
            this.mLayoutFromEnd = false;
            this.mValid = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.mPosition + ", mCoordinate=" + this.mCoordinate + ", mLayoutFromEnd=" + this.mLayoutFromEnd + ", mValid=" + this.mValid + '}';
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult.class */
    public static class LayoutChunkResult {
        public int mConsumed;
        public boolean mFinished;
        public boolean mFocusable;
        public boolean mIgnoreConsumed;

        public void resetInternal() {
            this.mConsumed = 0;
            this.mFinished = false;
            this.mIgnoreConsumed = false;
            this.mFocusable = false;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$LayoutState.class */
    public static class LayoutState {
        public static final int INVALID_LAYOUT = Integer.MIN_VALUE;
        public static final int ITEM_DIRECTION_HEAD = -1;
        public static final int ITEM_DIRECTION_TAIL = 1;
        public static final int LAYOUT_END = 1;
        public static final int LAYOUT_START = -1;
        public static final int SCROLLING_OFFSET_NaN = Integer.MIN_VALUE;
        public static final String TAG = "LLM#LayoutState";
        public int mAvailable;
        public int mCurrentPosition;
        public boolean mInfinite;
        public int mItemDirection;
        public int mLastScrollDelta;
        public int mLayoutDirection;
        public int mOffset;
        public int mScrollingOffset;
        public boolean mRecycle = true;
        public int mExtraFillSpace = 0;
        public int mNoRecycleSpace = 0;
        public boolean mIsPreLayout = false;
        public List<RecyclerView.ViewHolder> mScrapList = null;

        private View nextViewFromScrapList() {
            int size = this.mScrapList.size();
            for (int i = 0; i < size; i++) {
                View view = this.mScrapList.get(i).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.isItemRemoved() && this.mCurrentPosition == layoutParams.getViewLayoutPosition()) {
                    assignPositionFromScrapList(view);
                    return view;
                }
            }
            return null;
        }

        public void assignPositionFromScrapList() {
            assignPositionFromScrapList(null);
        }

        public void assignPositionFromScrapList(View view) {
            View nextViewInLimitedList = nextViewInLimitedList(view);
            if (nextViewInLimitedList == null) {
                this.mCurrentPosition = -1;
            } else {
                this.mCurrentPosition = ((RecyclerView.LayoutParams) nextViewInLimitedList.getLayoutParams()).getViewLayoutPosition();
            }
        }

        public boolean hasMore(RecyclerView.State state) {
            int i = this.mCurrentPosition;
            return i >= 0 && i < state.getItemCount();
        }

        public void log() {
            String str = "avail:" + this.mAvailable + ", ind:" + this.mCurrentPosition + ", dir:" + this.mItemDirection + ", offset:" + this.mOffset + ", layoutDir:" + this.mLayoutDirection;
        }

        public View next(RecyclerView.Recycler recycler) {
            if (this.mScrapList != null) {
                return nextViewFromScrapList();
            }
            View viewForPosition = recycler.getViewForPosition(this.mCurrentPosition);
            this.mCurrentPosition += this.mItemDirection;
            return viewForPosition;
        }

        public View nextViewInLimitedList(View view) {
            View view2;
            int size = this.mScrapList.size();
            View view3 = null;
            int i = Integer.MAX_VALUE;
            int i2 = 0;
            while (true) {
                view2 = view3;
                if (i2 >= size) {
                    break;
                }
                View view4 = this.mScrapList.get(i2).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view4.getLayoutParams();
                view3 = view3;
                i = i;
                if (view4 != view) {
                    if (layoutParams.isItemRemoved()) {
                        view3 = view3;
                        i = i;
                    } else {
                        int viewLayoutPosition = (layoutParams.getViewLayoutPosition() - this.mCurrentPosition) * this.mItemDirection;
                        if (viewLayoutPosition < 0) {
                            view3 = view3;
                            i = i;
                        } else {
                            view3 = view3;
                            i = i;
                            if (viewLayoutPosition >= i) {
                                continue;
                            } else if (viewLayoutPosition == 0) {
                                view2 = view4;
                                break;
                            } else {
                                i = viewLayoutPosition;
                                view3 = view4;
                            }
                        }
                    }
                }
                i2++;
            }
            return view2;
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.recyclerview.widget.LinearLayoutManager.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public boolean mAnchorLayoutFromEnd;
        public int mAnchorOffset;
        public int mAnchorPosition;

        public SavedState() {
        }

        public SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mAnchorOffset = parcel.readInt();
            this.mAnchorLayoutFromEnd = parcel.readInt() != 1 ? false : true;
        }

        public SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
            this.mAnchorLayoutFromEnd = savedState.mAnchorLayoutFromEnd;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean hasValidAnchor() {
            return this.mAnchorPosition >= 0;
        }

        public void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
            parcel.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
        }
    }

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int i, boolean z) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new AnchorInfo();
        this.mLayoutChunkResult = new LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(i);
        setReverseLayout(z);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new AnchorInfo();
        this.mLayoutChunkResult = new LayoutChunkResult();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i, i2);
        setOrientation(properties.orientation);
        setReverseLayout(properties.reverseLayout);
        setStackFromEnd(properties.stackFromEnd);
    }

    private int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.computeScrollExtent(state, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.computeScrollOffset(state, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.computeScrollRange(state, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    private View findFirstPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount());
    }

    private View findFirstReferenceChild(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return findReferenceChild(recycler, state, 0, getChildCount(), state.getItemCount());
    }

    private View findLastPartiallyOrCompletelyInvisibleChild() {
        return findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
    }

    private View findLastReferenceChild(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return findReferenceChild(recycler, state, getChildCount() - 1, -1, state.getItemCount());
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToEnd() {
        return this.mShouldReverseLayout ? findFirstPartiallyOrCompletelyInvisibleChild() : findLastPartiallyOrCompletelyInvisibleChild();
    }

    private View findPartiallyOrCompletelyInvisibleChildClosestToStart() {
        return this.mShouldReverseLayout ? findLastPartiallyOrCompletelyInvisibleChild() : findFirstPartiallyOrCompletelyInvisibleChild();
    }

    private View findReferenceChildClosestToEnd(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.mShouldReverseLayout ? findFirstReferenceChild(recycler, state) : findLastReferenceChild(recycler, state);
    }

    private View findReferenceChildClosestToStart(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.mShouldReverseLayout ? findLastReferenceChild(recycler, state) : findFirstReferenceChild(recycler, state);
    }

    private int fixLayoutEndGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int endAfterPadding;
        int endAfterPadding2 = this.mOrientationHelper.getEndAfterPadding() - i;
        if (endAfterPadding2 <= 0) {
            return 0;
        }
        int i2 = -scrollBy(-endAfterPadding2, recycler, state);
        if (!z || (endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - (i + i2)) <= 0) {
            return i2;
        }
        this.mOrientationHelper.offsetChildren(endAfterPadding);
        return endAfterPadding + i2;
    }

    private int fixLayoutStartGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int startAfterPadding = i - this.mOrientationHelper.getStartAfterPadding();
        if (startAfterPadding <= 0) {
            return 0;
        }
        int i2 = -scrollBy(startAfterPadding, recycler, state);
        int i3 = i2;
        if (z) {
            int startAfterPadding2 = (i + i2) - this.mOrientationHelper.getStartAfterPadding();
            i3 = i2;
            if (startAfterPadding2 > 0) {
                this.mOrientationHelper.offsetChildren(-startAfterPadding2);
                i3 = i2 - startAfterPadding2;
            }
        }
        return i3;
    }

    private View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    private View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private void layoutForPredictiveAnimations(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2) {
        if (state.willRunPredictiveAnimations() && getChildCount() != 0 && !state.isPreLayout() && supportsPredictiveItemAnimations()) {
            List<RecyclerView.ViewHolder> scrapList = recycler.getScrapList();
            int size = scrapList.size();
            int position = getPosition(getChildAt(0));
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                RecyclerView.ViewHolder viewHolder = scrapList.get(i5);
                if (!viewHolder.isRemoved()) {
                    char c = 1;
                    if ((viewHolder.getLayoutPosition() < position) != this.mShouldReverseLayout) {
                        c = 65535;
                    }
                    if (c == 65535) {
                        i3 += this.mOrientationHelper.getDecoratedMeasurement(viewHolder.itemView);
                    } else {
                        i4 += this.mOrientationHelper.getDecoratedMeasurement(viewHolder.itemView);
                    }
                }
            }
            this.mLayoutState.mScrapList = scrapList;
            if (i3 > 0) {
                updateLayoutStateToFillStart(getPosition(getChildClosestToStart()), i);
                LayoutState layoutState = this.mLayoutState;
                layoutState.mExtraFillSpace = i3;
                layoutState.mAvailable = 0;
                layoutState.assignPositionFromScrapList();
                fill(recycler, this.mLayoutState, state, false);
            }
            if (i4 > 0) {
                updateLayoutStateToFillEnd(getPosition(getChildClosestToEnd()), i2);
                LayoutState layoutState2 = this.mLayoutState;
                layoutState2.mExtraFillSpace = i4;
                layoutState2.mAvailable = 0;
                layoutState2.assignPositionFromScrapList();
                fill(recycler, this.mLayoutState, state, false);
            }
            this.mLayoutState.mScrapList = null;
        }
    }

    private void logChildren() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            String str = "item " + getPosition(childAt) + ", coord:" + this.mOrientationHelper.getDecoratedStart(childAt);
        }
    }

    private void recycleByLayoutState(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (layoutState.mRecycle && !layoutState.mInfinite) {
            int i = layoutState.mScrollingOffset;
            int i2 = layoutState.mNoRecycleSpace;
            if (layoutState.mLayoutDirection == -1) {
                recycleViewsFromEnd(recycler, i, i2);
            } else {
                recycleViewsFromStart(recycler, i, i2);
            }
        }
    }

    private void recycleChildren(RecyclerView.Recycler recycler, int i, int i2) {
        if (i != i2) {
            if (i2 > i) {
                while (true) {
                    i2--;
                    if (i2 >= i) {
                        removeAndRecycleViewAt(i2, recycler);
                    } else {
                        return;
                    }
                }
            } else {
                for (int i3 = i; i3 > i2; i3--) {
                    removeAndRecycleViewAt(i3, recycler);
                }
            }
        }
    }

    private void recycleViewsFromEnd(RecyclerView.Recycler recycler, int i, int i2) {
        int childCount = getChildCount();
        if (i >= 0) {
            int end = (this.mOrientationHelper.getEnd() - i) + i2;
            if (this.mShouldReverseLayout) {
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = getChildAt(i3);
                    if (this.mOrientationHelper.getDecoratedStart(childAt) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt) < end) {
                        recycleChildren(recycler, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = childCount - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View childAt2 = getChildAt(i5);
                if (this.mOrientationHelper.getDecoratedStart(childAt2) < end || this.mOrientationHelper.getTransformedStartWithDecoration(childAt2) < end) {
                    recycleChildren(recycler, i4, i5);
                    return;
                }
            }
        }
    }

    private void recycleViewsFromStart(RecyclerView.Recycler recycler, int i, int i2) {
        if (i >= 0) {
            int i3 = i - i2;
            int childCount = getChildCount();
            if (this.mShouldReverseLayout) {
                int i4 = childCount - 1;
                for (int i5 = i4; i5 >= 0; i5--) {
                    View childAt = getChildAt(i5);
                    if (this.mOrientationHelper.getDecoratedEnd(childAt) > i3 || this.mOrientationHelper.getTransformedEndWithDecoration(childAt) > i3) {
                        recycleChildren(recycler, i4, i5);
                        return;
                    }
                }
                return;
            }
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt2 = getChildAt(i6);
                if (this.mOrientationHelper.getDecoratedEnd(childAt2) > i3 || this.mOrientationHelper.getTransformedEndWithDecoration(childAt2) > i3) {
                    recycleChildren(recycler, 0, i6);
                    return;
                }
            }
        }
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    private boolean updateAnchorFromChildren(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo) {
        boolean z = false;
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && anchorInfo.isViewValidAsAnchor(focusedChild, state)) {
            anchorInfo.assignFromViewAndKeepVisibleRect(focusedChild, getPosition(focusedChild));
            return true;
        } else if (this.mLastStackFromEnd != this.mStackFromEnd) {
            return false;
        } else {
            View findReferenceChildClosestToEnd = anchorInfo.mLayoutFromEnd ? findReferenceChildClosestToEnd(recycler, state) : findReferenceChildClosestToStart(recycler, state);
            if (findReferenceChildClosestToEnd == null) {
                return false;
            }
            anchorInfo.assignFromView(findReferenceChildClosestToEnd, getPosition(findReferenceChildClosestToEnd));
            if (state.isPreLayout() || !supportsPredictiveItemAnimations()) {
                return true;
            }
            if (this.mOrientationHelper.getDecoratedStart(findReferenceChildClosestToEnd) >= this.mOrientationHelper.getEndAfterPadding() || this.mOrientationHelper.getDecoratedEnd(findReferenceChildClosestToEnd) < this.mOrientationHelper.getStartAfterPadding()) {
                z = true;
            }
            if (!z) {
                return true;
            }
            anchorInfo.mCoordinate = anchorInfo.mLayoutFromEnd ? this.mOrientationHelper.getEndAfterPadding() : this.mOrientationHelper.getStartAfterPadding();
            return true;
        }
    }

    private boolean updateAnchorFromPendingData(RecyclerView.State state, AnchorInfo anchorInfo) {
        int i;
        boolean z = false;
        if (state.isPreLayout() || (i = this.mPendingScrollPosition) == -1) {
            return false;
        }
        if (i < 0 || i >= state.getItemCount()) {
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
            return false;
        }
        anchorInfo.mPosition = this.mPendingScrollPosition;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.hasValidAnchor()) {
            anchorInfo.mLayoutFromEnd = this.mPendingSavedState.mAnchorLayoutFromEnd;
            if (anchorInfo.mLayoutFromEnd) {
                anchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - this.mPendingSavedState.mAnchorOffset;
                return true;
            }
            anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + this.mPendingSavedState.mAnchorOffset;
            return true;
        } else if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
            View findViewByPosition = findViewByPosition(this.mPendingScrollPosition);
            if (findViewByPosition == null) {
                if (getChildCount() > 0) {
                    if ((this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout) {
                        z = true;
                    }
                    anchorInfo.mLayoutFromEnd = z;
                }
                anchorInfo.assignCoordinateFromPadding();
                return true;
            } else if (this.mOrientationHelper.getDecoratedMeasurement(findViewByPosition) > this.mOrientationHelper.getTotalSpace()) {
                anchorInfo.assignCoordinateFromPadding();
                return true;
            } else if (this.mOrientationHelper.getDecoratedStart(findViewByPosition) - this.mOrientationHelper.getStartAfterPadding() < 0) {
                anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding();
                anchorInfo.mLayoutFromEnd = false;
                return true;
            } else if (this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(findViewByPosition) < 0) {
                anchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding();
                anchorInfo.mLayoutFromEnd = true;
                return true;
            } else {
                anchorInfo.mCoordinate = anchorInfo.mLayoutFromEnd ? this.mOrientationHelper.getDecoratedEnd(findViewByPosition) + this.mOrientationHelper.getTotalSpaceChange() : this.mOrientationHelper.getDecoratedStart(findViewByPosition);
                return true;
            }
        } else {
            boolean z2 = this.mShouldReverseLayout;
            anchorInfo.mLayoutFromEnd = z2;
            if (z2) {
                anchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - this.mPendingScrollPositionOffset;
                return true;
            }
            anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + this.mPendingScrollPositionOffset;
            return true;
        }
    }

    private void updateAnchorInfoForLayout(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo) {
        if (!updateAnchorFromPendingData(state, anchorInfo) && !updateAnchorFromChildren(recycler, state, anchorInfo)) {
            anchorInfo.assignCoordinateFromPadding();
            anchorInfo.mPosition = this.mStackFromEnd ? state.getItemCount() - 1 : 0;
        }
    }

    private void updateLayoutState(int i, int i2, boolean z, RecyclerView.State state) {
        int i3;
        this.mLayoutState.mInfinite = resolveIsInfinite();
        this.mLayoutState.mLayoutDirection = i;
        int[] iArr = this.mReusableIntPair;
        boolean z2 = false;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int max = Math.max(0, this.mReusableIntPair[0]);
        int max2 = Math.max(0, this.mReusableIntPair[1]);
        if (i == 1) {
            z2 = true;
        }
        this.mLayoutState.mExtraFillSpace = z2 ? max2 : max;
        LayoutState layoutState = this.mLayoutState;
        if (!z2) {
            max = max2;
        }
        layoutState.mNoRecycleSpace = max;
        int i4 = -1;
        if (z2) {
            this.mLayoutState.mExtraFillSpace += this.mOrientationHelper.getEndPadding();
            View childClosestToEnd = getChildClosestToEnd();
            LayoutState layoutState2 = this.mLayoutState;
            if (!this.mShouldReverseLayout) {
                i4 = 1;
            }
            layoutState2.mItemDirection = i4;
            LayoutState layoutState3 = this.mLayoutState;
            int position = getPosition(childClosestToEnd);
            LayoutState layoutState4 = this.mLayoutState;
            layoutState3.mCurrentPosition = position + layoutState4.mItemDirection;
            layoutState4.mOffset = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
            i3 = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd) - this.mOrientationHelper.getEndAfterPadding();
        } else {
            View childClosestToStart = getChildClosestToStart();
            this.mLayoutState.mExtraFillSpace += this.mOrientationHelper.getStartAfterPadding();
            LayoutState layoutState5 = this.mLayoutState;
            if (this.mShouldReverseLayout) {
                i4 = 1;
            }
            layoutState5.mItemDirection = i4;
            LayoutState layoutState6 = this.mLayoutState;
            int position2 = getPosition(childClosestToStart);
            LayoutState layoutState7 = this.mLayoutState;
            layoutState6.mCurrentPosition = position2 + layoutState7.mItemDirection;
            layoutState7.mOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart);
            i3 = (-this.mOrientationHelper.getDecoratedStart(childClosestToStart)) + this.mOrientationHelper.getStartAfterPadding();
        }
        LayoutState layoutState8 = this.mLayoutState;
        layoutState8.mAvailable = i2;
        if (z) {
            layoutState8.mAvailable -= i3;
        }
        this.mLayoutState.mScrollingOffset = i3;
    }

    private void updateLayoutStateToFillEnd(int i, int i2) {
        this.mLayoutState.mAvailable = this.mOrientationHelper.getEndAfterPadding() - i2;
        this.mLayoutState.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
        LayoutState layoutState = this.mLayoutState;
        layoutState.mCurrentPosition = i;
        layoutState.mLayoutDirection = 1;
        layoutState.mOffset = i2;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    private void updateLayoutStateToFillEnd(AnchorInfo anchorInfo) {
        updateLayoutStateToFillEnd(anchorInfo.mPosition, anchorInfo.mCoordinate);
    }

    private void updateLayoutStateToFillStart(int i, int i2) {
        this.mLayoutState.mAvailable = i2 - this.mOrientationHelper.getStartAfterPadding();
        LayoutState layoutState = this.mLayoutState;
        layoutState.mCurrentPosition = i;
        layoutState.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
        LayoutState layoutState2 = this.mLayoutState;
        layoutState2.mLayoutDirection = -1;
        layoutState2.mOffset = i2;
        layoutState2.mScrollingOffset = Integer.MIN_VALUE;
    }

    private void updateLayoutStateToFillStart(AnchorInfo anchorInfo) {
        updateLayoutStateToFillStart(anchorInfo.mPosition, anchorInfo.mCoordinate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
        int i;
        int extraLayoutSpace = getExtraLayoutSpace(state);
        if (this.mLayoutState.mLayoutDirection == -1) {
            i = 0;
        } else {
            i = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        boolean z = true;
        if (this.mOrientation != 1) {
            z = false;
        }
        return z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void collectAdjacentPrefetchPositions(int i, int i2, RecyclerView.State state, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        if (this.mOrientation != 0) {
            i = i2;
        }
        if (getChildCount() != 0 && i != 0) {
            ensureLayoutState();
            updateLayoutState(i > 0 ? 1 : -1, Math.abs(i), true, state);
            collectPrefetchPositionsForLayoutState(state, this.mLayoutState, layoutPrefetchRegistry);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void collectInitialPrefetchPositions(int i, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i2;
        boolean z;
        SavedState savedState = this.mPendingSavedState;
        int i3 = -1;
        if (savedState == null || !savedState.hasValidAnchor()) {
            resolveShouldLayoutReverse();
            boolean z2 = this.mShouldReverseLayout;
            int i4 = this.mPendingScrollPosition;
            i2 = i4;
            z = z2;
            if (i4 == -1) {
                if (z2) {
                    i2 = i - 1;
                    z = z2;
                } else {
                    i2 = 0;
                    z = z2;
                }
            }
        } else {
            SavedState savedState2 = this.mPendingSavedState;
            z = savedState2.mAnchorLayoutFromEnd;
            i2 = savedState2.mAnchorPosition;
        }
        if (!z) {
            i3 = 1;
        }
        for (int i5 = 0; i5 < this.mInitialPrefetchItemCount && i2 >= 0 && i2 < i; i5++) {
            layoutPrefetchRegistry.addPosition(i2, 0);
            i2 += i3;
        }
    }

    public void collectPrefetchPositionsForLayoutState(RecyclerView.State state, LayoutState layoutState, RecyclerView.LayoutManager.LayoutPrefetchRegistry layoutPrefetchRegistry) {
        int i = layoutState.mCurrentPosition;
        if (i >= 0 && i < state.getItemCount()) {
            layoutPrefetchRegistry.addPosition(i, Math.max(0, layoutState.mScrollingOffset));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        boolean z = false;
        int i2 = 1;
        if (i < getPosition(getChildAt(0))) {
            z = true;
        }
        if (z != this.mShouldReverseLayout) {
            i2 = -1;
        }
        return this.mOrientation == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    public int convertFocusDirectionToLayoutDirection(int i) {
        int i2 = -1;
        int i3 = 1;
        int i4 = 1;
        if (i == 1) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
        }
        if (i == 2) {
            return (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1;
        }
        if (i == 17) {
            if (this.mOrientation != 0) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 33) {
            if (this.mOrientation != 1) {
                i2 = Integer.MIN_VALUE;
            }
            return i2;
        } else if (i == 66) {
            if (this.mOrientation != 0) {
                i3 = Integer.MIN_VALUE;
            }
            return i3;
        } else if (i != 130) {
            return Integer.MIN_VALUE;
        } else {
            if (this.mOrientation != 1) {
                i4 = Integer.MIN_VALUE;
            }
            return i4;
        }
    }

    public LayoutState createLayoutState() {
        return new LayoutState();
    }

    public void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x008f, code lost:
        if (r9.isPreLayout() == false) goto L_0x0092;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int fill(androidx.recyclerview.widget.RecyclerView.Recycler r7, androidx.recyclerview.widget.LinearLayoutManager.LayoutState r8, androidx.recyclerview.widget.RecyclerView.State r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.fill(androidx.recyclerview.widget.RecyclerView$Recycler, androidx.recyclerview.widget.LinearLayoutManager$LayoutState, androidx.recyclerview.widget.RecyclerView$State, boolean):int");
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        return findOneVisibleChild == null ? -1 : getPosition(findOneVisibleChild);
    }

    public View findFirstVisibleChildClosestToEnd(boolean z, boolean z2) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z, z2) : findOneVisibleChild(getChildCount() - 1, -1, z, z2);
    }

    public View findFirstVisibleChildClosestToStart(boolean z, boolean z2) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z, z2) : findOneVisibleChild(0, getChildCount(), z, z2);
    }

    public int findFirstVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        return findOneVisibleChild == null ? -1 : getPosition(findOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        int i = -1;
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (findOneVisibleChild != null) {
            i = getPosition(findOneVisibleChild);
        }
        return i;
    }

    public int findLastVisibleItemPosition() {
        int i = -1;
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (findOneVisibleChild != null) {
            i = getPosition(findOneVisibleChild);
        }
        return i;
    }

    public View findOnePartiallyOrCompletelyInvisibleChild(int i, int i2) {
        int i3;
        int i4;
        ensureLayoutState();
        if ((i2 > i ? (char) 1 : i2 < i ? (char) 65535 : (char) 0) == 0) {
            return getChildAt(i);
        }
        if (this.mOrientationHelper.getDecoratedStart(getChildAt(i)) < this.mOrientationHelper.getStartAfterPadding()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, i4) : this.mVerticalBoundCheck.findOneViewWithinBoundFlags(i, i2, i3, i4);
    }

    public View findOneVisibleChild(int i, int i2, boolean z, boolean z2) {
        ensureLayoutState();
        int i3 = 320;
        int i4 = z ? 24579 : 320;
        if (!z2) {
            i3 = 0;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.findOneViewWithinBoundFlags(i, i2, i4, i3) : this.mVerticalBoundCheck.findOneViewWithinBoundFlags(i, i2, i4, i3);
    }

    public View findReferenceChild(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2, int i3) {
        ensureLayoutState();
        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View childAt = getChildAt(i);
            int position = getPosition(childAt);
            view = view;
            view2 = view2;
            if (position >= 0) {
                view = view;
                view2 = view2;
                if (position >= i3) {
                    continue;
                } else if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    view = view;
                    view2 = view2;
                    if (view2 == null) {
                        view2 = childAt;
                        view = view;
                    }
                } else if (this.mOrientationHelper.getDecoratedStart(childAt) < endAfterPadding && this.mOrientationHelper.getDecoratedEnd(childAt) >= startAfterPadding) {
                    return childAt;
                } else {
                    view = view;
                    view2 = view2;
                    if (view == null) {
                        view = childAt;
                        view2 = view2;
                    }
                }
            }
            i += i4;
        }
        if (view != null) {
            view2 = view;
        }
        return view2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View findViewByPosition(int i) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i) {
                return childAt;
            }
        }
        return super.findViewByPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Deprecated
    public int getExtraLayoutSpace(RecyclerView.State state) {
        if (state.hasTargetScrollPosition()) {
            return this.mOrientationHelper.getTotalSpace();
        }
        return 0;
    }

    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public boolean isLayoutRTL() {
        boolean z = true;
        if (getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    public void layoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutState layoutState, LayoutChunkResult layoutChunkResult) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        View next = layoutState.next(recycler);
        if (next == null) {
            layoutChunkResult.mFinished = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) next.getLayoutParams();
        if (layoutState.mScrapList == null) {
            if (this.mShouldReverseLayout == (layoutState.mLayoutDirection == -1)) {
                addView(next);
            } else {
                addView(next, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (layoutState.mLayoutDirection == -1)) {
                addDisappearingView(next);
            } else {
                addDisappearingView(next, 0);
            }
        }
        measureChildWithMargins(next, 0, 0);
        layoutChunkResult.mConsumed = this.mOrientationHelper.getDecoratedMeasurement(next);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                i5 = getWidth() - getPaddingRight();
                i3 = i5 - this.mOrientationHelper.getDecoratedMeasurementInOther(next);
            } else {
                i3 = getPaddingLeft();
                i5 = this.mOrientationHelper.getDecoratedMeasurementInOther(next) + i3;
            }
            if (layoutState.mLayoutDirection == -1) {
                int i6 = layoutState.mOffset;
                i2 = i6;
                i = i5;
                i4 = i6 - layoutChunkResult.mConsumed;
            } else {
                int i7 = layoutState.mOffset;
                i = i5;
                i2 = layoutChunkResult.mConsumed + i7;
                i4 = i7;
            }
        } else {
            int paddingTop = getPaddingTop();
            int decoratedMeasurementInOther = this.mOrientationHelper.getDecoratedMeasurementInOther(next) + paddingTop;
            if (layoutState.mLayoutDirection == -1) {
                int i8 = layoutState.mOffset;
                i = i8;
                i2 = decoratedMeasurementInOther;
                i3 = i8 - layoutChunkResult.mConsumed;
                i4 = paddingTop;
            } else {
                int i9 = layoutState.mOffset;
                i = layoutChunkResult.mConsumed + i9;
                i2 = decoratedMeasurementInOther;
                i4 = paddingTop;
                i3 = i9;
            }
        }
        layoutDecoratedWithMargins(next, i3, i4, i, i2);
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            layoutChunkResult.mIgnoreConsumed = true;
        }
        layoutChunkResult.mFocusable = next.hasFocusable();
    }

    public void onAnchorReady(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo, int i) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int convertFocusDirectionToLayoutDirection;
        resolveShouldLayoutReverse();
        if (getChildCount() == 0 || (convertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        updateLayoutState(convertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.getTotalSpace() * 0.33333334f), false, state);
        LayoutState layoutState = this.mLayoutState;
        layoutState.mScrollingOffset = Integer.MIN_VALUE;
        layoutState.mRecycle = false;
        fill(recycler, layoutState, state, true);
        View findPartiallyOrCompletelyInvisibleChildClosestToStart = convertFocusDirectionToLayoutDirection == -1 ? findPartiallyOrCompletelyInvisibleChildClosestToStart() : findPartiallyOrCompletelyInvisibleChildClosestToEnd();
        View childClosestToStart = convertFocusDirectionToLayoutDirection == -1 ? getChildClosestToStart() : getChildClosestToEnd();
        if (!childClosestToStart.hasFocusable()) {
            return findPartiallyOrCompletelyInvisibleChildClosestToStart;
        }
        if (findPartiallyOrCompletelyInvisibleChildClosestToStart == null) {
            return null;
        }
        return childClosestToStart;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = -1;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && state.getItemCount() == 0) {
            removeAndRecycleAllViews(recycler);
            return;
        }
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.hasValidAnchor()) {
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
        }
        ensureLayoutState();
        this.mLayoutState.mRecycle = false;
        resolveShouldLayoutReverse();
        View focusedChild = getFocusedChild();
        if (!this.mAnchorInfo.mValid || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            this.mAnchorInfo.reset();
            AnchorInfo anchorInfo = this.mAnchorInfo;
            anchorInfo.mLayoutFromEnd = this.mShouldReverseLayout ^ this.mStackFromEnd;
            updateAnchorInfoForLayout(recycler, state, anchorInfo);
            this.mAnchorInfo.mValid = true;
        } else if (focusedChild != null && (this.mOrientationHelper.getDecoratedStart(focusedChild) >= this.mOrientationHelper.getEndAfterPadding() || this.mOrientationHelper.getDecoratedEnd(focusedChild) <= this.mOrientationHelper.getStartAfterPadding())) {
            this.mAnchorInfo.assignFromViewAndKeepVisibleRect(focusedChild, getPosition(focusedChild));
        }
        LayoutState layoutState = this.mLayoutState;
        layoutState.mLayoutDirection = layoutState.mLastScrollDelta >= 0 ? 1 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(state, iArr);
        int max = Math.max(0, this.mReusableIntPair[0]) + this.mOrientationHelper.getStartAfterPadding();
        int max2 = Math.max(0, this.mReusableIntPair[1]) + this.mOrientationHelper.getEndPadding();
        int i9 = max;
        int i10 = max2;
        if (state.isPreLayout()) {
            int i11 = this.mPendingScrollPosition;
            i9 = max;
            i10 = max2;
            if (i11 != -1) {
                i9 = max;
                i10 = max2;
                if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
                    View findViewByPosition = findViewByPosition(i11);
                    i9 = max;
                    i10 = max2;
                    if (findViewByPosition != null) {
                        if (this.mShouldReverseLayout) {
                            i7 = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(findViewByPosition);
                            i6 = this.mPendingScrollPositionOffset;
                        } else {
                            i6 = this.mOrientationHelper.getDecoratedStart(findViewByPosition) - this.mOrientationHelper.getStartAfterPadding();
                            i7 = this.mPendingScrollPositionOffset;
                        }
                        int i12 = i7 - i6;
                        if (i12 > 0) {
                            i9 = max + i12;
                            i10 = max2;
                        } else {
                            i10 = max2 - i12;
                            i9 = max;
                        }
                    }
                }
            }
        }
        if (!this.mAnchorInfo.mLayoutFromEnd ? !this.mShouldReverseLayout : this.mShouldReverseLayout) {
            i8 = 1;
        }
        onAnchorReady(recycler, state, this.mAnchorInfo, i8);
        detachAndScrapAttachedViews(recycler);
        this.mLayoutState.mInfinite = resolveIsInfinite();
        this.mLayoutState.mIsPreLayout = state.isPreLayout();
        this.mLayoutState.mNoRecycleSpace = 0;
        AnchorInfo anchorInfo2 = this.mAnchorInfo;
        if (anchorInfo2.mLayoutFromEnd) {
            updateLayoutStateToFillStart(anchorInfo2);
            LayoutState layoutState2 = this.mLayoutState;
            layoutState2.mExtraFillSpace = i9;
            fill(recycler, layoutState2, state, false);
            LayoutState layoutState3 = this.mLayoutState;
            int i13 = layoutState3.mOffset;
            int i14 = layoutState3.mCurrentPosition;
            int i15 = layoutState3.mAvailable;
            int i16 = i10;
            if (i15 > 0) {
                i16 = i10 + i15;
            }
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            LayoutState layoutState4 = this.mLayoutState;
            layoutState4.mExtraFillSpace = i16;
            layoutState4.mCurrentPosition += layoutState4.mItemDirection;
            fill(recycler, layoutState4, state, false);
            LayoutState layoutState5 = this.mLayoutState;
            int i17 = layoutState5.mOffset;
            int i18 = layoutState5.mAvailable;
            i = i13;
            i2 = i17;
            if (i18 > 0) {
                updateLayoutStateToFillStart(i14, i13);
                LayoutState layoutState6 = this.mLayoutState;
                layoutState6.mExtraFillSpace = i18;
                fill(recycler, layoutState6, state, false);
                i = this.mLayoutState.mOffset;
                i2 = i17;
            }
        } else {
            updateLayoutStateToFillEnd(anchorInfo2);
            LayoutState layoutState7 = this.mLayoutState;
            layoutState7.mExtraFillSpace = i10;
            fill(recycler, layoutState7, state, false);
            LayoutState layoutState8 = this.mLayoutState;
            int i19 = layoutState8.mOffset;
            int i20 = layoutState8.mCurrentPosition;
            int i21 = layoutState8.mAvailable;
            int i22 = i9;
            if (i21 > 0) {
                i22 = i9 + i21;
            }
            updateLayoutStateToFillStart(this.mAnchorInfo);
            LayoutState layoutState9 = this.mLayoutState;
            layoutState9.mExtraFillSpace = i22;
            layoutState9.mCurrentPosition += layoutState9.mItemDirection;
            fill(recycler, layoutState9, state, false);
            LayoutState layoutState10 = this.mLayoutState;
            int i23 = layoutState10.mOffset;
            int i24 = layoutState10.mAvailable;
            i = i23;
            i2 = i19;
            if (i24 > 0) {
                updateLayoutStateToFillEnd(i20, i19);
                LayoutState layoutState11 = this.mLayoutState;
                layoutState11.mExtraFillSpace = i24;
                fill(recycler, layoutState11, state, false);
                i2 = this.mLayoutState.mOffset;
                i = i23;
            }
        }
        int i25 = i;
        int i26 = i2;
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int fixLayoutEndGap = fixLayoutEndGap(i2, recycler, state, true);
                i5 = i + fixLayoutEndGap;
                i4 = i2 + fixLayoutEndGap;
                i3 = fixLayoutStartGap(i5, recycler, state, false);
            } else {
                int fixLayoutStartGap = fixLayoutStartGap(i, recycler, state, true);
                i5 = i + fixLayoutStartGap;
                i4 = i2 + fixLayoutStartGap;
                i3 = fixLayoutEndGap(i4, recycler, state, false);
            }
            i25 = i5 + i3;
            i26 = i4 + i3;
        }
        layoutForPredictiveAnimations(recycler, state, i25, i26);
        if (!state.isPreLayout()) {
            this.mOrientationHelper.onLayoutComplete();
        } else {
            this.mAnchorInfo.reset();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.reset();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.mPendingSavedState = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            savedState2.mAnchorLayoutFromEnd = z;
            if (z) {
                View childClosestToEnd = getChildClosestToEnd();
                savedState2.mAnchorOffset = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
                savedState2.mAnchorPosition = getPosition(childClosestToEnd);
            } else {
                View childClosestToStart = getChildClosestToStart();
                savedState2.mAnchorPosition = getPosition(childClosestToStart);
                savedState2.mAnchorOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart) - this.mOrientationHelper.getStartAfterPadding();
            }
        } else {
            savedState2.invalidateAnchor();
        }
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.ViewDropHandler
    public void prepareForDrop(@NonNull View view, @NonNull View view2, int i, int i2) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        resolveShouldLayoutReverse();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        char c = position < position2 ? (char) 1 : (char) 65535;
        if (this.mShouldReverseLayout) {
            if (c == 1) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.getEndAfterPadding() - (this.mOrientationHelper.getDecoratedStart(view2) + this.mOrientationHelper.getDecoratedMeasurement(view)));
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(view2));
            }
        } else if (c == 65535) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.getDecoratedStart(view2));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.getDecoratedEnd(view2) - this.mOrientationHelper.getDecoratedMeasurement(view));
        }
    }

    public boolean resolveIsInfinite() {
        return this.mOrientationHelper.getMode() == 0 && this.mOrientationHelper.getEnd() == 0;
    }

    public int scrollBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.mRecycle = true;
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        updateLayoutState(i2, abs, true, state);
        LayoutState layoutState = this.mLayoutState;
        int fill = layoutState.mScrollingOffset + fill(recycler, layoutState, state, false);
        if (fill < 0) {
            return 0;
        }
        if (abs > fill) {
            i = i2 * fill;
        }
        this.mOrientationHelper.offsetChildren(-i);
        this.mLayoutState.mLastScrollDelta = i;
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i, recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i, int i2) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = i2;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i, recycler, state);
    }

    public void setInitialPrefetchItemCount(int i) {
        this.mInitialPrefetchItemCount = i;
    }

    public void setOrientation(int i) {
        if (i == 0 || i == 1) {
            assertNotInLayoutOrScroll(null);
            if (i != this.mOrientation || this.mOrientationHelper == null) {
                this.mOrientationHelper = OrientationHelper.createOrientationHelper(this, i);
                this.mAnchorInfo.mOrientationHelper = this.mOrientationHelper;
                this.mOrientation = i;
                requestLayout();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("invalid orientation:" + i);
    }

    public void setRecycleChildrenOnDetach(boolean z) {
        this.mRecycleChildrenOnDetach = z;
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (z != this.mReverseLayout) {
            this.mReverseLayout = z;
            requestLayout();
        }
    }

    public void setSmoothScrollbarEnabled(boolean z) {
        this.mSmoothScrollbarEnabled = z;
    }

    public void setStackFromEnd(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd != z) {
            this.mStackFromEnd = z;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    public void validateChildOrder() {
        String str = "validating child count " + getChildCount();
        if (getChildCount() >= 1) {
            boolean z = false;
            boolean z2 = false;
            int position = getPosition(getChildAt(0));
            int decoratedStart = this.mOrientationHelper.getDecoratedStart(getChildAt(0));
            if (this.mShouldReverseLayout) {
                for (int i = 1; i < getChildCount(); i++) {
                    View childAt = getChildAt(i);
                    int position2 = getPosition(childAt);
                    int decoratedStart2 = this.mOrientationHelper.getDecoratedStart(childAt);
                    if (position2 < position) {
                        logChildren();
                        StringBuilder sb = new StringBuilder();
                        sb.append("detected invalid position. loc invalid? ");
                        if (decoratedStart2 < decoratedStart) {
                            z2 = true;
                        }
                        sb.append(z2);
                        throw new RuntimeException(sb.toString());
                    } else if (decoratedStart2 > decoratedStart) {
                        logChildren();
                        throw new RuntimeException("detected invalid location");
                    }
                }
                return;
            }
            for (int i2 = 1; i2 < getChildCount(); i2++) {
                View childAt2 = getChildAt(i2);
                int position3 = getPosition(childAt2);
                int decoratedStart3 = this.mOrientationHelper.getDecoratedStart(childAt2);
                if (position3 < position) {
                    logChildren();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("detected invalid position. loc invalid? ");
                    if (decoratedStart3 < decoratedStart) {
                        z = true;
                    }
                    sb2.append(z);
                    throw new RuntimeException(sb2.toString());
                } else if (decoratedStart3 < decoratedStart) {
                    logChildren();
                    throw new RuntimeException("detected invalid location");
                }
            }
        }
    }
}
