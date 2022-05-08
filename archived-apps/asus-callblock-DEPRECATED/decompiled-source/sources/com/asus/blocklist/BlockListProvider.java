package com.asus.blocklist;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.asus.contacts.a.a;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockListProvider.class */
public class BlockListProvider extends ContentProvider {
    private static final UriMatcher c;

    /* renamed from: a  reason: collision with root package name */
    private a f2439a;

    /* renamed from: b  reason: collision with root package name */
    private String f2440b = BlockListProvider.class.getSimpleName();

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        c = uriMatcher;
        uriMatcher.addURI("com.asus.blocklist.provider", "blocklist", 1);
        c.addURI("com.asus.blocklist.provider", "blocklist/#", 2);
        c.addURI("com.asus.blocklist.provider", "blockcalls", 3);
        c.addURI("com.asus.blocklist.provider", "blockcalls/#", 4);
        c.addURI("com.asus.blocklist.provider", "blocktags", 5);
        c.addURI("com.asus.blocklist.provider", "blocktags/*", 6);
        c.addURI("com.asus.blocklist.provider", "usertags/*", 7);
        c.addURI("com.asus.blocklist.provider", "usertags/", 10);
        c.addURI("com.asus.blocklist.provider", "blocksim/*", 8);
        c.addURI("com.asus.blocklist.provider", "blocksim/", 9);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        int delete;
        SQLiteDatabase writableDatabase = this.f2439a.getWritableDatabase();
        switch (c.match(uri)) {
            case 1:
                delete = writableDatabase.delete("blocklist", str, strArr);
                break;
            case 2:
                delete = writableDatabase.delete("blocklist", "_id=" + uri.getPathSegments().get(1), strArr);
                break;
            case 3:
                delete = writableDatabase.delete("blockcalls", str, strArr);
                break;
            case 4:
                delete = writableDatabase.delete("blockcalls", "_id=" + uri.getPathSegments().get(1), strArr);
                break;
            case 5:
                delete = writableDatabase.delete("blocktags", str, strArr);
                break;
            case 6:
                delete = writableDatabase.delete("blocktags", "tag_name = '" + uri.getLastPathSegment() + "'", strArr);
                break;
            case 7:
                delete = writableDatabase.delete("usertags", "number = '" + uri.getLastPathSegment() + "'", strArr);
                break;
            case 8:
                delete = writableDatabase.delete("blocksim", "sim_contact_id = '" + uri.getLastPathSegment() + "'", strArr);
                break;
            default:
                throw new IllegalStateException("Unknown URL: " + uri.toString());
        }
        if (delete > 0) {
            getContext().getContentResolver().notifyChange(uri, null);
        }
        return delete;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        String str;
        switch (c.match(uri)) {
            case 1:
                str = "vnd.android.cursor.dir/com.asus.blocklist.provider.blocklist";
                break;
            case 2:
                str = "vnd.android.cursor.item/com.asus.blocklist.provider.blocklist";
                break;
            case 3:
                str = "vnd.android.cursor.dir/com.asus.blocklist.provider.blockcalls";
                break;
            case 4:
                str = "vnd.android.cursor.item/com.asus.blocklist.provider.blockcalls";
                break;
            case 5:
                str = "vnd.android.cursor.dir/com.asus.blocklist.provider.blocktags";
                break;
            case 6:
                str = "vnd.android.cursor.item/com.asus.blocklist.provider.blocktags";
                break;
            case 7:
                str = "vnd.android.cursor.item/com.asus.blocklist.provider.usertags";
                break;
            case 8:
            case 9:
            default:
                throw new IllegalStateException("Unknown URL: " + uri.toString());
            case 10:
                str = "vnd.android.cursor.dir/com.asus.blocklist.provider.usertags";
                break;
        }
        return str;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        Uri withAppendedPath;
        SQLiteDatabase writableDatabase = this.f2439a.getWritableDatabase();
        switch (c.match(uri)) {
            case 1:
                if (!contentValues.containsKey("number")) {
                    throw new SQLException("Fail to insert row  because phone number is needed " + uri);
                }
                if (!contentValues.containsKey("block_type")) {
                    contentValues.put("block_type", (Integer) 0);
                }
                long insert = writableDatabase.insert("blocklist", null, contentValues);
                if (insert > 0) {
                    withAppendedPath = ContentUris.withAppendedId(uri, insert);
                    getContext().getContentResolver().notifyChange(uri, null);
                    break;
                } else {
                    throw new SQLException("Failed to insert row into " + uri);
                }
            case 2:
            case 4:
            case 6:
            case 8:
            default:
                throw new IllegalStateException("Unknown URL: " + uri.toString());
            case 3:
                if (!contentValues.containsKey("number")) {
                    throw new SQLException("Fail to insert row  because phone number is needed " + uri);
                }
                long insert2 = writableDatabase.insert("blockcalls", null, contentValues);
                if (insert2 > 0) {
                    withAppendedPath = ContentUris.withAppendedId(uri, insert2);
                    getContext().getContentResolver().notifyChange(uri, null);
                    break;
                } else {
                    throw new SQLException("Failed to insert row into " + uri);
                }
            case 5:
                if (!contentValues.containsKey("tag_name")) {
                    throw new SQLException("Fail to inser row  because tag name is needed " + uri);
                }
                long insert3 = writableDatabase.insert("blocktags", "tag_name", contentValues);
                if (insert3 > 0) {
                    withAppendedPath = ContentUris.withAppendedId(uri, insert3);
                    getContext().getContentResolver().notifyChange(uri, null);
                    break;
                } else {
                    throw new SQLException("Failed to insert row into " + uri);
                }
            case 7:
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("number", contentValues.getAsString("number").replaceAll("\\s", BuildConfig.FLAVOR));
                long insert4 = writableDatabase.insert("usertags", "number", contentValues2);
                if (insert4 > 0) {
                    ContentUris.withAppendedId(uri, insert4);
                    withAppendedPath = Uri.withAppendedPath(uri, "true");
                    break;
                } else {
                    throw new SQLException("Failed to insert row into " + uri);
                }
            case 9:
                if (writableDatabase.insert("blocksim", null, contentValues) > 0) {
                    withAppendedPath = Uri.withAppendedPath(uri, "true");
                    break;
                } else {
                    throw new SQLException("Failed to insert row into " + uri);
                }
        }
        return withAppendedPath;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f2439a = a.a(getContext());
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0085  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0172 -> B:21:0x014c). Please submit an issue!!! */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.database.Cursor query(android.net.Uri r10, java.lang.String[] r11, java.lang.String r12, java.lang.String[] r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.blocklist.BlockListProvider.query(android.net.Uri, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String):android.database.Cursor");
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int update;
        SQLiteDatabase writableDatabase = this.f2439a.getWritableDatabase();
        switch (c.match(uri)) {
            case 1:
                update = writableDatabase.update("blocklist", contentValues, str, strArr);
                break;
            case 2:
                update = writableDatabase.update("blocklist", contentValues, "_id=" + uri.getPathSegments().get(1), strArr);
                break;
            case 3:
                update = writableDatabase.update("blockcalls", contentValues, str, strArr);
                break;
            case 4:
                update = writableDatabase.update("blockcalls", contentValues, "_id=" + uri.getPathSegments().get(1), strArr);
                break;
            default:
                throw new IllegalStateException("Unknown URL: " + uri.toString());
        }
        if (update > 0) {
            getContext().getContentResolver().notifyChange(uri, null);
        }
        return update;
    }
}
