package androidx.core.p037g;

import android.animation.ValueAnimator;
import android.view.View;
/* renamed from: androidx.core.g.ac */
/* loaded from: classes-dex2jar.jar:androidx/core/g/ac.class */
final class C0715ac implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ AbstractC0718af f3078a;

    /* renamed from: b */
    final /* synthetic */ View f3079b;

    /* renamed from: c */
    final /* synthetic */ C0712aa f3080c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0715ac(C0712aa aaVar, AbstractC0718af afVar, View view) {
        this.f3080c = aaVar;
        this.f3078a = afVar;
        this.f3079b = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f3078a.mo8439a();
    }
}
