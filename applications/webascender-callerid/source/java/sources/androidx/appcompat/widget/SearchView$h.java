package androidx.appcompat.widget;

import android.view.KeyEvent;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$h.class */
class SearchView$h implements TextView.OnEditorActionListener {

    /* renamed from: f */
    final /* synthetic */ SearchView f344f;

    SearchView$h(SearchView searchView) {
        this.f344f = searchView;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        this.f344f.onSubmitQuery();
        return true;
    }
}
