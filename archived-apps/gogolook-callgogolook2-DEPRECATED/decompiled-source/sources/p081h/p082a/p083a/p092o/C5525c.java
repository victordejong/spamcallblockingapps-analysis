package p081h.p082a.p083a.p092o;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import androidx.annotation.FloatRange;
/* renamed from: h.a.a.o.c */
/* loaded from: classes-dex2jar.jar:h/a/a/o/c.class */
public class C5525c extends ValueAnimator {

    /* renamed from: e */
    public long f13789e;

    /* renamed from: a */
    public boolean f13785a = false;

    /* renamed from: b */
    public boolean f13786b = false;

    /* renamed from: c */
    public float f13787c = 0.0f;

    /* renamed from: d */
    public float f13788d = 1.0f;

    /* renamed from: f */
    public float f13790f = 0.0f;

    /* renamed from: h.a.a.o.c$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/o/c$a.class */
    public class C5526a extends AnimatorListenerAdapter {
        public C5526a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            C5525c cVar = C5525c.this;
            cVar.m25276a(cVar.f13787c, C5525c.this.f13788d);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C5525c cVar = C5525c.this;
            cVar.m25276a(cVar.f13787c, C5525c.this.f13788d);
        }
    }

    /* renamed from: h.a.a.o.c$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/o/c$b.class */
    public class C5527b implements ValueAnimator.AnimatorUpdateListener {
        public C5527b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!C5525c.this.f13785a) {
                C5525c.this.f13790f = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        }
    }

    public C5525c() {
        setFloatValues(0.0f, 1.0f);
        addListener(new C5526a());
        addUpdateListener(new C5527b());
    }

    /* renamed from: a */
    public void m25277a(@FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
        if (this.f13790f != f) {
            m25272b(f);
        }
    }

    /* renamed from: a */
    public void m25276a(float f, float f2) {
        float min = Math.min(f, f2);
        float max = Math.max(f, f2);
        setFloatValues(this.f13786b ? max : min, this.f13786b ? min : max);
        super.setDuration(((float) this.f13789e) * (max - min));
        m25277a(m25267f());
    }

    /* renamed from: a */
    public void m25273a(boolean z) {
        this.f13786b = z;
        m25276a(this.f13787c, this.f13788d);
    }

    /* renamed from: b */
    public final void m25272b(@FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
        float f2 = this.f13787c;
        if (f < f2) {
            f = f2;
        } else {
            float f3 = this.f13788d;
            if (f > f3) {
                f = f3;
            }
        }
        this.f13790f = f;
        if (getDuration() > 0) {
            float f4 = this.f13787c;
            setCurrentPlayTime(((float) getDuration()) * ((f - f4) / (this.f13788d - f4)));
        }
    }

    /* renamed from: d */
    public void m25269d() {
        m25272b(m25267f());
    }

    /* renamed from: e */
    public float m25268e() {
        return this.f13788d;
    }

    /* renamed from: f */
    public float m25267f() {
        return this.f13790f;
    }

    /* renamed from: g */
    public void m25266g() {
        float f = this.f13790f;
        start();
        m25277a(f);
    }

    /* renamed from: h */
    public void m25265h() {
        this.f13785a = true;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public ValueAnimator setDuration(long j) {
        this.f13789e = j;
        m25276a(this.f13787c, this.f13788d);
        return this;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void start() {
        if (this.f13785a) {
            m25277a(m25268e());
            end();
            return;
        }
        super.start();
    }
}
