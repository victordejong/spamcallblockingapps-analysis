package androidx.recyclerview.widget;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.recyclerview.widget.ac */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ac.class */
public final class RunnableC1090ac implements Runnable {

    /* renamed from: a */
    final /* synthetic */ RecyclerView f4744a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1090ac(RecyclerView recyclerView) {
        this.f4744a = recyclerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f4744a.f4561y != null) {
            this.f4744a.f4561y.mo6772a();
        }
        this.f4744a.f4495F = false;
    }
}
