package androidx.core.content.p033a;

import android.graphics.Typeface;
import androidx.core.content.p033a.C0641f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.content.a.g */
/* loaded from: classes-dex2jar.jar:androidx/core/content/a/g.class */
public final class RunnableC0643g implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Typeface f2905a;

    /* renamed from: b */
    final /* synthetic */ C0641f.AbstractC0642a f2906b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0643g(C0641f.AbstractC0642a aVar, Typeface typeface) {
        this.f2906b = aVar;
        this.f2905a = typeface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2906b.mo1183a(this.f2905a);
    }
}
