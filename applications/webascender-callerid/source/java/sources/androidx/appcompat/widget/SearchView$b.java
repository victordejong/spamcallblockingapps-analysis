package androidx.appcompat.widget;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$b.class */
class SearchView$b implements Runnable {

    /* renamed from: f */
    final /* synthetic */ SearchView f338f;

    SearchView$b(SearchView searchView) {
        this.f338f = searchView;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f338f.updateFocusedState();
    }
}
