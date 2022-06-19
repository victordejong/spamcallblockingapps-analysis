package p193e.p194a.p804h.p806b;

import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.truecaller.C2752R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.h.b.c$c */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/c$c.class */
public final class c$c {

    /* renamed from: a */
    public boolean f41878a;

    /* renamed from: b */
    public boolean f41879b;

    /* renamed from: c */
    public final g f41880c = C25225a.m3978P1(new C14556a(0, this));

    /* renamed from: d */
    public final g f41881d = C25225a.m3978P1(new C14556a(1, this));

    /* renamed from: e */
    public final animationAnimation$AnimationListenerC14558c f41882e = new animationAnimation$AnimationListenerC14558c();

    /* renamed from: f */
    public final animationAnimation$AnimationListenerC14557b f41883f = new animationAnimation$AnimationListenerC14557b();

    /* renamed from: g */
    public final /* synthetic */ c f41884g;

    /* renamed from: e.a.h.b.c$c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/h/b/c$c$a.class */
    public static final class C14556a extends m implements a<Animation> {

        /* renamed from: b */
        public final /* synthetic */ int f41885b;

        /* renamed from: c */
        public final /* synthetic */ Object f41886c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14556a(int i, Object obj) {
            super(0);
            this.f41885b = i;
            this.f41886c = obj;
        }

        public final Object invoke() {
            int i = this.f41885b;
            if (i == 0) {
                Animation loadAnimation = AnimationUtils.loadAnimation(((c$c) this.f41886c).f41884g.b.getContext(), C2752R.anim.dialpad_enter_animation);
                loadAnimation.setAnimationListener(((c$c) this.f41886c).f41882e);
                return loadAnimation;
            } else if (i != 1) {
                throw null;
            } else {
                Animation loadAnimation2 = AnimationUtils.loadAnimation(((c$c) this.f41886c).f41884g.b.getContext(), C2752R.anim.dialpad_exit_animation);
                loadAnimation2.setAnimationListener(((c$c) this.f41886c).f41883f);
                return loadAnimation2;
            }
        }
    }

    /* renamed from: e.a.h.b.c$c$b */
    /* loaded from: classes3-dex2jar.jar:e/a/h/b/c$c$b.class */
    public static final class animationAnimation$AnimationListenerC14557b implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC14557b() {
            c$c.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            C19286f.m13689O(c$c.this.f41884g.b);
            c$c c_c = c$c.this;
            c_c.f41879b = false;
            c_c.f41884g.s.Ed();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            c$c.this.f41884g.s.I7();
        }
    }

    /* renamed from: e.a.h.b.c$c$c */
    /* loaded from: classes3-dex2jar.jar:e/a/h/b/c$c$c.class */
    public static final class animationAnimation$AnimationListenerC14558c implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC14558c() {
            c$c.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            c$c c_c = c$c.this;
            c_c.f41878a = false;
            c_c.f41884g.s.Fb();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            c$c.this.f41884g.s.gg();
        }
    }

    public c$c(c cVar) {
        this.f41884g = cVar;
    }
}
