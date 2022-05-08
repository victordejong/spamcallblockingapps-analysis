package p081h.p203i.p204a.p294f.p308n;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.ListMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$dimen;
import com.google.android.material.R$layout;
import com.google.android.material.internal.NavigationMenuItemView;
import com.google.android.material.internal.NavigationMenuView;
import com.google.android.material.internal.ParcelableSparseArray;
import java.util.ArrayList;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.n.g */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/n/g.class */
public class C9227g implements MenuPresenter {

    /* renamed from: a */
    public NavigationMenuView f21141a;

    /* renamed from: b */
    public LinearLayout f21142b;

    /* renamed from: c */
    public MenuPresenter.Callback f21143c;

    /* renamed from: d */
    public MenuBuilder f21144d;

    /* renamed from: e */
    public int f21145e;

    /* renamed from: f */
    public C9230c f21146f;

    /* renamed from: g */
    public LayoutInflater f21147g;

    /* renamed from: h */
    public int f21148h;

    /* renamed from: i */
    public boolean f21149i;

    /* renamed from: j */
    public ColorStateList f21150j;

    /* renamed from: k */
    public ColorStateList f21151k;

    /* renamed from: l */
    public Drawable f21152l;

    /* renamed from: m */
    public int f21153m;

    /* renamed from: n */
    public int f21154n;

    /* renamed from: o */
    public int f21155o;

    /* renamed from: p */
    public int f21156p;

    /* renamed from: q */
    public final View.OnClickListener f21157q = new View$OnClickListenerC9228a();

