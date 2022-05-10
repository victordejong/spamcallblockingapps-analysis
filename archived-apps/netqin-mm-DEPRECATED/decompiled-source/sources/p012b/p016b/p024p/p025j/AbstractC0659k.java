package p012b.p016b.p024p.p025j;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
/* renamed from: b.b.p.j.k */
/* loaded from: classes-dex2jar.jar:b/b/p/j/k.class */
public abstract class AbstractC0659k implements AbstractC0667p, AbstractC0662m, AdapterView.OnItemClickListener {

    /* renamed from: a */
    public Rect f3301a;

    /* renamed from: a */
    public static int m36543a(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int i2 = 0;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        View view = null;
        int i3 = 0;
        int i4 = 0;
        ViewGroup viewGroup2 = viewGroup;
        while (i2 < count) {
            int itemViewType = listAdapter.getItemViewType(i2);
            i4 = i4;
            if (itemViewType != i4) {
                view = null;
                i4 = itemViewType;
            }
            ViewGroup viewGroup3 = viewGroup2;
            if (viewGroup2 == null) {
                viewGroup3 = new FrameLayout(context);
            }
            view = listAdapter.getView(i2, view, viewGroup3);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i) {
                return i;
            }
            i3 = i3;
            if (measuredWidth > i3) {
                i3 = measuredWidth;
            }
            i2++;
            viewGroup2 = viewGroup3;
        }
        return i3;
    }

    /* renamed from: a */
    public static C0646f m36544a(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (C0646f) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (C0646f) listAdapter;
    }

    /* renamed from: b */
    public static boolean m36542b(C0647g gVar) {
        int size = gVar.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            MenuItem item = gVar.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    /* renamed from: a */
    public abstract void mo36516a(int i);

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public void mo36525a(Context context, C0647g gVar) {
    }

    /* renamed from: a */
    public void m36545a(Rect rect) {
        this.f3301a = rect;
    }

    /* renamed from: a */
    public abstract void mo36515a(View view);

    /* renamed from: a */
    public abstract void mo36514a(PopupWindow.OnDismissListener onDismissListener);

    /* renamed from: a */
    public abstract void mo36513a(C0647g gVar);

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: a */
    public boolean mo36524a(C0647g gVar, C0651i iVar) {
        return false;
    }

    /* renamed from: b */
    public abstract void mo36507b(int i);

    /* renamed from: b */
    public abstract void mo36506b(boolean z);

    @Override // p012b.p016b.p024p.p025j.AbstractC0662m
    /* renamed from: b */
    public boolean mo36523b(C0647g gVar, C0651i iVar) {
        return false;
    }

    /* renamed from: c */
    public abstract void mo36505c(int i);

    /* renamed from: c */
    public abstract void mo36504c(boolean z);

    /* renamed from: c */
    public boolean mo36541c() {
        return true;
    }

    /* renamed from: d */
    public Rect m36540d() {
        return this.f3301a;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        m36544a(listAdapter).f3222a.m36612a((MenuItem) listAdapter.getItem(i), this, mo36541c() ? 0 : 4);
    }
}
