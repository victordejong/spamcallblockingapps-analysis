package com.mopub.common;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Drawables;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/CloseableLayout.class */
public class CloseableLayout extends FrameLayout {

    /* renamed from: a */
    public final int f33678a;

    /* renamed from: b */
    public OnCloseListener f33679b;

    /* renamed from: c */
    public final StateListDrawable f33680c;

    /* renamed from: d */
    public ClosePosition f33681d;

    /* renamed from: e */
    public final int f33682e;

    /* renamed from: f */
    public final int f33683f;

    /* renamed from: g */
    public final int f33684g;

    /* renamed from: h */
    public boolean f33685h;

    /* renamed from: i */
    public final Rect f33686i;

    /* renamed from: j */
    public final Rect f33687j;

    /* renamed from: k */
    public final Rect f33688k;

    /* renamed from: l */
    public final Rect f33689l;

    /* renamed from: m */
    public boolean f33690m;

    /* renamed from: n */
    public RunnableC8691b f33691n;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/CloseableLayout$ClosePosition.class */
    public enum ClosePosition {
        TOP_LEFT(51),
        TOP_CENTER(49),
        TOP_RIGHT(53),
        CENTER(17),
        BOTTOM_LEFT(83),
        BOTTOM_CENTER(81),
        BOTTOM_RIGHT(85);
        
        public final int mGravity;

        ClosePosition(int i) {
            this.mGravity = i;
        }

        public int getGravity() {
            return this.mGravity;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/CloseableLayout$OnCloseListener.class */
    public interface OnCloseListener {
        void onClose();
    }

    /* renamed from: com.mopub.common.CloseableLayout$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/CloseableLayout$b.class */
    public final class RunnableC8691b implements Runnable {
        public RunnableC8691b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloseableLayout.this.setClosePressed(false);
        }
    }

    public CloseableLayout(Context context) {
        this(context, null, 0);
    }

    public CloseableLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CloseableLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f33686i = new Rect();
        this.f33687j = new Rect();
        this.f33688k = new Rect();
        this.f33689l = new Rect();
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f33680c = stateListDrawable;
        this.f33681d = ClosePosition.TOP_RIGHT;
        stateListDrawable.addState(FrameLayout.SELECTED_STATE_SET, Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.createDrawable(context));
        this.f33680c.addState(FrameLayout.EMPTY_STATE_SET, Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.createDrawable(context));
        this.f33680c.setState(FrameLayout.EMPTY_STATE_SET);
        this.f33680c.setCallback(this);
        this.f33678a = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f33682e = Dips.asIntPixels(50.0f, context);
        this.f33683f = Dips.asIntPixels(30.0f, context);
        this.f33684g = Dips.asIntPixels(8.0f, context);
        setWillNotDraw(false);
        this.f33690m = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClosePressed(boolean z) {
        if (z != m4699a()) {
            this.f33680c.setState(z ? FrameLayout.SELECTED_STATE_SET : FrameLayout.EMPTY_STATE_SET);
            invalidate(this.f33687j);
        }
    }

    /* renamed from: a */
    public final void m4697a(ClosePosition closePosition, int i, Rect rect, Rect rect2) {
        Gravity.apply(closePosition.getGravity(), i, i, rect, rect2);
    }

    /* renamed from: a */
    public final void m4696a(ClosePosition closePosition, Rect rect, Rect rect2) {
        m4697a(closePosition, this.f33683f, rect, rect2);
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m4699a() {
        return this.f33680c.getState() == FrameLayout.SELECTED_STATE_SET;
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m4698a(int i, int i2, int i3) {
        Rect rect = this.f33687j;
        return i >= rect.left - i3 && i2 >= rect.top - i3 && i < rect.right + i3 && i2 < rect.bottom + i3;
    }

    public void applyCloseRegionBounds(ClosePosition closePosition, Rect rect, Rect rect2) {
        m4697a(closePosition, this.f33682e, rect, rect2);
    }

    /* renamed from: b */
    public final void m4694b() {
        playSoundEffect(0);
        OnCloseListener onCloseListener = this.f33679b;
        if (onCloseListener != null) {
            onCloseListener.onClose();
        }
    }

    @VisibleForTesting
    /* renamed from: c */
    public boolean m4693c() {
        return this.f33690m || this.f33680c.isVisible();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f33685h) {
            this.f33685h = false;
            this.f33686i.set(0, 0, getWidth(), getHeight());
            applyCloseRegionBounds(this.f33681d, this.f33686i, this.f33687j);
            this.f33689l.set(this.f33687j);
            Rect rect = this.f33689l;
            int i = this.f33684g;
            rect.inset(i, i);
            m4696a(this.f33681d, this.f33689l, this.f33688k);
            this.f33680c.setBounds(this.f33688k);
        }
        if (this.f33680c.isVisible()) {
            this.f33680c.draw(canvas);
        }
    }

    @VisibleForTesting
    public Rect getCloseBounds() {
        return this.f33687j;
    }

    @VisibleForTesting
    public boolean isCloseVisible() {
        return this.f33680c.isVisible();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        return m4698a((int) motionEvent.getX(), (int) motionEvent.getY(), 0);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f33685h = true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!m4698a((int) motionEvent.getX(), (int) motionEvent.getY(), this.f33678a) || !m4693c()) {
            setClosePressed(false);
            super.onTouchEvent(motionEvent);
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            setClosePressed(true);
            return true;
        } else if (action != 1) {
            if (action != 3) {
                return true;
            }
            setClosePressed(false);
            return true;
        } else if (!m4699a()) {
            return true;
        } else {
            if (this.f33691n == null) {
                this.f33691n = new RunnableC8691b();
            }
            postDelayed(this.f33691n, ViewConfiguration.getPressedStateDuration());
            m4694b();
            return true;
        }
    }

    public void setCloseAlwaysInteractable(boolean z) {
        this.f33690m = z;
    }

    @VisibleForTesting
    public void setCloseBoundChanged(boolean z) {
        this.f33685h = z;
    }

    @VisibleForTesting
    public void setCloseBounds(Rect rect) {
        this.f33687j.set(rect);
    }

    public void setClosePosition(ClosePosition closePosition) {
        Preconditions.checkNotNull(closePosition);
        this.f33681d = closePosition;
        this.f33685h = true;
        invalidate();
    }

    public void setCloseVisible(boolean z) {
        if (this.f33680c.setVisible(z, false)) {
            invalidate(this.f33687j);
        }
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.f33679b = onCloseListener;
    }
}
