package gogolook.callgogolook2.main.dialer;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;
import androidx.constraintlayout.widget.ConstraintLayout;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/dialer/DialpadKeyButton.class */
public class DialpadKeyButton extends ConstraintLayout {

    /* renamed from: k */
    public static final int f11136k = ViewConfiguration.getLongPressTimeout() * 2;

    /* renamed from: a */
    public AccessibilityManager f11137a;

    /* renamed from: c */
    public boolean f11139c;

    /* renamed from: d */
    public CharSequence f11140d;

    /* renamed from: e */
    public CharSequence f11141e;

    /* renamed from: f */
    public boolean f11142f;

    /* renamed from: g */
    public boolean f11143g;

    /* renamed from: h */
    public Runnable f11144h;

    /* renamed from: j */
    public AbstractC4608b f11146j;

    /* renamed from: b */
    public Rect f11138b = new Rect();

    /* renamed from: i */
    public int f11145i = -1;

    /* renamed from: gogolook.callgogolook2.main.dialer.DialpadKeyButton$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/dialer/DialpadKeyButton$a.class */
    public class RunnableC4607a implements Runnable {
        public RunnableC4607a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DialpadKeyButton.this.m27811a(true);
            DialpadKeyButton dialpadKeyButton = DialpadKeyButton.this;
            dialpadKeyButton.announceForAccessibility(dialpadKeyButton.f11140d);
        }
    }

    /* renamed from: gogolook.callgogolook2.main.dialer.DialpadKeyButton$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/dialer/DialpadKeyButton$b.class */
    public interface AbstractC4608b {
        /* renamed from: a */
        void mo9916a(View view, boolean z);
    }

    public DialpadKeyButton(Context context) {
        super(context);
        m27815a(context);
    }

    public DialpadKeyButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m27815a(context);
    }

    public DialpadKeyButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m27815a(context);
    }

    /* renamed from: a */
    public final void m27816a() {
        Runnable runnable = this.f11144h;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        m27811a(false);
    }

    /* renamed from: a */
    public final void m27815a(Context context) {
        this.f11137a = (AccessibilityManager) context.getSystemService("accessibility");
    }

    /* renamed from: a */
    public void m27814a(AbstractC4608b bVar) {
        this.f11146j = bVar;
    }

    /* renamed from: a */
    public final void m27811a(boolean z) {
        if (this.f11139c != z) {
            this.f11139c = z;
            if (z) {
                this.f11141e = getContentDescription();
                super.setContentDescription(this.f11140d);
                return;
            }
            super.setContentDescription(this.f11141e);
        }
    }

    /* renamed from: b */
    public final void m27810b() {
        if (!isPressed()) {
            setPressed(true);
            sendAccessibilityEvent(1);
            setPressed(false);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (this.f11137a.isEnabled() && this.f11137a.isTouchExplorationEnabled()) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 9) {
                this.f11142f = isClickable();
                this.f11143g = isLongClickable();
                if (this.f11143g && this.f11140d != null) {
                    if (this.f11144h == null) {
                        this.f11144h = new RunnableC4607a();
                    }
                    postDelayed(this.f11144h, f11136k);
                }
                setClickable(false);
                setLongClickable(false);
            } else if (actionMasked == 10) {
                if (this.f11138b.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                    if (this.f11139c) {
                        performLongClick();
                    } else {
                        m27810b();
                    }
                }
                m27816a();
                setClickable(this.f11142f);
                setLongClickable(this.f11143g);
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f11138b.left = getPaddingLeft();
        this.f11138b.right = i - getPaddingRight();
        this.f11138b.top = getPaddingTop();
        this.f11138b.bottom = i2 - getPaddingBottom();
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (i != 16) {
            return super.performAccessibilityAction(i, bundle);
        }
        m27810b();
        return true;
    }

    @Override // android.view.View
    public void setContentDescription(CharSequence charSequence) {
        if (this.f11139c) {
            this.f11141e = charSequence;
        } else {
            super.setContentDescription(charSequence);
        }
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        if (this.f11145i == -1) {
            this.f11145i = z ? 1 : 0;
        }
        AbstractC4608b bVar = this.f11146j;
        if (bVar != null) {
            bVar.mo9916a(this, z);
        }
    }
}
