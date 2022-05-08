package androidx.p027c.p028a;

import android.database.Cursor;
import android.widget.Filter;
/* renamed from: androidx.c.a.b */
/* loaded from: classes-dex2jar.jar:androidx/c/a/b.class */
final class C0556b extends Filter {

    /* renamed from: a */
    AbstractC0557a f2548a;

    /* renamed from: androidx.c.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/b$a.class */
    interface AbstractC0557a {
        /* renamed from: a */
        Cursor mo8864a();

        /* renamed from: a */
        Cursor mo8862a(CharSequence charSequence);

        /* renamed from: a */
        void mo8863a(Cursor cursor);

        /* renamed from: b */
        CharSequence mo8861b(Cursor cursor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0556b(AbstractC0557a aVar) {
        this.f2548a = aVar;
    }

    @Override // android.widget.Filter
    public final CharSequence convertResultToString(Object obj) {
        return this.f2548a.mo8861b((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected final Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor a = this.f2548a.mo8862a(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (a != null) {
            filterResults.count = a.getCount();
        } else {
            filterResults.count = 0;
            a = null;
        }
        filterResults.values = a;
        return filterResults;
    }

    @Override // android.widget.Filter
    protected final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor a = this.f2548a.mo8864a();
        if (filterResults.values != null && filterResults.values != a) {
            this.f2548a.mo8863a((Cursor) filterResults.values);
        }
    }
}
