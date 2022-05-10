package p131c.p135b.p136a.p148e.p153y;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
/* renamed from: c.b.a.e.y.s */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/s.class */
public class C2427s {

    /* renamed from: c.b.a.e.y.s$a  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/y/s$a.class */
    public static final class animationAnimation$AnimationListenerC2428a implements Animation.AnimationListener {

        /* renamed from: a */
        public final /* synthetic */ View f9352a;

        /* renamed from: b */
        public final /* synthetic */ Runnable f9353b;

        public animationAnimation$AnimationListenerC2428a(View view, Runnable runnable) {
            this.f9352a = view;
            this.f9353b = runnable;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f9352a.bringToFront();
            this.f9353b.run();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            this.f9352a.setVisibility(0);
        }
    }

    /* renamed from: a */
    public static void m29767a(View view, long j, Runnable runnable) {
        view.setVisibility(4);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(j);
        alphaAnimation.setAnimationListener(new animationAnimation$AnimationListenerC2428a(view, runnable));
        view.startAnimation(alphaAnimation);
    }

    /* renamed from: a */
    public static boolean m29770a(int i) {
        return i == 0;
    }

    /* renamed from: a */
    public static boolean m29769a(int i, int i2) {
        return m29770a(i) != m29770a(i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
        if ((r5 & 16) == 16) goto L_0x002b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b2, code lost:
        if ((r5 & 1) == 1) goto L_0x0064;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] m29768a(int r5, int r6, int r7) {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p148e.p153y.C2427s.m29768a(int, int, int):int[]");
    }
}
