package p193e.p194a.p804h.p806b.p814e;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1146q2.AbstractC19462a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.h.b.e.a */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/e/a.class */
public final class C14596a {

    /* renamed from: a */
    public boolean f41932a;

    /* renamed from: b */
    public boolean f41933b;

    /* renamed from: c */
    public final g f41934c = C25225a.m3978P1(new C14597a(0, this));

    /* renamed from: d */
    public final g f41935d = C25225a.m3978P1(new C14597a(1, this));

    /* renamed from: e */
    public final animationAnimation$AnimationListenerC14599c f41936e = new animationAnimation$AnimationListenerC14599c();

    /* renamed from: f */
    public final animationAnimation$AnimationListenerC14598b f41937f = new animationAnimation$AnimationListenerC14598b();

    /* renamed from: g */
    public final View f41938g;

    /* renamed from: h */
    public final AbstractC19462a f41939h;

    /* renamed from: e.a.h.b.e.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/h/b/e/a$a.class */
    public static final class C14597a extends m implements a<Animation> {

        /* renamed from: b */
        public final /* synthetic */ int f41940b;

        /* renamed from: c */
        public final /* synthetic */ Object f41941c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14597a(int i, Object obj) {
            super(0);
            this.f41940b = i;
            this.f41941c = obj;
        }

        public final Object invoke() {
            int i = this.f41940b;
            if (i == 0) {
                Animation loadAnimation = AnimationUtils.loadAnimation(((C14596a) this.f41941c).f41938g.getContext(), C2752R.anim.call_log_enter_animation);
                loadAnimation.setAnimationListener(((C14596a) this.f41941c).f41936e);
                return loadAnimation;
            } else if (i != 1) {
                throw null;
            } else {
                Animation loadAnimation2 = AnimationUtils.loadAnimation(((C14596a) this.f41941c).f41938g.getContext(), C2752R.anim.call_log_exit_animation);
                loadAnimation2.setAnimationListener(((C14596a) this.f41941c).f41937f);
                return loadAnimation2;
            }
        }
    }

    /* renamed from: e.a.h.b.e.a$b */
    /* loaded from: classes3-dex2jar.jar:e/a/h/b/e/a$b.class */
    public static final class animationAnimation$AnimationListenerC14598b implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC14598b() {
            C14596a.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            C19286f.m13689O(C14596a.this.f41938g);
            C14596a.this.f41933b = false;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: e.a.h.b.e.a$c */
    /* loaded from: classes3-dex2jar.jar:e/a/h/b/e/a$c.class */
    public static final class animationAnimation$AnimationListenerC14599c implements Animation.AnimationListener {
        public animationAnimation$AnimationListenerC14599c() {
            C14596a.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            C14596a.this.f41932a = false;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    public C14596a(View view, AbstractC19462a abstractC19462a) {
        l.e(view, "targetView");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f41938g = view;
        this.f41939h = abstractC19462a;
    }
}
