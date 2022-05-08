package gogolook.callgogolook2.provider;

import android.content.ContentProvider;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.content.UriMatcher;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import net.sqlcipher.SQLException;
import net.sqlcipher.database.SQLiteDatabase;
import net.sqlcipher.database.SQLiteException;
import net.sqlcipher.database.SQLiteOpenHelper;
import net.sqlcipher.database.SQLiteQueryBuilder;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.p590x4.C14269g;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/provider/DbProvider.class */
public class DbProvider extends ContentProvider {

    /* renamed from: b */
    public static final String f12495b = DbProvider.class.getSimpleName();

    /* renamed from: c */
    public static volatile boolean f12496c = false;

    /* renamed from: d */
    public static final UriMatcher f12497d = new UriMatcher(-1);

    /* renamed from: a */
    public C5053a f12498a;

    /* renamed from: gogolook.callgogolook2.provider.DbProvider$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/provider/DbProvider$a.class */
    public static class C5053a extends SQLiteOpenHelper {
        public C5053a(Context context) {
            super(context, "whoscall.db", null, 69);
        }

        /* renamed from: a */
        public final void m26411a(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
            try {
                sQLiteDatabase.execSQL("ALTER TABLE " + str + " ADD COLUMN " + str2 + " " + str3);
            } catch (Throwable th) {
                C14080m2.m2612a(th);
            }
        }

        @Override // net.sqlcipher.database.SQLiteOpenHelper
        public SQLiteDatabase getReadableDatabase(String str) {
            SQLiteDatabase sQLiteDatabase;
            try {
                sQLiteDatabase = DbProvider.f12496c ? null : super.getReadableDatabase(str);
            } catch (SQLiteException e) {
                sQLiteDatabase = null;
            }
            return sQLiteDatabase;
        }

        @Override // net.sqlcipher.database.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            boolean unused = DbProvider.f12496c = true;
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS NewsCenter (_id INTEGER PRIMARY KEY,_json TEXT,_read TINYINT,_version TEXT,_repeat INTEGER,_createtime TEXT,_updatetime TEXT,_status TINYINT,_transaction TINYINT,_pushid TEXT)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS SearchHistoryDb (_id INTEGER PRIMARY KEY,_number TEXT,_e164 TEXT,_searchtime TEXT,_createtime TEXT,_updatetime TEXT,_status TINYINT,_transaction TINYINT)");
            sQLiteDatabase.execSQL("CREATE TABLE url_scan (_id INTEGER PRIMARY KEY AUTOINCREMENT,_url TEXT,_number TEXT,_msg TEXT,_apk TINYINT DEFAULT 0,_rating TINYINT DEFAULT 0,_category INTEGER DEFAULT 0,_reporter TEXT,_json TEXT,_status TINYINT DEFAULT 0,_ctime INTEGER DEFAULT 0);");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS UnsearchedNumberDb (_id INTEGER PRIMARY KEY,_e164 TEXT,_createtime TEXT,_updatetime TEXT)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS TelecomList (_id INTEGER PRIMARY KEY,_region TEXT,_report_id INTEGER,_name TEXT)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS TelecomReport (_id INTEGER PRIMARY KEY,_e164 TEXT,_report_id INTEGER,_createtime TEXT,_updatetime TEXT)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS flagNumber (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,createtime DEFAULT( datetime('now') ));");
            boolean unused2 = DbProvider.f12496c = false;
        }

