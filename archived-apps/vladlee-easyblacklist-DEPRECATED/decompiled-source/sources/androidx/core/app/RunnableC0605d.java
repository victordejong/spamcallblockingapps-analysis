package androidx.core.app;

import androidx.core.app.C0603c;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.app.d */
/* loaded from: classes-dex2jar.jar:androidx/core/app/d.class */
public final class RunnableC0605d implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0603c.C0604a f2795a;

    /* renamed from: b */
    final /* synthetic */ Object f2796b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0605d(C0603c.C0604a aVar, Object obj) {
        this.f2795a = aVar;
        this.f2796b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2795a.f2790a = this.f2796b;
    }
}
