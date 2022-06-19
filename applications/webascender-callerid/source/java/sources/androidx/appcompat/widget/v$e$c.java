package androidx.appcompat.widget;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import androidx.appcompat.widget.v;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v$e$c.class */
class v$e$c implements PopupWindow.OnDismissListener {

    /* renamed from: f */
    final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f589f;

    /* renamed from: g */
    final /* synthetic */ v.e f590g;

    v$e$c(v.e eVar, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        this.f590g = eVar;
        this.f589f = onGlobalLayoutListener;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.f590g.R.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f589f);
        }
    }
}
