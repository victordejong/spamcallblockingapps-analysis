package androidx.appcompat.widget;

import android.view.ViewTreeObserver;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/k.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC0513k implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    final /* synthetic */ ActivityChooserView f2417a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewTreeObserver$OnGlobalLayoutListenerC0513k(ActivityChooserView activityChooserView) {
        this.f2417a = activityChooserView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        if (!this.f2417a.m9449c()) {
            return;
        }
        if (!this.f2417a.isShown()) {
            this.f2417a.m9448d().mo9377d();
            return;
        }
        this.f2417a.m9448d().mo9372f_();
        if (this.f2417a.f1860d != null) {
            this.f2417a.f1860d.m8423a(true);
        }
    }
}
