package androidx.recyclerview.widget;
/* renamed from: androidx.recyclerview.widget.q */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/q.class */
final class RunnableC1137q implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C1134p f4884a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1137q(C1134p pVar) {
        this.f4884a = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1134p pVar = this.f4884a;
        int i = pVar.f4866j;
        if (i == 1) {
            pVar.f4865i.cancel();
        } else if (i != 2) {
            return;
        }
        pVar.f4866j = 3;
        pVar.f4865i.setFloatValues(((Float) pVar.f4865i.getAnimatedValue()).floatValue(), 0.0f);
        pVar.f4865i.setDuration(500L);
        pVar.f4865i.start();
    }
}
