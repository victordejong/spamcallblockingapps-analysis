package androidx.appcompat.widget;

import android.view.MenuItem;
import androidx.appcompat.widget.ActionMenuView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.bn */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bn.class */
public final class C0485bn implements ActionMenuView.AbstractC0406d {

    /* renamed from: a */
    final /* synthetic */ Toolbar f2339a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0485bn(Toolbar toolbar) {
        this.f2339a = toolbar;
    }

    @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0406d
    /* renamed from: a */
    public final boolean mo9078a(MenuItem menuItem) {
        if (this.f2339a.f2130d != null) {
            return this.f2339a.f2130d.mo9249a(menuItem);
        }
        return false;
    }
}
