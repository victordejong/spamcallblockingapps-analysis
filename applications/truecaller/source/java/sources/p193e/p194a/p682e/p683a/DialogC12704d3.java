package p193e.p194a.p682e.p683a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import e.f.a.n.q.d.i;
import e.f.a.n.q.d.y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1406z3.C21852d;
import s1.z.c.l;
/* renamed from: e.a.e.a.d3 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/d3.class */
public final class DialogC12704d3 extends Dialog implements DialogInterface.OnShowListener, View.OnClickListener {

    /* renamed from: a */
    public Animator f37030a;

    /* renamed from: b */
    public final Uri f37031b;

    /* renamed from: c */
    public final ImageView f37032c;

    /* renamed from: e.a.e.a.d3$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/d3$a.class */
    public static final class C12705a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final View f37033a;

        /* renamed from: b */
        public final int f37034b;

        /* renamed from: c */
        public final int f37035c;

        /* renamed from: d */
        public final int f37036d;

        /* renamed from: e */
        public final int f37037e;

        public C12705a(View view, int i, int i2, int i3, int i4) {
            l.e(view, "mView");
            this.f37033a = view;
            this.f37034b = i;
            this.f37035c = i2;
            this.f37036d = i3;
            this.f37037e = i4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            l.e(valueAnimator, "animation");
            float animatedFraction = valueAnimator.getAnimatedFraction();
            View view = this.f37033a;
            int i = this.f37034b;
            view.setTranslationX(((this.f37036d - i) * animatedFraction) + i);
            View view2 = this.f37033a;
            int i2 = this.f37035c;
            view2.setTranslationY(((this.f37037e - i2) * animatedFraction) + i2);
        }
    }

    /* renamed from: e.a.e.a.d3$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/d3$b.class */
    public static final class View$OnTouchListenerC12706b implements View.OnTouchListener {
        public View$OnTouchListenerC12706b() {
            DialogC12704d3.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            l.d(motionEvent, "motionEvent");
            if (motionEvent.getAction() == 0) {
                DialogC12704d3.this.dismiss();
                return true;
            }
            return false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC12704d3(Context context, Uri uri, ImageView imageView) {
        super(context);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(imageView, "anchor");
        this.f37031b = uri;
        this.f37032c = imageView;
    }

    /* renamed from: b */
    public final Animator m22729b(View view, int i, int i2, int i3, int i4) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f);
        ofFloat.addUpdateListener(new C12705a(view, i, i2, i3, i4));
        l.d(ofFloat, "animator");
        return ofFloat;
    }

    /* renamed from: c */
    public final void m22728c(View view, boolean z, Animator.AnimatorListener animatorListener) {
        ObjectAnimator objectAnimator;
        Animator animator;
        Animator animator2;
        int width = view.getWidth();
        int height = view.getHeight();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int width2 = this.f37032c.getWidth();
        int height2 = this.f37032c.getHeight();
        int[] iArr2 = new int[2];
        this.f37032c.getLocationOnScreen(iArr2);
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
            l.d(objectAnimator, "ObjectAnimator.ofFloat(view, \"alpha\", 0.2f, 1.0f)");
            objectAnimator.setInterpolator(new AccelerateInterpolator());
            Animator m22729b = m22729b(view, i5, i10, 0, 0);
            m22729b.setInterpolator(new DecelerateInterpolator());
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i4, i9, i2, sqrt);
            l.d(createCircularReveal, "ViewAnimationUtils.creat… 2).toFloat(), maxRadius)");
            createCircularReveal.setInterpolator(new AccelerateInterpolator(2.0f));
            animator2 = m22729b;
            animator = createCircularReveal;
        } else {
            objectAnimator = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.2f);
            l.d(objectAnimator, "ObjectAnimator.ofFloat(view, \"alpha\", 1.0f, 0.2f)");
            objectAnimator.setInterpolator(new DecelerateInterpolator());
            Animator m22729b2 = m22729b(view, 0, 0, i5, i10);
            m22729b2.setInterpolator(new AccelerateInterpolator());
            animator = ViewAnimationUtils.createCircularReveal(view, i4, i9, sqrt, i2);
            l.d(animator, "ViewAnimationUtils.creat…dius, (aw / 2).toFloat())");
            animator.setInterpolator(new DecelerateInterpolator());
            animator2 = m22729b2;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animator2, objectAnimator, animator);
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        animatorSet.setDuration(context.getResources().getInteger(17694720));
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.start();
        this.f37030a = animatorSet;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        Animator animator = this.f37030a;
        if (animator != null) {
            l.c(animator);
            if (animator.isStarted()) {
                return;
            }
        }
        View findViewById = findViewById(2131364231);
        l.d(findViewById, "findViewById(R.id.image)");
        m22728c(findViewById, false, new C12719e3(this));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        l.e(view, "v");
        if (view.getId() == 2131364231) {
            dismiss();
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        View decorView;
        super.onCreate(bundle);
        requestWindowFeature(1);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        setCanceledOnTouchOutside(true);
        Window window2 = getWindow();
        if (window2 != null && (decorView = window2.getDecorView()) != null) {
            decorView.setOnTouchListener(new View$OnTouchListenerC12706b());
        }
        setContentView(C2752R.layout.dialog_picture);
        ImageView imageView = (ImageView) findViewById(2131364231);
        Drawable drawable = this.f37032c.getDrawable();
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
        }
        C21852d<Drawable> mo8097k = C17891a1.C17902k.m15664K1(getContext()).m8960z(this.f37031b).mo8087u(C2752R.C2753drawable.business_image_placeholder).mo8097k(C2752R.C2753drawable.business_image_placeholder);
        i iVar = new i();
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        mo8097k.m8966r0(iVar, new y(context.getResources().getDimensionPixelOffset(2131166369))).m8427O(imageView);
        setOnShowListener(this);
        imageView.setOnClickListener(this);
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        l.e(dialogInterface, "dialog");
        View findViewById = findViewById(2131364231);
        l.d(findViewById, "findViewById(R.id.image)");
        m22728c(findViewById, true, null);
    }
}
