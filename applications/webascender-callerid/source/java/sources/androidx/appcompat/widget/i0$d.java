package androidx.appcompat.widget;

import android.widget.AbsListView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i0$d.class */
class i0$d implements AbsListView.OnScrollListener {

    /* renamed from: a */
    final /* synthetic */ i0 f512a;

    i0$d(i0 i0Var) {
        this.f512a = i0Var;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i != 1 || this.f512a.A() || this.f512a.J.getContentView() == null) {
            return;
        }
        i0 i0Var = this.f512a;
        i0Var.F.removeCallbacks(i0Var.B);
        this.f512a.B.run();
    }
}
