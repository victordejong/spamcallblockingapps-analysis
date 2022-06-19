package p193e.p194a.p837h0.p846y;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.PorterDuff;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.coordinatorlayout.widget.CoordinatorLayout$f;
import com.truecaller.C2752R;
import com.truecaller.ads.AdLayoutTypeX;
import com.truecaller.ads.CustomTemplate;
import com.truecaller.filters.update.UpdateFiltersDialogBehavior;
import com.truecaller.premium.PremiumLaunchContext;
import e.m.a.g.e.e;
import e.m.d.y.n;
import java.util.Objects;
import java.util.Random;
import javax.inject.Inject;
import n3.r.a.l;
import p1727n3.p1789g0.C26222q;
import p1727n3.p1863t.p1864a.p1865a.C26981b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1114o5.C19089p1;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p837h0.AbstractC14856t;
import p193e.p194a.p837h0.p838a.C14805r;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p896f0.AbstractC15163d;
import p193e.p194a.p852i.p896f0.p897j.AbstractC15167c;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
/* renamed from: e.a.h0.y.f */
/* loaded from: classes9-dex2jar.jar:e/a/h0/y/f.class */
public class C14891f extends e implements AbstractC14896i {
    @Inject

    /* renamed from: a */
    public AbstractC14894g f42569a;
    @Inject

    /* renamed from: b */
    public AbstractC16613a2 f42570b;

    /* renamed from: c */
    public ConstraintLayout f42571c;

    /* renamed from: d */
    public ImageView f42572d;

    /* renamed from: e */
    public TextView f42573e;

    /* renamed from: f */
    public TextView f42574f;

    /* renamed from: g */
    public ProgressBar f42575g;

    /* renamed from: h */
    public Button f42576h;

    /* renamed from: i */
    public FrameLayout f42577i;

    /* renamed from: j */
    public Group f42578j;

    /* renamed from: k */
    public View f42579k;

    /* renamed from: l */
    public View f42580l;

    /* renamed from: m */
    public ValueAnimator f42581m;

    /* renamed from: n */
    public AbstractC14893b f42582n;

    /* renamed from: o */
    public Context f42583o;

    /* renamed from: e.a.h0.y.f$a */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/y/f$a.class */
    public class C14892a extends C19089p1 {
        public C14892a() {
            C14891f.this = r4;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AbstractC14894g abstractC14894g = C14891f.this.f42569a;
            if (abstractC14894g != null) {
                abstractC14894g.mo19490Jj();
            }
        }
    }

    /* renamed from: e.a.h0.y.f$b */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/y/f$b.class */
    public interface AbstractC14893b {
    }

    @Override // p193e.p194a.p837h0.p846y.AbstractC14896i
    /* renamed from: Em */
    public void mo19489Em() {
        this.f42580l.setVisibility(8);
    }

    @Override // p193e.p194a.p837h0.p846y.AbstractC14896i
    /* renamed from: I6 */
    public void mo19488I6() {
        C26222q.m2523a(this.f42571c, null);
        C19045j0.m14201o(this.f42572d, C2752R.C2753drawable.ic_wifi_tcx);
        this.f42572d.setColorFilter(C19291g.m13612L(this.f42583o, 2130970072), PorterDuff.Mode.SRC_IN);
        C19045j0.m14197s(this.f42573e, C2752R.string.UpdateFiltersCheckConnection);
        C19045j0.m14197s(this.f42576h, C2752R.string.UpdateFiltersTryAgain);
        C19045j0.m14194v(this.f42574f, false, false);
    }

    @Override // p193e.p194a.p837h0.p846y.AbstractC14896i
    /* renamed from: R3 */
    public void mo19487R3(AbstractC15183d abstractC15183d) {
        l activity = getActivity();
        if (activity == null || activity.isDestroyed()) {
            return;
        }
        this.f42578j.setVisibility(0);
        View x = n.x(activity, AdLayoutTypeX.MEGA_VIDEO, abstractC15183d);
        this.f42577i.removeAllViews();
        this.f42577i.addView(x);
    }

    @Override // p193e.p194a.p837h0.p846y.AbstractC14896i
    /* renamed from: Ta */
    public void mo19486Ta(String str) {
        C19045j0.m14196t(this.f42574f, str);
    }

    @Override // p193e.p194a.p837h0.p846y.AbstractC14896i
    /* renamed from: W0 */
    public void mo19485W0(PremiumLaunchContext premiumLaunchContext) {
        this.f42570b.mo17167b(requireContext(), premiumLaunchContext);
        dismiss();
    }

    @Override // p193e.p194a.p837h0.p846y.AbstractC14896i
    /* renamed from: g9 */
    public void mo19484g9() {
        this.f42580l.setVisibility(0);
    }

    @Override // p193e.p194a.p837h0.p846y.AbstractC14896i
    /* renamed from: kd */
    public void mo19483kd() {
        C26222q.m2523a(this.f42571c, null);
        C19045j0.m14201o(this.f42572d, C19291g.m13559d0(this.f42583o, C2752R.attr.tcx_filtersUpdatedIcon));
        C19045j0.m14197s(this.f42573e, C2752R.string.UpdateFiltersUpdated);
        C19045j0.m14194v(this.f42575g, false, false);
    }

