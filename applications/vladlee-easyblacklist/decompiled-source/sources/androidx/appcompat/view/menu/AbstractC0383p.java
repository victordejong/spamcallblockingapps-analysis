package androidx.appcompat.view.menu;

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
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.view.menu.p */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/p.class */
public abstract class AbstractC0383p implements AdapterView.OnItemClickListener, AbstractC0386s, AbstractC0391v {

    /* renamed from: a */
    private Rect f1720a;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static int m9563a(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        int i2 = 0;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        ViewGroup viewGroup2 = viewGroup;
        int i3 = 0;
        int i4 = 0;
        View view = null;
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static C0370j m9564a(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (C0370j) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (C0370j) listAdapter;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public static boolean m9562b(C0371k kVar) {
        int size = kVar.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            MenuItem item = kVar.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }

    /* renamed from: a */
    public abstract void mo9547a(int i);

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1008a(Context context, C0371k kVar) {
    }

    /* renamed from: a */
    public final void m9565a(Rect rect) {
        this.f1720a = rect;
    }

    /* renamed from: a */
    public abstract void mo9546a(View view);

    /* renamed from: a */
    public abstract void mo9545a(PopupWindow.OnDismissListener onDismissListener);

    /* renamed from: a */
    public abstract void mo9544a(C0371k kVar);

    /* renamed from: b */
    public abstract void mo9543b(int i);

    /* renamed from: b */
    public abstract void mo9542b(boolean z);

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: b */
    public final boolean mo995b(C0375m mVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: c */
    public final int mo993c() {
        return 0;
    }

    /* renamed from: c */
    public abstract void mo9541c(int i);

    /* renamed from: c */
    public abstract void mo9540c(boolean z);

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: c */
    public final boolean mo991c(C0375m mVar) {
        return false;
    }

    /* renamed from: h */
    protected boolean mo9561h() {
        return true;
    }

    /* renamed from: i */
    public final Rect m9560i() {
        return this.f1720a;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        m9564a(listAdapter).f1640a.m9616a((MenuItem) listAdapter.getItem(i), this, mo9561h() ? 0 : 4);
    }
}
