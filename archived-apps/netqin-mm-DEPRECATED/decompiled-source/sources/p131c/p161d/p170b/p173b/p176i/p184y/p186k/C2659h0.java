package p131c.p161d.p170b.p173b.p176i.p184y.p186k;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import java.util.Arrays;
import java.util.List;
/* renamed from: c.d.b.b.i.y.k.h0 */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/h0.class */
public final class C2659h0 extends SQLiteOpenHelper {

    /* renamed from: c */
    public static int f9781c = 4;

    /* renamed from: d */
    public static final AbstractC2660a f9782d = C2648d0.m29346a();

    /* renamed from: e */
    public static final AbstractC2660a f9783e = C2650e0.m29342a();

    /* renamed from: f */
    public static final AbstractC2660a f9784f = C2653f0.m29338a();

    /* renamed from: g */
    public static final AbstractC2660a f9785g;

    /* renamed from: h */
    public static final List<AbstractC2660a> f9786h;

    /* renamed from: a */
    public final int f9787a;

    /* renamed from: b */
    public boolean f9788b = false;

    /* renamed from: c.d.b.b.i.y.k.h0$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/h0$a.class */
    public interface AbstractC2660a {
        /* renamed from: a */
        void mo29323a(SQLiteDatabase sQLiteDatabase);
    }

    static {
        AbstractC2660a a = C2656g0.m29334a();
        f9785g = a;
        f9786h = Arrays.asList(f9782d, f9783e, f9784f, a);
    }

    public C2659h0(Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        this.f9787a = i;
    }

    /* renamed from: b */
    public static /* synthetic */ void m29327b(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
    }

    /* renamed from: c */
    public static /* synthetic */ void m29326c(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }

    /* renamed from: e */
    public static /* synthetic */ void m29324e(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
    }

    /* renamed from: a */
    public final void m29330a(SQLiteDatabase sQLiteDatabase) {
        if (!this.f9788b) {
            onConfigure(sQLiteDatabase);
        }
    }

    /* renamed from: a */
    public final void m29329a(SQLiteDatabase sQLiteDatabase, int i) {
        m29330a(sQLiteDatabase);
        m29328a(sQLiteDatabase, 0, i);
    }

    /* renamed from: a */
    public final void m29328a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i2 <= f9786h.size()) {
            while (i < i2) {
                f9786h.get(i).mo29323a(sQLiteDatabase);
                i++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i + " to " + i2 + " was requested, but cannot be performed. Only " + f9786h.size() + " migrations are provided");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f9788b = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        if (Build.VERSION.SDK_INT >= 16) {
            sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m29329a(sQLiteDatabase, this.f9787a);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        m29329a(sQLiteDatabase, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        m29330a(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m29330a(sQLiteDatabase);
        m29328a(sQLiteDatabase, i, i2);
    }
}
