package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuView;
import java.util.ArrayList;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/MenuAdapter.class */
public class MenuAdapter extends BaseAdapter {

    /* renamed from: f */
    MenuBuilder f624f;

    /* renamed from: g */
    private int f625g = -1;

    /* renamed from: h */
    private boolean f626h;

    /* renamed from: i */
    private final boolean f627i;

    /* renamed from: j */
    private final LayoutInflater f628j;

    /* renamed from: k */
    private final int f629k;

    public MenuAdapter(MenuBuilder menuBuilder, LayoutInflater layoutInflater, boolean z, int i) {
        this.f627i = z;
        this.f628j = layoutInflater;
        this.f624f = menuBuilder;
        this.f629k = i;
        m21899a();
    }

    /* renamed from: a */
    void m21899a() {
        MenuItemImpl x = this.f624f.m21849x();
        if (x != null) {
            ArrayList<MenuItemImpl> B = this.f624f.m21894B();
            int size = B.size();
            for (int i = 0; i < size; i++) {
                if (B.get(i) == x) {
                    this.f625g = i;
                    return;
                }
            }
        }
        this.f625g = -1;
    }

    /* renamed from: b */
    public MenuBuilder m21898b() {
        return this.f624f;
    }

    /* renamed from: c */
    public MenuItemImpl getItem(int i) {
        ArrayList<MenuItemImpl> B = this.f627i ? this.f624f.m21894B() : this.f624f.m21890G();
        int i2 = this.f625g;
        int i3 = i;
        if (i2 >= 0) {
            i3 = i;
            if (i >= i2) {
                i3 = i + 1;
            }
        }
        return B.get(i3);
    }

    /* renamed from: d */
    public void m21896d(boolean z) {
        this.f626h = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<MenuItemImpl> B = this.f627i ? this.f624f.m21894B() : this.f624f.m21890G();
        return this.f625g < 0 ? B.size() : B.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.f628j.inflate(this.f629k, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        int groupId2 = i2 >= 0 ? getItem(i2).getGroupId() : groupId;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view2;
        listMenuItemView.setGroupDividerEnabled(this.f624f.mo21787H() && groupId != groupId2);
        MenuView.ItemView itemView = (MenuView.ItemView) view2;
        if (this.f626h) {
            listMenuItemView.setForceShowIcon(true);
        }
        itemView.mo9538e(getItem(i), 0);
        return view2;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        m21899a();
        super.notifyDataSetChanged();
    }
}
