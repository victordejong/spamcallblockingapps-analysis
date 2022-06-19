package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.AbstractC0082n;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/e$a.class */
class e$a extends BaseAdapter {

    /* renamed from: f */
    private int f283f = -1;

    /* renamed from: g */
    final /* synthetic */ e f284g;

    public e$a(e eVar) {
        this.f284g = eVar;
        m6783a();
    }

    /* renamed from: a */
    void m6783a() {
        i v = this.f284g.h.v();
        if (v != null) {
            ArrayList z = this.f284g.h.z();
            int size = z.size();
            for (int i = 0; i < size; i++) {
                if (((i) z.get(i)) == v) {
                    this.f283f = i;
                    return;
                }
            }
        }
        this.f283f = -1;
    }

    /* renamed from: b */
    public i getItem(int i) {
        ArrayList z = this.f284g.h.z();
        int i2 = i + this.f284g.j;
        int i3 = this.f283f;
        int i4 = i2;
        if (i3 >= 0) {
            i4 = i2;
            if (i2 >= i3) {
                i4 = i2 + 1;
            }
        }
        return (i) z.get(i4);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int size = this.f284g.h.z().size() - this.f284g.j;
        return this.f283f < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            e eVar = this.f284g;
            view2 = eVar.g.inflate(eVar.l, viewGroup, false);
        }
        ((AbstractC0082n.AbstractC0083a) view2).m6748d(getItem(i), 0);
        return view2;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        m6783a();
        super.notifyDataSetChanged();
    }
}
