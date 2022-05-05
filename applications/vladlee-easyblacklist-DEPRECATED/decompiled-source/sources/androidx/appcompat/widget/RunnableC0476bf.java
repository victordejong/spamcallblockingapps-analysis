package androidx.appcompat.widget;

import androidx.appcompat.widget.SearchView;
/* renamed from: androidx.appcompat.widget.bf */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bf.class */
final class RunnableC0476bf implements Runnable {

    /* renamed from: a */
    final /* synthetic */ SearchView.SearchAutoComplete f2297a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0476bf(SearchView.SearchAutoComplete searchAutoComplete) {
        this.f2297a = searchAutoComplete;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2297a.m9324c();
    }
}
