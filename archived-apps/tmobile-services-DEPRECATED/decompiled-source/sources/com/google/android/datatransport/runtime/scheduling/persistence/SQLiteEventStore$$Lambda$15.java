package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.Cursor;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$15.class */
public final /* synthetic */ class SQLiteEventStore$$Lambda$15 implements SQLiteEventStore.Function {

    /* renamed from: a */
    private final SQLiteEventStore f6799a;

    /* renamed from: b */
    private final List f6800b;

    /* renamed from: c */
    private final TransportContext f6801c;

    private SQLiteEventStore$$Lambda$15(SQLiteEventStore sQLiteEventStore, List list, TransportContext transportContext) {
        this.f6799a = sQLiteEventStore;
        this.f6800b = list;
        this.f6801c = transportContext;
    }

    /* renamed from: a */
    public static SQLiteEventStore.Function m15227a(SQLiteEventStore sQLiteEventStore, List list, TransportContext transportContext) {
        return new SQLiteEventStore$$Lambda$15(sQLiteEventStore, list, transportContext);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public Object apply(Object obj) {
        return SQLiteEventStore.m15266X(this.f6799a, this.f6800b, this.f6801c, (Cursor) obj);
    }
}
