package androidx.appcompat.app;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.app.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/h.class */
public final class RunnableC0303h implements Runnable {

    /* renamed from: a */
    final /* synthetic */ View f1314a;

    /* renamed from: b */
    final /* synthetic */ View f1315b;

    /* renamed from: c */
    final /* synthetic */ AlertController f1316c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0303h(AlertController alertController, View view, View view2) {
        this.f1316c = alertController;
        this.f1314a = view;
        this.f1315b = view2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertController.m9937a(this.f1316c.f1039b, this.f1314a, this.f1315b);
    }
}
