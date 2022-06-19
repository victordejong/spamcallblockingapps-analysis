package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import androidx.core.p005os.C0226a;
import androidx.fragment.app.C0302z;
import f.h.l.q;
import f.m.a;
import f.m.b;
/* renamed from: androidx.fragment.app.f */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/f.class */
public class C0259f {

    /* renamed from: androidx.fragment.app.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/f$b.class */
    public class animationAnimation$AnimationListenerC0260b implements Animation.AnimationListener {

        /* renamed from: a */
        final /* synthetic */ ViewGroup f1480a;

        /* renamed from: b */
        final /* synthetic */ Fragment f1481b;

        /* renamed from: c */
        final /* synthetic */ C0302z.AbstractC0309g f1482c;

        /* renamed from: d */
        final /* synthetic */ C0226a f1483d;

        /* renamed from: androidx.fragment.app.f$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/f$b$a.class */
        class RunnableC0261a implements Runnable {
            RunnableC0261a() {
                animationAnimation$AnimationListenerC0260b.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (animationAnimation$AnimationListenerC0260b.this.f1481b.getAnimatingAway() != null) {
                    animationAnimation$AnimationListenerC0260b.this.f1481b.setAnimatingAway((View) null);
                    animationAnimation$AnimationListenerC0260b animationanimation_animationlistenerc0260b = animationAnimation$AnimationListenerC0260b.this;
                    animationanimation_animationlistenerc0260b.f1482c.m5489a(animationanimation_animationlistenerc0260b.f1481b, animationanimation_animationlistenerc0260b.f1483d);
                }
            }
        }

        animationAnimation$AnimationListenerC0260b(ViewGroup viewGroup, Fragment fragment, C0302z.AbstractC0309g abstractC0309g, C0226a c0226a) {
            this.f1480a = viewGroup;
            this.f1481b = fragment;
            this.f1482c = abstractC0309g;
            this.f1483d = c0226a;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f1480a.post(new RunnableC0261a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: androidx.fragment.app.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/f$c.class */
    public class C0262c extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ ViewGroup f1485a;

        /* renamed from: b */
        final /* synthetic */ View f1486b;

        /* renamed from: c */
        final /* synthetic */ Fragment f1487c;

        /* renamed from: d */
        final /* synthetic */ C0302z.AbstractC0309g f1488d;

        /* renamed from: e */
        final /* synthetic */ C0226a f1489e;

        C0262c(ViewGroup viewGroup, View view, Fragment fragment, C0302z.AbstractC0309g abstractC0309g, C0226a c0226a) {
            this.f1485a = viewGroup;
            this.f1486b = view;
            this.f1487c = fragment;
            this.f1488d = abstractC0309g;
            this.f1489e = c0226a;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f1485a.endViewTransition(this.f1486b);
            Animator animator2 = this.f1487c.getAnimator();
            this.f1487c.setAnimator((Animator) null);
            if (animator2 == null || this.f1485a.indexOfChild(this.f1486b) >= 0) {
                return;
            }
            this.f1488d.m5489a(this.f1487c, this.f1489e);
        }
    }

    /* renamed from: androidx.fragment.app.f$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/f$d.class */
    public static class C0263d {

        /* renamed from: a */
        public final Animation f1490a;

        /* renamed from: b */
        public final Animator f1491b;

        C0263d(Animator animator) {
            this.f1490a = null;
            this.f1491b = animator;
            if (animator != null) {
                return;
            }
            throw new IllegalStateException("Animator cannot be null");
        }

        C0263d(Animation animation) {
            this.f1490a = animation;
            this.f1491b = null;
            if (animation != null) {
                return;
            }
            throw new IllegalStateException("Animation cannot be null");
        }
    }

    /* renamed from: androidx.fragment.app.f$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/f$e.class */
    public static class RunnableC0264e extends AnimationSet implements Runnable {

        /* renamed from: f */
        private final ViewGroup f1492f;

        /* renamed from: g */
        private final View f1493g;

        /* renamed from: h */
        private boolean f1494h;

        /* renamed from: i */
        private boolean f1495i;

        /* renamed from: j */
        private boolean f1496j = true;

        RunnableC0264e(Animation animation, ViewGroup viewGroup, View view) {
            super(false);
            this.f1492f = viewGroup;
            this.f1493g = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation) {
            this.f1496j = true;
            if (this.f1494h) {
                return !this.f1495i;
            }
            if (super.getTransformation(j, transformation)) {
                return true;
            }
            this.f1494h = true;
            q.a(this.f1492f, this);
            return true;
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j, Transformation transformation, float f) {
            this.f1496j = true;
            if (this.f1494h) {
                return !this.f1495i;
            }
            if (super.getTransformation(j, transformation, f)) {
                return true;
            }
            this.f1494h = true;
            q.a(this.f1492f, this);
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1494h || !this.f1496j) {
                this.f1492f.endViewTransition(this.f1493g);
                this.f1495i = true;
                return;
            }
            this.f1496j = false;
            this.f1492f.post(this);
        }
    }

