package androidx.cursoradapter.widget;

import android.database.Cursor;
import android.widget.Filter;
/* loaded from: classes-dex2jar.jar:androidx/cursoradapter/widget/CursorFilter.class */
class CursorFilter extends Filter {

    /* renamed from: a */
    CursorFilterClient f3456a;

    /* loaded from: classes-dex2jar.jar:androidx/cursoradapter/widget/CursorFilter$CursorFilterClient.class */
    interface CursorFilterClient {
        /* renamed from: a */
        CharSequence mo18801a(Cursor cursor);

        /* renamed from: b */
        void mo18806b(Cursor cursor);

        /* renamed from: c */
        Cursor mo18805c();

        /* renamed from: d */
        Cursor mo18804d(CharSequence charSequence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CursorFilter(CursorFilterClient cursorFilterClient) {
        this.f3456a = cursorFilterClient;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f3456a.mo18801a((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor d = this.f3456a.mo18804d(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (d != null) {
            filterResults.count = d.getCount();
            filterResults.values = d;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor c = this.f3456a.mo18805c();
        Object obj = filterResults.values;
        if (obj != null && obj != c) {
            this.f3456a.mo18806b((Cursor) obj);
        }
    }
}
