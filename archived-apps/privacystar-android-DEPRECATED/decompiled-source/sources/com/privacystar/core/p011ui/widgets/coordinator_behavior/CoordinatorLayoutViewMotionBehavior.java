package com.privacystar.core.p011ui.widgets.coordinator_behavior;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.CoordinatorLayout;
import android.support.p004v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.View;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.util.DensityUtil;
import com.privacystar.core.util.MathUtil;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
/* renamed from: com.privacystar.core.ui.widgets.coordinator_behavior.CoordinatorLayoutViewMotionBehavior */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/coordinator_behavior/CoordinatorLayoutViewMotionBehavior.class */
public class CoordinatorLayoutViewMotionBehavior<T extends View> extends CoordinatorLayout.Behavior<T> {
    private static final int EXTRA_FINAL_AVATAR_PADDING = 80;
    private static final float MIN_APP_BAR_SHOWING_PCT = 0.1f;
    private static final float MIN_AVATAR_PERCENTAGE_SIZE = 0.3f;
    private static final String TAG = "behavior";
    private float mAvatarMaxSize;
    private float mChangeBehaviorPoint;
    private Context mContext;
    private float mCustomFinalHeight;
    private float mCustomFinalXPosition;
    private float mCustomFinalYPosition;
    private float mCustomStartHeight;
    private float mCustomStartToolbarPosition;
    private float mCustomStartXPosition;
    private float mCustomStartYPosition;
    private float mFinalLeftAvatarPadding;
    private int mFinalXPosition;
    private int mFinalYPosition;
    private boolean mShouldScale;
    private int mStartHeight;
    private float mStartPosition;
    private float mStartToolbarPosition;
    private int mStartXPosition;
    private int mStartYPosition;
    private Toolbar mToolbar;

    public CoordinatorLayoutViewMotionBehavior(Context context, AttributeSet attributeSet) {
        this.mShouldScale = false;
        this.mContext = context;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1566R.styleable.CoordinatorBehaviorMotion);
            this.mCustomFinalYPosition = obtainStyledAttributes.getDimension(3, 0.0f);
            this.mCustomFinalXPosition = obtainStyledAttributes.getDimension(2, 0.0f);
            this.mCustomStartXPosition = obtainStyledAttributes.getDimension(8, 0.0f);
            this.mCustomStartYPosition = obtainStyledAttributes.getDimension(9, 0.0f);
            this.mCustomStartToolbarPosition = obtainStyledAttributes.getDimension(7, 0.0f);
            this.mCustomStartHeight = obtainStyledAttributes.getDimension(6, 0.0f);
            this.mCustomFinalHeight = obtainStyledAttributes.getDimension(0, 0.0f);
            this.mShouldScale = obtainStyledAttributes.getBoolean(5, false);
            if (MathUtil.almostEqual(this.mCustomStartHeight, this.mCustomFinalHeight)) {
                this.mShouldScale = false;
            }
            obtainStyledAttributes.recycle();
        }
        init();
        this.mFinalLeftAvatarPadding = DensityUtil.dpToPx(context, 16);
    }

    private void bindDimensions() {
        this.mAvatarMaxSize = this.mContext.getResources().getDimension(C1566R.dimen.image_width);
    }

    private void init() {
        bindDimensions();
    }

    private void maybeInitProperties(T t, View view) {
        if (this.mStartYPosition == 0) {
            this.mStartYPosition = (int) ((t.getHeight() / 2) + this.mCustomStartYPosition);
        }
        if (this.mFinalYPosition == 0) {
            this.mFinalYPosition = (int) ((t.getHeight() / 2) + this.mCustomFinalYPosition);
        }
        if (this.mStartHeight == 0) {
            this.mStartHeight = (int) (MathUtil.almostEqual(this.mCustomStartHeight, 0.0f) ? t.getHeight() : this.mCustomStartHeight);
        }
        if (this.mStartXPosition == 0) {
            this.mStartXPosition = view.getWidth() / 2;
        }
        if (this.mFinalXPosition == 0) {
            this.mFinalXPosition = (int) (MathUtil.almostEqual(this.mCustomFinalXPosition, 0.0f) ? t.getX() : this.mCustomFinalXPosition + (t.getWidth() / 2));
        }
        if (MathUtil.almostEqual(this.mStartToolbarPosition, 0.0f)) {
            this.mStartToolbarPosition = view.getHeight();
        }
        if (MathUtil.almostEqual(this.mChangeBehaviorPoint, 0.0f)) {
            this.mChangeBehaviorPoint = (t.getHeight() - this.mCustomFinalHeight) / (((this.mStartYPosition - this.mFinalYPosition) * 2.0f) + 1.0f);
        }
    }

    public int getStatusBarHeight() {
        int identifier = this.mContext.getResources().getIdentifier("status_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        return identifier > 0 ? this.mContext.getResources().getDimensionPixelSize(identifier) : 0;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, T t, View view) {
        if (view instanceof Toolbar) {
            this.mToolbar = (Toolbar) view;
        }
        return view instanceof AppBarLayout;
    }

    @Override // android.support.design.widget.CoordinatorLayout.Behavior
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, T t, View view) {
        maybeInitProperties(t, view);
        t.bringToFront();
        float abs = (Math.abs(view.getY()) / ((int) this.mStartToolbarPosition)) - MIN_APP_BAR_SHOWING_PCT;
        abs = 0.0f;
        if (abs < 0.0f) {
        }
        float f = this.mStartXPosition - this.mFinalXPosition;
        float width = t.getWidth() / 2;
        float f2 = this.mStartYPosition - this.mFinalYPosition;
        t.setX(this.mStartXPosition - ((f * abs) + width));
        t.setY(this.mStartYPosition - ((f2 * (1.0f - abs)) + (t.getHeight() / 2)));
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) t.getLayoutParams();
        if (this.mShouldScale) {
            float f3 = (this.mStartHeight - this.mCustomFinalHeight) * abs;
            layoutParams.width = (int) (this.mStartHeight - f3);
            layoutParams.height = (int) (this.mStartHeight - f3);
        }
        t.setLayoutParams(layoutParams);
        return false;
    }
}
