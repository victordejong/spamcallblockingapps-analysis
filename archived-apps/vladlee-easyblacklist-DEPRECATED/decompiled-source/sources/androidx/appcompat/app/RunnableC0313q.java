package androidx.appcompat.app;

import com.crashlytics.android.core.CodedOutputStream;
/* renamed from: androidx.appcompat.app.q */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/q.class */
final class RunnableC0313q implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AppCompatDelegateImpl f1336a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0313q(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f1336a = appCompatDelegateImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if ((this.f1336a.f1161s & 1) != 0) {
            this.f1336a.m9895h(0);
        }
        if ((this.f1336a.f1161s & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0) {
            this.f1336a.m9895h(108);
        }
        AppCompatDelegateImpl appCompatDelegateImpl = this.f1336a;
        appCompatDelegateImpl.f1160r = false;
        appCompatDelegateImpl.f1161s = 0;
    }
}
