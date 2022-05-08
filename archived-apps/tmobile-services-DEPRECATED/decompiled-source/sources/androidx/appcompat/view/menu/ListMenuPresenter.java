package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import java.util.ArrayList;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ListMenuPresenter.class */
public class ListMenuPresenter implements MenuPresenter, AdapterView.OnItemClickListener {

    /* renamed from: f */
    Context f612f;

    /* renamed from: g */
    LayoutInflater f613g;

    /* renamed from: h */
    MenuBuilder f614h;

    /* renamed from: i */
    ExpandedMenuView f615i;

    /* renamed from: j */
    int f616j;

    /* renamed from: k */
    int f617k;

    /* renamed from: l */
    int f618l;

    /* renamed from: m */
    private MenuPresenter.Callback f619m;

    /* renamed from: n */
    MenuAdapter f620n;

    /* renamed from: o */
    private int f621o;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ListMenuPresenter$MenuAdapter.class */
    public class MenuAdapter extends BaseAdapter {

        /* renamed from: f */
        private int f622f = -1;

        public MenuAdapter() {
            m21901a();
        }

        /* renamed from: a */
        void m21901a() {
            MenuItemImpl x = ListMenuPresenter.this.f614h.m21849x();
            if (x != null) {
                ArrayList<MenuItemImpl> B = ListMenuPresenter.this.f614h.m21894B();
                int size = B.size();
                for (int i = 0; i < size; i++) {
                    if (B.get(i) == x) {
                        this.f622f = i;
                        return;
                    }
                }
            }
            this.f622f = -1;
        }

        /* renamed from: b */
        public MenuItemImpl getItem(int i) {
            ArrayList<MenuItemImpl> B = ListMenuPresenter.this.f614h.m21894B();
            int i2 = i + ListMenuPresenter.this.f616j;
            int i3 = this.f622f;
            int i4 = i2;
            if (i3 >= 0) {
                i4 = i2;
                if (i2 >= i3) {
                    i4 = i2 + 1;
                }
            }
            return B.get(i4);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = ListMenuPresenter.this.f614h.m21894B().size() - ListMenuPresenter.this.f616j;
            return this.f622f < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                ListMenuPresenter listMenuPresenter = ListMenuPresenter.this;
                view2 = listMenuPresenter.f613g.inflate(listMenuPresenter.f618l, viewGroup, false);
            }
            ((MenuView.ItemView) view2).mo9538e(getItem(i), 0);
            return view2;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            m21901a();
            super.notifyDataSetChanged();
        }
    }

    public ListMenuPresenter(int i, int i2) {
        this.f618l = i;
        this.f617k = i2;
    }

    public ListMenuPresenter(Context context, int i) {
        this(i, 0);
        this.f612f = context;
        this.f613g = LayoutInflater.from(context);
    }

    /* renamed from: a */
    public ListAdapter m21905a() {
        if (this.f620n == null) {
            this.f620n = new MenuAdapter();
        }
        return this.f620n;
    }

    /* renamed from: b */
    public MenuView m21904b(ViewGroup viewGroup) {
        if (this.f615i == null) {
            this.f615i = (ExpandedMenuView) this.f613g.inflate(C0042R.layout.abc_expanded_menu_layout, viewGroup, false);
            if (this.f620n == null) {
                this.f620n = new MenuAdapter();
            }
            this.f615i.setAdapter((ListAdapter) this.f620n);
            this.f615i.setOnItemClickListener(this);
        }
        return this.f615i;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: c */
    public void mo9524c(MenuBuilder menuBuilder, boolean z) {
        MenuPresenter.Callback callback = this.f619m;
        if (callback != null) {
            callback.mo21698c(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: d */
    public void mo9523d(boolean z) {
        MenuAdapter menuAdapter = this.f620n;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: e */
    public boolean mo9522e() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: f */
    public boolean mo9521f(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: g */
    public boolean mo9520g(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f621o;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: h */
    public void mo9519h(MenuPresenter.Callback callback) {
        this.f619m = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: i */
    public void mo9518i(Context context, MenuBuilder menuBuilder) {
        if (this.f617k != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f617k);
            this.f612f = contextThemeWrapper;
            this.f613g = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f612f != null) {
            this.f612f = context;
            if (this.f613g == null) {
                this.f613g = LayoutInflater.from(context);
            }
        }
        this.f614h = menuBuilder;
        MenuAdapter menuAdapter = this.f620n;
        if (menuAdapter != null) {
            menuAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: j */
    public void mo9517j(Parcelable parcelable) {
        m21903k((Bundle) parcelable);
    }

    /* renamed from: k */
    public void m21903k(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f615i.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: l */
    public boolean mo9515l(SubMenuBuilder subMenuBuilder) {
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        new MenuDialogHelper(subMenuBuilder).m21845b(null);
        MenuPresenter.Callback callback = this.f619m;
        if (callback == null) {
            return true;
        }
        callback.mo21697d(subMenuBuilder);
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    /* renamed from: m */
    public Parcelable mo9514m() {
        if (this.f615i == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        m21902n(bundle);
        return bundle;
    }

    /* renamed from: n */
    public void m21902n(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f615i;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f614h.m21886O(this.f620n.getItem(i), this, 0);
    }
}
