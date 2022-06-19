package androidx.fragment.app;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/d$a.class */
class d$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ d f1475f;

    d$a(d dVar) {
        this.f1475f = dVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        d.a1(this.f1475f).onDismiss(d.Z0(this.f1475f));
    }
}
