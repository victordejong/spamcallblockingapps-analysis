package androidx.fragment.app;
/* renamed from: androidx.fragment.app.d */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/d.class */
final class RunnableC0888d implements Runnable {

    /* renamed from: a */
    final /* synthetic */ DialogInterface$OnCancelListenerC0887c f3762a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0888d(DialogInterface$OnCancelListenerC0887c cVar) {
        this.f3762a = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f3762a.f3758f != null) {
            DialogInterface$OnCancelListenerC0887c cVar = this.f3762a;
            cVar.onDismiss(cVar.f3758f);
        }
    }
}
