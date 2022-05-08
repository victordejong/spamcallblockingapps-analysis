package com.privacystar.core.p011ui.widgets;

import android.content.Context;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.OrientationHelper;
import android.support.p004v7.widget.RecyclerView;
import android.util.AttributeSet;
/* renamed from: com.privacystar.core.ui.widgets.LookaheadLinearLayoutManager */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/LookaheadLinearLayoutManager.class */
public class LookaheadLinearLayoutManager extends LinearLayoutManager {
    private OrientationHelper mOrientationHelper;
    private float mViewPages;

    public LookaheadLinearLayoutManager(Context context) {
        super(context);
        this.mViewPages = 1.0f;
    }

    public LookaheadLinearLayoutManager(Context context, float f) {
        super(context);
        this.mViewPages = 1.0f;
        this.mViewPages = f;
    }

    public LookaheadLinearLayoutManager(Context context, int i, boolean z) {
        super(context, i, z);
        this.mViewPages = 1.0f;
    }

    public LookaheadLinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mViewPages = 1.0f;
    }

    @Override // android.support.p004v7.widget.LinearLayoutManager
    protected int getExtraLayoutSpace(RecyclerView.State state) {
        if (this.mOrientationHelper == null) {
            this.mOrientationHelper = OrientationHelper.createOrientationHelper(this, getOrientation());
        }
        return Math.round(this.mViewPages * this.mOrientationHelper.getTotalSpace());
    }

    @Override // android.support.p004v7.widget.LinearLayoutManager
    public void setOrientation(int i) {
        super.setOrientation(i);
        this.mOrientationHelper = null;
    }

    public void setViewPages(float f) {
        this.mViewPages = f;
    }
}
