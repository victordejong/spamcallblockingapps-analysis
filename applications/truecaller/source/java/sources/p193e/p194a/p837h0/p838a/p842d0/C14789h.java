package p193e.p194a.p837h0.p838a.p842d0;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import p193e.p194a.AbstractC20947v0;
/* renamed from: e.a.h0.a.d0.h */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/d0/h.class */
public class C14789h extends BaseAdapter {

    /* renamed from: a */
    public final AbstractC20947v0 f42303a;

    /* renamed from: e.a.h0.a.d0.h$a */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/a/d0/h$a.class */
    public class C14790a implements AbstractC14791i {

        /* renamed from: a */
        public final TextView f42304a;

        public C14790a(C14789h c14789h, View view) {
            this.f42304a = (TextView) view.findViewById(16908308);
        }

        @Override // p193e.p194a.p837h0.p838a.p842d0.AbstractC14791i
        public void setTitle(String str) {
            this.f42304a.setText(str);
        }
    }

    public C14789h(AbstractC20947v0 abstractC20947v0) {
        this.f42303a = abstractC20947v0;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f42303a.mo10091Kb();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return this.f42303a.mo10061gc(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C14790a c14790a;
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(17367049, viewGroup, false);
            c14790a = new C14790a(this, view);
            view.setTag(c14790a);
        } else {
            c14790a = (C14790a) view.getTag();
        }
        this.f42303a.mo10095G(c14790a, i);
        return view;
    }
}
