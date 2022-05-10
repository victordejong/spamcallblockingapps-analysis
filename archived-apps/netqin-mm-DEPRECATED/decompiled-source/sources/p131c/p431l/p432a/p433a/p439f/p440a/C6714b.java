package p131c.p431l.p432a.p433a.p439f.p440a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.Window;
import android.view.WindowManager;
import com.netqin.p525cm.main.p529ui.NqApplication;
import com.netqin.p525cm.p526ad.triggerad.main.AnimatorView;
import p131c.p390g.p391a.p392a.C6475a;
import p131c.p431l.p432a.p468n.C6860r;
/* renamed from: c.l.a.a.f.a.b */
/* loaded from: classes2-dex2jar.jar:c/l/a/a/f/a/b.class */
public class C6714b {

    /* renamed from: a */
    public AnimatorView f20682a;

    /* renamed from: b */
    public final WindowManager f20683b;

    /* renamed from: c */
    public final WindowManager.LayoutParams f20684c;

    /* renamed from: d */
    public final Context f20685d;

    /* renamed from: e */
    public C6475a.AbstractC6477b f20686e;

    /* renamed from: c.l.a.a.f.a.b$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/a/f/a/b$a.class */
    public class C6715a extends AnimatorListenerAdapter {
        public C6715a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C6714b.this.f20682a.setVisibility(8);
            if (C6714b.this.f20682a.getParent() != null) {
                C6714b.this.f20683b.removeView(C6714b.this.f20682a);
            }
        }
    }

    public C6714b(Activity activity) {
        this.f20685d = activity;
        Window window = activity.getWindow();
        this.f20683b = window.getWindowManager();
        WindowManager.LayoutParams attributes = window.getAttributes();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f20684c = layoutParams;
        layoutParams.type = 2;
        layoutParams.format = 1;
        layoutParams.width = attributes.width;
        layoutParams.height = attributes.height;
    }

    /* renamed from: a */
    public void m20003a() {
        m19997c();
        C6475a.AbstractC6477b bVar = this.f20686e;
        if (bVar != null) {
            bVar.mo20011a();
        }
    }

    /* renamed from: a */
    public final void m20002a(Rect rect) {
        int b = C6860r.m19534b(NqApplication.m3303b());
        rect.top -= b;
        rect.bottom -= b;
    }

    /* renamed from: a */
    public void m20001a(Rect rect, C6475a.AbstractC6477b bVar) {
        AnimatorView animatorView = new AnimatorView(this.f20685d);
        this.f20682a = animatorView;
        animatorView.setTriggerAdHelper(this);
        m20002a(rect);
        this.f20686e = bVar;
        bVar.mo20006d();
        this.f20683b.addView(this.f20682a, this.f20684c);
        this.f20682a.m3656a();
    }

    /* renamed from: b */
    public void m19999b() {
        C6475a.AbstractC6477b bVar = this.f20686e;
        if (bVar != null) {
            bVar.mo20007c();
        }
    }

    /* renamed from: c */
    public void m19997c() {
        AnimatorView animatorView = this.f20682a;
        if (animatorView != null) {
            animatorView.animate().alpha(0.0f).setDuration(500L).setListener(new C6715a()).start();
        }
    }
}
