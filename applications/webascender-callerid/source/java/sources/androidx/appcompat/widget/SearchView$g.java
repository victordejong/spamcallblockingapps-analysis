package androidx.appcompat.widget;

import android.view.KeyEvent;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$g.class */
class SearchView$g implements View.OnKeyListener {

    /* renamed from: f */
    final /* synthetic */ SearchView f343f;

    SearchView$g(SearchView searchView) {
        this.f343f = searchView;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        SearchView searchView = this.f343f;
        if (searchView.mSearchable == null) {
            return false;
        }
        if (searchView.mSearchSrcTextView.isPopupShowing() && this.f343f.mSearchSrcTextView.getListSelection() != -1) {
            return this.f343f.onSuggestionsKey(view, i, keyEvent);
        }
        if (this.f343f.mSearchSrcTextView.b() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
            return false;
        }
        view.cancelLongPress();
        SearchView searchView2 = this.f343f;
        searchView2.launchQuerySearch(0, (String) null, searchView2.mSearchSrcTextView.getText().toString());
        return true;
    }
}