        @Override // net.sqlcipher.database.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            boolean unused = DbProvider.f12496c = true;
            if (i < 14) {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS SearchHistoryDb (_id INTEGER PRIMARY KEY,_number TEXT,_e164 TEXT,_searchtime TEXT,_createtime TEXT,_updatetime TEXT,_status TINYINT,_transaction TINYINT)");
            }
            if (i < 17) {
                sQLiteDatabase.execSQL("CREATE TABLE url_scan (_id INTEGER PRIMARY KEY AUTOINCREMENT,_url TEXT,_number TEXT,_msg TEXT,_apk TINYINT DEFAULT 0,_rating TINYINT DEFAULT 0,_category INTEGER DEFAULT 0,_reporter TEXT,_json TEXT,_status TINYINT DEFAULT 0,_ctime INTEGER DEFAULT 0);");
            }
            if (i < 22) {
                m26411a(sQLiteDatabase, "NewsCenter", "_pushid", "TEXT");
            }
            if (i < 25) {
                String[] strArr = {"%URL Schema Test%", "%點我抽好禮，慶用戶破千萬%", "%爸媽的手機安全嗎？%", "%รูปแบบใหม่ของข้อความหลอกลวง%", "%橋唔怕舊，只怕你認不出來%", "%這陌生來電又是誰？%", "%健保簡訊新花招 ● 2%"};
                StringBuilder sb = new StringBuilder();
                for (int i3 = 0; i3 < strArr.length - 1; i3++) {
                    sb.append("_json LIKE ? OR ");
                }
                sb.append("_json LIKE ?");
                sQLiteDatabase.delete("NewsCenter", sb.toString(), strArr);
            }
            if (i < 26) {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS UnsearchedNumberDb (_id INTEGER PRIMARY KEY,_e164 TEXT,_createtime TEXT,_updatetime TEXT)");
            }
            if (i < 40) {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS TelecomList (_id INTEGER PRIMARY KEY,_region TEXT,_report_id INTEGER,_name TEXT)");
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS TelecomReport (_id INTEGER PRIMARY KEY,_e164 TEXT,_report_id INTEGER,_createtime TEXT,_updatetime TEXT)");
            }
            if (i < 42) {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS flagNumber (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,createtime DEFAULT( datetime('now') ));");
            }
            boolean unused2 = DbProvider.f12496c = false;
        }
    }

    static {
        f12497d.addURI("com.gogolook.whoscall.db", "NewsCenter", 21);
        f12497d.addURI("com.gogolook.whoscall.db", "NewsCenter/#", 22);
        f12497d.addURI("com.gogolook.whoscall.db", "SearchHistoryDb", 32);
        f12497d.addURI("com.gogolook.whoscall.db", "SearchHistoryDb/#", 33);
        f12497d.addURI("com.gogolook.whoscall.db", "url_scan", 40);
        f12497d.addURI("com.gogolook.whoscall.db", "url_scan/#", 41);
        f12497d.addURI("com.gogolook.whoscall.db", "UnsearchedNumberDb", 50);
        f12497d.addURI("com.gogolook.whoscall.db", "UnsearchedNumberDb/#", 51);
        f12497d.addURI("com.gogolook.whoscall.db", "TelecomList", 62);
        f12497d.addURI("com.gogolook.whoscall.db", "TelecomList/#", 63);
        f12497d.addURI("com.gogolook.whoscall.db", "TelecomReport", 64);
        f12497d.addURI("com.gogolook.whoscall.db", "TelecomReport/#", 65);
        f12497d.addURI("com.gogolook.whoscall.db", "flagNumber", 66);
        f12497d.addURI("com.gogolook.whoscall.db", "flagNumber/#", 67);
    }

    @Override // android.content.ContentProvider
    public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> arrayList) throws OperationApplicationException {
        SQLiteDatabase writableDatabase = this.f12498a.getWritableDatabase(C6430c.m22634e());
        writableDatabase.beginTransaction();
        try {
            try {
                ContentProviderResult[] applyBatch = super.applyBatch(arrayList);
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                return applyBatch;
            } catch (OperationApplicationException e) {
                throw e;
            }
        } catch (Throwable th) {
            writableDatabase.endTransaction();
            throw th;
        }
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        C14269g.f31971o.m1955b(getContext());
    }

    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        if (f12497d.match(uri) == -1) {
            throw new IllegalArgumentException("Unknown URI " + uri);
        } else if (contentValuesArr != null) {
            SQLiteDatabase writableDatabase = this.f12498a.getWritableDatabase(C6430c.m22634e());
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() == 1) {
                writableDatabase.beginTransaction();
                int i = 0;
                for (ContentValues contentValues : contentValuesArr) {
                    i = i;
                    if (writableDatabase.insert(pathSegments.get(0), null, contentValues) != -1) {
                        i++;
                    }
                }
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
                getContext().getContentResolver().notifyChange(uri, null);
                return i;
            }
            throw new SQLException("Insert Failed : " + uri);
        } else {
            throw new IllegalArgumentException("ContentValues should not NULL");
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        int i;
        String str2;
        if (f12497d.match(uri) != -1) {
            SQLiteDatabase writableDatabase = this.f12498a.getWritableDatabase(C6430c.m22634e());
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() == 1) {
                i = writableDatabase.delete(pathSegments.get(0), str, strArr);
            } else if (pathSegments.size() == 2) {
                String str3 = pathSegments.get(0);
                StringBuilder sb = new StringBuilder();
                sb.append("_id=");
                sb.append(pathSegments.get(1));
                if (!TextUtils.isEmpty(str)) {
                    str2 = " AND (" + str + ')';
                } else {
                    str2 = "";
                }
                sb.append(str2);
                i = writableDatabase.delete(str3, sb.toString(), strArr);
            } else {
                throw new IllegalArgumentException("Unknown URI " + uri);
            }
            getContext().getContentResolver().notifyChange(uri, null);
            return i;
        }
        throw new IllegalArgumentException("Unknown URI " + uri);
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        if (f12497d.match(uri) == -1) {
            throw new IllegalArgumentException("Unknown URI " + uri);
        } else if (contentValues != null) {
            SQLiteDatabase writableDatabase = this.f12498a.getWritableDatabase(C6430c.m22634e());
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() == 1) {
                long insert = writableDatabase.insert(pathSegments.get(0), null, contentValues);
                if (insert != -1) {
                    Uri withAppendedId = ContentUris.withAppendedId(uri, insert);
                    getContext().getContentResolver().notifyChange(withAppendedId, null);
                    return withAppendedId;
                }
                throw new SQLException("Failed to insert row into " + pathSegments.get(0));
            }
            throw new SQLException("Insert Failed : " + uri);
        } else {
            throw new IllegalArgumentException("ContentValues should not NULL");
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f12498a = new C5053a(getContext());
        return false;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        f12497d.match(uri);
        Log.isLoggable(f12495b, 2);
        Cursor query = query(uri, new String[]{"_data"}, null, null, null);
        int count = query != null ? query.getCount() : 0;
        if (count != 1) {
            if (query != null) {
                query.close();
            }
            if (count == 0) {
                throw new FileNotFoundException("No entry for " + uri);
            }
            throw new FileNotFoundException("Multiple items at " + uri);
        }
        query.moveToFirst();
        int columnIndex = query.getColumnIndex("_data");
        String string = columnIndex >= 0 ? query.getString(columnIndex) : null;
        query.close();
        if (string == null) {
            return null;
        }
        try {
            String canonicalPath = new File(string).getCanonicalPath();
            if (!canonicalPath.startsWith(getContext().getApplicationInfo().dataDir + "/app_parts/")) {
                return null;
            }
            return openFileHelper(uri, str);
        } catch (IOException e) {
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        String str3;
        if (f12497d.match(uri) != -1) {
            SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() == 1) {
                sQLiteQueryBuilder.setTables(pathSegments.get(0));
            } else if (pathSegments.size() == 2) {
                sQLiteQueryBuilder.setTables(pathSegments.get(0));
                StringBuilder sb = new StringBuilder();
                if (TextUtils.isEmpty(str)) {
                    str3 = "";
                } else {
                    str3 = "(" + str + ") AND ";
                }
                sb.append(str3);
                sb.append("_ID = ");
                sb.append(pathSegments.get(1));
                str = sb.toString();
            } else {
                throw new IllegalArgumentException("Unknown URI " + uri);
            }
            if (TextUtils.isEmpty(str2)) {
                str2 = "_id ASC";
            }
            SQLiteDatabase readableDatabase = this.f12498a.getReadableDatabase(C6430c.m22634e());
            if (readableDatabase == null) {
                return null;
            }
            net.sqlcipher.Cursor query = sQLiteQueryBuilder.query(readableDatabase, strArr, str, strArr2, null, null, str2);
            query.setNotificationUri(getContext().getContentResolver(), uri);
            return query;
        }
        throw new IllegalArgumentException("Unknown URI " + uri);
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int i;
        String str2;
        if (f12497d.match(uri) == -1) {
            throw new IllegalArgumentException("Unknown URI " + uri);
        } else if (contentValues != null) {
            SQLiteDatabase writableDatabase = this.f12498a.getWritableDatabase(C6430c.m22634e());
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() == 1) {
                i = writableDatabase.update(pathSegments.get(0), contentValues, str, strArr);
            } else if (pathSegments.size() == 2) {
                String str3 = pathSegments.get(0);
                StringBuilder sb = new StringBuilder();
                sb.append("_id=");
                sb.append(pathSegments.get(1));
                if (!TextUtils.isEmpty(str)) {
                    str2 = " AND (" + str + ')';
                } else {
                    str2 = "";
                }
                sb.append(str2);
                i = writableDatabase.update(str3, contentValues, sb.toString(), strArr);
            } else {
                throw new IllegalArgumentException("Unknown URI " + uri);
            }
            getContext().getContentResolver().notifyChange(uri, null);
            return i;
        } else {
            throw new IllegalArgumentException("ContentValues should not NULL");
        }
    }
}
