package androidx.appcompat.app;

import android.view.View;
import android.widget.AbsListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.app.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/g.class */
public final class C0302g implements AbsListView.OnScrollListener {

    /* renamed from: a */
    final /* synthetic */ View f1311a;

    /* renamed from: b */
    final /* synthetic */ View f1312b;

    /* renamed from: c */
    final /* synthetic */ AlertController f1313c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0302g(AlertController alertController, View view, View view2) {
        this.f1313c = alertController;
        this.f1311a = view;
        this.f1312b = view2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        AlertController.m9937a(absListView, this.f1311a, this.f1312b);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i) {
    }
}
