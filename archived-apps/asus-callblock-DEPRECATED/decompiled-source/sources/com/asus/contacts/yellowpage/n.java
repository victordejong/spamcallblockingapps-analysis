package com.asus.contacts.yellowpage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.asus.updatesdk.R;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/n.class */
public final class n extends ArrayAdapter<String> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/n$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        TextView f2844a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f2845b;

        public a(View view) {
            this.f2844a = (TextView) view.findViewById(R.id.text);
            this.f2845b = (ImageView) view.findViewById(R.id.icon);
        }
    }

    public n(Context context, String[] strArr) {
        super(context, 2131427744, strArr);
    }

    private View a(int i, View view, boolean z) {
        a aVar;
        if (view != null) {
            aVar = (a) view.getTag();
        } else {
            view = LayoutInflater.from(getContext()).inflate(2131427744, (ViewGroup) null);
            aVar = new a(view);
            view.setTag(aVar);
        }
        aVar.f2844a.setText(getItem(i));
        aVar.f2845b.setVisibility(z ? 0 : 8);
        return view;
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
        return a(i, view, false);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        return a(i, view, true);
    }
}
