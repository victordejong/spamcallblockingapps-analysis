package p459j.p460a.p533l;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
/* renamed from: j.a.l.m */
/* loaded from: classes2-dex2jar.jar:j/a/l/m.class */
public class C12948m extends BaseAdapter {

    /* renamed from: a */
    public LayoutInflater f29302a;

    /* renamed from: b */
    public String[] f29303b;

    /* renamed from: j.a.l.m$a */
    /* loaded from: classes2-dex2jar.jar:j/a/l/m$a.class */
    public class C12949a {

        /* renamed from: a */
        public TextView f29304a;

        public C12949a(C12948m mVar) {
        }
    }

    public C12948m(Context context, String[] strArr) {
        this.f29302a = LayoutInflater.from(context);
        this.f29303b = strArr;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f29303b.length;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f29303b[i];
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        C12949a aVar;
        if (view == null || (view instanceof TextView)) {
            view2 = this.f29302a.inflate(R$layout.tag_report_item, viewGroup, false);
            aVar = new C12949a(this);
            aVar.f29304a = (TextView) view2.findViewById(2131363272);
            view2.setTag(aVar);
        } else {
            aVar = (C12949a) view.getTag();
            view2 = view;
        }
        aVar.f29304a.setText(this.f29303b[i]);
        if (i == getCount() - 1) {
            view2.findViewById(R$id.line).setVisibility(8);
        } else {
            view2.findViewById(R$id.line).setVisibility(0);
        }
        return view2;
    }
}
