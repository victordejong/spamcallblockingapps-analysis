package p131c.p161d.p282e.p315q.p318p0.p321j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
/* renamed from: c.d.e.q.p0.j.o */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/o.class */
public class View$OnTouchListenerC5571o implements View.OnTouchListener {

    /* renamed from: a */
    public int f18551a;

    /* renamed from: b */
    public int f18552b;

    /* renamed from: c */
    public int f18553c;

    /* renamed from: d */
    public long f18554d;

    /* renamed from: e */
    public View f18555e;

    /* renamed from: f */
    public AbstractC5576e f18556f;

    /* renamed from: g */
    public int f18557g = 1;

    /* renamed from: h */
    public float f18558h;

    /* renamed from: i */
    public float f18559i;

    /* renamed from: j */
    public boolean f18560j;

    /* renamed from: k */
    public int f18561k;

    /* renamed from: l */
    public Object f18562l;

    /* renamed from: m */
    public VelocityTracker f18563m;

    /* renamed from: n */
    public float f18564n;

    /* renamed from: c.d.e.q.p0.j.o$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/o$a.class */
    public class C5572a extends AnimatorListenerAdapter {
        public C5572a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            View$OnTouchListenerC5571o.this.m23496b();
        }
    }

    /* renamed from: c.d.e.q.p0.j.o$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/o$b.class */
    public class C5573b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ float f18566a;

        /* renamed from: b */
        public final /* synthetic */ float f18567b;

        /* renamed from: c */
        public final /* synthetic */ float f18568c;

        /* renamed from: d */
        public final /* synthetic */ float f18569d;

        public C5573b(float f, float f2, float f3, float f4) {
            this.f18566a = f;
            this.f18567b = f2;
            this.f18568c = f3;
            this.f18569d = f4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float f = this.f18566a;
            float animatedFraction = valueAnimator.getAnimatedFraction();
            float f2 = this.f18567b;
            float f3 = this.f18568c;
            float animatedFraction2 = valueAnimator.getAnimatedFraction();
            float f4 = this.f18569d;
            View$OnTouchListenerC5571o.this.mo23495b(f + (animatedFraction * f2));
            View$OnTouchListenerC5571o.this.m23500a(f3 + (animatedFraction2 * f4));
        }
    }

    /* renamed from: c.d.e.q.p0.j.o$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/o$c.class */
    public class C5574c extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup.LayoutParams f18571a;

        /* renamed from: b */
        public final /* synthetic */ int f18572b;

        public C5574c(ViewGroup.LayoutParams layoutParams, int i) {
            this.f18571a = layoutParams;
            this.f18572b = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            View$OnTouchListenerC5571o.this.f18556f.mo23490a(View$OnTouchListenerC5571o.this.f18555e, View$OnTouchListenerC5571o.this.f18562l);
            View$OnTouchListenerC5571o.this.f18555e.setAlpha(1.0f);
            View$OnTouchListenerC5571o.this.f18555e.setTranslationX(0.0f);
            this.f18571a.height = this.f18572b;
            View$OnTouchListenerC5571o.this.f18555e.setLayoutParams(this.f18571a);
        }
    }

    /* renamed from: c.d.e.q.p0.j.o$d */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/o$d.class */
    public class C5575d implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup.LayoutParams f18574a;

        public C5575d(ViewGroup.LayoutParams layoutParams) {
            this.f18574a = layoutParams;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f18574a.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            View$OnTouchListenerC5571o.this.f18555e.setLayoutParams(this.f18574a);
        }
    }

    /* renamed from: c.d.e.q.p0.j.o$e */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/o$e.class */
    public interface AbstractC5576e {
        /* renamed from: a */
        void mo23490a(View view, Object obj);

        /* renamed from: a */
        boolean mo23489a(Object obj);
    }

    public View$OnTouchListenerC5571o(View view, Object obj, AbstractC5576e eVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        this.f18551a = viewConfiguration.getScaledTouchSlop();
        this.f18552b = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.f18553c = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f18554d = view.getContext().getResources().getInteger(17694720);
        this.f18555e = view;
        this.f18562l = obj;
        this.f18556f = eVar;
    }

    /* renamed from: a */
    public float mo23501a() {
        return this.f18555e.getTranslationX();
    }

    /* renamed from: a */
    public void m23500a(float f) {
        this.f18555e.setAlpha(f);
    }

    /* renamed from: a */
    public final void m23499a(float f, float f2, AnimatorListenerAdapter animatorListenerAdapter) {
        float a = mo23501a();
        float alpha = this.f18555e.getAlpha();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(this.f18554d);
        ofFloat.addUpdateListener(new C5573b(a, f - a, alpha, f2 - alpha));
        if (animatorListenerAdapter != null) {
            ofFloat.addListener(animatorListenerAdapter);
        }
        ofFloat.start();
    }

    /* renamed from: a */
    public void m23497a(boolean z) {
        m23499a(z ? this.f18557g : -this.f18557g, 0.0f, new C5572a());
    }

    /* renamed from: b */
    public final void m23496b() {
        ViewGroup.LayoutParams layoutParams = this.f18555e.getLayoutParams();
        int height = this.f18555e.getHeight();
        ValueAnimator duration = ValueAnimator.ofInt(height, 1).setDuration(this.f18554d);
        duration.addListener(new C5574c(layoutParams, height));
        duration.addUpdateListener(new C5575d(layoutParams));
        duration.start();
    }

    /* renamed from: b */
    public void mo23495b(float f) {
        this.f18555e.setTranslationX(f);
    }

    /* renamed from: c */
    public void m23493c() {
        m23499a(0.0f, 1.0f, null);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        motionEvent.offsetLocation(this.f18564n, 0.0f);
        if (this.f18557g < 2) {
            this.f18557g = this.f18555e.getWidth();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            boolean z = true;
            boolean z2 = true;
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    VelocityTracker velocityTracker = this.f18563m;
                    if (velocityTracker == null) {
                        return false;
                    }
                    velocityTracker.addMovement(motionEvent);
                    float rawX = motionEvent.getRawX() - this.f18558h;
                    float rawY = motionEvent.getRawY();
                    float f = this.f18559i;
                    if (Math.abs(rawX) > this.f18551a && Math.abs(rawY - f) < Math.abs(rawX) / 2.0f) {
                        this.f18560j = true;
                        this.f18561k = rawX > 0.0f ? this.f18551a : -this.f18551a;
                        this.f18555e.getParent().requestDisallowInterceptTouchEvent(true);
                        MotionEvent obtain = MotionEvent.obtain(motionEvent);
                        obtain.setAction((motionEvent.getActionIndex() << 8) | 3);
                        this.f18555e.onTouchEvent(obtain);
                        obtain.recycle();
                    }
                    if (!this.f18560j) {
                        return false;
                    }
                    this.f18564n = rawX;
                    mo23495b(rawX - this.f18561k);
                    m23500a(Math.max(0.0f, Math.min(1.0f, 1.0f - ((Math.abs(rawX) * 2.0f) / this.f18557g))));
                    return true;
                } else if (actionMasked != 3 || this.f18563m == null) {
                    return false;
                } else {
                    m23493c();
                    this.f18563m.recycle();
                    this.f18563m = null;
                    this.f18564n = 0.0f;
                    this.f18558h = 0.0f;
                    this.f18559i = 0.0f;
                    this.f18560j = false;
                    return false;
                }
            } else if (this.f18563m == null) {
                return false;
            } else {
                float rawX2 = motionEvent.getRawX() - this.f18558h;
                this.f18563m.addMovement(motionEvent);
                this.f18563m.computeCurrentVelocity(1000);
                float xVelocity = this.f18563m.getXVelocity();
                float abs = Math.abs(xVelocity);
                float abs2 = Math.abs(this.f18563m.getYVelocity());
                if (Math.abs(rawX2) > this.f18557g / 2 && this.f18560j) {
                    z2 = rawX2 > 0.0f;
                } else if (this.f18552b > abs || abs > this.f18553c || abs2 >= abs || abs2 >= abs || !this.f18560j) {
                    z2 = false;
                    z = false;
                } else {
                    z = ((xVelocity > 0.0f ? 1 : (xVelocity == 0.0f ? 0 : -1)) < 0) == ((rawX2 > 0.0f ? 1 : (rawX2 == 0.0f ? 0 : -1)) < 0);
                    if (this.f18563m.getXVelocity() <= 0.0f) {
                        z2 = false;
                    }
                }
                if (z) {
                    m23497a(z2);
                } else if (this.f18560j) {
                    m23493c();
                }
                VelocityTracker velocityTracker2 = this.f18563m;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                }
                this.f18563m = null;
                this.f18564n = 0.0f;
                this.f18558h = 0.0f;
                this.f18559i = 0.0f;
                this.f18560j = false;
                return false;
            }
        } else {
            this.f18558h = motionEvent.getRawX();
            this.f18559i = motionEvent.getRawY();
            if (!this.f18556f.mo23489a(this.f18562l)) {
                return false;
            }
            VelocityTracker obtain2 = VelocityTracker.obtain();
            this.f18563m = obtain2;
            obtain2.addMovement(motionEvent);
            return false;
        }
    }
}
