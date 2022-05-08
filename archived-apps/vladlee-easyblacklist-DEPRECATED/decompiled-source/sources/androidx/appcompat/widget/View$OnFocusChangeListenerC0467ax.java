package androidx.appcompat.widget;

import android.view.View;
/* renamed from: androidx.appcompat.widget.ax */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ax.class */
final class View$OnFocusChangeListenerC0467ax implements View.OnFocusChangeListener {

    /* renamed from: a */
    final /* synthetic */ SearchView f2289a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnFocusChangeListenerC0467ax(SearchView searchView) {
        this.f2289a = searchView;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        if (this.f2289a.f2037f != null) {
            this.f2289a.f2037f.onFocusChange(this.f2289a, z);
        }
    }
}
