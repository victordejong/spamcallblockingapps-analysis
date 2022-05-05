package androidx.appcompat.widget;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import androidx.appcompat.widget.AppCompatSpinner;
/* renamed from: androidx.appcompat.widget.aa */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/aa.class */
final class C0428aa implements PopupWindow.OnDismissListener {

    /* renamed from: a */
    final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f2174a;

    /* renamed from: b */
    final /* synthetic */ AppCompatSpinner.C0411c f2175b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0428aa(AppCompatSpinner.C0411c cVar, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        this.f2175b = cVar;
        this.f2174a = onGlobalLayoutListener;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        ViewTreeObserver viewTreeObserver = AppCompatSpinner.this.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f2174a);
        }
    }
}
