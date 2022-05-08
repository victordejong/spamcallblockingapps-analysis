package p459j.p460a.p463b0.p466s;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.LinearInterpolator;
/* renamed from: j.a.b0.s.c */
/* loaded from: classes2-dex2jar.jar:j/a/b0/s/c.class */
public class C11238c {

    /* renamed from: j.a.b0.s.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/c$a.class */
    public static final class C11239a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ View f25206a;

        /* renamed from: b */
        public final /* synthetic */ C11241c f25207b;

        public C11239a(View view, C11241c cVar) {
            this.f25206a = view;
            this.f25207b = cVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f25206a.setVisibility(8);
            this.f25206a.setAlpha(0.0f);
            C11241c cVar = this.f25207b;
            if (cVar != null) {
                cVar.m9965a();
                throw null;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f25206a.setVisibility(8);
            C11241c cVar = this.f25207b;
            if (cVar != null) {
                cVar.m9964b();
                throw null;
            }
        }
    }

    /* renamed from: j.a.b0.s.c$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/c$b.class */
    public static final class C11240b extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ View f25208a;

        /* renamed from: b */
        public final /* synthetic */ C11241c f25209b;

        public C11240b(View view, C11241c cVar) {
            this.f25208a = view;
            this.f25209b = cVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f25208a.setAlpha(1.0f);
            C11241c cVar = this.f25209b;
            if (cVar != null) {
                cVar.m9965a();
                throw null;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C11241c cVar = this.f25209b;
            if (cVar != null) {
                cVar.m9964b();
                throw null;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f25208a.setVisibility(0);
        }
    }

    /* renamed from: j.a.b0.s.c$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/s/c$c.class */
    public static class C11241c {
        /* renamed from: a */
        public void m9965a() {
            throw null;
        }

        /* renamed from: b */
        public void m9964b() {
            throw null;
        }
    }

    static {
        new LinearInterpolator();
        new LinearInterpolator();
        new LinearInterpolator();
    }

    /* renamed from: a */
    public static void m9969a(View view, int i) {
        m9968a(view, i, 0, null);
    }

    /* renamed from: a */
    public static void m9968a(View view, int i, int i2, C11241c cVar) {
        view.setAlpha(0.0f);
        ViewPropertyAnimator animate = view.animate();
        animate.cancel();
        animate.setStartDelay(i2);
        animate.alpha(1.0f).withLayer().setListener(new C11240b(view, cVar));
        if (i != -1) {
            animate.setDuration(i);
        }
        animate.start();
    }

    /* renamed from: a */
    public static void m9967a(View view, int i, C11241c cVar) {
        view.setAlpha(1.0f);
        ViewPropertyAnimator animate = view.animate();
        animate.cancel();
        animate.alpha(0.0f).withLayer().setListener(new C11239a(view, cVar));
        if (i != -1) {
            animate.setDuration(i);
        }
        animate.start();
    }

    /* renamed from: b */
    public static void m9966b(View view, int i) {
        m9967a(view, i, null);
    }
}
