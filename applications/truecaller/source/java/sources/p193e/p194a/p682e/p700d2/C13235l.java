package p193e.p194a.p682e.p700d2;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.animation.AnticipateInterpolator;
import com.truecaller.C2752R;
import java.util.Objects;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p372b0.p430q.C8605o;
/* renamed from: e.a.e.d2.l */
/* loaded from: classes15-dex2jar.jar:e/a/e/d2/l.class */
public class C13235l extends Drawable {

    /* renamed from: a */
    public final int f38458a;

    /* renamed from: b */
    public final int f38459b;

    /* renamed from: c */
    public final Drawable f38460c;

    /* renamed from: d */
    public final Drawable[] f38461d;

    /* renamed from: e */
    public final Drawable[] f38462e;

    /* renamed from: f */
    public final Drawable[] f38463f;

    /* renamed from: g */
    public Drawable[] f38464g;

    /* renamed from: h */
    public Animator f38465h;

    /* renamed from: i */
    public final Rect f38466i = new Rect();

    /* renamed from: j */
    public boolean f38467j;

    public C13235l(Context context) {
        int m28238b = C8605o.m28238b(context, 285.0f);
        this.f38458a = m28238b;
        this.f38459b = C8605o.m28238b(context, 209.0f);
        int m28238b2 = C8605o.m28238b(context, 38.0f);
        int m28238b3 = C8605o.m28238b(context, 62.0f);
        int m28238b4 = C8605o.m28238b(context, 105.0f);
        int m28238b5 = C8605o.m28238b(context, 149.0f);
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(context, C2752R.C2753drawable.onboarding_animation_background);
        this.f38460c = m1789b;
        m1789b.setBounds(0, 0, m1789b.getIntrinsicWidth(), m1789b.getIntrinsicHeight());
        Drawable m1789b2 = C26467a.C26470c.m1789b(context, C2752R.C2753drawable.ic_onboarding_contacts_old);
        int i = m28238b2 + m28238b3;
        m1789b2.setBounds(m28238b3, m28238b, i, m28238b2 + m28238b);
        Drawable m1789b3 = C26467a.C26470c.m1789b(context, C2752R.C2753drawable.ic_onboarding_phone_old);
        int i2 = m28238b2 + m28238b4;
        m1789b3.setBounds(m28238b4, m28238b, i2, m28238b2 + m28238b);
        Drawable m1789b4 = C26467a.C26470c.m1789b(context, C2752R.C2753drawable.ic_onboarding_messages_old);
        int i3 = m28238b2 + m28238b5;
        m1789b4.setBounds(m28238b5, m28238b, i3, m28238b2 + m28238b);
        Drawable m1789b5 = C26467a.C26470c.m1789b(context, C2752R.C2753drawable.ic_onboarding_contacts_tc);
        m1789b5.setBounds(m28238b3, m28238b, i, m28238b2 + m28238b);
        Drawable m1789b6 = C26467a.C26470c.m1789b(context, C2752R.C2753drawable.ic_onboarding_phone_tc);
        m1789b6.setBounds(m28238b4, m28238b, i2, m28238b2 + m28238b);
        Drawable m1789b7 = C26467a.C26470c.m1789b(context, C2752R.C2753drawable.ic_onboarding_messages_tc);
        m1789b7.setBounds(m28238b5, m28238b, i3, m28238b2 + m28238b);
        Drawable[] drawableArr = {m1789b2, m1789b3, m1789b4};
        this.f38461d = drawableArr;
        this.f38462e = new Drawable[]{m1789b7, m1789b6, m1789b5};
        Drawable[] drawableArr2 = {m1789b2, m1789b3, m1789b4, m1789b5, m1789b6, m1789b7};
        this.f38463f = drawableArr2;
        this.f38464g = drawableArr;
        for (Drawable drawable : drawableArr2) {
            drawable.setAlpha(255);
        }
        Animator[] animatorArr = new Animator[this.f38461d.length];
        int i4 = 0;
        while (true) {
            Drawable[] drawableArr3 = this.f38461d;
            if (i4 >= drawableArr3.length) {
                break;
            }
            final Drawable drawable2 = drawableArr3[i4];
            ValueAnimator ofInt = ValueAnimator.ofInt(this.f38458a, this.f38459b);
            ofInt.setDuration(800L);
            ofInt.setStartDelay((i4 * 500) + 2000);
            ofInt.setInterpolator(new AnticipateInterpolator());
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: e.a.e.d2.c
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    C13235l c13235l = C13235l.this;
                    Drawable drawable3 = drawable2;
                    Objects.requireNonNull(c13235l);
                    c13235l.m21986a(drawable3, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                    drawable3.setAlpha((int) (255.0f - (Math.max(valueAnimator.getAnimatedFraction(), 0.0f) * 255.0f)));
                    c13235l.invalidateSelf();
                }
            });
            animatorArr[i4] = ofInt;
            i4++;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animatorArr);
        Animator[] animatorArr2 = new Animator[this.f38462e.length];
        int i5 = 0;
        while (true) {
            Drawable[] drawableArr4 = this.f38462e;
            if (i5 >= drawableArr4.length) {
                break;
            }
            final Drawable drawable3 = drawableArr4[i5];
            ValueAnimator ofInt2 = ValueAnimator.ofInt(this.f38459b, this.f38458a);
            ofInt2.setDuration(800L);
            ofInt2.setStartDelay((i5 * 500) + 1000);
            ofInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: e.a.e.d2.b
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    C13235l c13235l = C13235l.this;
                    Drawable drawable4 = drawable3;
                    Objects.requireNonNull(c13235l);
                    c13235l.m21986a(drawable4, ((Integer) valueAnimator.getAnimatedValue()).intValue());
                    drawable4.setAlpha((int) (valueAnimator.getAnimatedFraction() * 255.0f));
                    c13235l.invalidateSelf();
                }
            });
            animatorArr2[i5] = ofInt2;
            i5++;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(animatorArr2);
        animatorSet2.addListener(new C13232i(this));
        final Drawable[] drawableArr5 = this.f38462e;
        final Drawable[] drawableArr6 = this.f38461d;
        if (drawableArr5.length == drawableArr6.length) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.setDuration(500L);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: e.a.e.d2.a
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    C13235l c13235l = C13235l.this;
                    Drawable[] drawableArr7 = drawableArr5;
                    Drawable[] drawableArr8 = drawableArr6;
                    Objects.requireNonNull(c13235l);
                    int animatedFraction = (int) (valueAnimator.getAnimatedFraction() * 255.0f);
                    for (int i6 = 0; i6 < drawableArr7.length; i6++) {
                        drawableArr7[i6].setAlpha(255 - animatedFraction);
                        drawableArr8[i6].setAlpha(animatedFraction);
                    }
                    c13235l.invalidateSelf();
                }
            });
            ofFloat.setStartDelay(2000L);
            ofFloat.addListener(new C13233j(this));
            AnimatorSet animatorSet3 = new AnimatorSet();
            animatorSet3.playSequentially(animatorSet, animatorSet2, ofFloat);
            animatorSet3.addListener(new C13234k(this));
            this.f38465h = animatorSet3;
            return;
        }
        throw new IllegalArgumentException("Arrays must have equal length");
    }

    /* renamed from: a */
    public final void m21986a(Drawable drawable, int i) {
        drawable.copyBounds(this.f38466i);
        Rect rect = this.f38466i;
        rect.offsetTo(rect.left, i);
        drawable.setBounds(this.f38466i);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f38460c.draw(canvas);
        for (Drawable drawable : this.f38464g) {
            drawable.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        Drawable drawable = this.f38460c;
        return drawable != null ? drawable.getIntrinsicHeight() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        Drawable drawable = this.f38460c;
        return drawable != null ? drawable.getIntrinsicWidth() : 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f38460c.setAlpha(i);
        for (Drawable drawable : this.f38463f) {
            drawable.setAlpha(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f38460c.setColorFilter(colorFilter);
        for (Drawable drawable : this.f38463f) {
            drawable.setColorFilter(colorFilter);
        }
    }
}
