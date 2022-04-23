package androidx.swiperefreshlayout.widget;

import android.animation.ValueAnimator;
import androidx.swiperefreshlayout.widget.C1162b;
/* renamed from: androidx.swiperefreshlayout.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/c.class */
final class C1164c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ C1162b.C1163a f5030a;

    /* renamed from: b */
    final /* synthetic */ C1162b f5031b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1164c(C1162b bVar, C1162b.C1163a aVar) {
        this.f5031b = bVar;
        this.f5030a = aVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        C1162b.m6654a(floatValue, this.f5030a);
        this.f5031b.m6653a(floatValue, this.f5030a, false);
        this.f5031b.invalidateSelf();
    }
}
