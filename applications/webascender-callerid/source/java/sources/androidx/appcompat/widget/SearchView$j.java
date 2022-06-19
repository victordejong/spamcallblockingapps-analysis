package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$j.class */
class SearchView$j implements AdapterView.OnItemSelectedListener {

    /* renamed from: f */
    final /* synthetic */ SearchView f346f;

    SearchView$j(SearchView searchView) {
        this.f346f = searchView;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        this.f346f.onItemSelected(i);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
