package p012b.p057j.p058a;

import android.database.Cursor;
import android.widget.Filter;
/* renamed from: b.j.a.b */
/* loaded from: classes-dex2jar.jar:b/j/a/b.class */
public class C1040b extends Filter {

    /* renamed from: a */
    public AbstractC1041a f4336a;

    /* renamed from: b.j.a.b$a */
    /* loaded from: classes-dex2jar.jar:b/j/a/b$a.class */
    public interface AbstractC1041a {
        /* renamed from: a */
        Cursor mo35079a();

        /* renamed from: a */
        Cursor mo35077a(CharSequence charSequence);

        /* renamed from: a */
        void mo35078a(Cursor cursor);

        /* renamed from: b */
        CharSequence mo35076b(Cursor cursor);
    }

    public C1040b(AbstractC1041a aVar) {
        this.f4336a = aVar;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f4336a.mo35076b((Cursor) obj);
    }

    @Override // android.widget.Filter
    public Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor a = this.f4336a.mo35077a(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (a != null) {
            filterResults.count = a.getCount();
            filterResults.values = a;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor a = this.f4336a.mo35079a();
        Object obj = filterResults.values;
        if (obj != null && obj != a) {
            this.f4336a.mo35078a((Cursor) obj);
        }
    }
}
