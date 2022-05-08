package com.vladlee.easyblacklist;

import android.content.Context;
import android.widget.SimpleCursorAdapter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.vladlee.easyblacklist.dw */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/dw.class */
public abstract class AbstractC3378dw extends SimpleCursorAdapter {

    /* renamed from: c */
    protected HashMap<Long, Boolean> f19527c = new HashMap<>();

    /* renamed from: d */
    protected HashMap<Long, Object> f19528d = new HashMap<>();

    public AbstractC3378dw(Context context, String[] strArr, int[] iArr) {
        super(context, 2131492980, null, strArr, iArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m114a(long j, boolean z) {
        this.f19527c.put(Long.valueOf(j), Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final boolean m115a(long j) {
        Boolean bool = this.f19527c.get(Long.valueOf(j));
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final void m113b() {
        this.f19527c.clear();
        this.f19528d.clear();
    }

    /* renamed from: c */
    public final boolean m112c() {
        Iterator<Map.Entry<Long, Boolean>> it = this.f19527c.entrySet().iterator();
        int i = 0;
        while (it.hasNext() && i < 2) {
            if (it.next().getValue().booleanValue()) {
                i++;
            }
        }
        return i == 1;
    }

    /* renamed from: d */
    public final boolean m111d() {
        for (Map.Entry<Long, Boolean> entry : this.f19527c.entrySet()) {
            if (entry.getValue().booleanValue()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public final long m110e() {
        for (Map.Entry<Long, Boolean> entry : this.f19527c.entrySet()) {
            if (entry.getValue().booleanValue()) {
                return entry.getKey().longValue();
            }
        }
        return -1L;
    }
}
