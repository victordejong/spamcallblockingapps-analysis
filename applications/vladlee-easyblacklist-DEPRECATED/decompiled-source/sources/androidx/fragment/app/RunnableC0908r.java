package androidx.fragment.app;

import android.view.View;
/* renamed from: androidx.fragment.app.r */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/r.class */
final class RunnableC0908r implements Runnable {

    /* renamed from: a */
    final /* synthetic */ animationAnimation$AnimationListenerC0907q f3829a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0908r(animationAnimation$AnimationListenerC0907q qVar) {
        this.f3829a = qVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f3829a.f3827b.m7869s() != null) {
            this.f3829a.f3827b.m7900a((View) null);
            this.f3829a.f3828c.m7712a(this.f3829a.f3827b, this.f3829a.f3827b.m7867u(), 0, 0, false);
        }
    }
}
