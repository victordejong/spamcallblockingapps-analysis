package p131c.p135b.p136a.p143d.a$d;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.applovin.impl.mediation.p484a.p485a.AbstractC6975c;
import java.util.ArrayList;
import java.util.List;
import p131c.p135b.p136a.p143d.C2117a;
import p131c.p135b.p156c.C2451c;
/* renamed from: c.b.a.d.a$d.b */
/* loaded from: classes-dex2jar.jar:c/b/a/d/a$d/b.class */
public abstract class AbstractView$OnClickListenerC2131b extends BaseAdapter implements View.OnClickListener {

    /* renamed from: a */
    public final LayoutInflater f8170a;

    /* renamed from: b */
    public final Context f8171b;

    /* renamed from: c */
    public final List<AbstractC6975c> f8172c = new ArrayList();

    public AbstractView$OnClickListenerC2131b(Context context) {
        this.f8171b = context;
        this.f8170a = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* renamed from: a */
    public AbstractC6975c getItem(int i) {
        return this.f8172c.get(i);
    }

    /* renamed from: a */
    public abstract void mo31008a(AbstractC6975c cVar);

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f8172c.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return getItem(i).m19181d();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C2117a.C2119b.C2122c cVar;
        AbstractC6975c a = getItem(i);
        if (view == null) {
            view = this.f8170a.inflate(a.m19180e(), viewGroup, false);
            cVar = new C2117a.C2119b.C2122c();
            cVar.f8149a = (TextView) view.findViewById(16908308);
            cVar.f8150b = (TextView) view.findViewById(16908309);
            cVar.f8151c = (ImageView) view.findViewById(C2451c.imageView);
            cVar.f8152d = (ImageView) view.findViewById(C2451c.detailImageView);
            view.setTag(cVar);
            view.setOnClickListener(this);
        } else {
            cVar = (C2117a.C2119b.C2122c) view.getTag();
        }
        cVar.m30982a(a);
        view.setEnabled(a.mo19137a());
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return AbstractC6975c.m19178j();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return getItem(i).mo19137a();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        mo31008a(((C2117a.C2119b.C2122c) view.getTag()).m30983a());
    }
}
