package androidx.recyclerview.widget;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b.class */
class RecyclerView$b implements Runnable {

    /* renamed from: f */
    final /* synthetic */ RecyclerView f1935f;

    RecyclerView$b(RecyclerView recyclerView) {
        this.f1935f = recyclerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        RecyclerView$l recyclerView$l = this.f1935f.R;
        if (recyclerView$l != null) {
            recyclerView$l.runPendingAnimations();
        }
        this.f1935f.s0 = false;
    }
}
