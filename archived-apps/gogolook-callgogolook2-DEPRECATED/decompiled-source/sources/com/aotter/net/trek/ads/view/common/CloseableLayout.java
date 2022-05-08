package com.aotter.net.trek.ads.view.common;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.StateListDrawable;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.aotter.net.trek.common.Preconditions;
import com.aotter.net.trek.common.util.Dips;
import com.aotter.net.trek.common.util.Drawables;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/common/CloseableLayout.class */
public class CloseableLayout extends FrameLayout {

    /* renamed from: a */
    public static final float f1345a = 30.0f;

    /* renamed from: b */
    public static final float f1346b = 50.0f;

    /* renamed from: c */
    public static final float f1347c = 8.0f;

    /* renamed from: d */
    public final int f1348d;
    @Nullable

    /* renamed from: e */
    public OnCloseListener f1349e;

    /* renamed from: h */
    public final int f1352h;

    /* renamed from: i */
    public final int f1353i;

    /* renamed from: j */
    public final int f1354j;

    /* renamed from: k */
    public boolean f1355k;
    @Nullable

    /* renamed from: q */
    public RunnableC1690b f1361q;

    /* renamed from: l */
    public final Rect f1356l = new Rect();

    /* renamed from: m */
    public final Rect f1357m = new Rect();

    /* renamed from: n */
    public final Rect f1358n = new Rect();

    /* renamed from: o */
    public final Rect f1359o = new Rect();
    @NonNull

    /* renamed from: f */
    public final StateListDrawable f1350f = new StateListDrawable();
    @NonNull

    /* renamed from: g */
    public ClosePosition f1351g = ClosePosition.TOP_RIGHT;

    /* renamed from: p */
    public boolean f1360p = true;

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/common/CloseableLayout$ClosePosition.class */
    public enum ClosePosition {
        TOP_LEFT(51),
        TOP_CENTER(49),
        TOP_RIGHT(53),
        CENTER(17),
        BOTTOM_LEFT(83),
        BOTTOM_CENTER(81),
        BOTTOM_RIGHT(85);
        

        /* renamed from: a */
        public final int f1363a;

        ClosePosition(int i) {
            this.f1363a = i;
        }

        /* renamed from: a */
        public int m36427a() {
            return this.f1363a;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/common/CloseableLayout$OnCloseListener.class */
    public interface OnCloseListener {
        void onClose();
    }

    public CloseableLayout(@NonNull Context context) {
        super(context);
        this.f1350f.addState(FrameLayout.SELECTED_STATE_SET, Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.createDrawable(context));
        this.f1350f.addState(FrameLayout.EMPTY_STATE_SET, Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.createDrawable(context));
        this.f1350f.setState(FrameLayout.EMPTY_STATE_SET);
        this.f1350f.setCallback(this);
        this.f1348d = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f1352h = Dips.asIntPixels(50.0f, context);
        this.f1353i = Dips.asIntPixels(30.0f, context);
        this.f1354j = Dips.asIntPixels(8.0f, context);
        setWillNotDraw(false);
    }

    /* renamed from: a */
    private void m36432a(ClosePosition closePosition, int i, Rect rect, Rect rect2) {
        Gravity.apply(closePosition.m36427a(), i, i, rect, rect2);
    }

    /* renamed from: a */
    private void m36431a(ClosePosition closePosition, Rect rect, Rect rect2) {
        m36432a(closePosition, this.f1353i, rect, rect2);
    }

    /* renamed from: c */
    private void m36428c() {
        playSoundEffect(0);
        OnCloseListener onCloseListener = this.f1349e;
        if (onCloseListener != null) {
            onCloseListener.onClose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClosePressed(boolean z) {
        if (z != m36429b()) {
            this.f1350f.setState(z ? FrameLayout.SELECTED_STATE_SET : FrameLayout.EMPTY_STATE_SET);
            invalidate(this.f1357m);
        }
    }

    /* renamed from: a */
    public boolean m36434a() {
        return this.f1360p || this.f1350f.isVisible();
    }

    /* renamed from: a */
    public boolean m36433a(int i, int i2, int i3) {
        Rect rect = this.f1357m;
        return i >= rect.left - i3 && i2 >= rect.top - i3 && i < rect.right + i3 && i2 < rect.bottom + i3;
    }

    public void applyCloseRegionBounds(ClosePosition closePosition, Rect rect, Rect rect2) {
        m36432a(closePosition, this.f1352h, rect, rect2);
    }

    /* renamed from: b */
    public boolean m36429b() {
        return this.f1350f.getState() == FrameLayout.SELECTED_STATE_SET;
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (this.f1355k) {
            this.f1355k = false;
            this.f1356l.set(0, 0, getWidth(), getHeight());
            applyCloseRegionBounds(this.f1351g, this.f1356l, this.f1357m);
            this.f1359o.set(this.f1357m);
            Rect rect = this.f1359o;
            int i = this.f1354j;
            rect.inset(i, i);
            m36431a(this.f1351g, this.f1359o, this.f1358n);
            this.f1350f.setBounds(this.f1358n);
        }
        if (this.f1350f.isVisible()) {
            this.f1350f.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NonNull MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        return m36433a((int) motionEvent.getX(), (int) motionEvent.getY(), 0);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f1355k = true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (!m36433a((int) motionEvent.getX(), (int) motionEvent.getY(), this.f1348d) || !m36434a()) {
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
        } else if (!m36429b()) {
            return true;
        } else {
            if (this.f1361q == null) {
                this.f1361q = new RunnableC1690b(this, null);
            }
            postDelayed(this.f1361q, ViewConfiguration.getPressedStateDuration());
            m36428c();
            return true;
        }
    }

    public void setCloseAlwaysInteractable(boolean z) {
        this.f1360p = z;
    }

    public void setClosePosition(@NonNull ClosePosition closePosition) {
        Preconditions.checkNotNull(closePosition);
        this.f1351g = closePosition;
        this.f1355k = true;
        invalidate();
    }

    public void setCloseVisible(boolean z) {
        if (this.f1350f.setVisible(z, false)) {
            invalidate(this.f1357m);
        }
    }

    public void setOnCloseListener(@Nullable OnCloseListener onCloseListener) {
        this.f1349e = onCloseListener;
    }
}
