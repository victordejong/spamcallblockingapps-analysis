package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.core.p029a.p030a.AbstractSubMenuC0596c;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.view.menu.aa */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/aa.class */
public final class SubMenuC0359aa extends MenuC0390u implements SubMenu {

    /* renamed from: b */
    private final AbstractSubMenuC0596c f1577b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SubMenuC0359aa(Context context, AbstractSubMenuC0596c cVar) {
        super(context, cVar);
        this.f1577b = cVar;
    }

    @Override // android.view.SubMenu
    public final void clearHeader() {
        this.f1577b.clearHeader();
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return m9642a(this.f1577b.getItem());
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i) {
        this.f1577b.setHeaderIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        this.f1577b.setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i) {
        this.f1577b.setHeaderTitle(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f1577b.setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        this.f1577b.setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i) {
        this.f1577b.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.f1577b.setIcon(drawable);
        return this;
    }
}
