package androidx.core.app;

import android.app.Application;
import androidx.core.app.C0603c;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.app.e */
/* loaded from: classes-dex2jar.jar:androidx/core/app/e.class */
public final class RunnableC0606e implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Application f2797a;

    /* renamed from: b */
    final /* synthetic */ C0603c.C0604a f2798b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0606e(Application application, C0603c.C0604a aVar) {
        this.f2797a = application;
        this.f2798b = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2797a.unregisterActivityLifecycleCallbacks(this.f2798b);
    }
}