    /* renamed from: a */
    public static void m5815a(Fragment fragment, C0263d c0263d, C0302z.AbstractC0309g abstractC0309g) {
        View view = fragment.mView;
        ViewGroup viewGroup = fragment.mContainer;
        viewGroup.startViewTransition(view);
        C0226a c0226a = new C0226a();
        c0226a.m5948c(new a(fragment));
        abstractC0309g.m5488b(fragment, c0226a);
        if (c0263d.f1490a != null) {
            RunnableC0264e runnableC0264e = new RunnableC0264e(c0263d.f1490a, viewGroup, view);
            fragment.setAnimatingAway(fragment.mView);
            runnableC0264e.setAnimationListener(new animationAnimation$AnimationListenerC0260b(viewGroup, fragment, abstractC0309g, c0226a));
            fragment.mView.startAnimation(runnableC0264e);
            return;
        }
        Animator animator = c0263d.f1491b;
        fragment.setAnimator(animator);
        animator.addListener(new C0262c(viewGroup, view, fragment, abstractC0309g, c0226a));
        animator.setTarget(fragment.mView);
        animator.start();
    }

    /* renamed from: b */
    public static C0263d m5814b(Context context, Fragment fragment, boolean z) {
        int nextTransition = fragment.getNextTransition();
        int nextAnim = fragment.getNextAnim();
        fragment.setNextAnim(0);
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            int i = b.c;
            if (viewGroup.getTag(i) != null) {
                fragment.mContainer.setTag(i, null);
            }
        }
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
            Animation onCreateAnimation = fragment.onCreateAnimation(nextTransition, z, nextAnim);
            if (onCreateAnimation != null) {
                return new C0263d(onCreateAnimation);
            }
            Animator onCreateAnimator = fragment.onCreateAnimator(nextTransition, z, nextAnim);
            if (onCreateAnimator != null) {
                return new C0263d(onCreateAnimator);
            }
            int i2 = nextAnim;
            if (nextAnim == 0) {
                i2 = nextAnim;
                if (nextTransition != 0) {
                    i2 = m5813c(nextTransition, z);
                }
            }
            if (i2 == 0) {
                return null;
            }
            boolean equals = "anim".equals(context.getResources().getResourceTypeName(i2));
            boolean z2 = false;
            if (equals) {
                try {
                    Animation loadAnimation = AnimationUtils.loadAnimation(context, i2);
                    if (loadAnimation != null) {
                        return new C0263d(loadAnimation);
                    }
                    z2 = true;
                } catch (Resources.NotFoundException e) {
                    throw e;
                } catch (RuntimeException e2) {
                    z2 = false;
                }
            }
            if (z2) {
                return null;
            }
            try {
                Animator loadAnimator = AnimatorInflater.loadAnimator(context, i2);
                if (loadAnimator == null) {
                    return null;
                }
                return new C0263d(loadAnimator);
            } catch (RuntimeException e3) {
                if (equals) {
                    throw e3;
                }
                Animation loadAnimation2 = AnimationUtils.loadAnimation(context, i2);
                if (loadAnimation2 == null) {
                    return null;
                }
                return new C0263d(loadAnimation2);
            }
        }
        return null;
    }

    /* renamed from: c */
    private static int m5813c(int i, boolean z) {
        return i != 4097 ? i != 4099 ? i != 8194 ? -1 : z ? a.a : a.b : z ? a.c : a.d : z ? a.e : a.f;
    }
}
