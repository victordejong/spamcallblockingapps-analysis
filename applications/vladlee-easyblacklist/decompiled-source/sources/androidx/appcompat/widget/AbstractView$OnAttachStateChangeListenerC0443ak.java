package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.appcompat.view.menu.AbstractC0391v;
/* renamed from: androidx.appcompat.widget.ak */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ak.class */
public abstract class AbstractView$OnAttachStateChangeListenerC0443ak implements View.OnAttachStateChangeListener, View.OnTouchListener {

    /* renamed from: a */
    private final float f2230a;

    /* renamed from: c */
    final View f2232c;

    /* renamed from: e */
    private Runnable f2234e;

    /* renamed from: f */
    private Runnable f2235f;

    /* renamed from: g */
    private boolean f2236g;

    /* renamed from: h */
    private int f2237h;

    /* renamed from: i */
    private final int[] f2238i = new int[2];

    /* renamed from: b */
    private final int f2231b = ViewConfiguration.getTapTimeout();

    /* renamed from: d */
    private final int f2233d = (this.f2231b + ViewConfiguration.getLongPressTimeout()) / 2;

    /* renamed from: androidx.appcompat.widget.ak$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ak$a.class */
    private final class RunnableC0444a implements Runnable {
        RunnableC0444a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewParent parent = AbstractView$OnAttachStateChangeListenerC0443ak.this.f2232c.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ak$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ak$b.class */
    private final class RunnableC0445b implements Runnable {
        RunnableC0445b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractView$OnAttachStateChangeListenerC0443ak.this.m9162d();
        }
    }

    public AbstractView$OnAttachStateChangeListenerC0443ak(View view) {
        this.f2232c = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f2230a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
    }

    /* renamed from: e */
    private void m9161e() {
        Runnable runnable = this.f2235f;
        if (runnable != null) {
            this.f2232c.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f2234e;
        if (runnable2 != null) {
            this.f2232c.removeCallbacks(runnable2);
        }
    }

    /* renamed from: a */
    public abstract AbstractC0391v mo8957a();

    /* renamed from: b */
    protected boolean mo8956b() {
        AbstractC0391v a = mo8957a();
        if (a == null || a.mo9375e()) {
            return true;
        }
        a.mo9372f_();
        return true;
    }

    /* renamed from: c */
    protected boolean mo9010c() {
        AbstractC0391v a = mo8957a();
        if (a == null || !a.mo9375e()) {
            return true;
        }
        a.mo9377d();
        return true;
    }

    /* renamed from: d */
    final void m9162d() {
        m9161e();
        View view = this.f2232c;
        if (view.isEnabled() && !view.isLongClickable() && mo8956b()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(obtain);
            obtain.recycle();
            this.f2236g = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00f7, code lost:
        if (r0 != 3) goto L_0x01d8;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01f9  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r10, android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 561
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0443ak.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f2236g = false;
        this.f2237h = -1;
        Runnable runnable = this.f2234e;
        if (runnable != null) {
            this.f2232c.removeCallbacks(runnable);
        }
    }
}
