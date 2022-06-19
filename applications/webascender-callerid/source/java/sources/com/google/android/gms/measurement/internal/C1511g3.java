package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: com.google.android.gms.measurement.internal.g3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/g3.class */
final class C1511g3 extends SQLiteOpenHelper {

    /* renamed from: f */
    final /* synthetic */ h3 f4255f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1511g3(h3 h3Var, Context context, String str) {
        super(context, "google_app_measurement_local.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f4255f = h3Var;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() throws SQLiteException {
        try {
            return super.getWritableDatabase();
        } catch (SQLiteDatabaseLockedException e) {
            throw e;
        } catch (SQLiteException e2) {
            ((l5) this.f4255f).a.c().o().m1570a("Opening the local database failed, dropping and recreating it");
            ((l5) this.f4255f).a.z();
            if (!((l5) this.f4255f).a.b().getDatabasePath("google_app_measurement_local.db").delete()) {
                ((l5) this.f4255f).a.c().o().m1569b("Failed to delete corrupted local db file", "google_app_measurement_local.db");
            }
            try {
                return super.getWritableDatabase();
            } catch (SQLiteException e3) {
                ((l5) this.f4255f).a.c().o().m1569b("Failed to open local database. Events will bypass local storage", e3);
                return null;
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        C1533k.m1574b(((l5) this.f4255f).a.c(), sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        C1533k.m1575a(((l5) this.f4255f).a.c(), sQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
