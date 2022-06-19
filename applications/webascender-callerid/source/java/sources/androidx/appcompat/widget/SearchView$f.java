package androidx.appcompat.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$f.class */
class SearchView$f implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ SearchView f342f;

    SearchView$f(SearchView searchView) {
        this.f342f = searchView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SearchView searchView = this.f342f;
        if (view == searchView.mSearchButton) {
            searchView.onSearchClicked();
        } else if (view == searchView.mCloseButton) {
            searchView.onCloseClicked();
        } else if (view == searchView.mGoButton) {
            searchView.onSubmitQuery();
        } else if (view == searchView.mVoiceButton) {
            searchView.onVoiceClicked();
        } else if (view != searchView.mSearchSrcTextView) {
        } else {
            searchView.forceSuggestionQuery();
        }
    }
}
