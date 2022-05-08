package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.C0371k;
/* renamed from: androidx.appcompat.view.menu.z */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/z.class */
public class SubMenuC0395z extends C0371k implements SubMenu {

    /* renamed from: d */
    private C0371k f1758d;

    /* renamed from: e */
    private C0375m f1759e;

    public SubMenuC0395z(Context context, C0371k kVar, C0375m mVar) {
        super(context);
        this.f1758d = kVar;
        this.f1759e = mVar;
    }

    @Override // androidx.appcompat.view.menu.C0371k
    /* renamed from: a */
    public final void mo9539a(C0371k.AbstractC0372a aVar) {
        this.f1758d.mo9539a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.view.menu.C0371k
    /* renamed from: a */
    public final boolean mo9538a(C0371k kVar, MenuItem menuItem) {
        return super.mo9538a(kVar, menuItem) || this.f1758d.mo9538a(kVar, menuItem);
    }

    @Override // androidx.appcompat.view.menu.C0371k
    /* renamed from: a */
    public final boolean mo9537a(C0375m mVar) {
        return this.f1758d.mo9537a(mVar);
    }

    @Override // androidx.appcompat.view.menu.C0371k
    /* renamed from: b */
    public final String mo9536b() {
        C0375m mVar = this.f1759e;
        int itemId = mVar != null ? mVar.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.mo9536b() + ":" + itemId;
    }

    @Override // androidx.appcompat.view.menu.C0371k
    /* renamed from: b */
    public final boolean mo9535b(C0375m mVar) {
        return this.f1758d.mo9535b(mVar);
    }

    @Override // androidx.appcompat.view.menu.C0371k
    /* renamed from: c */
    public final boolean mo9534c() {
        return this.f1758d.mo9534c();
    }

    @Override // androidx.appcompat.view.menu.C0371k
    /* renamed from: d */
    public final boolean mo9533d() {
        return this.f1758d.mo9533d();
    }

    @Override // androidx.appcompat.view.menu.C0371k
    /* renamed from: e */
    public final boolean mo9532e() {
        return this.f1758d.mo9532e();
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.f1759e;
    }

    @Override // androidx.appcompat.view.menu.C0371k
    /* renamed from: p */
    public final C0371k mo9531p() {
        return this.f1758d.mo9531p();
    }

    /* renamed from: s */
    public final Menu m9530s() {
        return this.f1758d;
    }

    @Override // androidx.appcompat.view.menu.C0371k, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f1758d.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        return (SubMenu) super.m9607b(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.m9620a(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        return (SubMenu) super.m9624a(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.m9611a(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.m9615a(view);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f1759e.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f1759e.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.C0371k, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f1758d.setQwertyMode(z);
    }
}
