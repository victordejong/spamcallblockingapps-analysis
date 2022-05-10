package p131c.p431l.p432a.p458g;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.animation.LinearInterpolator;
/* renamed from: c.l.a.g.c */
/* loaded from: classes2-dex2jar.jar:c/l/a/g/c.class */
public abstract class AbstractC6811c {

    /* renamed from: a */
    public float f20975a;

    /* renamed from: b */
    public float f20976b;

    /* renamed from: c */
    public float f20977c;

    /* renamed from: d */
    public float f20978d;

    /* renamed from: e */
    public long f20979e;

    /* renamed from: f */
    public Drawable.Callback f20980f;

    /* renamed from: g */
    public ValueAnimator f20981g;

    /* renamed from: c.l.a.g.c$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/g/c$a.class */
    public class C6812a implements ValueAnimator.AnimatorUpdateListener {
        public C6812a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            AbstractC6811c.this.mo19715a(((Float) valueAnimator.getAnimatedValue()).floatValue());
            AbstractC6811c.this.m19704e();
        }
    }

    public AbstractC6811c(Context context) {
        m19711a(context);
        m19701h();
    }

    /* renamed from: a */
    public float m19716a() {
        return this.f20978d;
    }

    /* renamed from: a */
    public abstract void mo19715a(float f);

    /* renamed from: a */
    public abstract void mo19714a(int i);

    /* renamed from: a */
    public void m19713a(long j) {
        this.f20979e = j;
        this.f20981g.setDuration(j);
    }

    /* renamed from: a */
    public void m19712a(Animator.AnimatorListener animatorListener) {
        this.f20981g.addListener(animatorListener);
    }

    /* renamed from: a */
    public final void m19711a(Context context) {
        float f = context.getResources().getDisplayMetrics().density;
        float f2 = 56.0f * f;
        this.f20975a = f2;
        this.f20976b = f2;
        this.f20977c = 2.5f * f;
        this.f20978d = f * 12.5f;
        this.f20979e = 1333L;
    }

    /* renamed from: a */
    public abstract void mo19710a(Canvas canvas, Rect rect);

    /* renamed from: a */
    public abstract void mo19709a(ColorFilter colorFilter);

    /* renamed from: a */
    public void m19708a(Drawable.Callback callback) {
        this.f20980f = callback;
    }

    /* renamed from: b */
    public float m19707b() {
        return this.f20976b;
    }

    /* renamed from: c */
    public float m19706c() {
        return this.f20977c;
    }

    /* renamed from: d */
    public float m19705d() {
        return this.f20975a;
    }

    /* renamed from: e */
    public void m19704e() {
        this.f20980f.invalidateDrawable(null);
    }

    /* renamed from: f */
    public boolean m19703f() {
        return this.f20981g.isRunning();
    }

    /* renamed from: g */
    public abstract void mo19702g();

    /* renamed from: h */
    public final void m19701h() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f20981g = ofFloat;
        ofFloat.setRepeatCount(-1);
        this.f20981g.setRepeatMode(1);
        this.f20981g.setInterpolator(new LinearInterpolator());
        this.f20981g.addUpdateListener(new C6812a());
    }

    /* renamed from: i */
    public void m19700i() {
        mo19702g();
        m19713a(this.f20979e);
        this.f20981g.start();
    }

    /* renamed from: j */
    public void m19699j() {
        this.f20981g.cancel();
    }
}
