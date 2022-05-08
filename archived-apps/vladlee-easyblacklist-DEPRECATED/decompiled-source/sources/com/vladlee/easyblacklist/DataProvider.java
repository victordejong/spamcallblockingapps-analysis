package com.vladlee.easyblacklist;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vladlee.easyblacklist.C3318by;
import com.vladlee.easyblacklist.C3392ee;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/DataProvider.class */
public class DataProvider extends ContentProvider {

    /* renamed from: a */
    private C3317bx f19246a;

    /* renamed from: a */
    private static String m343a(Uri uri) {
        return uri.equals(C3318by.C3319a.f19425a) ? "callsms" : uri.equals(C3318by.C3321c.f19427a) ? "phones" : uri.equals(C3318by.C3323e.f19429a) ? "whitelist" : uri.equals(C3392ee.C3393a.f19559a) ? "preferences" : uri.equals(C3318by.C3320b.f19426a) ? "mutelist" : "";
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        SQLiteDatabase writableDatabase = this.f19246a.getWritableDatabase();
        writableDatabase.beginTransaction();
        for (ContentValues contentValues : contentValuesArr) {
            try {
                insert(uri, contentValues);
            } catch (Throwable th) {
                writableDatabase.endTransaction();
                throw th;
            }
        }
        writableDatabase.setTransactionSuccessful();
        int length = contentValuesArr.length;
        writableDatabase.endTransaction();
        getContext().getContentResolver().notifyChange(uri, null);
        return length;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        int delete = this.f19246a.getWritableDatabase().delete(m343a(uri), str, strArr);
        getContext().getContentResolver().notifyChange(uri, null);
        return delete;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return "";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        SQLiteDatabase writableDatabase = this.f19246a.getWritableDatabase();
        String str = "phone";
        if (!uri.equals(C3318by.C3319a.f19425a) && !uri.equals(C3318by.C3321c.f19427a) && !uri.equals(C3318by.C3323e.f19429a)) {
            if (uri.equals(C3392ee.C3393a.f19559a)) {
                str = AppMeasurementSdk.ConditionalUserProperty.NAME;
            } else if (!uri.equals(C3318by.C3320b.f19426a)) {
                str = "";
            }
        }
        long insert = writableDatabase.insert(m343a(uri), str, contentValues);
        if (insert > 0) {
            Uri withAppendedId = ContentUris.withAppendedId(uri, insert);
            getContext().getContentResolver().notifyChange(withAppendedId, null);
            return withAppendedId;
        }
        throw new SQLException("Failed to insert row into ".concat(String.valueOf(uri)));
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f19246a = C3317bx.m204a(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String[] split;
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables(m343a(uri));
        SQLiteDatabase readableDatabase = this.f19246a.getReadableDatabase();
        String str3 = (str2 == null || (split = str2.split("GROUP BY")) == null || split.length <= 1) ? null : split[1];
        String str4 = str2;
        if (str2 != null) {
            String[] split2 = str2.split("GROUP BY");
            str4 = str2;
            if (split2 != null) {
                str4 = split2[0];
            }
        }
        Cursor query = sQLiteQueryBuilder.query(readableDatabase, strArr, str, strArr2, str3, null, str4);
        query.setNotificationUri(getContext().getContentResolver(), uri);
        return query;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int update = this.f19246a.getWritableDatabase().update(m343a(uri), contentValues, str, strArr);
        getContext().getContentResolver().notifyChange(uri, null);
        return update;
    }
}
