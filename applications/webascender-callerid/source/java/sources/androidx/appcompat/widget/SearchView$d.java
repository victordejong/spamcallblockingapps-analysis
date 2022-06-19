package androidx.appcompat.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$d.class */
class SearchView$d implements View.OnFocusChangeListener {

    /* renamed from: f */
    final /* synthetic */ SearchView f340f;

    SearchView$d(SearchView searchView) {
        this.f340f = searchView;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        View view2 = this.f340f;
        View.OnFocusChangeListener onFocusChangeListener = ((SearchView) view2).mOnQueryTextFocusChangeListener;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(view2, z);
        }
    }
}
