package androidx.appcompat.widget;

import android.database.Cursor;
import f.i.a.a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$c.class */
class SearchView$c implements Runnable {

    /* renamed from: f */
    final /* synthetic */ SearchView f339f;

    SearchView$c(SearchView searchView) {
        this.f339f = searchView;
    }

    @Override // java.lang.Runnable
    public void run() {
        a aVar = this.f339f.mSuggestionsAdapter;
        if (aVar instanceof p0) {
            aVar.a((Cursor) null);
        }
    }
}
