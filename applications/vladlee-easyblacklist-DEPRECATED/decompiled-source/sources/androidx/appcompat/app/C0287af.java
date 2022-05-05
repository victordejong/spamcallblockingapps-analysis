package androidx.appcompat.app;

import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
/* renamed from: androidx.appcompat.app.af */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/af.class */
final class C0287af implements Toolbar.AbstractC0425b {

    /* renamed from: a */
    final /* synthetic */ C0282ad f1242a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0287af(C0282ad adVar) {
        this.f1242a = adVar;
    }

    @Override // androidx.appcompat.widget.Toolbar.AbstractC0425b
    /* renamed from: a */
    public final boolean mo9249a(MenuItem menuItem) {
        return this.f1242a.f1231c.onMenuItemSelected(0, menuItem);
    }
}
