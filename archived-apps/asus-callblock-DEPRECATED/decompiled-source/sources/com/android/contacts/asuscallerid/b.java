package com.android.contacts.asuscallerid;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/contacts/asuscallerid/b.class */
public final class b extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    private static b f593a = null;

    private b(Context context) {
        super(context, "asuscallerid.db", (SQLiteDatabase.CursorFactory) null, 2);
    }

    public static b a(Context context) {
        b bVar;
        synchronized (b.class) {
            try {
                if (f593a == null) {
                    f593a = new b(context);
                }
                bVar = f593a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS userconfirm (_id INTEGER PRIMARY KEY,number TEXT);");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS success_caller_info (number TEXT PRIMARY KEY,success TEXT);");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS engine_info (asus_engine_authority TEXT PRIMARY KEY,asus_engine_name TEXT,asus_engine_path TEXT,isSupportSdk INTEGER,isSupportAsusEngine INTEGER);");
        } catch (Exception e) {
            Log.d("AsusCallerIDHepler", "failed to create DB ...");
            e.printStackTrace();
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS userconfirm (_id INTEGER PRIMARY KEY,number TEXT);");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS success_caller_info (number TEXT PRIMARY KEY,success TEXT);");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS engine_info (asus_engine_authority TEXT PRIMARY KEY,asus_engine_name TEXT,asus_engine_path TEXT,isSupportSdk INTEGER,isSupportAsusEngine INTEGER);");
        } catch (Exception e) {
            Log.d("AsusCallerIDHepler", "failed to create DB ...");
            e.printStackTrace();
        }
    }
}
