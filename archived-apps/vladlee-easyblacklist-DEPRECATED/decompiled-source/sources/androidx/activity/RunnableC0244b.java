package androidx.activity;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.activity.b */
/* loaded from: classes-dex2jar.jar:androidx/activity/b.class */
public final class RunnableC0244b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ComponentActivity f540a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0244b(ComponentActivity componentActivity) {
        this.f540a = componentActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RunnableC0244b.super.onBackPressed();
    }
}
