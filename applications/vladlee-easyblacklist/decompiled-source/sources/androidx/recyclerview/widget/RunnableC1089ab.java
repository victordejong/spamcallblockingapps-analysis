package androidx.recyclerview.widget;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.ab */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ab.class */
public final class RunnableC1089ab implements Runnable {

    /* renamed from: a */
    final /* synthetic */ RecyclerView f4743a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1089ab(RecyclerView recyclerView) {
        this.f4743a = recyclerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4743a.f4555s && !this.f4743a.isLayoutRequested()) {
            if (!this.f4743a.f4552p) {
                this.f4743a.requestLayout();
                return;
            }
            boolean z = this.f4743a.f4557u;
            RecyclerView recyclerView = this.f4743a;
            if (z) {
                recyclerView.f4556t = true;
            } else {
                recyclerView.m7220d();
            }
        }
    }
}
