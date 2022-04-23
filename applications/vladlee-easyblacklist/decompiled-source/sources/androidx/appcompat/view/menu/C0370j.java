package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.AbstractC0388t;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.j */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/j.class */
public final class C0370j extends BaseAdapter {

    /* renamed from: a */
    C0371k f1640a;

    /* renamed from: b */
    private int f1641b = -1;

    /* renamed from: c */
    private boolean f1642c;

    /* renamed from: d */
    private final boolean f1643d;

    /* renamed from: e */
    private final LayoutInflater f1644e;

    /* renamed from: f */
    private final int f1645f;

    public C0370j(C0371k kVar, LayoutInflater layoutInflater, boolean z, int i) {
        this.f1643d = z;
        this.f1644e = layoutInflater;
        this.f1640a = kVar;
        this.f1645f = i;
        m9626b();
    }

    /* renamed from: b */
    private void m9626b() {
        C0375m r = this.f1640a.m9590r();
        if (r != null) {
            ArrayList<C0375m> o = this.f1640a.m9592o();
            int size = o.size();
            for (int i = 0; i < size; i++) {
                if (o.get(i) == r) {
                    this.f1641b = i;
                    return;
                }
            }
        }
        this.f1641b = -1;
    }

    /* renamed from: a */
    public final C0371k m9629a() {
        return this.f1640a;
    }

    /* renamed from: a */
    public final C0375m getItem(int i) {
        ArrayList<C0375m> o = this.f1643d ? this.f1640a.m9592o() : this.f1640a.m9595l();
        int i2 = this.f1641b;
        int i3 = i;
        if (i2 >= 0) {
            i3 = i;
            if (i >= i2) {
                i3 = i + 1;
            }
        }
        return o.get(i3);
    }

    /* renamed from: a */
    public final void m9627a(boolean z) {
        this.f1642c = z;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        ArrayList<C0375m> o = this.f1643d ? this.f1640a.m9592o() : this.f1640a.m9595l();
        return this.f1641b < 0 ? o.size() : o.size() - 1;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.f1644e.inflate(this.f1645f, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        int groupId2 = i2 >= 0 ? getItem(i2).getGroupId() : groupId;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view2;
        boolean z = false;
        if (this.f1640a.mo9534c()) {
            z = false;
            if (groupId != groupId2) {
                z = true;
            }
        }
        listMenuItemView.m9650a(z);
        AbstractC0388t.AbstractC0389a aVar = (AbstractC0388t.AbstractC0389a) view2;
        if (this.f1642c) {
            listMenuItemView.m9649c();
        }
        aVar.mo1069a(getItem(i));
        return view2;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        m9626b();
        super.notifyDataSetChanged();
    }
}
