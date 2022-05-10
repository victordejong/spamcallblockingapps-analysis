package p012b.p016b.p024p.p025j;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import p012b.p042i.p048k.p049a.AbstractSubMenuC0915c;
/* renamed from: b.b.p.j.s */
/* loaded from: classes-dex2jar.jar:b/b/p/j/s.class */
public class SubMenuC0672s extends MenuC0666o implements SubMenu {

    /* renamed from: e */
    public final AbstractSubMenuC0915c f3341e;

    public SubMenuC0672s(Context context, AbstractSubMenuC0915c cVar) {
        super(context, cVar);
        this.f3341e = cVar;
    }

    @Override // android.view.SubMenu
    public void clearHeader() {
        this.f3341e.clearHeader();
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return m36642a(this.f3341e.getItem());
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        this.f3341e.setHeaderIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        this.f3341e.setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        this.f3341e.setHeaderTitle(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f3341e.setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        this.f3341e.setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f3341e.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f3341e.setIcon(drawable);
        return this;
    }
}
