package com.google.android.datatransport.runtime.scheduling.persistence;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$5.class */
final /* synthetic */ class SQLiteEventStore$$Lambda$5 implements SQLiteEventStore.Function {

    /* renamed from: a */
    private final SQLiteEventStore f6809a;

    /* renamed from: b */
    private final TransportContext f6810b;

    /* renamed from: c */
    private final EventInternal f6811c;

    private SQLiteEventStore$$Lambda$5(SQLiteEventStore sQLiteEventStore, TransportContext transportContext, EventInternal eventInternal) {
        this.f6809a = sQLiteEventStore;
        this.f6810b = transportContext;
        this.f6811c = eventInternal;
    }

    /* renamed from: a */
    public static SQLiteEventStore.Function m15219a(SQLiteEventStore sQLiteEventStore, TransportContext transportContext, EventInternal eventInternal) {
        return new SQLiteEventStore$$Lambda$5(sQLiteEventStore, transportContext, eventInternal);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
    public Object apply(Object obj) {
        return SQLiteEventStore.m15264Z(this.f6809a, this.f6810b, this.f6811c, (SQLiteDatabase) obj);
    }
}
