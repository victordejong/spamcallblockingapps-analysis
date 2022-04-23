package androidx.appcompat.app;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.app.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f.class */
public final class RunnableC0301f implements Runnable {

    /* renamed from: a */
    final /* synthetic */ View f1308a;

    /* renamed from: b */
    final /* synthetic */ View f1309b;

    /* renamed from: c */
    final /* synthetic */ AlertController f1310c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0301f(AlertController alertController, View view, View view2) {
        this.f1310c = alertController;
        this.f1308a = view;
        this.f1309b = view2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertController.m9937a(this.f1310c.f1046i, this.f1308a, this.f1309b);
    }
}
