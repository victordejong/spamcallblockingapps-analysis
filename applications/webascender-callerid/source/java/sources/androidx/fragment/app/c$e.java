package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$e.class */
public class c$e implements Animation.AnimationListener {

    /* renamed from: a */
    final /* synthetic */ ViewGroup f1460a;

    /* renamed from: b */
    final /* synthetic */ View f1461b;

    /* renamed from: c */
    final /* synthetic */ c.k f1462c;

    /* renamed from: androidx.fragment.app.c$e$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$e$a.class */
    class RunnableC0256a implements Runnable {
        RunnableC0256a() {
            c$e.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            c$e c_e = c$e.this;
            c_e.f1460a.endViewTransition(c_e.f1461b);
            c$e.this.f1462c.m5821a();
        }
    }

    c$e(c cVar, ViewGroup viewGroup, View view, c.k kVar) {
        this.f1460a = viewGroup;
        this.f1461b = view;
        this.f1462c = kVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f1460a.post(new RunnableC0256a());
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
