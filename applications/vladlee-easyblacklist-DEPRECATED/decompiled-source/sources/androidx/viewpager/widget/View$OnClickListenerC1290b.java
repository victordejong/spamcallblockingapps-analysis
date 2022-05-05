package androidx.viewpager.widget;

import android.view.View;
/* renamed from: androidx.viewpager.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/b.class */
final class View$OnClickListenerC1290b implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ PagerTabStrip f5472a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC1290b(PagerTabStrip pagerTabStrip) {
        this.f5472a = pagerTabStrip;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f5472a.f5377a.m6411b(this.f5472a.f5377a.f5432c - 1);
    }
}
