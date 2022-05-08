package androidx.appcompat.app;

import androidx.core.p037g.C0741t;
/* renamed from: androidx.appcompat.app.u */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/u.class */
final class RunnableC0317u implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AppCompatDelegateImpl f1340a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0317u(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f1340a = appCompatDelegateImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1340a.f1151i.showAtLocation(this.f1340a.f1150h, 55, 0, 0);
        this.f1340a.m9887s();
        if (this.f1340a.m9889q()) {
            this.f1340a.f1150h.setAlpha(0.0f);
            AppCompatDelegateImpl appCompatDelegateImpl = this.f1340a;
            appCompatDelegateImpl.f1153k = C0741t.m8317n(appCompatDelegateImpl.f1150h).m8452a(1.0f);
            this.f1340a.f1153k.m8448a(new C0318v(this));
            return;
        }
        this.f1340a.f1150h.setAlpha(1.0f);
        this.f1340a.f1150h.setVisibility(0);
    }
}
