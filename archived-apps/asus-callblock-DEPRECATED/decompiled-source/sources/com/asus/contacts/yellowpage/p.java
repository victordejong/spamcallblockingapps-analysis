package com.asus.contacts.yellowpage;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/p.class */
public final class p extends ArrayAdapter<String> {

    /* renamed from: a  reason: collision with root package name */
    private Context f2848a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/p$a.class */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        TextView f2849a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f2850b;

        public a(View view) {
            this.f2849a = (TextView) view.findViewById(2131296284);
            this.f2850b = (ImageView) view.findViewById(2131296278);
        }
    }

    public p(Context context, String[] strArr) {
        super(context, 2131427747, strArr);
        this.f2848a = context;
    }

    private View a(int i, View view, boolean z) {
        a aVar;
        if (view != null) {
            aVar = (a) view.getTag();
        } else {
            view = LayoutInflater.from(getContext()).inflate(2131427747, (ViewGroup) null);
            aVar = new a(view);
            view.setTag(aVar);
        }
        String item = getItem(i);
        if (p.this.f2848a instanceof AsusBusinessListActivity) {
            aVar.f2849a.setText(z ? BuildConfig.FLAVOR : item);
            aVar.f2849a.setTextColor(z ? Color.rgb(255, 255, 255) : Color.rgb(0, 0, 0));
            aVar.f2850b.setVisibility(8);
        }
        if (p.this.f2848a instanceof AsusBusinessDetailActivity) {
            aVar.f2849a.setText(item);
            aVar.f2849a.setTextColor(z ? Color.rgb(255, 255, 255) : Color.rgb(0, 0, 0));
            aVar.f2850b.setVisibility(z ? 0 : 8);
        }
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
