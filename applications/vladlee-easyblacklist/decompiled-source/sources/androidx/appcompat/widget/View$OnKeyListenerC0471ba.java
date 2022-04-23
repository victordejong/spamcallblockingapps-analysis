package androidx.appcompat.widget;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
/* renamed from: androidx.appcompat.widget.ba */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ba.class */
final class View$OnKeyListenerC0471ba implements View.OnKeyListener {

    /* renamed from: a */
    final /* synthetic */ SearchView f2293a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnKeyListenerC0471ba(SearchView searchView) {
        this.f2293a = searchView;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (this.f2293a.f2039h == null) {
            return false;
        }
        if (this.f2293a.f2031a.isPopupShowing() && this.f2293a.f2031a.getListSelection() != -1) {
            return this.f2293a.m9358a(i, keyEvent);
        }
        if ((TextUtils.getTrimmedLength(this.f2293a.f2031a.getText()) == 0) || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
            return false;
        }
        view.cancelLongPress();
        SearchView searchView = this.f2293a;
        searchView.m9353a(searchView.f2031a.getText().toString());
        return true;
    }
}
