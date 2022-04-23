package androidx.appcompat.widget;

import android.view.View;
import androidx.appcompat.view.AbstractC0343b;
/* renamed from: androidx.appcompat.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/c.class */
final class View$OnClickListenerC0498c implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ AbstractC0343b f2386a;

    /* renamed from: b */
    final /* synthetic */ ActionBarContextView f2387b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnClickListenerC0498c(ActionBarContextView actionBarContextView, AbstractC0343b bVar) {
        this.f2387b = actionBarContextView;
        this.f2386a = bVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f2386a.mo9684c();
    }
}