    /* renamed from: h.i.a.f.n.g$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/n/g$a.class */
    public class View$OnClickListenerC9228a implements View.OnClickListener {
        public View$OnClickListenerC9228a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C9227g.this.m15667a(true);
            MenuItemImpl itemData = ((NavigationMenuItemView) view).getItemData();
            C9227g gVar = C9227g.this;
            boolean performItemAction = gVar.f21144d.performItemAction(itemData, gVar, 0);
            if (itemData != null && itemData.isCheckable() && performItemAction) {
                C9227g.this.f21146f.m15658a(itemData);
            }
            C9227g.this.m15667a(false);
            C9227g.this.updateMenuView(false);
        }
    }

    /* renamed from: h.i.a.f.n.g$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/n/g$b.class */
    public static class C9229b extends AbstractC9238k {
        public C9229b(View view) {
            super(view);
        }
    }

    /* renamed from: h.i.a.f.n.g$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/n/g$c.class */
    public class C9230c extends RecyclerView.Adapter<AbstractC9238k> {

        /* renamed from: a */
        public final ArrayList<AbstractC9232e> f21159a = new ArrayList<>();

        /* renamed from: b */
        public MenuItemImpl f21160b;

        /* renamed from: c */
        public boolean f21161c;

        public C9230c() {
            m15654b();
        }

        /* renamed from: a */
        public Bundle m15661a() {
            Bundle bundle = new Bundle();
            MenuItemImpl menuItemImpl = this.f21160b;
            if (menuItemImpl != null) {
                bundle.putInt("android:menu:checked", menuItemImpl.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.f21159a.size();
            for (int i = 0; i < size; i++) {
                AbstractC9232e eVar = this.f21159a.get(i);
                if (eVar instanceof C9234g) {
                    MenuItemImpl a = ((C9234g) eVar).m15650a();
                    View actionView = a != null ? a.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(a.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
            return bundle;
        }

        /* renamed from: a */
        public final void m15660a(int i, int i2) {
            while (i < i2) {
                ((C9234g) this.f21159a.get(i)).f21166b = true;
                i++;
            }
        }

        /* renamed from: a */
        public void m15659a(Bundle bundle) {
            MenuItemImpl a;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            MenuItemImpl a2;
            int i = bundle.getInt("android:menu:checked", 0);
            if (i != 0) {
                this.f21161c = true;
                int size = this.f21159a.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    AbstractC9232e eVar = this.f21159a.get(i2);
                    if ((eVar instanceof C9234g) && (a2 = ((C9234g) eVar).m15650a()) != null && a2.getItemId() == i) {
                        m15658a(a2);
                        break;
                    }
                    i2++;
                }
                this.f21161c = false;
                m15654b();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:action_views");
            if (sparseParcelableArray != null) {
                int size2 = this.f21159a.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    AbstractC9232e eVar2 = this.f21159a.get(i3);
                    if (!(!(eVar2 instanceof C9234g) || (a = ((C9234g) eVar2).m15650a()) == null || (actionView = a.getActionView()) == null || (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(a.getItemId())) == null)) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        /* renamed from: a */
        public void m15658a(MenuItemImpl menuItemImpl) {
            if (this.f21160b != menuItemImpl && menuItemImpl.isCheckable()) {
                MenuItemImpl menuItemImpl2 = this.f21160b;
                if (menuItemImpl2 != null) {
                    menuItemImpl2.setChecked(false);
                }
                this.f21160b = menuItemImpl;
                menuItemImpl.setChecked(true);
            }
        }

        /* renamed from: a */
        public void onViewRecycled(AbstractC9238k kVar) {
            if (kVar instanceof C9235h) {
                ((NavigationMenuItemView) kVar.itemView).m31329c();
            }
        }

        /* renamed from: a */
        public void onBindViewHolder(AbstractC9238k kVar, int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType == 0) {
                NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) kVar.itemView;
                navigationMenuItemView.m31335a(C9227g.this.f21151k);
                C9227g gVar = C9227g.this;
                if (gVar.f21149i) {
                    navigationMenuItemView.m31328c(gVar.f21148h);
                }
                ColorStateList colorStateList = C9227g.this.f21150j;
                if (colorStateList != null) {
                    navigationMenuItemView.m31330b(colorStateList);
                }
                Drawable drawable = C9227g.this.f21152l;
                ViewCompat.setBackground(navigationMenuItemView, drawable != null ? drawable.getConstantState().newDrawable() : null);
                C9234g gVar2 = (C9234g) this.f21159a.get(i);
                navigationMenuItemView.m31333a(gVar2.f21166b);
                navigationMenuItemView.m31336a(C9227g.this.f21153m);
                navigationMenuItemView.m31331b(C9227g.this.f21154n);
                navigationMenuItemView.initialize(gVar2.m15650a(), 0);
            } else if (itemViewType == 1) {
                ((TextView) kVar.itemView).setText(((C9234g) this.f21159a.get(i)).m15650a().getTitle());
            } else if (itemViewType == 2) {
                C9233f fVar = (C9233f) this.f21159a.get(i);
                kVar.itemView.setPadding(0, fVar.m15651b(), 0, fVar.m15652a());
            }
        }

        /* renamed from: a */
        public void m15655a(boolean z) {
            this.f21161c = z;
        }

        /* renamed from: b */
        public final void m15654b() {
            if (!this.f21161c) {
                this.f21161c = true;
                this.f21159a.clear();
                this.f21159a.add(new C9231d());
                int size = C9227g.this.f21144d.getVisibleItems().size();
                int i = -1;
                boolean z = false;
                int i2 = 0;
                for (int i3 = 0; i3 < size; i3++) {
                    MenuItemImpl menuItemImpl = C9227g.this.f21144d.getVisibleItems().get(i3);
                    if (menuItemImpl.isChecked()) {
                        m15658a(menuItemImpl);
                    }
                    if (menuItemImpl.isCheckable()) {
                        menuItemImpl.setExclusiveCheckable(false);
                    }
                    if (menuItemImpl.hasSubMenu()) {
                        SubMenu subMenu = menuItemImpl.getSubMenu();
                        i = i;
                        z = z;
                        i2 = i2;
                        if (subMenu.hasVisibleItems()) {
                            if (i3 != 0) {
                                this.f21159a.add(new C9233f(C9227g.this.f21156p, 0));
                            }
                            this.f21159a.add(new C9234g(menuItemImpl));
                            int size2 = this.f21159a.size();
                            int size3 = subMenu.size();
                            boolean z2 = false;
                            for (int i4 = 0; i4 < size3; i4++) {
                                MenuItemImpl menuItemImpl2 = (MenuItemImpl) subMenu.getItem(i4);
                                z2 = z2;
                                if (menuItemImpl2.isVisible()) {
                                    z2 = z2;
                                    if (!z2) {
                                        z2 = z2;
                                        if (menuItemImpl2.getIcon() != null) {
                                            z2 = true;
                                        }
                                    }
                                    if (menuItemImpl2.isCheckable()) {
                                        menuItemImpl2.setExclusiveCheckable(false);
                                    }
                                    if (menuItemImpl.isChecked()) {
                                        m15658a(menuItemImpl);
                                    }
                                    this.f21159a.add(new C9234g(menuItemImpl2));
                                }
                            }
                            i = i;
                            z = z;
                            i2 = i2;
                            if (z2) {
                                m15660a(size2, this.f21159a.size());
                                i = i;
                                z = z;
                                i2 = i2;
                            }
                        }
                    } else {
                        i = menuItemImpl.getGroupId();
                        if (i != i) {
                            int size4 = this.f21159a.size();
                            z = menuItemImpl.getIcon() != null;
                            i2 = size4;
                            if (i3 != 0) {
                                i2 = size4 + 1;
                                ArrayList<AbstractC9232e> arrayList = this.f21159a;
                                int i5 = C9227g.this.f21156p;
                                arrayList.add(new C9233f(i5, i5));
                            }
                        } else {
                            z = z;
                            i2 = i2;
                            if (!z) {
                                z = z;
                                i2 = i2;
                                if (menuItemImpl.getIcon() != null) {
                                    m15660a(i2, this.f21159a.size());
                                    z = true;
                                    i2 = i2;
                                }
                            }
                        }
                        C9234g gVar = new C9234g(menuItemImpl);
                        gVar.f21166b = z;
                        this.f21159a.add(gVar);
                    }
                }
                this.f21161c = false;
            }
        }

        /* renamed from: c */
        public void m15653c() {
            m15654b();
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f21159a.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            AbstractC9232e eVar = this.f21159a.get(i);
            if (eVar instanceof C9233f) {
                return 2;
            }
            if (eVar instanceof C9231d) {
                return 3;
            }
            if (eVar instanceof C9234g) {
                return ((C9234g) eVar).m15650a().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public AbstractC9238k onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                C9227g gVar = C9227g.this;
                return new C9235h(gVar.f21147g, viewGroup, gVar.f21157q);
            } else if (i == 1) {
                return new C9237j(C9227g.this.f21147g, viewGroup);
            } else {
                if (i == 2) {
                    return new C9236i(C9227g.this.f21147g, viewGroup);
                }
                if (i != 3) {
                    return null;
                }
                return new C9229b(C9227g.this.f21142b);
            }
        }
    }

    /* renamed from: h.i.a.f.n.g$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/n/g$d.class */
    public static class C9231d implements AbstractC9232e {
    }

    /* renamed from: h.i.a.f.n.g$e */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/n/g$e.class */
    public interface AbstractC9232e {
    }

    /* renamed from: h.i.a.f.n.g$f */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/n/g$f.class */
    public static class C9233f implements AbstractC9232e {

        /* renamed from: a */
        public final int f21163a;

        /* renamed from: b */
        public final int f21164b;

        public C9233f(int i, int i2) {
            this.f21163a = i;
            this.f21164b = i2;
        }

        /* renamed from: a */
        public int m15652a() {
            return this.f21164b;
        }

        /* renamed from: b */
        public int m15651b() {
            return this.f21163a;
        }
    }

    /* renamed from: h.i.a.f.n.g$g */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/n/g$g.class */
    public static class C9234g implements AbstractC9232e {

        /* renamed from: a */
        public final MenuItemImpl f21165a;

        /* renamed from: b */
        public boolean f21166b;

        public C9234g(MenuItemImpl menuItemImpl) {
            this.f21165a = menuItemImpl;
        }

        /* renamed from: a */
        public MenuItemImpl m15650a() {
            return this.f21165a;
        }
    }

    /* renamed from: h.i.a.f.n.g$h */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/n/g$h.class */
    public static class C9235h extends AbstractC9238k {
        public C9235h(LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(R$layout.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    /* renamed from: h.i.a.f.n.g$i */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/n/g$i.class */
    public static class C9236i extends AbstractC9238k {
        public C9236i(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R$layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    /* renamed from: h.i.a.f.n.g$j */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/n/g$j.class */
    public static class C9237j extends AbstractC9238k {
        public C9237j(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R$layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    /* renamed from: h.i.a.f.n.g$k */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/n/g$k.class */
    public static abstract class AbstractC9238k extends RecyclerView.ViewHolder {
        public AbstractC9238k(View view) {
            super(view);
        }
    }

    /* renamed from: a */
    public View m15672a(@LayoutRes int i) {
        View inflate = this.f21147g.inflate(i, (ViewGroup) this.f21142b, false);
        m15669a(inflate);
        return inflate;
    }

    /* renamed from: a */
    public void m15671a(@Nullable ColorStateList colorStateList) {
        this.f21151k = colorStateList;
        updateMenuView(false);
    }

    /* renamed from: a */
    public void m15670a(@Nullable Drawable drawable) {
        this.f21152l = drawable;
        updateMenuView(false);
    }

    /* renamed from: a */
    public void m15669a(@NonNull View view) {
        this.f21142b.addView(view);
        NavigationMenuView navigationMenuView = this.f21141a;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    /* renamed from: a */
    public void m15668a(WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        if (this.f21155o != systemWindowInsetTop) {
            this.f21155o = systemWindowInsetTop;
            if (this.f21142b.getChildCount() == 0) {
                NavigationMenuView navigationMenuView = this.f21141a;
                navigationMenuView.setPadding(0, this.f21155o, 0, navigationMenuView.getPaddingBottom());
            }
        }
        ViewCompat.dispatchApplyWindowInsets(this.f21142b, windowInsetsCompat);
    }

    /* renamed from: a */
    public void m15667a(boolean z) {
        C9230c cVar = this.f21146f;
        if (cVar != null) {
            cVar.m15655a(z);
        }
    }

    /* renamed from: b */
    public void m15666b(int i) {
        this.f21145e = i;
    }

    /* renamed from: b */
    public void m15665b(@Nullable ColorStateList colorStateList) {
        this.f21150j = colorStateList;
        updateMenuView(false);
    }

    /* renamed from: c */
    public void m15664c(int i) {
        this.f21153m = i;
        updateMenuView(false);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    /* renamed from: d */
    public void m15663d(int i) {
        this.f21154n = i;
        updateMenuView(false);
    }

    /* renamed from: e */
    public void m15662e(@StyleRes int i) {
        this.f21148h = i;
        this.f21149i = true;
        updateMenuView(false);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f21145e;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        if (this.f21141a == null) {
            this.f21141a = (NavigationMenuView) this.f21147g.inflate(R$layout.design_navigation_menu, viewGroup, false);
            if (this.f21146f == null) {
                this.f21146f = new C9230c();
            }
            this.f21142b = (LinearLayout) this.f21147g.inflate(R$layout.design_navigation_item_header, (ViewGroup) this.f21141a, false);
            this.f21141a.setAdapter(this.f21146f);
        }
        return this.f21141a;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        this.f21147g = LayoutInflater.from(context);
        this.f21144d = menuBuilder;
        this.f21156p = context.getResources().getDimensionPixelOffset(R$dimen.design_navigation_separator_vertical_padding);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        MenuPresenter.Callback callback = this.f21143c;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(ListMenuPresenter.VIEWS_TAG);
            if (sparseParcelableArray != null) {
                this.f21141a.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                this.f21146f.m15659a(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray2 != null) {
                this.f21142b.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        if (this.f21141a != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f21141a.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray(ListMenuPresenter.VIEWS_TAG, sparseArray);
        }
        C9230c cVar = this.f21146f;
        if (cVar != null) {
            bundle.putBundle("android:menu:adapter", cVar.m15661a());
        }
        if (this.f21142b != null) {
            SparseArray<? extends Parcelable> sparseArray2 = new SparseArray<>();
            this.f21142b.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
        }
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.f21143c = callback;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        C9230c cVar = this.f21146f;
        if (cVar != null) {
            cVar.m15653c();
        }
    }
}
