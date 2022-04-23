package androidx.appcompat.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.AbstractC0343b;
import androidx.appcompat.view.menu.MenuC0390u;
import androidx.appcompat.view.menu.MenuItemC0377o;
import androidx.core.p029a.p030a.AbstractMenuC0594a;
import androidx.core.p029a.p030a.AbstractMenuItemC0595b;
import androidx.p026b.C0542i;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/f.class */
public final class C0348f extends ActionMode {

    /* renamed from: a */
    final Context f1466a;

    /* renamed from: b */
    final AbstractC0343b f1467b;

    /* renamed from: androidx.appcompat.view.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/f$a.class */
    public static final class C0349a implements AbstractC0343b.AbstractC0344a {

        /* renamed from: a */
        final ActionMode.Callback f1468a;

        /* renamed from: b */
        final Context f1469b;

        /* renamed from: c */
        final ArrayList<C0348f> f1470c = new ArrayList<>();

        /* renamed from: d */
        final C0542i<Menu, Menu> f1471d = new C0542i<>();

        public C0349a(Context context, ActionMode.Callback callback) {
            this.f1469b = context;
            this.f1468a = callback;
        }

        /* renamed from: a */
        private Menu m9678a(Menu menu) {
            Menu menu2 = this.f1471d.get(menu);
            Menu menu3 = menu2;
            if (menu2 == null) {
                menu3 = new MenuC0390u(this.f1469b, (AbstractMenuC0594a) menu);
                this.f1471d.put(menu, menu3);
            }
            return menu3;
        }

        @Override // androidx.appcompat.view.AbstractC0343b.AbstractC0344a
        /* renamed from: a */
        public final void mo51a(AbstractC0343b bVar) {
            this.f1468a.onDestroyActionMode(m9677b(bVar));
        }

        @Override // androidx.appcompat.view.AbstractC0343b.AbstractC0344a
        /* renamed from: a */
        public final boolean mo50a(AbstractC0343b bVar, Menu menu) {
            return this.f1468a.onCreateActionMode(m9677b(bVar), m9678a(menu));
        }

        @Override // androidx.appcompat.view.AbstractC0343b.AbstractC0344a
        /* renamed from: a */
        public final boolean mo49a(AbstractC0343b bVar, MenuItem menuItem) {
            return this.f1468a.onActionItemClicked(m9677b(bVar), new MenuItemC0377o(this.f1469b, (AbstractMenuItemC0595b) menuItem));
        }

        /* renamed from: b */
        public final ActionMode m9677b(AbstractC0343b bVar) {
            int size = this.f1470c.size();
            for (int i = 0; i < size; i++) {
                C0348f fVar = this.f1470c.get(i);
                if (fVar != null && fVar.f1467b == bVar) {
                    return fVar;
                }
            }
            C0348f fVar2 = new C0348f(this.f1469b, bVar);
            this.f1470c.add(fVar2);
            return fVar2;
        }

        @Override // androidx.appcompat.view.AbstractC0343b.AbstractC0344a
        /* renamed from: b */
        public final boolean mo48b(AbstractC0343b bVar, Menu menu) {
            return this.f1468a.onPrepareActionMode(m9677b(bVar), m9678a(menu));
        }
    }

    public C0348f(Context context, AbstractC0343b bVar) {
        this.f1466a = context;
        this.f1467b = bVar;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.f1467b.mo9684c();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.f1467b.mo9679i();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new MenuC0390u(this.f1466a, (AbstractMenuC0594a) this.f1467b.mo9687b());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.f1467b.mo9692a();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.f1467b.mo9681g();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.f1467b.m9696j();
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.f1467b.mo9682f();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.f1467b.m9695k();
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.f1467b.mo9683d();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.f1467b.mo9680h();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.f1467b.mo9690a(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i) {
        this.f1467b.mo9686b(i);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.f1467b.mo9689a(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.f1467b.m9697a(obj);
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i) {
        this.f1467b.mo9691a(i);
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.f1467b.mo9685b(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z) {
        this.f1467b.mo9688a(z);
    }
}
