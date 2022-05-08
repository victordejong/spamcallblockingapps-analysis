package androidx.core.p037g;

import android.view.View;
import android.view.WindowInsets;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.g.u */
/* loaded from: classes-dex2jar.jar:androidx/core/g/u.class */
public final class View$OnApplyWindowInsetsListenerC0746u implements View.OnApplyWindowInsetsListener {

    /* renamed from: a */
    final /* synthetic */ AbstractC0737p f3123a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnApplyWindowInsetsListenerC0746u(AbstractC0737p pVar) {
        this.f3123a = pVar;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        return (WindowInsets) C0719ag.m8436a(this.f3123a.mo971a(view, C0719ag.m8435a(windowInsets)));
    }
}
