package com.privacystar.core.p011ui.widgets;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.LinearSnapHelper;
import android.support.p004v7.widget.OrientationHelper;
import android.support.p004v7.widget.RecyclerView;
import android.view.View;
/* renamed from: com.privacystar.core.ui.widgets.EdgeSnapHelper */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/EdgeSnapHelper.class */
public class EdgeSnapHelper extends LinearSnapHelper {
    private OrientationHelper horizontalHelper;
    private OrientationHelper verticalHelper;

    private int distanceToStart(View view, OrientationHelper orientationHelper) {
        return orientationHelper.getDecoratedStart(view) - orientationHelper.getStartAfterPadding();
    }

    private OrientationHelper getHorizontalHelper(RecyclerView.LayoutManager layoutManager) {
        if (this.horizontalHelper == null) {
            this.horizontalHelper = OrientationHelper.createHorizontalHelper(layoutManager);
        }
        return this.horizontalHelper;
    }

    private View getStartView(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        if (!(layoutManager instanceof LinearLayoutManager)) {
            return super.findSnapView(layoutManager);
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        int findFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        boolean z = linearLayoutManager.findLastCompletelyVisibleItemPosition() == layoutManager.getItemCount() - 1;
        if (findFirstVisibleItemPosition == -1 || z) {
            return null;
        }
        View findViewByPosition = layoutManager.findViewByPosition(findFirstVisibleItemPosition);
        if (orientationHelper.getDecoratedEnd(findViewByPosition) >= orientationHelper.getDecoratedMeasurement(findViewByPosition) / 2 && orientationHelper.getDecoratedEnd(findViewByPosition) > 0) {
            return findViewByPosition;
        }
        if (linearLayoutManager.findLastCompletelyVisibleItemPosition() == layoutManager.getItemCount() - 1) {
            return null;
        }
        return layoutManager.findViewByPosition(findFirstVisibleItemPosition + 1);
    }

    private OrientationHelper getVerticalHelper(RecyclerView.LayoutManager layoutManager) {
        if (this.verticalHelper == null) {
            this.verticalHelper = OrientationHelper.createVerticalHelper(layoutManager);
        }
        return this.verticalHelper;
    }

    @Override // android.support.p004v7.widget.SnapHelper
    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) throws IllegalStateException {
        super.attachToRecyclerView(recyclerView);
    }

    @Override // android.support.p004v7.widget.LinearSnapHelper, android.support.p004v7.widget.SnapHelper
    public int[] calculateDistanceToFinalSnap(@NonNull RecyclerView.LayoutManager layoutManager, @NonNull View view) {
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = distanceToStart(view, getHorizontalHelper(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iArr[1] = distanceToStart(view, getVerticalHelper(layoutManager));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // android.support.p004v7.widget.LinearSnapHelper, android.support.p004v7.widget.SnapHelper
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        return layoutManager instanceof LinearLayoutManager ? layoutManager.canScrollHorizontally() ? getStartView(layoutManager, getHorizontalHelper(layoutManager)) : getStartView(layoutManager, getVerticalHelper(layoutManager)) : super.findSnapView(layoutManager);
    }
}
