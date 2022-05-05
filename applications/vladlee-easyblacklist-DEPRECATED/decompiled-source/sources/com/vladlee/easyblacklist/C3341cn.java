package com.vladlee.easyblacklist;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.C0247a;
import java.util.ArrayList;
/* renamed from: com.vladlee.easyblacklist.cn */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/cn.class */
final class C3341cn extends BaseAdapter {

    /* renamed from: a */
    Context f19449a;

    /* renamed from: b */
    ArrayList<C3340cm> f19450b;

    public C3341cn(Context context, ArrayList<C3340cm> arrayList) {
        this.f19449a = context;
        this.f19450b = arrayList;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f19450b.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return this.f19450b.get(i);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        String str = this.f19450b.get(i).f19447a;
        LayoutInflater layoutInflater = (LayoutInflater) this.f19449a.getSystemService("layout_inflater");
        if (str != null) {
            view2 = layoutInflater.inflate(2131492925, (ViewGroup) null);
            ((TextView) view2.findViewById(C0247a.C0253f.f669S)).setText(this.f19450b.get(i).f19447a);
            ((ImageView) view2.findViewById(2131296435)).setImageResource(this.f19450b.get(i).f19448b);
        } else {
            view2 = layoutInflater.inflate(2131492924, (ViewGroup) null);
        }
        return view2;
    }
}
