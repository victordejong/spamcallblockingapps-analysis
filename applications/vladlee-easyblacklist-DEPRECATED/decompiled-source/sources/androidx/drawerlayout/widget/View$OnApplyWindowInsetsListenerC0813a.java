package androidx.drawerlayout.widget;

import android.view.View;
import android.view.WindowInsets;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.drawerlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/drawerlayout/widget/a.class */
public final class View$OnApplyWindowInsetsListenerC0813a implements View.OnApplyWindowInsetsListener {

    /* renamed from: a */
    final /* synthetic */ DrawerLayout f3367a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public View$OnApplyWindowInsetsListenerC0813a(DrawerLayout drawerLayout) {
        this.f3367a = drawerLayout;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        ((DrawerLayout) view).m8035a(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
        return windowInsets.consumeSystemWindowInsets();
    }
}
