package p131c.p161d.p170b.p224d.p260i.p261a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.measurement.internal.zzaj;
import com.google.android.gms.measurement.internal.zzem;
@VisibleForTesting
/* renamed from: c.d.b.d.i.a.b3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/b3.class */
public final class C4651b3 extends SQLiteOpenHelper {

    /* renamed from: a */
    public final /* synthetic */ zzem f16970a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4651b3(zzem zzemVar, Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        this.f16970a = zzemVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() throws SQLiteException {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e) {
            throw e;
        } catch (SQLiteException e2) {
            this.f16970a.mo8789p().m9152q().m9143a("Opening the local database failed, dropping and recreating it");
            if (!this.f16970a.mo8846B().getDatabasePath("google_app_measurement_local.db").delete()) {
                this.f16970a.mo8789p().m9152q().m9142a("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e3) {
                this.f16970a.mo8789p().m9152q().m9142a("Failed to open local database. Events will bypass local storage", e3);
                return null;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        zzaj.m9304a(this.f16970a.mo8789p(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        zzaj.m9302a(this.f16970a.mo8789p(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
