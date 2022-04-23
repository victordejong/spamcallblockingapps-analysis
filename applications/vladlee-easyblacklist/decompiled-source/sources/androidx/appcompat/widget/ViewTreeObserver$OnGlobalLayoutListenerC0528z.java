package androidx.appcompat.widget;

import android.view.ViewTreeObserver;
import androidx.appcompat.widget.AppCompatSpinner;
/* renamed from: androidx.appcompat.widget.z */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/z.class */
final class ViewTreeObserver$OnGlobalLayoutListenerC0528z implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    final /* synthetic */ AppCompatSpinner.C0411c f2460a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewTreeObserver$OnGlobalLayoutListenerC0528z(AppCompatSpinner.C0411c cVar) {
        this.f2460a = cVar;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        AppCompatSpinner.C0411c cVar = this.f2460a;
        if (!cVar.m9432a(AppCompatSpinner.this)) {
            this.f2460a.mo9377d();
            return;
        }
        this.f2460a.m9430h();
        ViewTreeObserver$OnGlobalLayoutListenerC0528z.super.mo9372f_();
    }
}
