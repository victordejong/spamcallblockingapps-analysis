package com.vladlee.easyblacklist;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.provider.BaseColumns;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.HashMap;
/* renamed from: com.vladlee.easyblacklist.ee */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ee.class */
public final class C3392ee {

    /* renamed from: com.vladlee.easyblacklist.ee$a */
    /* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/ee$a.class */
    public static final class C3393a implements BaseColumns {

        /* renamed from: a */
        public static final Uri f19559a = Uri.parse("content://com.vladlee.easyblacklist.DataProvider/preferences");
    }

    /* renamed from: a */
    public static int m83a(Context context, String str) {
        String c = m72c(context, str);
        return c != null ? Integer.valueOf(c).intValue() : 0;
    }

    /* renamed from: a */
    public static String m81a(Context context, String str, String str2) {
        String c = m72c(context, str);
        if (c == null) {
            c = str2;
        }
        return c;
    }

    /* renamed from: a */
    public static HashMap<String, String> m84a(Context context) {
        SQLiteDatabase readableDatabase = C3317bx.m204a(context).getReadableDatabase();
        HashMap<String, String> hashMap = new HashMap<>();
        Cursor query = readableDatabase.query("preferences", new String[]{AppMeasurementSdk.ConditionalUserProperty.NAME, AppMeasurementSdk.ConditionalUserProperty.VALUE}, null, null, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                hashMap.put(query.getString(0), query.getString(1));
            }
            query.close();
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m82a(Context context, String str, int i) {
        m71c(context, str, String.valueOf(i));
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putInt(str, i);
        edit.commit();
    }

    /* renamed from: a */
    private static void m78a(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, str);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, str2);
        int b = m73b(sQLiteDatabase, str, str2);
        if (b == 1) {
            sQLiteDatabase.update("preferences", contentValues, "name = ?", new String[]{str});
        } else if (b == 0) {
            sQLiteDatabase.insert("preferences", null, contentValues);
        }
    }

    /* renamed from: a */
    public static boolean m80a(Context context, String str, boolean z) {
        String c = m72c(context, str);
        if (c != null) {
            z = c.equals("true");
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m79a(SQLiteDatabase sQLiteDatabase, String str) {
        boolean z = false;
        Cursor query = sQLiteDatabase.query("preferences", new String[]{"_id"}, "name = ?", new String[]{str}, null, null, null);
        if (query != null) {
            z = query.moveToNext();
            query.close();
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m77a(HashMap<String, String> hashMap, String str) {
        String str2 = hashMap.get(str);
        return str2 != null ? str2.equals("true") : true;
    }

    /* renamed from: b */
    private static int m73b(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        r13 = 1;
        int i = 0;
        i = 0;
        Cursor query = sQLiteDatabase.query("preferences", new String[]{"_id", AppMeasurementSdk.ConditionalUserProperty.VALUE}, "name = ?", new String[]{str}, null, null, null);
        if (query != null) {
            if (query.moveToNext() && query.getString(1).equals(str2)) {
                i = 2;
            }
            query.close();
        }
        return i;
    }

    /* renamed from: b */
    public static void m75b(Context context, String str, String str2) {
        m71c(context, str, str2);
        C3391ed.m90a(context, str, str2);
    }

    /* renamed from: b */
    public static void m74b(Context context, String str, boolean z) {
        m71c(context, str, z ? "true" : "false");
        C3391ed.m86b(context, str, z);
    }

    /* renamed from: b */
    public static boolean m76b(Context context, String str) {
        boolean z = false;
        Cursor query = C3317bx.m204a(context).getReadableDatabase().query("preferences", new String[]{"_id"}, "name = ?", new String[]{str}, null, null, null);
        if (query != null) {
            z = query.moveToNext();
            query.close();
        }
        return z;
    }

    /* renamed from: c */
    private static String m72c(Context context, String str) {
        Cursor query = C3317bx.m204a(context).getReadableDatabase().query("preferences", new String[]{AppMeasurementSdk.ConditionalUserProperty.NAME, AppMeasurementSdk.ConditionalUserProperty.VALUE}, "name = ?", new String[]{str}, null, null, null);
        String str2 = null;
        str2 = null;
        if (query != null) {
            if (query.moveToNext()) {
                str2 = query.getString(1);
            }
            query.close();
        }
        return str2;
    }

    /* renamed from: c */
    private static void m71c(Context context, String str, String str2) {
        m78a(C3317bx.m204a(context).getWritableDatabase(), str, str2);
    }
}
