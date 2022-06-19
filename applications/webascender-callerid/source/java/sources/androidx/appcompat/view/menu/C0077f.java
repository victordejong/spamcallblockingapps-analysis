package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.AbstractC0082n;
import java.util.ArrayList;
/* renamed from: androidx.appcompat.view.menu.f */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/f.class */
public class C0077f extends BaseAdapter {

    /* renamed from: f */
    g f285f;

    /* renamed from: g */
    private int f286g = -1;

    /* renamed from: h */
    private boolean f287h;

    /* renamed from: i */
    private final boolean f288i;

    /* renamed from: j */
    private final LayoutInflater f289j;

    /* renamed from: k */
    private final int f290k;

    public C0077f(g gVar, LayoutInflater layoutInflater, boolean z, int i) {
        this.f288i = z;
        this.f289j = layoutInflater;
        this.f285f = gVar;
        this.f290k = i;
        m6781a();
    }

    /* renamed from: a */
    void m6781a() {
        i v = this.f285f.v();
        if (v != null) {
            ArrayList z = this.f285f.z();
            int size = z.size();
            for (int i = 0; i < size; i++) {
                if (((i) z.get(i)) == v) {
                    this.f286g = i;
                    return;
                }
            }
        }
        this.f286g = -1;
    }

    /* renamed from: b */
    public g m6780b() {
        return this.f285f;
    }

    /* renamed from: c */
    public i getItem(int i) {
        ArrayList z = this.f288i ? this.f285f.z() : this.f285f.E();
        int i2 = this.f286g;
        int i3 = i;
        if (i2 >= 0) {
            i3 = i;
            if (i >= i2) {
                i3 = i + 1;
            }
        }
        return (i) z.get(i3);
    }

    /* renamed from: d */
    public void m6778d(boolean z) {
        this.f287h = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList z = this.f288i ? this.f285f.z() : this.f285f.E();
        return this.f286g < 0 ? z.size() : z.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.f289j.inflate(this.f290k, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        int groupId2 = i2 >= 0 ? getItem(i2).getGroupId() : groupId;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view2;
        listMenuItemView.setGroupDividerEnabled(this.f285f.F() && groupId != groupId2);
        AbstractC0082n.AbstractC0083a abstractC0083a = (AbstractC0082n.AbstractC0083a) view2;
        if (this.f287h) {
            listMenuItemView.setForceShowIcon(true);
        }
        abstractC0083a.m6748d(getItem(i), 0);
        return view2;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        m6781a();
        super.notifyDataSetChanged();
    }
}
