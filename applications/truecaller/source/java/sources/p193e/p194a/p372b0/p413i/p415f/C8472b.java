package p193e.p194a.p372b0.p413i.p415f;

import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.log.AssertionUtil;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.b0.i.f.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/i/f/b.class */
public final class C8472b {

    /* renamed from: a */
    public static final String[] f26215a = {"_count"};

    /* renamed from: a */
    public static void m28503a(SQLiteDatabase sQLiteDatabase, String str) {
        m28501c(sQLiteDatabase, "SELECT 'drop ' || type || ' ' || name || ';' FROM sqlite_master WHERE name !='android_metadata' AND type=?", new String[]{str});
    }

    /* renamed from: b */
    public static void m28502b(SQLiteDatabase sQLiteDatabase, Cursor cursor, PrintStream printStream) {
        Cursor query;
        String string = cursor.getString(cursor.getColumnIndexOrThrow("type"));
        String string2 = cursor.getString(cursor.getColumnIndexOrThrow(AnalyticsConstants.NAME));
        String string3 = cursor.getString(cursor.getColumnIndexOrThrow("sql"));
        String str = string3;
        if (string3 == null) {
            str = "<none>";
        }
        printStream.println(String.format("%s, name=%s, sql=%s", string, string2, str));
        if ((ViewAction.VIEW.equals(string) || "table".equals(string)) && (query = sQLiteDatabase.query(string2, null, null, null, null, null, null)) != null) {
            int i = 0;
            while (query.moveToNext()) {
                try {
                    int columnCount = query.getColumnCount();
                    printStream.println(String.format("%s row %d, %d columns", string2, Integer.valueOf(i), Integer.valueOf(columnCount)));
                    for (int i2 = 0; i2 < columnCount; i2++) {
                        printStream.println(String.format("%s=%s", query.getColumnName(i2), query.isNull(i2) ? "NULL" : query.getString(i2)));
                    }
                    i++;
                } finally {
                    query.close();
                }
            }
        }
    }

    /* renamed from: c */
    public static void m28501c(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        Cursor rawQuery = sQLiteDatabase.rawQuery(str, strArr);
        if (rawQuery != null) {
            while (rawQuery.moveToNext()) {
                try {
                    sQLiteDatabase.execSQL(rawQuery.getString(0));
                } finally {
                    rawQuery.close();
                }
            }
        }
    }

    /* renamed from: d */
    public static boolean m28500d(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("SELECT * FROM ");
                sb.append(str);
                sb.append(" LIMIT 0");
                Cursor rawQuery = sQLiteDatabase.rawQuery(sb.toString(), null);
                cursor = rawQuery;
                cursor2 = rawQuery;
                if (rawQuery.getColumnIndex(str2) != -1) {
                    rawQuery.close();
                    return true;
                }
                rawQuery.close();
                return false;
            } catch (Exception e) {
                e.getMessage();
                if (cursor2 == null) {
                    return false;
                }
                cursor2.close();
                return false;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: e */
    public static String m28499e(String str, Map<String, String> map, String... strArr) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strArr.length; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            String str2 = strArr[i];
            sb.append(str);
            sb.append('.');
            sb.append(str2);
            sb.append(" AS ");
            sb.append(str2);
        }
        return sb.toString();
    }

    /* renamed from: f */
    public static String m28498f(Context context, Class<? extends ContentProvider> cls) {
        String str;
        try {
            str = context.getPackageManager().getProviderInfo(new ComponentName(context, cls), 0).authority;
        } catch (PackageManager.NameNotFoundException e) {
            AssertionUtil.shouldNeverHappen(e, new String[0]);
            str = null;
        }
        AssertionUtil.AlwaysFatal.isTrue(!TextUtils.isEmpty(str), new String[0]);
        return str;
    }

    /* renamed from: g */
    public static String m28497g(String str, String... strArr) {
        StringBuilder m8692L = C22128a.m8692L("CREATE INDEX IF NOT EXISTS idx_", str, AnalyticsConstants.DELIMITER_MAIN);
        C22128a.m8666T0(m8692L, TextUtils.join(AnalyticsConstants.DELIMITER_MAIN, strArr), " ON ", str, "(");
        return C22128a.m8618h(m8692L, TextUtils.join(",", strArr), ")");
    }

    /* renamed from: h */
    public static Map<String, Long> m28496h(SQLiteDatabase sQLiteDatabase) {
        Cursor m28495i = m28495i(sQLiteDatabase, "type=?", new String[]{"table"});
        int columnIndexOrThrow = m28495i.getColumnIndexOrThrow(AnalyticsConstants.NAME);
        HashMap hashMap = new HashMap();
        while (m28495i.moveToNext()) {
            try {
                String string = m28495i.getString(columnIndexOrThrow);
                hashMap.put(string, Long.valueOf(DatabaseUtils.queryNumEntries(sQLiteDatabase, string)));
            } finally {
                m28495i.close();
            }
        }
        return hashMap;
    }

    /* renamed from: i */
    public static Cursor m28495i(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        return sQLiteDatabase.query("sqlite_master", null, str, strArr, null, null, null);
    }
}
