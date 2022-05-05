package androidx.appcompat.view.menu;

import android.view.MenuItem;
import androidx.appcompat.view.menu.View$OnKeyListenerC0362d;
/* renamed from: androidx.appcompat.view.menu.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/h.class */
final class RunnableC0367h implements Runnable {

    /* renamed from: a */
    final /* synthetic */ View$OnKeyListenerC0362d.C0363a f1624a;

    /* renamed from: b */
    final /* synthetic */ MenuItem f1625b;

    /* renamed from: c */
    final /* synthetic */ C0371k f1626c;

    /* renamed from: d */
    final /* synthetic */ C0366g f1627d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0367h(C0366g gVar, View$OnKeyListenerC0362d.C0363a aVar, MenuItem menuItem, C0371k kVar) {
        this.f1627d = gVar;
        this.f1624a = aVar;
        this.f1625b = menuItem;
        this.f1626c = kVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f1624a != null) {
            this.f1627d.f1623a.f1598f = true;
            this.f1624a.f1619b.m9608a(false);
            this.f1627d.f1623a.f1598f = false;
        }
        if (this.f1625b.isEnabled() && this.f1625b.hasSubMenu()) {
            this.f1626c.m9617a(this.f1625b, 4);
        }
    }
}
