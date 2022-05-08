package com.google.android.gms.tagmanager;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdContract;
import java.util.HashSet;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzax.class */
public final class zzax extends SQLiteOpenHelper {
    private final /* synthetic */ zzat zzbbf;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzax(zzat zzatVar, Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        this.zzbbf = zzatVar;
    }

    private static boolean zza(String str, SQLiteDatabase sQLiteDatabase) {
        Throwable th;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SQLiteException e) {
        }
        try {
            boolean moveToFirst = cursor.moveToFirst();
            if (cursor != null) {
                cursor.close();
            }
            return moveToFirst;
        } catch (SQLiteException e2) {
            String valueOf = String.valueOf(str);
            zzdi.zzab(valueOf.length() != 0 ? "Error querying for table ".concat(valueOf) : new String("Error querying for table "));
            if (cursor == null) {
                return false;
            }
            cursor.close();
            return false;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = cursor;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase sQLiteDatabase;
        Context context;
        try {
            sQLiteDatabase = super.getWritableDatabase();
        } catch (SQLiteException e) {
            context = this.zzbbf.zzri;
            context.getDatabasePath("google_tagmanager.db").delete();
            sQLiteDatabase = null;
        }
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        if (sQLiteDatabase == null) {
            sQLiteDatabase2 = super.getWritableDatabase();
        }
        return sQLiteDatabase2;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        zzbr.zzdn(sQLiteDatabase.getPath());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        String str;
        if (Build.VERSION.SDK_INT < 15) {
            try {
                sQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null).moveToFirst();
            } finally {
            }
        }
        if (!zza("datalayer", sQLiteDatabase)) {
            str = zzat.zzbaz;
            sQLiteDatabase.execSQL(str);
            return;
        }
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM datalayer WHERE 0", null);
        HashSet hashSet = new HashSet();
        try {
            for (String str2 : rawQuery.getColumnNames()) {
                hashSet.add(str2);
            }
            rawQuery.close();
            if (!hashSet.remove("key") || !hashSet.remove(FirebaseAnalytics.Param.VALUE) || !hashSet.remove("ID") || !hashSet.remove(CallerIdContract.CallerIdEntry.COLUMN_EXPIRES)) {
                throw new SQLiteException("Database column missing");
            } else if (!hashSet.isEmpty()) {
                throw new SQLiteException("Database has extra columns");
            }
        } finally {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
