package p193e.p194a.p372b0.p373a.p374a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;
import com.truecaller.common.C3656R;
import com.truecaller.common.network.country.CountryListDto;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1807k.p1818g.C26536a;
import p193e.p194a.p372b0.p430q.AbstractC8585i;
/* renamed from: e.a.b0.a.a.d */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/a/d.class */
public class C8222d extends BaseAdapter implements Filterable {

    /* renamed from: a */
    public List<CountryListDto.C3679a> f25374a;

    /* renamed from: b */
    public Filter f25375b;

    /* renamed from: e.a.b0.a.a.d$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/a/d$a.class */
    public class C8223a extends AbstractC8585i {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8223a(List list) {
            super(list);
            C8222d.this = r4;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            C8222d c8222d = C8222d.this;
            c8222d.f25374a = (List) filterResults.values;
            c8222d.notifyDataSetChanged();
        }
    }

    /* renamed from: e.a.b0.a.a.d$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/a/d$b.class */
    public static class C8224b {

        /* renamed from: a */
        public final TextView f25377a;

        /* renamed from: b */
        public final TextView f25378b;

        public C8224b(View view) {
            this.f25377a = (TextView) view.findViewById(C3656R.C3658id.title);
            this.f25378b = (TextView) view.findViewById(C3656R.C3658id.details);
        }
    }

    public C8222d(List<CountryListDto.C3679a> list) {
        this.f25374a = new ArrayList(list);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f25374a.size();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f25375b == null) {
            this.f25375b = new C8223a(this.f25374a);
        }
        return this.f25375b;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f25374a.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C8224b c8224b;
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(C3656R.layout.item_country, viewGroup, false);
            c8224b = new C8224b(view);
            view.setTag(c8224b);
        } else {
            c8224b = (C8224b) view.getTag();
        }
        CountryListDto.C3679a c3679a = this.f25374a.get(i);
        c8224b.f25377a.setText(c3679a.f10911b);
        c8224b.f25378b.setText(C26536a.m1710c().m1707f(String.format("(+%s)", c3679a.f10913d)));
        return view;
    }
}
