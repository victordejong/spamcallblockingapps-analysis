package androidx.fragment.app;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$a.class */
class Fragment$a implements Runnable {

    /* renamed from: f */
    final /* synthetic */ Fragment f1392f;

    Fragment$a(Fragment fragment) {
        this.f1392f = fragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1392f.callStartTransitionListener(false);
    }
}
