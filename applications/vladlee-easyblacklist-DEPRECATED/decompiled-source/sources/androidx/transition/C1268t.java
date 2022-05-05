package androidx.transition;

import android.view.View;
/* renamed from: androidx.transition.t */
/* loaded from: classes-dex2jar.jar:androidx/transition/t.class */
final class C1268t extends C1215az {

    /* renamed from: a */
    final /* synthetic */ View f5330a;

    /* renamed from: b */
    final /* synthetic */ Fade f5331b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1268t(Fade fade, View view) {
        this.f5331b = fade;
        this.f5330a = view;
    }

    @Override // androidx.transition.C1215az, androidx.transition.Transition.AbstractC1183c
    /* renamed from: a */
    public final void mo6478a(Transition transition) {
        C1239bs.m6523a(this.f5330a, 1.0f);
        C1239bs.m6514e(this.f5330a);
        transition.mo6579b(this);
    }
}
