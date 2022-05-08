package gogolook.callgogolook2.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.LinearLayout;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/CallDialogLinearLayout.class */
public class CallDialogLinearLayout extends LinearLayout {

    /* renamed from: a */
    public int f13019a;

    /* renamed from: b */
    public boolean f13020b;

    /* renamed from: c */
    public boolean f13021c;

    /* renamed from: d */
    public int f13022d;

    /* renamed from: e */
    public int f13023e;

    /* renamed from: f */
    public int f13024f;

    /* renamed from: g */
    public long f13025g;

    /* renamed from: h */
    public View f13026h;

    /* renamed from: i */
    public AbstractC5272d f13027i;

    /* renamed from: k */
    public float f13029k;

    /* renamed from: l */
    public float f13030l;

    /* renamed from: m */
    public boolean f13031m;

    /* renamed from: n */
    public boolean f13032n;

    /* renamed from: o */
    public int f13033o;

    /* renamed from: p */
    public Object f13034p;

    /* renamed from: q */
    public VelocityTracker f13035q;

    /* renamed from: r */
    public float f13036r;

    /* renamed from: s */
    public AbstractC5273e f13037s;

    /* renamed from: j */
    public int f13028j = 1;

    /* renamed from: t */
    public View f13038t = null;

    /* renamed from: gogolook.callgogolook2.view.CallDialogLinearLayout$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/CallDialogLinearLayout$a.class */
    public class C5269a implements Animator.AnimatorListener {
        public C5269a() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            CallDialogLinearLayout.this.m25937a();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* renamed from: gogolook.callgogolook2.view.CallDialogLinearLayout$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/CallDialogLinearLayout$b.class */
    public class C5270b extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup.LayoutParams f13040a;

        /* renamed from: b */
        public final /* synthetic */ int f13041b;

        public C5270b(ViewGroup.LayoutParams layoutParams, int i) {
            this.f13040a = layoutParams;
            this.f13041b = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            CallDialogLinearLayout.this.f13027i.mo5535a(CallDialogLinearLayout.this.f13026h, CallDialogLinearLayout.this.f13034p);
            CallDialogLinearLayout.this.f13026h.setAlpha(1.0f);
            CallDialogLinearLayout.this.f13026h.setTranslationX(0.0f);
            this.f13040a.height = this.f13041b;
            CallDialogLinearLayout.this.f13026h.setLayoutParams(this.f13040a);
        }
    }

    /* renamed from: gogolook.callgogolook2.view.CallDialogLinearLayout$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/CallDialogLinearLayout$c.class */
    public class C5271c implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ ViewGroup.LayoutParams f13043a;

