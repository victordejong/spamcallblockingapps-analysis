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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Drawables;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/CloseableLayout.class */
public class CloseableLayout extends FrameLayout {

    /* renamed from: a */
    public final int f8024a;
    @Nullable

    /* renamed from: b */
    public OnCloseListener f8025b;
    @NonNull

    /* renamed from: c */
    public final StateListDrawable f8026c;
    @NonNull

    /* renamed from: d */
    public ClosePosition f8027d;

    /* renamed from: e */
    public final int f8028e;

    /* renamed from: f */
    public final int f8029f;

    /* renamed from: g */
    public final int f8030g;

    /* renamed from: h */
    public boolean f8031h;

    /* renamed from: i */
    public final Rect f8032i;

    /* renamed from: j */
    public final Rect f8033j;

    /* renamed from: k */
    public final Rect f8034k;

    /* renamed from: l */
    public final Rect f8035l;

    /* renamed from: m */
    public boolean f8036m;
    @Nullable

    /* renamed from: n */
    public RunnableC3752b f8037n;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/CloseableLayout$ClosePosition.class */
    public enum ClosePosition {
        TOP_LEFT(51),
        TOP_CENTER(49),
        TOP_RIGHT(53),
        CENTER(17),
        BOTTOM_LEFT(83),
        BOTTOM_CENTER(81),
        BOTTOM_RIGHT(85);
        

        /* renamed from: a */
        public final int f8039a;

        ClosePosition(int i) {
            this.f8039a = i;
        }

        /* renamed from: a */
        public int m30847a() {
            return this.f8039a;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/CloseableLayout$OnCloseListener.class */
    public interface OnCloseListener {
        void onClose();
    }

    /* renamed from: com.mopub.common.CloseableLayout$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/CloseableLayout$b.class */
    public final class RunnableC3752b implements Runnable {
        public RunnableC3752b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CloseableLayout.this.m30850a(false);
        }
    }

    public CloseableLayout(@NonNull Context context) {
        this(context, null, 0);
    }

    public CloseableLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CloseableLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8032i = new Rect();
        this.f8033j = new Rect();
        this.f8034k = new Rect();
        this.f8035l = new Rect();
        this.f8026c = new StateListDrawable();
        this.f8027d = ClosePosition.TOP_RIGHT;
        this.f8026c.addState(FrameLayout.SELECTED_STATE_SET, Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.createDrawable(context));
        this.f8026c.addState(FrameLayout.EMPTY_STATE_SET, Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.createDrawable(context));
        this.f8026c.setState(FrameLayout.EMPTY_STATE_SET);
        this.f8026c.setCallback(this);
        this.f8024a = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f8028e = Dips.asIntPixels(50.0f, context);
        this.f8029f = Dips.asIntPixels(30.0f, context);
        this.f8030g = Dips.asIntPixels(8.0f, context);
        setWillNotDraw(false);
        this.f8036m = true;
    }

    /* renamed from: a */
    public final void m30853a(ClosePosition closePosition, int i, Rect rect, Rect rect2) {
        Gravity.apply(closePosition.m30847a(), i, i, rect, rect2);
    }

    /* renamed from: a */
    public final void m30852a(ClosePosition closePosition, Rect rect, Rect rect2) {
        m30853a(closePosition, this.f8029f, rect, rect2);
    }

    /* renamed from: a */
    public final void m30850a(boolean z) {
        if (z != m30855a()) {
            this.f8026c.setState(z ? FrameLayout.SELECTED_STATE_SET : FrameLayout.EMPTY_STATE_SET);
            invalidate(this.f8033j);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m30855a() {
        return this.f8026c.getState() == FrameLayout.SELECTED_STATE_SET;
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m30854a(int i, int i2, int i3) {
        Rect rect = this.f8033j;
        return i >= rect.left - i3 && i2 >= rect.top - i3 && i < rect.right + i3 && i2 < rect.bottom + i3;
    }

    public void applyCloseRegionBounds(ClosePosition closePosition, Rect rect, Rect rect2) {
        m30853a(closePosition, this.f8028e, rect, rect2);
    }

    /* renamed from: b */
    public final void m30849b() {
        playSoundEffect(0);
        OnCloseListener onCloseListener = this.f8025b;
        if (onCloseListener != null) {
            onCloseListener.onClose();
        }
    }

    @VisibleForTesting
    /* renamed from: c */
    public boolean m30848c() {
        return this.f8036m || this.f8026c.isVisible();
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (this.f8031h) {
            this.f8031h = false;
            this.f8032i.set(0, 0, getWidth(), getHeight());
            applyCloseRegionBounds(this.f8027d, this.f8032i, this.f8033j);
            this.f8035l.set(this.f8033j);
            Rect rect = this.f8035l;
            int i = this.f8030g;
            rect.inset(i, i);
            m30852a(this.f8027d, this.f8035l, this.f8034k);
            this.f8026c.setBounds(this.f8034k);
        }
        if (this.f8026c.isVisible()) {
            this.f8026c.draw(canvas);
        }
    }

    @VisibleForTesting
    public boolean isCloseVisible() {
        return this.f8026c.isVisible();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        return m30854a((int) motionEvent.getX(), (int) motionEvent.getY(), 0);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f8031h = true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (!m30854a((int) motionEvent.getX(), (int) motionEvent.getY(), this.f8024a) || !m30848c()) {
            m30850a(false);
            super.onTouchEvent(motionEvent);
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            m30850a(true);
            return true;
        } else if (action != 1) {
            if (action != 3) {
                return true;
            }
            m30850a(false);
            return true;
        } else if (!m30855a()) {
            return true;
        } else {
            if (this.f8037n == null) {
                this.f8037n = new RunnableC3752b();
            }
            postDelayed(this.f8037n, ViewConfiguration.getPressedStateDuration());
            m30849b();
            return true;
        }
    }

    public void setCloseAlwaysInteractable(boolean z) {
        this.f8036m = z;
    }

    public void setClosePosition(@NonNull ClosePosition closePosition) {
        Preconditions.checkNotNull(closePosition);
        this.f8027d = closePosition;
        this.f8031h = true;
        invalidate();
    }

    public void setCloseVisible(boolean z) {
        if (this.f8026c.setVisible(z, false)) {
            invalidate(this.f8033j);
        }
    }

    public void setOnCloseListener(@Nullable OnCloseListener onCloseListener) {
        this.f8025b = onCloseListener;
    }
}
