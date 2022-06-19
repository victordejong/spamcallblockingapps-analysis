package p193e.p194a.p682e.p683a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.data.entity.Contact;
import com.truecaller.premium.PremiumLaunchContext;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p194a.p1011l.AbstractC16613a2;
/* renamed from: e.a.e.a.e2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/e2.class */
public class DialogC12717e2 extends Dialog implements DialogInterface.OnShowListener, View.OnClickListener {

    /* renamed from: a */
    public final int f37067a;

    /* renamed from: b */
    public final Uri f37068b;

    /* renamed from: c */
    public final ImageView f37069c;

    /* renamed from: d */
    public final AbstractC22590g<Drawable> f37070d;

    /* renamed from: e */
    public final boolean f37071e;

    /* renamed from: f */
    public Contact.PremiumLevel f37072f;

    /* renamed from: g */
    public Animator f37073g;

    /* renamed from: h */
    public boolean f37074h;

    /* renamed from: e.a.e.a.e2$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/e2$a.class */
    public static class C12718a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final View f37075a;

        /* renamed from: b */
        public final int f37076b;

        /* renamed from: c */
        public final int f37077c;

        /* renamed from: d */
        public final int f37078d;

        /* renamed from: e */
        public final int f37079e;

        public C12718a(View view, int i, int i2, int i3, int i4) {
            this.f37075a = view;
            this.f37076b = i;
            this.f37077c = i2;
            this.f37078d = i3;
            this.f37079e = i4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            View view = this.f37075a;
            int i = this.f37076b;
            view.setTranslationX(((this.f37078d - i) * animatedFraction) + i);
            View view2 = this.f37075a;
            int i2 = this.f37077c;
            view2.setTranslationY(((this.f37079e - i2) * animatedFraction) + i2);
        }
    }

    public DialogC12717e2(Context context, Uri uri, ImageView imageView, int i, AbstractC22590g<Drawable> abstractC22590g, boolean z) {
        super(context, C2752R.style.AvatarDialogTheme);
        this.f37068b = uri;
        this.f37069c = imageView;
        this.f37067a = i;
        this.f37070d = abstractC22590g;
        this.f37071e = z;
    }

    public DialogC12717e2(Context context, Uri uri, ImageView imageView, int i, AbstractC22590g<Drawable> abstractC22590g, boolean z, Contact.PremiumLevel premiumLevel, boolean z2) {
        super(context, C2752R.style.AvatarDialogTheme);
        this.f37068b = uri;
        this.f37069c = imageView;
        this.f37067a = i;
        this.f37070d = null;
        this.f37071e = z;
        this.f37072f = premiumLevel;
        this.f37074h = z2;
    }

    /* renamed from: b */
    public final Animator m22723b(View view, int i, int i2, int i3, int i4) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f);
        ofFloat.addUpdateListener(new C12718a(view, i, i2, i3, i4));
        return ofFloat;
    }

    /* renamed from: c */
    public final void m22722c(View view, boolean z, Animator.AnimatorListener animatorListener) {
        Animator animator;
        ObjectAnimator objectAnimator;
        Animator animator2;
        int width = view.getWidth();
        int height = view.getHeight();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int width2 = this.f37069c.getWidth();
        int height2 = this.f37069c.getHeight();
        int[] iArr2 = new int[2];
        this.f37069c.getLocationOnScreen(iArr2);
        float sqrt = (float) Math.sqrt(C22128a.m8698J1(height, height, 4, (width * width) / 4));
        int i = iArr2[0];
        int i2 = width2 / 2;
        int i3 = iArr[0];
        int i4 = width / 2;
        int i5 = (i + i2) - (i3 + i4);
        int i6 = iArr2[1];
        int i7 = height2 / 2;
        int i8 = iArr[1];
        int i9 = height / 2;
        int i10 = (i7 + i6) - (i8 + i9);
        if (z) {
            objectAnimator = ObjectAnimator.ofFloat(view, "alpha", 0.2f, 1.0f);
            objectAnimator.setInterpolator(new AccelerateInterpolator());
            animator = m22723b(view, i5, i10, 0, 0);
            animator.setInterpolator(new DecelerateInterpolator());
            animator2 = ViewAnimationUtils.createCircularReveal(view, i4, i9, i2, sqrt);
            animator2.setInterpolator(new AccelerateInterpolator(2.0f));
        } else {
            objectAnimator = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.2f);
            objectAnimator.setInterpolator(new DecelerateInterpolator());
            animator = m22723b(view, 0, 0, i5, i10);
            animator.setInterpolator(new AccelerateInterpolator());
            animator2 = ViewAnimationUtils.createCircularReveal(view, i4, i9, sqrt, i2);
            animator2.setInterpolator(new DecelerateInterpolator());
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animator, objectAnimator, animator2);
        animatorSet.setDuration(getContext().getResources().getInteger(17694720));
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        this.f37073g = animatorSet;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        Animator animator = this.f37073g;
        if (animator == null || !animator.isStarted()) {
            m22722c(findViewById(C2752R.C2754id.avatar_dialog), false, new C12703d2(this));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2131364231) {
            dismiss();
        }
        Context context = getContext();
        if (view.getId() == 2131362275) {
            AbstractC16613a2 mo12777C3 = TrueApp.m36032b0().mo10154s().mo12777C3();
            int i = this.f37067a;
            if (i == 32) {
                mo12777C3.mo17168a(context, PremiumLaunchContext.GOLD_BADGE, "gold");
            } else if (i != 4) {
            } else {
                mo12777C3.mo17167b(context, PremiumLaunchContext.PREMIUM_BADGE);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x01b3, code lost:
        if (r0 == 1) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01b6, code lost:
        r12 = 2131232464;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01be, code lost:
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0236, code lost:
        if (p193e.p194a.p1053m0.C17891a1.C17902k.m15588o(r0, 1) != false) goto L47;
     */
    @Override // android.app.Dialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 793
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.p683a.DialogC12717e2.onCreate(android.os.Bundle):void");
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        m22722c(findViewById(C2752R.C2754id.avatar_dialog), true, null);
    }
}
