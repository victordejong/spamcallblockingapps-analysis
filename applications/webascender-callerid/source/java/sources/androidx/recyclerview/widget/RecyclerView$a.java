package androidx.recyclerview.widget;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a.class */
class RecyclerView$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ RecyclerView f1917f;

    RecyclerView$a(RecyclerView recyclerView) {
        this.f1917f = recyclerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        RecyclerView recyclerView = this.f1917f;
        if (!recyclerView.z || recyclerView.isLayoutRequested()) {
            return;
        }
        RecyclerView recyclerView2 = this.f1917f;
        if (!recyclerView2.w) {
            recyclerView2.requestLayout();
        } else if (recyclerView2.C) {
            recyclerView2.B = true;
        } else {
            recyclerView2.v();
        }
    }
}
