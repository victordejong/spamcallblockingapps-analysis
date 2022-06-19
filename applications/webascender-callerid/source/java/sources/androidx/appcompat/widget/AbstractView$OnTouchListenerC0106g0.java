package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.appcompat.view.menu.AbstractC0084p;
/* renamed from: androidx.appcompat.widget.g0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/g0.class */
public abstract class AbstractView$OnTouchListenerC0106g0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: f */
    private final float f487f;

    /* renamed from: g */
    private final int f488g;

    /* renamed from: h */
    private final int f489h;

    /* renamed from: i */
    final View f490i;

    /* renamed from: j */
    private Runnable f491j;

    /* renamed from: k */
    private Runnable f492k;

    /* renamed from: l */
    private boolean f493l;

    /* renamed from: m */
    private int f494m;

    /* renamed from: n */
    private final int[] f495n = new int[2];

    /* renamed from: androidx.appcompat.widget.g0$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/g0$a.class */
    public class RunnableC0107a implements Runnable {
        RunnableC0107a() {
            AbstractView$OnTouchListenerC0106g0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = AbstractView$OnTouchListenerC0106g0.this.f490i.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.g0$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/g0$b.class */
    public class RunnableC0108b implements Runnable {
        RunnableC0108b() {
            AbstractView$OnTouchListenerC0106g0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractView$OnTouchListenerC0106g0.this.m6578e();
        }
    }

    public AbstractView$OnTouchListenerC0106g0(View view) {
        this.f490i = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f487f = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f488g = tapTimeout;
        this.f489h = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    /* renamed from: a */
    private void m6582a() {
        Runnable runnable = this.f492k;
        if (runnable != null) {
            this.f490i.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f491j;
        if (runnable2 != null) {
            this.f490i.removeCallbacks(runnable2);
        }
    }

    /* renamed from: f */
    private boolean m6577f(MotionEvent motionEvent) {
        View view = this.f490i;
        AbstractC0084p m6581b = m6581b();
        boolean z = false;
        if (m6581b != null) {
            if (!m6581b.m6747a()) {
                z = false;
            } else {
                C0101e0 c0101e0 = (C0101e0) m6581b.m6745j();
                z = false;
                if (c0101e0 != null) {
                    if (!c0101e0.isShown()) {
                        z = false;
                    } else {
                        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                        m6574i(view, obtainNoHistory);
                        m6573j(c0101e0, obtainNoHistory);
                        boolean m6592e = c0101e0.m6592e(obtainNoHistory, this.f494m);
                        obtainNoHistory.recycle();
                        int actionMasked = motionEvent.getActionMasked();
                        boolean z2 = (actionMasked == 1 || actionMasked == 3) ? false : true;
                        z = false;
                        if (m6592e) {
                            z = false;
                            if (z2) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: g */
    private boolean m6576g(MotionEvent motionEvent) {
        View view = this.f490i;
        if (!view.isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f494m = motionEvent.getPointerId(0);
            if (this.f491j == null) {
                this.f491j = new RunnableC0107a();
            }
            view.postDelayed(this.f491j, this.f488g);
            if (this.f492k == null) {
                this.f492k = new RunnableC0108b();
            }
            view.postDelayed(this.f492k, this.f489h);
            return false;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f494m);
                if (findPointerIndex < 0 || m6575h(view, motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex), this.f487f)) {
                    return false;
                }
                m6582a();
                view.getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            } else if (actionMasked != 3) {
                return false;
            }
        }
        m6582a();
        return false;
    }

    /* renamed from: h */
    private static boolean m6575h(View view, float f, float f2, float f3) {
        float f4 = -f3;
        return f >= f4 && f2 >= f4 && f < ((float) (view.getRight() - view.getLeft())) + f3 && f2 < ((float) (view.getBottom() - view.getTop())) + f3;
    }

    /* renamed from: i */
    private boolean m6574i(View view, MotionEvent motionEvent) {
        int[] iArr = this.f495n;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    /* renamed from: j */
    private boolean m6573j(View view, MotionEvent motionEvent) {
        int[] iArr = this.f495n;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    /* renamed from: b */
    public abstract AbstractC0084p m6581b();

    /* renamed from: c */
    protected abstract boolean m6580c();

    /* renamed from: d */
    protected boolean m6579d() {
        AbstractC0084p m6581b = m6581b();
        if (m6581b == null || !m6581b.m6747a()) {
            return true;
        }
        m6581b.dismiss();
        return true;
    }

    /* renamed from: e */
    void m6578e() {
        m6582a();
        View view = this.f490i;
        if (!view.isEnabled() || view.isLongClickable() || !m6580c()) {
            return;
        }
        view.getParent().requestDisallowInterceptTouchEvent(true);
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        view.onTouchEvent(obtain);
        obtain.recycle();
        this.f493l = true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z;
        boolean z2 = this.f493l;
        if (z2) {
            z = m6577f(motionEvent) || !m6579d();
        } else {
            boolean z3 = m6576g(motionEvent) && m6580c();
            z = z3;
            if (z3) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f490i.onTouchEvent(obtain);
                obtain.recycle();
                z = z3;
            }
        }
        this.f493l = z;
        boolean z4 = true;
        if (!z) {
            z4 = z2;
        }
        return z4;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f493l = false;
        this.f494m = -1;
        Runnable runnable = this.f491j;
        if (runnable != null) {
            this.f490i.removeCallbacks(runnable);
        }
    }
}