    public void onCreate(Bundle bundle) {
        C14891f.super.onCreate(bundle);
        this.f42583o = C17422k.m16113E(requireContext(), true);
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) getContext().getApplicationContext()).mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        AbstractC14840m mo11655T = mo10154s.mo11655T();
        Objects.requireNonNull(mo11655T, "Cannot return null from a non-@Nullable component method");
        AbstractC18951b0 mo12399e7 = mo10154s.mo12399e7();
        Objects.requireNonNull(mo12399e7, "Cannot return null from a non-@Nullable component method");
        AbstractC19321u mo12725G1 = mo10154s.mo12725G1();
        Objects.requireNonNull(mo12725G1, "Cannot return null from a non-@Nullable component method");
        AbstractC19462a mo12776C4 = mo10154s.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        AbstractC19223c0 mo12349i = mo10154s.mo12349i();
        Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
        AbstractC15163d mo12356h7 = mo10154s.mo12356h7();
        Objects.requireNonNull(mo12356h7, "Cannot return null from a non-@Nullable component method");
        AbstractC15167c mo12430c4 = mo10154s.mo12430c4();
        Objects.requireNonNull(mo12430c4, "Cannot return null from a non-@Nullable component method");
        C20592g mo11648b = mo10154s.mo11648b();
        Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
        C15222s.C15223a m19043a = C15222s.m19043a(mo12430c4.m19081a("blockUpdateAdUnitId"), null, "BLOCK_UPDATE", mo11648b);
        m19043a.f43331i = "blockViewUpdate";
        m19043a.f43338p = 0;
        m19043a.m19037f(CustomTemplate.NATIVE_CONTENT_DUAL_TRACKER);
        m19043a.f43327e = 0;
        m19043a.f43335m = true;
        m19043a.f43336n = false;
        C15222s c15222s = new C15222s(m19043a);
        AbstractC14856t mo12712H0 = mo10154s.mo12712H0();
        Objects.requireNonNull(mo12712H0, "Cannot return null from a non-@Nullable component method");
        AbstractC17197v0 mo11643f = mo10154s.mo11643f();
        Objects.requireNonNull(mo11643f, "Cannot return null from a non-@Nullable component method");
        this.f42569a = new C14895h(mo11655T, mo12399e7, mo12725G1, mo12776C4, mo12349i, mo12356h7, c15222s, mo12712H0, mo11643f);
        AbstractC16613a2 mo12777C3 = mo10154s.mo12777C3();
        Objects.requireNonNull(mo12777C3, "Cannot return null from a non-@Nullable component method");
        this.f42570b = mo12777C3;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        C14891f.super.onDismiss(dialogInterface);
        AbstractC14893b abstractC14893b = this.f42582n;
        if (abstractC14893b != null) {
            ((C14805r) abstractC14893b).f42331b.mo19645Sj();
        }
        this.f42581m.cancel();
        this.f42569a.mo9806c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v48, types: [com.truecaller.filters.update.UpdateFiltersDialogBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout$c] */
    public void setupDialog(Dialog dialog, int i) {
        C14891f.super.setupDialog(dialog, i);
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 100);
        this.f42581m = ofInt;
        ofInt.setDuration(new Random().nextInt(2000) + 2000);
        this.f42581m.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: e.a.h0.y.c
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                C14891f.this.f42575g.setProgress(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        this.f42581m.setInterpolator(new C26981b());
        this.f42581m.addListener(new C14892a());
        View inflate = View.inflate(this.f42583o, C2752R.layout.dialog_update_filters, null);
        this.f42571c = (ConstraintLayout) inflate;
        this.f42572d = (ImageView) inflate.findViewById(2131364231);
        this.f42573e = (TextView) inflate.findViewById(2131366469);
        this.f42574f = (TextView) inflate.findViewById(2131366110);
        this.f42575g = (ProgressBar) inflate.findViewById(2131365276);
        this.f42576h = (Button) inflate.findViewById(2131362475);
        this.f42577i = (FrameLayout) inflate.findViewById(C2752R.C2754id.f9544ad);
        this.f42578j = (Group) inflate.findViewById(C2752R.C2754id.adGroup);
        this.f42579k = inflate.findViewById(C2752R.C2754id.touchOutside);
        this.f42580l = inflate.findViewById(C2752R.C2754id.premiumPromoGroup);
        this.f42576h.setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.y.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C14891f.this.f42569a.mo19491Ij(false);
            }
        });
        inflate.findViewById(2131362821).setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.y.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C14891f.this.dismiss();
            }
        });
        this.f42579k.setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.y.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C14891f.this.dismiss();
            }
        });
        dialog.setContentView(inflate);
        this.f42569a.mo9029Y0(this);
        Bundle arguments = getArguments();
        if (arguments != null && arguments.getBoolean("forceUpdate")) {
            this.f42569a.mo19491Ij(true);
        }
        View findViewById = dialog.findViewById(2131363296);
        if (findViewById.getLayoutParams() instanceof CoordinatorLayout$f) {
            CoordinatorLayout$f coordinatorLayout$f = (CoordinatorLayout$f) findViewById.getLayoutParams();
            coordinatorLayout$f.m42994b(new UpdateFiltersDialogBehavior());
            findViewById.setLayoutParams(coordinatorLayout$f);
        }
        inflate.findViewById(C2752R.C2754id.premiumPromoButton).setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.y.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C14891f.this.f42569a.mo19492Hj();
            }
        });
    }

    @Override // p193e.p194a.p837h0.p846y.AbstractC14896i
    /* renamed from: y8 */
    public void mo19482y8() {
        C19045j0.m14201o(this.f42572d, C19291g.m13559d0(this.f42583o, C2752R.attr.tcx_filtersNotUpdatedIcon));
        C19045j0.m14197s(this.f42573e, C2752R.string.UpdateFiltersUpdating);
        C19045j0.m14194v(this.f42576h, false, true);
        C19045j0.m14194v(this.f42574f, false, false);
        C19045j0.m14194v(this.f42575g, true, true);
        this.f42581m.start();
    }
}
