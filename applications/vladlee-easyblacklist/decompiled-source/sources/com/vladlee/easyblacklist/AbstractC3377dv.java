package com.vladlee.easyblacklist;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.vladlee.easyblacklist.dv */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dv.class */
public abstract class AbstractC3377dv extends CursorAdapter {

    /* renamed from: a */
    protected HashMap<Long, Boolean> f19525a = new HashMap<>();

    /* renamed from: b */
    protected HashMap<Long, Object> f19526b = new HashMap<>();

    public AbstractC3377dv(Context context) {
        super(context, (Cursor) null, 2);
    }

    /* renamed from: a */
    public final Object m123a(long j) {
        return this.f19526b.get(Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m122a(long j, Object obj) {
        this.f19526b.put(Long.valueOf(j), obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m121a(long j, boolean z) {
        this.f19525a.put(Long.valueOf(j), Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final boolean m120b(long j) {
        Boolean bool = this.f19525a.get(Long.valueOf(j));
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    @Override // android.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public final void m119d() {
        this.f19525a.clear();
        this.f19526b.clear();
    }

    /* renamed from: e */
    public final boolean m118e() {
        Iterator<Map.Entry<Long, Boolean>> it = this.f19525a.entrySet().iterator();
        int i = 0;
        while (it.hasNext() && i < 2) {
            if (it.next().getValue().booleanValue()) {
                i++;
            }
        }
        return i == 1;
    }

    /* renamed from: f */
    public final boolean m117f() {
        for (Map.Entry<Long, Boolean> entry : this.f19525a.entrySet()) {
            if (entry.getValue().booleanValue()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    public final long m116g() {
        for (Map.Entry<Long, Boolean> entry : this.f19525a.entrySet()) {
            if (entry.getValue().booleanValue()) {
                return entry.getKey().longValue();
            }
        }
        return -1L;
    }

    @Override // android.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return null;
    }
}
