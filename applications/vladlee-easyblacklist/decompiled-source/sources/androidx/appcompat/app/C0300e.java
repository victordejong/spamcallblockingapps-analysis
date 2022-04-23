package androidx.appcompat.app;

import android.view.View;
import androidx.core.widget.NestedScrollView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.app.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/e.class */
public final class C0300e implements NestedScrollView.AbstractC0773b {

    /* renamed from: a */
    final /* synthetic */ View f1305a;

    /* renamed from: b */
    final /* synthetic */ View f1306b;

    /* renamed from: c */
    final /* synthetic */ AlertController f1307c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0300e(AlertController alertController, View view, View view2) {
        this.f1307c = alertController;
        this.f1305a = view;
        this.f1306b = view2;
    }

    @Override // androidx.core.widget.NestedScrollView.AbstractC0773b
    /* renamed from: a */
    public final void mo8163a(NestedScrollView nestedScrollView) {
        AlertController.m9937a(nestedScrollView, this.f1305a, this.f1306b);
    }
}
