package p193e.p194a.p294b.p357o.p365f.p368c;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.bizmon.C3478R;
import com.truecaller.bizmon.governmentServices.p146ui.adapters.ViewType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p294b.p357o.p360c.p362b.C8143a;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.b.o.f.c.g */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/f/c/g.class */
public final class C8179g extends RecyclerView.AbstractC0317g<RecyclerView.AbstractC0313c0> implements Filterable {

    /* renamed from: a */
    public ArrayList<C8172a> f25303a = new ArrayList<>();

    /* renamed from: b */
    public ArrayList<C8172a> f25304b = new ArrayList<>();

    /* renamed from: c */
    public final C8182h f25305c;

    /* renamed from: d */
    public final C8175d f25306d;

    /* renamed from: e */
    public final AbstractC8174c f25307e;

    /* renamed from: e.a.b.o.f.c.g$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/f/c/g$a.class */
    public static final class C8180a extends Filter {
        public C8180a() {
            C8179g.this = r4;
        }

        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            ArrayList<C8172a> arrayList;
            l.e(charSequence, "charSequence");
            String obj = charSequence.toString();
            C8179g c8179g = C8179g.this;
            if (obj.length() == 0) {
                arrayList = C8179g.this.f25303a;
            } else {
                arrayList = new ArrayList<>();
                Iterator<C8172a> it = C8179g.this.f25303a.iterator();
                while (it.hasNext()) {
                    C8172a next = it.next();
                    String str = next.m28844a().f25222b;
                    Locale locale = Locale.ROOT;
                    l.d(locale, "Locale.ROOT");
                    Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                    String lowerCase = str.toLowerCase(locale);
                    l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    l.d(locale, "Locale.ROOT");
                    String lowerCase2 = obj.toLowerCase(locale);
                    l.d(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
                    if (v.B(lowerCase, lowerCase2, false, 2)) {
                        ViewType viewType = next.f25297a;
                        if (viewType == null) {
                            l.l("type");
                            throw null;
                        } else if (viewType == ViewType.TYPE_DISTRICT) {
                            l.d(next, "row");
                            arrayList.add(next);
                        }
                    }
                }
            }
            c8179g.f25304b = arrayList;
            Filter.FilterResults filterResults = new Filter.FilterResults();
            filterResults.values = C8179g.this.f25304b;
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            l.e(charSequence, "charSequence");
            l.e(filterResults, "filterResults");
            C8179g c8179g = C8179g.this;
            Object obj = filterResults.values;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.truecaller.bizmon.governmentServices.ui.adapters.CityListObject> /* = java.util.ArrayList<com.truecaller.bizmon.governmentServices.ui.adapters.CityListObject> */");
            c8179g.f25304b = (ArrayList) obj;
            c8179g.notifyDataSetChanged();
            C8179g c8179g2 = C8179g.this;
            c8179g2.f25307e.mo28830F(c8179g2.f25304b.size());
        }
    }

    /* renamed from: e.a.b.o.f.c.g$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/f/c/g$b.class */
    public static final class View$OnClickListenerC8181b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C8143a f25310b;

        public View$OnClickListenerC8181b(C8143a c8143a) {
            C8179g.this = r4;
            this.f25310b = c8143a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C8179g.this.f25307e.mo28811ws(this.f25310b);
        }
    }

    public C8179g(C8182h c8182h, C8175d c8175d, AbstractC8174c abstractC8174c) {
        l.e(c8182h, "districtPresenter");
        l.e(c8175d, "districtIndexPresenter");
        l.e(abstractC8174c, "listener");
        this.f25305c = c8182h;
        this.f25306d = c8175d;
        this.f25307e = abstractC8174c;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new C8180a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f25304b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        ViewType viewType = this.f25304b.get(i).f25297a;
        if (viewType != null) {
            return viewType.ordinal();
        }
        l.l("type");
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        l.e(abstractC0313c0, "holder");
        C8143a m28844a = this.f25304b.get(i).m28844a();
        if (!(abstractC0313c0 instanceof C8177f)) {
            if (!(abstractC0313c0 instanceof C8184j)) {
                return;
            }
            this.f25305c.m28836a((AbstractC8183i) abstractC0313c0, m28844a.f25222b, m28844a.f25223c);
            abstractC0313c0.itemView.setOnClickListener(new View$OnClickListenerC8181b(m28844a));
            return;
        }
        C8175d c8175d = this.f25306d;
        AbstractC8176e abstractC8176e = (AbstractC8176e) abstractC0313c0;
        String str = m28844a.f25222b;
        Objects.requireNonNull(c8175d);
        l.e(abstractC8176e, "districtIndexView");
        l.e(str, "index");
        abstractC8176e.mo28838s3(str);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        C8177f c8177f;
        LayoutInflater m8628e1 = C22128a.m8628e1(viewGroup, "parent");
        ViewType viewType = ViewType.TYPE_INDEX;
        if (i == 0) {
            View inflate = m8628e1.inflate(C3478R.layout.item_district_list_index, viewGroup, false);
            l.d(inflate, "mInflater.inflate(R.layo…ist_index, parent, false)");
            c8177f = new C8177f(inflate);
        } else {
            ViewType viewType2 = ViewType.TYPE_DISTRICT;
            if (i == 1) {
                View inflate2 = m8628e1.inflate(C3478R.layout.item_district_list, viewGroup, false);
                l.d(inflate2, "mInflater.inflate(R.layo…rict_list, parent, false)");
                c8177f = new C8184j(inflate2);
            } else {
                View inflate3 = m8628e1.inflate(C3478R.layout.item_district_list, viewGroup, false);
                l.d(inflate3, "mInflater.inflate(R.layo…rict_list, parent, false)");
                c8177f = new C8184j(inflate3);
            }
        }
        return c8177f;
    }
}
