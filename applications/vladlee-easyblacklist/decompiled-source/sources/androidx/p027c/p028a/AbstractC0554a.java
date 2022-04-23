package androidx.p027c.p028a;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;
import androidx.p027c.p028a.C0556b;
/* renamed from: androidx.c.a.a */
/* loaded from: classes-dex2jar.jar:androidx/c/a/a.class */
public abstract class AbstractC0554a extends BaseAdapter implements Filterable, C0556b.AbstractC0557a {

    /* renamed from: a */
    protected boolean f2538a;

    /* renamed from: b */
    protected boolean f2539b;

    /* renamed from: c */
    protected Cursor f2540c;

    /* renamed from: d */
    protected Context f2541d;

    /* renamed from: e */
    protected int f2542e;

    /* renamed from: f */
    protected C0555a f2543f;

    /* renamed from: g */
    protected DataSetObserver f2544g;

    /* renamed from: h */
    protected C0556b f2545h;

    /* renamed from: i */
    protected FilterQueryProvider f2546i;

    /* renamed from: androidx.c.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$a.class */
    private final class C0555a extends ContentObserver {

        /* renamed from: a */
        final /* synthetic */ AbstractC0554a f2547a;

        @Override // android.database.ContentObserver
        public final boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            this.f2547a.m8865b();
        }
    }

    @Override // androidx.p027c.p028a.C0556b.AbstractC0557a
    /* renamed from: a */
    public final Cursor mo8864a() {
        return this.f2540c;
    }

    /* renamed from: a */
    public Cursor mo8862a(CharSequence charSequence) {
        FilterQueryProvider filterQueryProvider = this.f2546i;
        return filterQueryProvider != null ? filterQueryProvider.runQuery(charSequence) : this.f2540c;
    }

    /* renamed from: a */
    public abstract View mo8860a(Context context, Cursor cursor, ViewGroup viewGroup);

    /* renamed from: a */
    public void mo8863a(Cursor cursor) {
        Cursor cursor2;
        Cursor cursor3 = this.f2540c;
        if (cursor == cursor3) {
            cursor2 = null;
        } else {
            if (cursor3 != null) {
                C0555a aVar = this.f2543f;
                if (aVar != null) {
                    cursor3.unregisterContentObserver(aVar);
                }
                DataSetObserver dataSetObserver = this.f2544g;
                if (dataSetObserver != null) {
                    cursor3.unregisterDataSetObserver(dataSetObserver);
                }
            }
            this.f2540c = cursor;
            if (cursor != null) {
                C0555a aVar2 = this.f2543f;
                if (aVar2 != null) {
                    cursor.registerContentObserver(aVar2);
                }
                DataSetObserver dataSetObserver2 = this.f2544g;
                if (dataSetObserver2 != null) {
                    cursor.registerDataSetObserver(dataSetObserver2);
                }
                this.f2542e = cursor.getColumnIndexOrThrow("_id");
                this.f2538a = true;
                notifyDataSetChanged();
                cursor2 = cursor3;
            } else {
                this.f2542e = -1;
                this.f2538a = false;
                notifyDataSetInvalidated();
                cursor2 = cursor3;
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    /* renamed from: a */
    public abstract void mo8866a(View view, Cursor cursor);

    /* renamed from: b */
    public View mo8859b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return mo8860a(context, cursor, viewGroup);
    }

    /* renamed from: b */
    public CharSequence mo8861b(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    /* renamed from: b */
    protected final void m8865b() {
        Cursor cursor;
        if (this.f2539b && (cursor = this.f2540c) != null && !cursor.isClosed()) {
            this.f2538a = this.f2540c.requery();
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f2538a || (cursor = this.f2540c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (!this.f2538a) {
            return null;
        }
        this.f2540c.moveToPosition(i);
        View view2 = view;
        if (view == null) {
            view2 = mo8859b(this.f2541d, this.f2540c, viewGroup);
        }
        mo8866a(view2, this.f2540c);
        return view2;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f2545h == null) {
            this.f2545h = new C0556b(this);
        }
        return this.f2545h;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (!this.f2538a || (cursor = this.f2540c) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.f2540c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (!this.f2538a || (cursor = this.f2540c) == null || !cursor.moveToPosition(i)) {
            return 0L;
        }
        return this.f2540c.getLong(this.f2542e);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.f2538a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        } else if (this.f2540c.moveToPosition(i)) {
            View view2 = view;
            if (view == null) {
                view2 = mo8860a(this.f2541d, this.f2540c, viewGroup);
            }
            mo8866a(view2, this.f2540c);
            return view2;
        } else {
            throw new IllegalStateException("couldn't move cursor to position ".concat(String.valueOf(i)));
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }
}
