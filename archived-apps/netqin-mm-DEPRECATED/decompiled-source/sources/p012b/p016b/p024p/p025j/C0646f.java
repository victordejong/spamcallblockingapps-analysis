package p012b.p016b.p024p.p025j;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;
import p012b.p016b.p024p.p025j.AbstractC0664n;
/* renamed from: b.b.p.j.f */
/* loaded from: classes-dex2jar.jar:b/b/p/j/f.class */
public class C0646f extends BaseAdapter {

    /* renamed from: a */
    public C0647g f3222a;

    /* renamed from: b */
    public int f3223b = -1;

    /* renamed from: c */
    public boolean f3224c;

    /* renamed from: d */
    public final boolean f3225d;

    /* renamed from: e */
    public final LayoutInflater f3226e;

    /* renamed from: f */
    public final int f3227f;

    public C0646f(C0647g gVar, LayoutInflater layoutInflater, boolean z, int i) {
        this.f3225d = z;
        this.f3226e = layoutInflater;
        this.f3222a = gVar;
        this.f3227f = i;
        m36627a();
    }

    /* renamed from: a */
    public void m36627a() {
        C0651i f = this.f3222a.m36588f();
        if (f != null) {
            ArrayList<C0651i> j = this.f3222a.m36583j();
            int size = j.size();
            for (int i = 0; i < size; i++) {
                if (j.get(i) == f) {
                    this.f3223b = i;
                    return;
                }
            }
        }
        this.f3223b = -1;
    }

    /* renamed from: a */
    public void m36626a(boolean z) {
        this.f3224c = z;
    }

    /* renamed from: b */
    public C0647g m36625b() {
        return this.f3222a;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<C0651i> j = this.f3225d ? this.f3222a.m36583j() : this.f3222a.m36580n();
        return this.f3223b < 0 ? j.size() : j.size() - 1;
    }

    @Override // android.widget.Adapter
    public C0651i getItem(int i) {
        ArrayList<C0651i> j = this.f3225d ? this.f3222a.m36583j() : this.f3222a.m36580n();
        int i2 = this.f3223b;
        int i3 = i;
        if (i2 >= 0) {
            i3 = i;
            if (i >= i2) {
                i3 = i + 1;
            }
        }
        return j.get(i3);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.f3226e.inflate(this.f3227f, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        int groupId2 = i2 >= 0 ? getItem(i2).getGroupId() : groupId;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view2;
        listMenuItemView.setGroupDividerEnabled(this.f3222a.mo36495o() && groupId != groupId2);
        AbstractC0664n.AbstractC0665a aVar = (AbstractC0664n.AbstractC0665a) view2;
        if (this.f3224c) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.mo36519a(getItem(i), 0);
        return view2;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        m36627a();
        super.notifyDataSetChanged();
    }
}