        public C5271c(ViewGroup.LayoutParams layoutParams) {
            this.f13043a = layoutParams;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f13043a.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            CallDialogLinearLayout.this.f13026h.setLayoutParams(this.f13043a);
        }
    }

    /* renamed from: gogolook.callgogolook2.view.CallDialogLinearLayout$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/CallDialogLinearLayout$d.class */
    public interface AbstractC5272d {
        /* renamed from: a */
        void mo5535a(View view, Object obj);

        /* renamed from: a */
        boolean mo5534a(Object obj);
    }

    /* renamed from: gogolook.callgogolook2.view.CallDialogLinearLayout$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/CallDialogLinearLayout$e.class */
    public interface AbstractC5273e {
        /* renamed from: a */
        void mo5533a();

        /* renamed from: a */
        void mo5532a(float f);
    }

    public CallDialogLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        new Rect();
    }

    /* renamed from: a */
    public final void m25937a() {
        ViewGroup.LayoutParams layoutParams = this.f13026h.getLayoutParams();
        int height = this.f13026h.getHeight();
        ValueAnimator duration = ValueAnimator.ofInt(height, 1).setDuration(this.f13025g);
        duration.addListener(new C5270b(layoutParams, height));
        duration.addUpdateListener(new C5271c(layoutParams));
        duration.start();
    }

    /* renamed from: a */
    public void m25936a(int i) {
        this.f13019a = i;
    }

    /* renamed from: a */
    public void m25935a(AbstractC5273e eVar) {
        this.f13037s = eVar;
    }

    /* renamed from: a */
    public void m25933a(Object obj, AbstractC5272d dVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f13022d = viewConfiguration.getScaledTouchSlop();
        this.f13023e = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.f13024f = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f13025g = getContext().getResources().getInteger(17694720);
        this.f13026h = this;
        this.f13034p = obj;
        this.f13027i = dVar;
        this.f13020b = false;
        this.f13021c = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int i;
        boolean z2 = true;
        if ((this.f13020b || motionEvent.getY() <= 0.0f || motionEvent.getY() > this.f13019a) && !this.f13021c) {
            if (motionEvent.getAction() == 0) {
                this.f13020b = true;
            } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
                this.f13020b = false;
            }
            super.dispatchTouchEvent(motionEvent);
            return true;
        }
        if (!this.f13031m && !this.f13032n) {
            if (this.f13038t == null) {
                this.f13038t = findViewById(R$id.call_main);
            }
            if (this.f13038t != null) {
                MotionEvent obtain = MotionEvent.obtain(motionEvent);
                obtain.offsetLocation(-this.f13038t.getLeft(), -this.f13038t.getTop());
                this.f13038t.dispatchTouchEvent(obtain);
                obtain.recycle();
            }
        }
        motionEvent.offsetLocation(this.f13036r, 0.0f);
        if (this.f13028j < 2) {
            this.f13028j = this.f13026h.getWidth();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f13021c = true;
            this.f13029k = motionEvent.getRawX();
            this.f13030l = motionEvent.getRawY();
            if (this.f13027i.mo5534a(this.f13034p)) {
                this.f13035q = VelocityTracker.obtain();
                this.f13035q.addMovement(motionEvent);
            }
            AbstractC5273e eVar = this.f13037s;
            if (eVar == null) {
                return true;
            }
            eVar.mo5533a();
            setAlpha(0.9f);
            return true;
        } else if (actionMasked == 1) {
            this.f13021c = false;
            if (this.f13035q == null) {
                return false;
            }
            float rawX = motionEvent.getRawX() - this.f13029k;
            this.f13035q.addMovement(motionEvent);
            this.f13035q.computeCurrentVelocity(1000);
            float xVelocity = this.f13035q.getXVelocity();
            float abs = Math.abs(xVelocity);
            float abs2 = Math.abs(this.f13035q.getYVelocity());
            if (Math.abs(rawX) <= (this.f13028j * 3) / 4 || !this.f13031m) {
                if (this.f13023e > abs || abs > this.f13024f || abs2 >= abs || i >= 0 || !this.f13031m) {
                    z = false;
                } else {
                    z = ((xVelocity > 0.0f ? 1 : (xVelocity == 0.0f ? 0 : -1)) < 0) == ((rawX > 0.0f ? 1 : (rawX == 0.0f ? 0 : -1)) < 0);
                    z = z;
                    if (this.f13035q.getXVelocity() > 0.0f) {
                    }
                }
                z2 = false;
            } else {
                z2 = rawX > 0.0f;
                z = true;
            }
            if (z) {
                ViewPropertyAnimator animate = this.f13026h.animate();
                int i2 = this.f13028j;
                if (!z2) {
                    i2 = -i2;
                }
                animate.translationX(i2).alpha(0.0f).setDuration(this.f13025g).setListener(new C5269a());
            } else if (this.f13031m) {
                this.f13026h.animate().translationX(0.0f).alpha(1.0f).setDuration(this.f13025g).setListener(null);
            }
            this.f13035q.recycle();
            this.f13035q = null;
            this.f13036r = 0.0f;
            this.f13029k = 0.0f;
            this.f13030l = 0.0f;
            this.f13031m = false;
            this.f13032n = false;
            setAlpha(1.0f);
            return false;
        } else if (actionMasked == 2) {
            VelocityTracker velocityTracker = this.f13035q;
            if (velocityTracker == null) {
                return false;
            }
            velocityTracker.addMovement(motionEvent);
            float rawX2 = motionEvent.getRawX() - this.f13029k;
            float rawY = motionEvent.getRawY() - this.f13030l;
            if (!this.f13032n && Math.abs(rawX2) > this.f13022d && Math.abs(rawY) < Math.abs(rawX2) / 2.0f) {
                this.f13031m = true;
                this.f13033o = rawX2 > 0.0f ? this.f13022d : -this.f13022d;
                if (this.f13026h.getParent() == null) {
                    return false;
                }
                this.f13026h.getParent().requestDisallowInterceptTouchEvent(true);
                MotionEvent obtain2 = MotionEvent.obtain(motionEvent);
                obtain2.setAction((motionEvent.getActionIndex() << 8) | 3);
                this.f13026h.onTouchEvent(obtain2);
                obtain2.recycle();
            } else if (Math.abs(rawY) > this.f13022d && Math.abs(rawX2) < Math.abs(rawY) / 2.0f) {
                this.f13032n = true;
                setAlpha(0.9f);
            }
            if (this.f13031m) {
                this.f13032n = false;
                this.f13036r = rawX2;
                this.f13026h.setTranslationX(rawX2 - this.f13033o);
                this.f13026h.setAlpha(Math.max(0.0f, Math.min(1.0f, 1.0f - ((Math.abs(rawX2) * 1.2f) / this.f13028j))));
                return true;
            } else if (!this.f13032n) {
                return false;
            } else {
                this.f13031m = false;
                AbstractC5273e eVar2 = this.f13037s;
                if (eVar2 == null) {
                    return true;
                }
                eVar2.mo5532a(rawY);
                return true;
            }
        } else if (actionMasked != 3) {
            return false;
        } else {
            this.f13021c = false;
            if (this.f13035q == null) {
                return false;
            }
            this.f13026h.animate().translationX(0.0f).alpha(1.0f).setDuration(this.f13025g).setListener(null);
            this.f13035q.recycle();
            this.f13035q = null;
            this.f13036r = 0.0f;
            this.f13029k = 0.0f;
            this.f13030l = 0.0f;
            this.f13031m = false;
            this.f13032n = false;
            setAlpha(1.0f);
            return false;
        }
    }
}
