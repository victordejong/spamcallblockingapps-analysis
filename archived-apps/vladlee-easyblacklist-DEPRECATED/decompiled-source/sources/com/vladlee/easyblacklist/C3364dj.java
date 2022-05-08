package com.vladlee.easyblacklist;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
/* renamed from: com.vladlee.easyblacklist.dj */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dj.class */
public final class C3364dj extends ArrayAdapter<C3363di> {

    /* renamed from: a */
    ArrayList<C3363di> f19497a;

    /* renamed from: b */
    private LayoutInflater f19498b;

    /* renamed from: c */
    private int f19499c = 2131492923;

    public C3364dj(Context context, ArrayList<C3363di> arrayList) {
        super(context, 2131492923, arrayList);
        this.f19497a = arrayList;
        this.f19498b = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* renamed from: a */
    public final C3363di getItem(int i) {
        return this.f19497a.get(i);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final int getCount() {
        return this.f19497a.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.f19498b.inflate(this.f19499c, viewGroup, false);
        }
        TextView textView = (TextView) view2.findViewById(2131296596);
        C3363di diVar = this.f19497a.get(i);
        textView.setText(diVar.f19493a);
        ((ImageView) view2.findViewById(2131296445)).setImageResource(diVar.f19495c ? !diVar.f19496d ? 2131230883 : 2131230884 : 2131230882);
        return view2;
    }
}
