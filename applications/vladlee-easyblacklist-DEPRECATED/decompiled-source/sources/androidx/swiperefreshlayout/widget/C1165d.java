package androidx.swiperefreshlayout.widget;

import android.animation.Animator;
import androidx.swiperefreshlayout.widget.C1162b;
/* renamed from: androidx.swiperefreshlayout.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/d.class */
final class C1165d implements Animator.AnimatorListener {

    /* renamed from: a */
    final /* synthetic */ C1162b.C1163a f5032a;

    /* renamed from: b */
    final /* synthetic */ C1162b f5033b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1165d(C1162b bVar, C1162b.C1163a aVar) {
        this.f5033b = bVar;
        this.f5032a = aVar;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        this.f5033b.m6653a(1.0f, this.f5032a, true);
        this.f5032a.m6644c();
        C1162b.C1163a aVar = this.f5032a;
        aVar.m6647a(aVar.m6649a());
        if (this.f5033b.f5004b) {
            this.f5033b.f5004b = false;
            animator.cancel();
            animator.setDuration(1332L);
            animator.start();
            this.f5032a.m6646a(false);
            return;
        }
        this.f5033b.f5003a += 1.0f;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f5033b.f5003a = 0.0f;
    }
}
