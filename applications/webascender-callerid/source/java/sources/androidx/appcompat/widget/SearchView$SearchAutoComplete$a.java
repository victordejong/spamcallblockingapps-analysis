package androidx.appcompat.widget;

import androidx.appcompat.widget.SearchView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete$a.class */
class SearchView$SearchAutoComplete$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ SearchView.SearchAutoComplete f336f;

    SearchView$SearchAutoComplete$a(SearchView.SearchAutoComplete searchAutoComplete) {
        this.f336f = searchAutoComplete;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f336f.c();
    }
}
