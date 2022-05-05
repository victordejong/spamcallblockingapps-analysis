package androidx.viewpager.widget;

import android.view.View;
/* renamed from: androidx.viewpager.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/c.class */
final class View$OnClickListenerC1291c implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ PagerTabStrip f5473a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC1291c(PagerTabStrip pagerTabStrip) {
        this.f5473a = pagerTabStrip;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f5473a.f5377a.m6411b(this.f5473a.f5377a.f5432c + 1);
    }
}
