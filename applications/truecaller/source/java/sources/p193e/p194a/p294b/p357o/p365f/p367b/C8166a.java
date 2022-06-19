package p193e.p194a.p294b.p357o.p365f.p367b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p294b.p357o.p360c.p362b.C8144b;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.b.o.f.b.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/f/b/a.class */
public final class C8166a extends RecyclerView.AbstractC0317g<C8170c> implements Filterable {

    /* renamed from: a */
    public final LayoutInflater f25288a;

    /* renamed from: b */
    public List<C8144b> f25289b;

    /* renamed from: c */
    public List<C8144b> f25290c;

    /* renamed from: d */
    public final C8169b f25291d;

    /* renamed from: e */
    public final AbstractC8167a f25292e;

    /* renamed from: e.a.b.o.f.b.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/f/b/a$a.class */
    public interface AbstractC8167a {
        /* renamed from: F */
        void mo28806F(int i);

        /* renamed from: Sr */
        void mo28795Sr(C8144b c8144b);

        /* renamed from: fo */
        void mo28794fo(C8144b c8144b);
    }

    /* renamed from: e.a.b.o.f.b.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/f/b/a$b.class */
    public static final class C8168b extends Filter {
        public C8168b() {
            C8166a.this = r4;
        }

        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            l.e(charSequence, "charSequence");
            String obj = charSequence.toString();
            if (obj.length() == 0) {
                C8166a c8166a = C8166a.this;
                c8166a.f25289b = c8166a.f25290c;
            } else {
                ArrayList arrayList = new ArrayList();
                for (C8144b c8144b : C8166a.this.f25290c) {
                    String m15253O = C18334g0.m15253O(c8144b);
                    Locale locale = Locale.ROOT;
                    l.d(locale, "Locale.ROOT");
                    Objects.requireNonNull(m15253O, "null cannot be cast to non-null type java.lang.String");
                    String lowerCase = m15253O.toLowerCase(locale);
                    l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    l.d(locale, "Locale.ROOT");
                    String lowerCase2 = obj.toLowerCase(locale);
                    l.d(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
                    if (v.B(lowerCase, lowerCase2, false, 2)) {
                        arrayList.add(c8144b);
                    }
                }
                C8166a.this.f25289b = arrayList;
            }
            Filter.FilterResults filterResults = new Filter.FilterResults();
            filterResults.values = C8166a.this.f25289b;
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            l.e(charSequence, "charSequence");
            l.e(filterResults, "filterResults");
            C8166a c8166a = C8166a.this;
            Object obj = filterResults.values;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.truecaller.bizmon.governmentServices.db.entities.GovServicesContact> /* = java.util.ArrayList<com.truecaller.bizmon.governmentServices.db.entities.GovServicesContact> */");
            c8166a.f25289b = (ArrayList) obj;
            c8166a.notifyDataSetChanged();
            C8166a c8166a2 = C8166a.this;
            AbstractC8167a abstractC8167a = c8166a2.f25292e;
            if (abstractC8167a != null) {
                abstractC8167a.mo28806F(c8166a2.f25289b.size());
            }
        }
    }

    public C8166a(Context context, List<C8144b> list, C8169b c8169b, AbstractC8167a abstractC8167a) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(list, "contactList");
        l.e(c8169b, "govServicesContactListItemPresenter");
        this.f25290c = list;
        this.f25291d = c8169b;
        this.f25292e = abstractC8167a;
        LayoutInflater from = LayoutInflater.from(context);
        l.d(from, "LayoutInflater.from(context)");
        this.f25288a = from;
        this.f25289b = this.f25290c;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new C8168b();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f25289b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00c4, code lost:
        if (r25 != null) goto L25;
     */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(p193e.p194a.p294b.p357o.p365f.p367b.C8170c r21, int r22) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p357o.p365f.p367b.C8166a.onBindViewHolder(androidx.recyclerview.widget.RecyclerView$c0, int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C8170c onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        View inflate = this.f25288a.inflate(C3478R.layout.item_gov_services_contact, viewGroup, false);
        l.d(inflate, "inflater.inflate(R.layou…s_contact, parent, false)");
        return new C8170c(inflate);
    }
}
