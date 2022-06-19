package p193e.p194a.p673d0.p674a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import com.truecaller.C2752R;
import com.truecaller.log.AssertionUtil;
import com.truecaller.settings.CallingSettings;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p673d0.C12560v;
/* renamed from: e.a.d0.a.y */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/y.class */
public abstract class AbstractC12468y {

    /* renamed from: a */
    public final Context f36416a;

    /* renamed from: b */
    public final AbstractC12470b f36417b;

    /* renamed from: c */
    public final CallingSettings f36418c;

    /* renamed from: d */
    public FrameLayout f36419d;

    /* renamed from: e */
    public WindowManager f36420e;

    /* renamed from: f */
    public boolean f36421f;

    /* renamed from: g */
    public WindowManager.LayoutParams f36422g;

    /* renamed from: h */
    public C12560v f36423h;

    /* renamed from: i */
    public int f36424i;

    /* renamed from: j */
    public int f36425j;

    /* renamed from: k */
    public AbstractC19219a0 f36426k;

    /* renamed from: l */
    public View f36427l;

    /* renamed from: e.a.d0.a.y$a */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/y$a.class */
    public class C12469a extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ boolean f36428a;

        public C12469a(boolean z) {
            AbstractC12468y.this = r4;
            this.f36428a = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f36428a) {
                AbstractC12468y.this.mo22958l();
            }
        }
    }

    /* renamed from: e.a.d0.a.y$b */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/y$b.class */
    public interface AbstractC12470b {
        /* renamed from: d */
        void mo22954d();
    }

    public AbstractC12468y(Context context, AbstractC12470b abstractC12470b, CallingSettings callingSettings) {
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) context.getApplicationContext()).mo10154s();
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, (int) C2752R.style.ThemeX_CallerIdPopup);
        this.f36416a = contextThemeWrapper;
        this.f36417b = abstractC12470b;
        this.f36426k = mo10154s.mo11647c();
        this.f36418c = callingSettings;
        contextThemeWrapper.getResources().getInteger(17694720);
    }

    /* renamed from: g */
    public static int m22963g(AbstractC19219a0 abstractC19219a0) {
        if (Build.VERSION.SDK_INT >= 26) {
            return 2038;
        }
        return abstractC19219a0.mo13822k() ? 2010 : 2005;
    }

    /* renamed from: L5 */
    public void m22970L5(boolean z) {
        this.f36421f = false;
        m22968b(this.f36427l.getTranslationX(), true, z);
    }

    /* renamed from: a */
    public final void m22969a() {
        LayoutInflater from = LayoutInflater.from(this.f36416a);
        this.f36420e.addView(this.f36419d, this.f36422g);
        View inflate = from.inflate(mo22965e(), (ViewGroup) null);
        this.f36427l = inflate;
        this.f36419d.addView(inflate);
        this.f36419d.setOnTouchListener(mo22964f());
        mo22956o(this.f36427l);
    }

    /* renamed from: b */
    public void m22968b(float f, boolean z, boolean z2) {
        AccelerateDecelerateInterpolator accelerateDecelerateInterpolator;
        float f2;
        if (!z) {
            f2 = 1.0f;
            accelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();
        } else {
            accelerateDecelerateInterpolator = new LinearInterpolator();
            f2 = 0.0f;
        }
        this.f36421f = !z;
        if (z2) {
            f = (-1.0f) * ((Resources.getSystem().getDisplayMetrics().widthPixels / 2.0f) + this.f36424i);
        }
        this.f36427l.animate().translationX(f).alpha(f2).setDuration(500L).setInterpolator(accelerateDecelerateInterpolator).setListener(new C12469a(z));
    }

    /* renamed from: c */
    public int m22967c() {
        View view = this.f36427l;
        return view != null ? view.getHeight() : 0;
    }

    /* renamed from: d */
    public float m22966d() {
        View view = this.f36427l;
        return view != null ? view.getTranslationX() : 0.0f;
    }

    /* renamed from: e */
    public abstract int mo22965e();

    /* renamed from: f */
    public abstract View$OnTouchListenerC12429e mo22964f();

    /* renamed from: h */
    public final void m22962h() {
        this.f36420e = (WindowManager) this.f36416a.getSystemService("window");
        DisplayMetrics displayMetrics = this.f36416a.getResources().getDisplayMetrics();
        this.f36424i = displayMetrics.widthPixels;
        this.f36425j = displayMetrics.heightPixels - C19045j0.m14204l(this.f36416a.getResources());
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -2, m22963g(this.f36426k), 524296, -3);
        this.f36422g = layoutParams;
        layoutParams.gravity = 49;
        layoutParams.dimAmount = 0.6f;
        int i = this.f36418c.getInt("callerIdLastYPosition", -1);
        int i2 = i;
        if (i < 0) {
            Resources resources = this.f36416a.getResources();
            i2 = Math.max(0, ((resources.getDisplayMetrics().heightPixels / 2) - (C8605o.m28238b(this.f36416a, 180.0f) / 2)) - C19045j0.m14204l(resources));
            this.f36418c.putInt("callerIdLastYPosition", i2);
        }
        layoutParams.y = i2;
        FrameLayout frameLayout = new FrameLayout(this.f36416a);
        this.f36419d = frameLayout;
        frameLayout.setVisibility(8);
    }

    /* renamed from: i */
    public final void m22961i(C12560v c12560v) {
        C12560v c12560v2 = this.f36423h;
        boolean z = c12560v2 == null || c12560v2.f36671c != c12560v.f36671c;
        if (!((AbstractApplicationC8442a) this.f36416a.getApplicationContext()).mo28540W() || c12560v.f36680l == null) {
            return;
        }
        if (!this.f36421f) {
            if (!z) {
                return;
            }
            m22955p();
        }
        this.f36423h = c12560v;
        mo22960j(c12560v, z);
    }

    /* renamed from: j */
    public abstract void mo22960j(C12560v c12560v, boolean z);

    /* renamed from: k */
    public abstract void mo22959k();

    /* renamed from: l */
    public void mo22958l() {
        if (this.f36421f) {
            m22955p();
            return;
        }
        AssertionUtil.OnlyInDebug.isTrue(this.f36422g != null, new String[0]);
        WindowManager.LayoutParams layoutParams = this.f36422g;
        if (layoutParams != null) {
            layoutParams.height = -2;
            try {
                this.f36420e.updateViewLayout(this.f36419d, layoutParams);
            } catch (IllegalArgumentException e) {
            }
        }
        this.f36418c.putInt("callerIdLastYPosition", this.f36422g.y);
        FrameLayout frameLayout = this.f36419d;
        AtomicInteger atomicInteger = C26614s.f74505a;
        if (frameLayout.isAttachedToWindow()) {
            this.f36419d.setVisibility(8);
            this.f36420e.removeView(this.f36419d);
        }
        this.f36417b.mo22954d();
        mo22959k();
    }

    /* renamed from: m */
    public abstract void mo22957m();

    /* renamed from: o */
    public abstract void mo22956o(View view);

    /* renamed from: p */
    public void m22955p() {
        this.f36421f = true;
        this.f36419d.setVisibility(0);
        this.f36427l.clearAnimation();
        this.f36427l.setAlpha(0.0f);
        this.f36427l.setTranslationX(this.f36424i);
        m22968b(0.0f, false, false);
        mo22957m();
    }
}
