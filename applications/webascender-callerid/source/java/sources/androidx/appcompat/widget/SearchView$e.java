package androidx.appcompat.widget;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$e.class */
class SearchView$e implements View.OnLayoutChangeListener {

    /* renamed from: f */
    final /* synthetic */ SearchView f341f;

    SearchView$e(SearchView searchView) {
        this.f341f = searchView;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.f341f.adjustDropDownSizeAndPosition();
    }
}
