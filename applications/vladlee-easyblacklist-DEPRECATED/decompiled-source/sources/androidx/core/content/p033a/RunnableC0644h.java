package androidx.core.content.p033a;

import androidx.core.content.p033a.C0641f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.content.a.h */
/* loaded from: classes-dex2jar.jar:androidx/core/content/a/h.class */
public final class RunnableC0644h implements Runnable {

    /* renamed from: a */
    final /* synthetic */ int f2907a;

    /* renamed from: b */
    final /* synthetic */ C0641f.AbstractC0642a f2908b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0644h(C0641f.AbstractC0642a aVar, int i) {
        this.f2908b = aVar;
        this.f2907a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2908b.mo1184a(this.f2907a);
    }
}
