package p193e.p194a.p798g5;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import androidx.fragment.app.Fragment;
import com.truecaller.tagger.C4604R;
import n3.b.a.h;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
/* renamed from: e.a.g5.l */
/* loaded from: classes14-dex2jar.jar:e/a/g5/l.class */
public abstract class AbstractView$OnClickListenerC14526l extends h implements View.OnClickListener {

    /* renamed from: a */
    public View f41800a;

    /* renamed from: c */
    public AbstractC14530d f41802c;

    /* renamed from: b */
    public final ColorDrawable f41801b = new ColorDrawable(0);

    /* renamed from: d */
    public final ValueAnimator.AnimatorUpdateListener f41803d = new C14527a();

    /* renamed from: e.a.g5.l$a */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/l$a.class */
    public class C14527a implements ValueAnimator.AnimatorUpdateListener {
        public C14527a() {
            AbstractView$OnClickListenerC14526l.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            AbstractView$OnClickListenerC14526l.this.f41800a.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
            AbstractView$OnClickListenerC14526l.this.f41801b.setColor(Color.argb((int) (animatedFraction * 255.0f * 0.2f), 0, 0, 0));
            AbstractView$OnClickListenerC14526l.this.f41801b.invalidateSelf();
        }
    }

    /* renamed from: e.a.g5.l$b */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/l$b.class */
    public class ViewTreeObserver$OnPreDrawListenerC14528b implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserver$OnPreDrawListenerC14528b() {
            AbstractView$OnClickListenerC14526l.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            AbstractView$OnClickListenerC14526l.this.f41800a.getViewTreeObserver().removeOnPreDrawListener(this);
            final AbstractView$OnClickListenerC14526l abstractView$OnClickListenerC14526l = AbstractView$OnClickListenerC14526l.this;
            abstractView$OnClickListenerC14526l.f41800a.setAlpha(0.0f);
            abstractView$OnClickListenerC14526l.f41800a.postDelayed(new Runnable() { // from class: e.a.g5.a
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractView$OnClickListenerC14526l abstractView$OnClickListenerC14526l2 = AbstractView$OnClickListenerC14526l.this;
                    float height = abstractView$OnClickListenerC14526l2.f41800a.getHeight();
                    abstractView$OnClickListenerC14526l2.f41800a.setTranslationY(height);
                    abstractView$OnClickListenerC14526l2.f41800a.setAlpha(1.0f);
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(height, 0.0f);
                    ofFloat.setDuration(abstractView$OnClickListenerC14526l2.getResources().getInteger(17694722));
                    ofFloat.setInterpolator(new DecelerateInterpolator(3.0f));
                    ofFloat.addUpdateListener(abstractView$OnClickListenerC14526l2.f41803d);
                    ofFloat.start();
                }
            }, 200L);
            return false;
        }
    }

    /* renamed from: e.a.g5.l$c */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/l$c.class */
    public class C14529c extends AnimatorListenerAdapter {
        public C14529c() {
            AbstractView$OnClickListenerC14526l.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [e.a.g5.l, android.app.Activity] */
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AbstractView$OnClickListenerC14526l.super.finish();
            AbstractView$OnClickListenerC14526l.this.overridePendingTransition(0, 0);
        }
    }

    /* renamed from: e.a.g5.l$d */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/l$d.class */
    public static abstract class AbstractC14530d extends Fragment {
        /* renamed from: OA */
        public abstract void mo20021OA();

        public LayoutInflater onGetLayoutInflater(Bundle bundle) {
            return C17422k.m16052t0(AbstractView$OnClickListenerC14526l.super.onGetLayoutInflater(bundle));
        }
    }

    public void finish() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.f41800a.getHeight(), 0.0f);
        ofFloat.setDuration(getResources().getInteger(17694720));
        ofFloat.setInterpolator(new DecelerateInterpolator(1.0f));
        ofFloat.addUpdateListener(this.f41803d);
        ofFloat.addListener(new C14529c());
        ofFloat.reverse();
    }

    public void onBackPressed() {
        AbstractView$OnClickListenerC14526l.super.onBackPressed();
        AbstractC14530d abstractC14530d = this.f41802c;
        if (abstractC14530d != null) {
            abstractC14530d.mo20021OA();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 16908290) {
            AbstractC14530d abstractC14530d = this.f41802c;
            if (abstractC14530d != null) {
                abstractC14530d.mo20021OA();
            } else {
                finish();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        AbstractView$OnClickListenerC14526l.super.onCreate(bundle);
        C17422k.m16069l(getTheme());
        setContentView(C4604R.layout.activity_tag);
        getWindow().setBackgroundDrawable(this.f41801b);
        View findViewById = findViewById(16908290);
        this.f41800a = findViewById;
        findViewById.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC14528b());
        this.f41800a.setOnClickListener(this);
        AbstractC14530d mo20029qa = mo20029qa();
        this.f41802c = mo20029qa;
        if (mo20029qa != null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            c26907a.m1120m(C4604R.C4606id.fragment_container, this.f41802c, null);
            c26907a.mo1127f();
        }
    }

    /* renamed from: qa */
    public abstract AbstractC14530d mo20029qa();
}
