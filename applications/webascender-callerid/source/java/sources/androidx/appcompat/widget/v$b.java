package androidx.appcompat.widget;

import android.os.Build;
import android.view.ViewTreeObserver;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v$b.class */
class v$b implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: f */
    final /* synthetic */ v f584f;

    v$b(v vVar) {
        this.f584f = vVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (!this.f584f.getInternalPopup().m6478a()) {
            this.f584f.b();
        }
        ViewTreeObserver viewTreeObserver = this.f584f.getViewTreeObserver();
        if (viewTreeObserver != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            } else {
                viewTreeObserver.removeGlobalOnLayoutListener(this);
            }
        }
    }
}
