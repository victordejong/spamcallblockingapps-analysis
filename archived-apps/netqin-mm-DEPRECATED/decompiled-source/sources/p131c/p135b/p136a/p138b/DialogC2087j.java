package p131c.p135b.p136a.p138b;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.applovin.impl.adview.AbstractC6929h;
import com.applovin.sdk.AppLovinSdkUtils;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p150c.C2245a;
import p131c.p135b.p136a.p148e.p151e.C2262c;
/* renamed from: c.b.a.b.j */
/* loaded from: classes-dex2jar.jar:c/b/a/b/j.class */
public class DialogC2087j extends Dialog implements AbstractC2086i {

    /* renamed from: a */
    public final Activity f8064a;

    /* renamed from: b */
    public final C2341l f8065b;

    /* renamed from: c */
    public final C2374t f8066c;

    /* renamed from: d */
    public final C2070d f8067d;

    /* renamed from: e */
    public final C2245a f8068e;

    /* renamed from: f */
    public RelativeLayout f8069f;

    /* renamed from: g */
    public AbstractC6929h f8070g;

    /* renamed from: c.b.a.b.j$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/j$a.class */
    public class RunnableC2088a implements Runnable {
        public RunnableC2088a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DialogC2087j.this.dismiss();
        }
    }

    /* renamed from: c.b.a.b.j$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/j$b.class */
    public class RunnableC2089b implements Runnable {
        public RunnableC2089b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DialogC2087j.this.dismiss();
        }
    }

    /* renamed from: c.b.a.b.j$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/j$c.class */
    public class RunnableC2090c implements Runnable {
        public RunnableC2090c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DialogC2087j.this.f8069f.removeView(DialogC2087j.this.f8067d);
            DialogC2087j.super.dismiss();
        }
    }

    /* renamed from: c.b.a.b.j$d */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/j$d.class */
    public class View$OnClickListenerC2091d implements View.OnClickListener {
        public View$OnClickListenerC2091d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC2087j.this.m31085c();
        }
    }

    /* renamed from: c.b.a.b.j$e */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/j$e.class */
    public class View$OnClickListenerC2092e implements View.OnClickListener {
        public View$OnClickListenerC2092e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DialogC2087j.this.f8070g.isClickable()) {
                DialogC2087j.this.f8070g.performClick();
            }
        }
    }

    /* renamed from: c.b.a.b.j$f */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/j$f.class */
    public class RunnableC2093f implements Runnable {

        /* renamed from: c.b.a.b.j$f$a  reason: invalid class name */
        /* loaded from: classes-dex2jar.jar:c/b/a/b/j$f$a.class */
        public class animationAnimation$AnimationListenerC2094a implements Animation.AnimationListener {
            public animationAnimation$AnimationListenerC2094a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                DialogC2087j.this.f8070g.setClickable(true);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        public RunnableC2093f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (DialogC2087j.this.f8070g == null) {
                    DialogC2087j.this.m31085c();
                }
                DialogC2087j.this.f8070g.setVisibility(0);
                DialogC2087j.this.f8070g.bringToFront();
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setDuration(((Long) DialogC2087j.this.f8065b.m30291a(C2251d.C2256e.f8719o1)).longValue());
                alphaAnimation.setAnimationListener(new animationAnimation$AnimationListenerC2094a());
                DialogC2087j.this.f8070g.startAnimation(alphaAnimation);
            } catch (Throwable th) {
                DialogC2087j.this.f8066c.m30043b("ExpandedAdDialog", "Unable to fade in close button", th);
                DialogC2087j.this.m31085c();
            }
        }
    }

    public DialogC2087j(C2245a aVar, C2070d dVar, Activity activity, C2341l lVar) {
        super(activity, 16973840);
        if (aVar == null) {
            throw new IllegalArgumentException("No ad specified");
        } else if (dVar == null) {
            throw new IllegalArgumentException("No main view specified");
        } else if (lVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        } else if (activity != null) {
            this.f8065b = lVar;
            this.f8066c = lVar.m30262d0();
            this.f8064a = activity;
            this.f8067d = dVar;
            this.f8068e = aVar;
            requestWindowFeature(1);
            setCancelable(false);
        } else {
            throw new IllegalArgumentException("No activity specified");
        }
    }

    /* renamed from: a */
    public final int m31090a(int i) {
        return AppLovinSdkUtils.dpToPx(this.f8064a, i);
    }

    /* renamed from: a */
    public C2245a m31091a() {
        return this.f8068e;
    }

    /* renamed from: a */
    public final void m31088a(AbstractC6929h.EnumC6930a aVar) {
        if (this.f8070g != null) {
            this.f8066c.m30040d("ExpandedAdDialog", "Attempting to create duplicate close button");
            return;
        }
        AbstractC6929h a = AbstractC6929h.m19329a(aVar, this.f8064a);
        this.f8070g = a;
        a.setVisibility(8);
        this.f8070g.setOnClickListener(new View$OnClickListenerC2091d());
        this.f8070g.setClickable(false);
        int a2 = m31090a(((Integer) this.f8065b.m30291a(C2251d.C2256e.f8725p1)).intValue());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a2, a2);
        layoutParams.addRule(10);
        int i = 9;
        layoutParams.addRule(((Boolean) this.f8065b.m30291a(C2251d.C2256e.f8743s1)).booleanValue() ? 9 : 11);
        this.f8070g.mo19330a(a2);
        int a3 = m31090a(((Integer) this.f8065b.m30291a(C2251d.C2256e.f8737r1)).intValue());
        int a4 = m31090a(((Integer) this.f8065b.m30291a(C2251d.C2256e.f8731q1)).intValue());
        layoutParams.setMargins(a4, a3, a4, 0);
        this.f8069f.addView(this.f8070g, layoutParams);
        this.f8070g.bringToFront();
        int a5 = m31090a(((Integer) this.f8065b.m30291a(C2251d.C2256e.f8749t1)).intValue());
        View view = new View(this.f8064a);
        view.setBackgroundColor(0);
        int i2 = a2 + a5;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i2, i2);
        layoutParams2.addRule(10);
        if (!((Boolean) this.f8065b.m30291a(C2251d.C2256e.f8743s1)).booleanValue()) {
            i = 11;
        }
        layoutParams2.addRule(i);
        layoutParams2.setMargins(a4 - m31090a(5), a3 - m31090a(5), a4 - m31090a(5), 0);
        view.setOnClickListener(new View$OnClickListenerC2092e());
        this.f8069f.addView(view, layoutParams2);
        view.bringToFront();
    }

    /* renamed from: b */
    public final void m31087b() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f8067d.setLayoutParams(layoutParams);
        RelativeLayout relativeLayout = new RelativeLayout(this.f8064a);
        this.f8069f = relativeLayout;
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f8069f.setBackgroundColor(-1157627904);
        this.f8069f.addView(this.f8067d);
        if (!this.f8068e.m30654P0()) {
            m31088a(this.f8068e.m30653Q0());
            m31083d();
        }
        setContentView(this.f8069f);
    }

    /* renamed from: c */
    public final void m31085c() {
        this.f8067d.m31124a("javascript:al_onCloseTapped();", new RunnableC2088a());
    }

    /* renamed from: d */
    public final void m31083d() {
        this.f8064a.runOnUiThread(new RunnableC2093f());
    }

    @Override // android.app.Dialog, android.content.DialogInterface, p131c.p135b.p136a.p138b.AbstractC2086i
    public void dismiss() {
        C2262c statsManagerHelper = this.f8067d.getStatsManagerHelper();
        if (statsManagerHelper != null) {
            statsManagerHelper.m30547e();
        }
        this.f8064a.runOnUiThread(new RunnableC2090c());
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        this.f8067d.m31124a("javascript:al_onBackPressed();", new RunnableC2089b());
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m31087b();
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        try {
            Window window = getWindow();
            if (window != null) {
                window.setFlags(this.f8064a.getWindow().getAttributes().flags, this.f8064a.getWindow().getAttributes().flags);
                if (this.f8068e.m18930a()) {
                    window.addFlags(16777216);
                }
            } else {
                this.f8066c.m30039e("ExpandedAdDialog", "Unable to turn on hardware acceleration - window is null");
            }
        } catch (Throwable th) {
            this.f8066c.m30043b("ExpandedAdDialog", "Setting window flags failed.", th);
        }
    }
}
