package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;
import androidx.annotation.RestrictTo;
import androidx.cursoradapter.widget.CursorFilter;
/* loaded from: classes-dex2jar.jar:androidx/cursoradapter/widget/CursorAdapter.class */
public abstract class CursorAdapter extends BaseAdapter implements Filterable, CursorFilter.CursorFilterClient {
    @RestrictTo

    /* renamed from: f */
    protected boolean f3445f;
    @RestrictTo

    /* renamed from: g */
    protected boolean f3446g;
    @RestrictTo

    /* renamed from: h */
    protected Cursor f3447h;
    @RestrictTo

    /* renamed from: i */
    protected Context f3448i;
    @RestrictTo

    /* renamed from: j */
    protected int f3449j;
    @RestrictTo

    /* renamed from: k */
    protected ChangeObserver f3450k;
    @RestrictTo

    /* renamed from: l */
    protected DataSetObserver f3451l;
    @RestrictTo

    /* renamed from: m */
    protected CursorFilter f3452m;
    @RestrictTo

    /* renamed from: n */
    protected FilterQueryProvider f3453n;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/cursoradapter/widget/CursorAdapter$ChangeObserver.class */
    public class ChangeObserver extends ContentObserver {
        ChangeObserver() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            CursorAdapter.this.m18807i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver.class */
    public class MyDataSetObserver extends DataSetObserver {
        MyDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            CursorAdapter cursorAdapter = CursorAdapter.this;
            cursorAdapter.f3445f = true;
            cursorAdapter.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            CursorAdapter cursorAdapter = CursorAdapter.this;
            cursorAdapter.f3445f = false;
            cursorAdapter.notifyDataSetInvalidated();
        }
    }

    public CursorAdapter(Context context, Cursor cursor, boolean z) {
        m18808f(context, cursor, z ? 1 : 2);
    }

    /* renamed from: a */
    public CharSequence mo18801a(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    /* renamed from: b */
    public void mo18806b(Cursor cursor) {
        Cursor j = mo18799j(cursor);
        if (j != null) {
            j.close();
        }
    }

    @Override // androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    /* renamed from: c */
    public Cursor mo18805c() {
        return this.f3447h;
    }

    /* renamed from: d */
    public Cursor mo18804d(CharSequence charSequence) {
        FilterQueryProvider filterQueryProvider = this.f3453n;
        return filterQueryProvider != null ? filterQueryProvider.runQuery(charSequence) : this.f3447h;
    }

    /* renamed from: e */
    public abstract void mo18800e(View view, Context context, Cursor cursor);

    /* renamed from: f */
    void m18808f(Context context, Cursor cursor, int i) {
        boolean z = false;
        if ((i & 1) == 1) {
            i |= 2;
            this.f3446g = true;
        } else {
            this.f3446g = false;
        }
        if (cursor != null) {
            z = true;
        }
        this.f3447h = cursor;
        this.f3445f = z;
        this.f3448i = context;
        this.f3449j = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.f3450k = new ChangeObserver();
            this.f3451l = new MyDataSetObserver();
        } else {
            this.f3450k = null;
            this.f3451l = null;
        }
        if (z) {
            ChangeObserver changeObserver = this.f3450k;
            if (changeObserver != null) {
                cursor.registerContentObserver(changeObserver);
            }
            DataSetObserver dataSetObserver = this.f3451l;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    /* renamed from: g */
    public View mo18803g(Context context, Cursor cursor, ViewGroup viewGroup) {
        return mo18802h(context, cursor, viewGroup);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f3445f || (cursor = this.f3447h) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (!this.f3445f) {
            return null;
        }
        this.f3447h.moveToPosition(i);
        View view2 = view;
        if (view == null) {
            view2 = mo18803g(this.f3448i, this.f3447h, viewGroup);
        }
        mo18800e(view2, this.f3448i, this.f3447h);
        return view2;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f3452m == null) {
            this.f3452m = new CursorFilter(this);
        }
        return this.f3452m;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (!this.f3445f || (cursor = this.f3447h) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.f3447h;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (!this.f3445f || (cursor = this.f3447h) == null || !cursor.moveToPosition(i)) {
            return 0L;
        }
        return this.f3447h.getLong(this.f3449j);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.f3445f) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        } else if (this.f3447h.moveToPosition(i)) {
            View view2 = view;
            if (view == null) {
                view2 = mo18802h(this.f3448i, this.f3447h, viewGroup);
            }
            mo18800e(view2, this.f3448i, this.f3447h);
            return view2;
        } else {
            throw new IllegalStateException("couldn't move cursor to position " + i);
        }
    }

    /* renamed from: h */
    public abstract View mo18802h(Context context, Cursor cursor, ViewGroup viewGroup);

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    /* renamed from: i */
    protected void m18807i() {
        Cursor cursor;
        if (this.f3446g && (cursor = this.f3447h) != null && !cursor.isClosed()) {
            this.f3445f = this.f3447h.requery();
        }
    }

    /* renamed from: j */
    public Cursor mo18799j(Cursor cursor) {
        Cursor cursor2 = this.f3447h;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            ChangeObserver changeObserver = this.f3450k;
            if (changeObserver != null) {
                cursor2.unregisterContentObserver(changeObserver);
            }
            DataSetObserver dataSetObserver = this.f3451l;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f3447h = cursor;
        if (cursor != null) {
            ChangeObserver changeObserver2 = this.f3450k;
            if (changeObserver2 != null) {
                cursor.registerContentObserver(changeObserver2);
            }
            DataSetObserver dataSetObserver2 = this.f3451l;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f3449j = cursor.getColumnIndexOrThrow("_id");
            this.f3445f = true;
            notifyDataSetChanged();
        } else {
            this.f3449j = -1;
            this.f3445f = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }
}
