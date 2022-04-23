package androidx.appcompat.widget;

import android.os.Build;
import android.view.ViewTreeObserver;
/* renamed from: androidx.appcompat.widget.x */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/x.class */
final class ViewTreeObserver$OnGlobalLayoutListenerC0526x implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    final /* synthetic */ AppCompatSpinner f2457a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewTreeObserver$OnGlobalLayoutListenerC0526x(AppCompatSpinner appCompatSpinner) {
        this.f2457a = appCompatSpinner;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        if (!this.f2457a.m9434c().mo9419e()) {
            this.f2457a.m9433d();
        }
        ViewTreeObserver viewTreeObserver = this.f2457a.getViewTreeObserver();
        if (viewTreeObserver == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            viewTreeObserver.removeOnGlobalLayoutListener(this);
        } else {
            viewTreeObserver.removeGlobalOnLayoutListener(this);
        }
    }
}
