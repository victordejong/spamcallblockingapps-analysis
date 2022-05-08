package com.asus.snapcall;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.asus.contacts.a.a;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/asus/snapcall/SnapCallContentProvider.class */
public class SnapCallContentProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f3084a = Uri.parse("content://com.asus.snapcall.provider/numbers");

    /* renamed from: b  reason: collision with root package name */
    public static final Uri f3085b = Uri.parse("content://com.asus.snapcall.provider/calls");
    private static final UriMatcher c;
    private SQLiteDatabase d;
    private a e;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        c = uriMatcher;
        uriMatcher.addURI("com.asus.snapcall.provider", "numbers", 1);
        c.addURI("com.asus.snapcall.provider", "numbers/*", 2);
        c.addURI("com.asus.snapcall.provider", "calls", 3);
        c.addURI("com.asus.snapcall.provider", "calls/*", 4);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        int delete;
        this.d = this.e.getWritableDatabase();
        switch (c.match(uri)) {
            case 1:
                delete = this.d.delete("snap_call_number_table", str, strArr);
                break;
            case 2:
                delete = this.d.delete("snap_call_number_table", "_id = " + uri.getLastPathSegment() + (!TextUtils.isEmpty(str) ? " AND (" + str + ")" : BuildConfig.FLAVOR), strArr);
                break;
            case 3:
                delete = this.d.delete("snap_call_call_table", str, strArr);
                break;
            case 4:
                delete = this.d.delete("snap_call_call_table", "_id = " + uri.getLastPathSegment() + (!TextUtils.isEmpty(str) ? " AND (" + str + ")" : BuildConfig.FLAVOR), strArr);
                break;
            default:
                throw new IllegalArgumentException("Unknown URI: " + uri);
        }
        if (!(delete <= 0 || getContext() == null || getContext().getContentResolver() == null)) {
            getContext().getContentResolver().notifyChange(uri, null);
        }
        return delete;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        String str;
        switch (c.match(uri)) {
            case 1:
                str = "vnd.android.cursor.dir/vnd.com.asus.snapcall.provider.snap_call_number_table";
                break;
            case 2:
                str = "vnd.android.cursor.item/vnd.com.asus.snapcall.provider.snap_call_number_table";
                break;
            case 3:
                str = "vnd.android.cursor.dir/vnd.com.asus.snapcall.provider.snap_call_call_table";
                break;
            case 4:
                str = "vnd.android.cursor.item/vnd.com.asus.snapcall.provider.snap_call_call_table";
                break;
            default:
                throw new IllegalArgumentException("Unknown URI: " + uri);
        }
        return str;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        Uri uri2;
        this.d = this.e.getWritableDatabase();
        switch (c.match(uri)) {
            case 1:
            case 2:
                long insert = this.d.insert("snap_call_number_table", null, contentValues);
                if (insert <= 0) {
                    Log.e("SnapCallContentProvider", "Fail to add a new record into " + uri + ", row = " + insert);
                    uri2 = null;
                    break;
                } else {
                    if (!(getContext() == null || getContext().getContentResolver() == null)) {
                        getContext().getContentResolver().notifyChange(uri, null);
                    }
                    uri2 = ContentUris.withAppendedId(f3084a, insert);
                    break;
                }
                break;
            case 3:
            case 4:
                long insert2 = this.d.insert("snap_call_call_table", null, contentValues);
                if (insert2 <= 0) {
                    Log.e("SnapCallContentProvider", "Fail to add a new record into " + uri + ", row = " + insert2);
                    uri2 = null;
                    break;
                } else {
                    if (!(getContext() == null || getContext().getContentResolver() == null)) {
                        getContext().getContentResolver().notifyChange(uri, null);
                    }
                    uri2 = ContentUris.withAppendedId(f3085b, insert2);
                    break;
                }
                break;
            default:
                uri2 = null;
                break;
        }
        return uri2;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.e = a.a(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String str3;
        this.d = this.e.getWritableDatabase();
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        switch (c.match(uri)) {
            case 1:
                sQLiteQueryBuilder.setTables("snap_call_number_table");
                if (TextUtils.isEmpty(str2)) {
                    str3 = "_id ASC";
                    break;
                }
                str3 = str2;
                break;
            case 2:
                sQLiteQueryBuilder.setTables("snap_call_number_table");
                sQLiteQueryBuilder.appendWhere("_id=" + uri.getLastPathSegment());
                str3 = str2;
                break;
            case 3:
                sQLiteQueryBuilder.setTables("snap_call_call_table");
                if (TextUtils.isEmpty(str2)) {
                    str3 = "_id ASC";
                    break;
                }
                str3 = str2;
                break;
            case 4:
                sQLiteQueryBuilder.setTables("snap_call_call_table");
                sQLiteQueryBuilder.appendWhere("_id=" + uri.getLastPathSegment());
                str3 = str2;
                break;
            default:
                throw new IllegalArgumentException("Unknown URI: " + uri);
        }
        return sQLiteQueryBuilder.query(this.d, strArr, str, strArr2, null, null, str3);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int update;
        this.d = this.e.getWritableDatabase();
        switch (c.match(uri)) {
            case 1:
                update = this.d.update("snap_call_number_table", contentValues, str, strArr);
                break;
            case 2:
                update = this.d.update("snap_call_number_table", contentValues, "_id = " + uri.getLastPathSegment() + (!TextUtils.isEmpty(str) ? " AND (" + str + ")" : BuildConfig.FLAVOR), strArr);
                break;
            case 3:
                update = this.d.update("snap_call_call_table", contentValues, str, strArr);
                break;
            case 4:
                update = this.d.update("snap_call_call_table", contentValues, "_id = " + uri.getLastPathSegment() + (!TextUtils.isEmpty(str) ? " AND (" + str + ")" : BuildConfig.FLAVOR), strArr);
                break;
            default:
                throw new IllegalArgumentException("Unknown URI: " + uri);
        }
        if (!(update <= 0 || getContext() == null || getContext().getContentResolver() == null)) {
            getContext().getContentResolver().notifyChange(uri, null);
        }
        return update;
    }
}
