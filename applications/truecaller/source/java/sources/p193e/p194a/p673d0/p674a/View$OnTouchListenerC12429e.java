package p193e.p194a.p673d0.p674a;

import android.content.Intent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.WindowManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.TrueApp;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.settings.CallingSettings;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import s1.z.c.l;
/* renamed from: e.a.d0.a.e */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/e.class */
public class View$OnTouchListenerC12429e implements View.OnTouchListener {

    /* renamed from: a */
    public final AbstractC12468y f36274a;

    /* renamed from: b */
    public final float f36275b;

    /* renamed from: c */
    public final float f36276c;

    /* renamed from: d */
    public float f36277d;

    /* renamed from: e */
    public float f36278e;

    /* renamed from: f */
    public int f36279f;

    /* renamed from: g */
    public boolean f36280g;

    /* renamed from: h */
    public boolean f36281h;

    /* renamed from: i */
    public boolean f36282i;

    /* renamed from: j */
    public final CallingSettings f36283j;

    /* renamed from: k */
    public final int f36284k;

    /* renamed from: l */
    public final VelocityTracker f36285l = VelocityTracker.obtain();

    public View$OnTouchListenerC12429e(AbstractC12468y abstractC12468y, int i) {
        this.f36274a = abstractC12468y;
        this.f36284k = i;
        float f = abstractC12468y.f36416a.getResources().getDisplayMetrics().density;
        this.f36276c = 25.0f * f;
        this.f36275b = f * 400.0f;
        this.f36283j = ((AbstractC21187w1) abstractC12468y.f36416a.getApplicationContext()).mo10154s().mo12414d6();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        AbstractC12468y abstractC12468y;
        if (!this.f36274a.f36421f) {
            return true;
        }
        this.f36285l.addMovement(motionEvent);
        int action = motionEvent.getAction();
        int i = 0;
        if (action == 0) {
            this.f36277d = motionEvent.getRawX();
            this.f36278e = motionEvent.getRawY();
            AbstractC12468y abstractC12468y2 = this.f36274a;
            WindowManager.LayoutParams layoutParams = abstractC12468y2.f36422g;
            int i2 = 0;
            if (layoutParams != null) {
                i2 = layoutParams.y;
            }
            this.f36279f = i2;
            int m22967c = abstractC12468y2.f36425j - abstractC12468y2.m22967c();
            if (this.f36279f <= m22967c) {
                return true;
            }
            this.f36279f = m22967c;
            return true;
        } else if (action == 1) {
            if (this.f36280g) {
                this.f36285l.computeCurrentVelocity(1000);
                float xVelocity = this.f36285l.getXVelocity();
                if (Math.abs(xVelocity) <= this.f36275b || Math.abs(this.f36277d - motionEvent.getRawX()) <= this.f36276c) {
                    float abs = Math.abs(this.f36274a.m22966d());
                    AbstractC12468y abstractC12468y3 = this.f36274a;
                    if (abs < abstractC12468y3.f36424i / 2) {
                        abstractC12468y3.m22968b(0.0f, false, false);
                        this.f36280g = false;
                    }
                }
                float abs2 = Math.abs(this.f36274a.m22966d());
                AbstractC12468y abstractC12468y4 = this.f36274a;
                if (abs2 >= abstractC12468y4.f36424i / 2) {
                    xVelocity = abstractC12468y4.m22966d();
                }
                this.f36274a.m22968b((int) Math.copySign(abstractC12468y.f36424i, xVelocity), true, false);
                AbstractC19462a mo12776C4 = TrueApp.m36032b0().mo10154s().mo12776C4();
                l.e("callerId", AnalyticsConstants.CONTEXT);
                l.e("SwipeAway", "subAction");
                l.e("dismissed", "action");
                mo12776C4.mo13274b(new ViewActionEvent("dismissed", "SwipeAway", "callerId"));
                this.f36280g = false;
            } else {
                AbstractC19462a mo12776C42 = TrueApp.m36032b0().mo10154s().mo12776C4();
                l.e("callerId", AnalyticsConstants.CONTEXT);
                l.e("moved", "action");
                mo12776C42.mo13274b(new ViewActionEvent("moved", null, "callerId"));
            }
            this.f36281h = false;
            return true;
        } else if (action != 2) {
            return false;
        } else {
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            float f = rawX - this.f36277d;
            float f2 = rawY - this.f36278e;
            if (!this.f36280g && !this.f36281h) {
                if (Math.abs(f2) > this.f36284k) {
                    this.f36281h = true;
                    if (!this.f36282i) {
                        this.f36282i = true;
                        this.f36283j.m34737l("callerIdHintCount");
                    }
                } else if (Math.abs(f) > this.f36284k) {
                    this.f36280g = true;
                }
            }
            if (this.f36281h) {
                int i3 = (int) (this.f36279f + f2);
                if (i3 >= 0) {
                    AbstractC12468y abstractC12468y5 = this.f36274a;
                    if (i3 > abstractC12468y5.f36425j - abstractC12468y5.m22967c()) {
                        AbstractC12468y abstractC12468y6 = this.f36274a;
                        i = abstractC12468y6.f36425j - abstractC12468y6.m22967c();
                    } else {
                        i = i3;
                    }
                }
                AbstractC12468y abstractC12468y7 = this.f36274a;
                WindowManager.LayoutParams layoutParams2 = abstractC12468y7.f36422g;
                if (layoutParams2 != null) {
                    layoutParams2.y = i;
                }
                abstractC12468y7.f36420e.updateViewLayout(abstractC12468y7.f36419d, layoutParams2);
                boolean z = TrueApp.f9585r;
                C27062a.m968b(AbstractApplicationC8442a.m28551L()).m966d(new Intent("BroadcastCallerIdPosY").putExtra("ExtraPosY", i));
            }
            if (!this.f36280g) {
                return true;
            }
            float max = Math.max(0.0f, Math.min(1.0f, 1.0f - (Math.abs(f) / this.f36274a.f36425j)));
            View view2 = this.f36274a.f36427l;
            if (view2 != null) {
                view2.setAlpha(max);
            }
            View view3 = this.f36274a.f36427l;
            if (view3 == null) {
                return true;
            }
            view3.setTranslationX(f);
            return true;
        }
    }
}
