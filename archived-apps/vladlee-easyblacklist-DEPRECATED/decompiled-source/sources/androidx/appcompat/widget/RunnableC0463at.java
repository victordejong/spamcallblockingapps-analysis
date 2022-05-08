package androidx.appcompat.widget;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.at */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/at.class */
public final class RunnableC0463at implements Runnable {

    /* renamed from: a */
    final /* synthetic */ View f2284a;

    /* renamed from: b */
    final /* synthetic */ C0460as f2285b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0463at(C0460as asVar, View view) {
        this.f2285b = asVar;
        this.f2284a = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2285b.smoothScrollTo(this.f2284a.getLeft() - ((this.f2285b.getWidth() - this.f2284a.getWidth()) / 2), 0);
        this.f2285b.f2269a = null;
    }
}
