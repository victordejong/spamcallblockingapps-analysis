package com.uservoice.uservoicesdk.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.uservoice.uservoicesdk.d;
import com.uservoice.uservoicesdk.j.a;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/ui/d.class */
public abstract class d<T> extends h<T> {
    protected final int c;
    protected LayoutInflater d;
    protected List<T> e;
    protected int f = 0;

    public d(Context context, int i, List<T> list) {
        this.k = context;
        this.c = i;
        this.e = list;
        this.d = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public abstract void a(int i, a<List<T>> aVar);

    public abstract void a(View view, T t);

    public final void a(T t) {
        this.e.add(0, t);
        this.f++;
        notifyDataSetChanged();
    }

    protected List<T> c() {
        return this.e;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return (this.j ? 1 : 0) + c().size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return i < c().size() ? c().get(i) : null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return getItemViewType(i) == 1 ? -1L : i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return i == c().size() ? 1 : 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        int itemViewType = getItemViewType(i);
        View view2 = view;
        if (view == null) {
            view2 = this.d.inflate(itemViewType == 1 ? d.c.p : this.c, (ViewGroup) null);
        }
        if (itemViewType == 0) {
            a(view2, (View) getItem(i));
        }
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return getItemViewType(i) == 0;
    }
}
