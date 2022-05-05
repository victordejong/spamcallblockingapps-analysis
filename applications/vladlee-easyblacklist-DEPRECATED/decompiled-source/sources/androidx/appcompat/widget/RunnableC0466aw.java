package androidx.appcompat.widget;

import android.database.Cursor;
/* renamed from: androidx.appcompat.widget.aw */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/aw.class */
final class RunnableC0466aw implements Runnable {

    /* renamed from: a */
    final /* synthetic */ SearchView f2288a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0466aw(SearchView searchView) {
        this.f2288a = searchView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f2288a.f2038g instanceof View$OnClickListenerC0477bg) {
            this.f2288a.f2038g.mo8863a((Cursor) null);
        }
    }
}
