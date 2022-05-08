package com.vladlee.easyblacklist;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.lang.ref.WeakReference;
/* renamed from: com.vladlee.easyblacklist.bx */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/bx.class */
public final class C3317bx extends SQLiteOpenHelper {

    /* renamed from: a */
    private static WeakReference<C3317bx> f19424a;

    private C3317bx(Context context) {
        super(context, "easycallblocker.db", (SQLiteDatabase.CursorFactory) null, 9);
    }

    /* renamed from: a */
    public static C3317bx m204a(Context context) {
        WeakReference<C3317bx> weakReference = f19424a;
        if (weakReference == null || weakReference.get() == null) {
            f19424a = new WeakReference<>(new C3317bx(context.getApplicationContext()));
        }
        return f19424a.get();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE callsms (_id INTEGER PRIMARY KEY,phone TEXT,message TEXT,time INTEGER,contact_id INTEGER,type INTEGER);");
        sQLiteDatabase.execSQL("CREATE TABLE phones (_id INTEGER PRIMARY KEY,phone TEXT,phone_token TEXT,filter TEXT,ignore_case INTEGER,display_name TEXT,contact_id INTEGER);");
        sQLiteDatabase.execSQL("CREATE TABLE whitelist (_id INTEGER PRIMARY KEY,phone TEXT,display_name TEXT,contact_id INTEGER);");
        sQLiteDatabase.execSQL("CREATE TABLE mutelist (_id INTEGER PRIMARY KEY,phone TEXT,display_name TEXT,contact_id INTEGER);");
        sQLiteDatabase.execSQL("CREATE TABLE preferences (_id INTEGER PRIMARY KEY,name TEXT,value TEXT);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i < 2) {
            sQLiteDatabase.execSQL("CREATE TABLE phones (_id INTEGER PRIMARY KEY,phone TEXT,phone_token TEXT);");
        }
        if (i < 4) {
            sQLiteDatabase.execSQL("CREATE TABLE whitelist (_id INTEGER PRIMARY KEY,phone TEXT);");
        }
        if (i < 5) {
            try {
                sQLiteDatabase.execSQL("ALTER TABLE phones ADD COLUMN phone_token TEXT");
            } catch (Exception e) {
            }
            sQLiteDatabase.execSQL("UPDATE phones SET phone_token = LOWER(phone);");
        }
        if (i < 6) {
            try {
                sQLiteDatabase.execSQL("ALTER TABLE phones ADD COLUMN display_name TEXT");
            } catch (Exception e2) {
            }
            try {
                sQLiteDatabase.execSQL("ALTER TABLE phones ADD COLUMN contact_id INTEGER");
            } catch (Exception e3) {
            }
            try {
                sQLiteDatabase.execSQL("ALTER TABLE whitelist ADD COLUMN display_name TEXT");
            } catch (Exception e4) {
            }
            try {
                sQLiteDatabase.execSQL("ALTER TABLE whitelist ADD COLUMN contact_id INTEGER");
            } catch (Exception e5) {
            }
            sQLiteDatabase.execSQL("CREATE TABLE preferences (_id INTEGER PRIMARY KEY,name TEXT,value TEXT);");
        }
        if (i < 8) {
            sQLiteDatabase.execSQL("CREATE TABLE mutelist (_id INTEGER PRIMARY KEY,phone TEXT,display_name TEXT,contact_id INTEGER);");
        }
        if (i < 9) {
            try {
                sQLiteDatabase.execSQL("ALTER TABLE phones ADD COLUMN filter TEXT");
                sQLiteDatabase.execSQL("ALTER TABLE phones ADD COLUMN ignore_case INTEGER");
            } catch (Exception e6) {
            }
        }
    }
}
