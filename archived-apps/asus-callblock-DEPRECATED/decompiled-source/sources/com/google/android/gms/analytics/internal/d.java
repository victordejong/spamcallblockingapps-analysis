package com.google.android.gms.analytics.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.common.a.i;
import com.google.android.gms.common.internal.b;
import java.io.Closeable;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/d.class */
public final class d extends zzd implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3804a = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id");

    /* renamed from: b  reason: collision with root package name */
    private static final String f3805b = String.format("SELECT MAX(%s) FROM %s WHERE 1;", "hit_time", "hits2");
    private final a c;
    private final c d = new c(zzlQ());
    private final c e = new c(zzlQ());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/d$a.class */
    public final class a extends SQLiteOpenHelper {
        a(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        }

        private static void a(SQLiteDatabase sQLiteDatabase) {
            Set<String> b2 = b(sQLiteDatabase, "properties");
            for (int i = 0; i < 6; i++) {
                String str = new String[]{"app_uid", "cid", "tid", "params", "adid", "hits_count"}[i];
                if (!b2.remove(str)) {
                    String valueOf = String.valueOf(str);
                    throw new SQLiteException(valueOf.length() != 0 ? "Database properties is missing required column: ".concat(valueOf) : new String("Database properties is missing required column: "));
                }
            }
            if (!b2.isEmpty()) {
                throw new SQLiteException("Database properties table has extra columns");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
        /* JADX WARN: Type inference failed for: r11v3, types: [android.database.Cursor] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r11v5 */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean a(android.database.sqlite.SQLiteDatabase r10, java.lang.String r11) {
            /*
                r9 = this;
                r0 = 0
                r12 = r0
                r0 = r10
                java.lang.String r1 = "SQLITE_MASTER"
                r2 = 1
                java.lang.String[] r2 = new java.lang.String[r2]     // Catch: SQLiteException -> 0x0040, all -> 0x0062
                r3 = r2
                r4 = 0
                java.lang.String r5 = "name"
                r3[r4] = r5     // Catch: SQLiteException -> 0x0040, all -> 0x0062
                java.lang.String r3 = "name=?"
                r4 = 1
                java.lang.String[] r4 = new java.lang.String[r4]     // Catch: SQLiteException -> 0x0040, all -> 0x0062
                r5 = r4
                r6 = 0
                r7 = r11
                r5[r6] = r7     // Catch: SQLiteException -> 0x0040, all -> 0x0062
                r5 = 0
                r6 = 0
                r7 = 0
                android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: SQLiteException -> 0x0040, all -> 0x0062
                r10 = r0
                r0 = r10
                r12 = r0
                r0 = r12
                r10 = r0
                r0 = r12
                boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0071, SQLiteException -> 0x007b
                r13 = r0
                r0 = r13
                r14 = r0
                r0 = r12
                if (r0 == 0) goto L_0x003d
                r0 = r12
                r0.close()
                r0 = r13
                r14 = r0
            L_0x003d:
                r0 = r14
                return r0
            L_0x0040:
                r15 = move-exception
                r0 = 0
                r12 = r0
            L_0x0044:
                r0 = r12
                r10 = r0
                r0 = r9
                com.google.android.gms.analytics.internal.d r0 = com.google.android.gms.analytics.internal.d.this     // Catch: all -> 0x0071
                java.lang.String r1 = "Error querying for table"
                r2 = r11
                r3 = r15
                r0.zzc(r1, r2, r3)     // Catch: all -> 0x0071
                r0 = r12
                if (r0 == 0) goto L_0x005c
                r0 = r12
                r0.close()
            L_0x005c:
                r0 = 0
                r14 = r0
                goto L_0x003d
            L_0x0062:
                r10 = move-exception
                r0 = r12
                r11 = r0
            L_0x0065:
                r0 = r11
                if (r0 == 0) goto L_0x006f
                r0 = r11
                r0.close()
            L_0x006f:
                r0 = r10
                throw r0
            L_0x0071:
                r11 = move-exception
                r0 = r10
                r12 = r0
                r0 = r11
                r10 = r0
                r0 = r12
                r11 = r0
                goto L_0x0065
            L_0x007b:
                r15 = move-exception
                goto L_0x0044
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.d.a.a(android.database.sqlite.SQLiteDatabase, java.lang.String):boolean");
        }

        private static Set<String> b(SQLiteDatabase sQLiteDatabase, String str) {
            HashSet hashSet = new HashSet();
            Cursor rawQuery = sQLiteDatabase.rawQuery(new StringBuilder(String.valueOf(str).length() + 22).append("SELECT * FROM ").append(str).append(" LIMIT 0").toString(), null);
            try {
                for (String str2 : rawQuery.getColumnNames()) {
                    hashSet.add(str2);
                }
                return hashSet;
            } finally {
                rawQuery.close();
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final SQLiteDatabase getWritableDatabase() {
            SQLiteDatabase writableDatabase;
            if (!d.this.e.a(3600000L)) {
                throw new SQLiteException("Database open failed");
            }
            try {
                writableDatabase = super.getWritableDatabase();
            } catch (SQLiteException e) {
                d.this.e.a();
                d.this.zzbK("Opening the database failed, dropping the table and recreating it");
                d.this.getContext().getDatabasePath(d.this.m()).delete();
                try {
                    writableDatabase = super.getWritableDatabase();
                    d.this.e.f3802a = 0L;
                } catch (SQLiteException e2) {
                    d.this.zze("Failed to open freshly created database", e2);
                    throw e2;
                }
            }
            return writableDatabase;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            zzx.zzbR(sQLiteDatabase.getPath());
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onOpen(SQLiteDatabase sQLiteDatabase) {
            boolean z = true;
            if (Build.VERSION.SDK_INT < 15) {
                Cursor rawQuery = sQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
                try {
                    rawQuery.moveToFirst();
                } finally {
                    rawQuery.close();
                }
            }
            if (!a(sQLiteDatabase, "hits2")) {
                sQLiteDatabase.execSQL(d.f3804a);
            } else {
                Set<String> b2 = b(sQLiteDatabase, "hits2");
                for (int i = 0; i < 4; i++) {
                    String str = new String[]{"hit_id", "hit_string", "hit_time", "hit_url"}[i];
                    if (!b2.remove(str)) {
                        String valueOf = String.valueOf(str);
                        throw new SQLiteException(valueOf.length() != 0 ? "Database hits2 is missing required column: ".concat(valueOf) : new String("Database hits2 is missing required column: "));
                    }
                }
                if (b2.remove("hit_app_id")) {
                    z = false;
                }
                if (!b2.isEmpty()) {
                    throw new SQLiteException("Database hits2 has extra columns");
                } else if (z) {
                    sQLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id INTEGER");
                }
            }
            if (!a(sQLiteDatabase, "properties")) {
                sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS properties ( app_uid INTEGER NOT NULL, cid TEXT NOT NULL, tid TEXT NOT NULL, params TEXT NOT NULL, adid INTEGER NOT NULL, hits_count INTEGER NOT NULL, PRIMARY KEY (app_uid, cid, tid)) ;");
            } else {
                a(sQLiteDatabase);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(zzf zzfVar) {
        super(zzfVar);
        this.c = new a(zzfVar.getContext(), m());
    }

    private long a(String str) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = l().rawQuery(str, null);
                if (rawQuery.moveToFirst()) {
                    long j = rawQuery.getLong(0);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return j;
                }
                throw new SQLiteException("Database returned empty set");
            } catch (SQLiteException e) {
                zzd("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long a(java.lang.String r6, java.lang.String[] r7) {
        /*
            r5 = this;
            r0 = r5
            android.database.sqlite.SQLiteDatabase r0 = r0.l()
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r8
            r1 = r6
            r2 = r7
            android.database.Cursor r0 = r0.rawQuery(r1, r2)     // Catch: SQLiteException -> 0x0049, all -> 0x005d
            r7 = r0
            r0 = r7
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x006c, SQLiteException -> 0x0073
            if (r0 == 0) goto L_0x0039
            r0 = r7
            r1 = 0
            long r0 = r0.getLong(r1)     // Catch: all -> 0x006c, SQLiteException -> 0x0073
            r11 = r0
            r0 = r11
            r13 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0036
            r0 = r7
            r0.close()
            r0 = r11
            r13 = r0
        L_0x0036:
            r0 = r13
            return r0
        L_0x0039:
            r0 = r7
            if (r0 == 0) goto L_0x0043
            r0 = r7
            r0.close()
        L_0x0043:
            r0 = 0
            r13 = r0
            goto L_0x0036
        L_0x0049:
            r8 = move-exception
            r0 = r10
            r7 = r0
        L_0x004d:
            r0 = r7
            r9 = r0
            r0 = r5
            java.lang.String r1 = "Database error"
            r2 = r6
            r3 = r8
            r0.zzd(r1, r2, r3)     // Catch: all -> 0x005d
            r0 = r7
            r9 = r0
            r0 = r8
            throw r0     // Catch: all -> 0x005d
        L_0x005d:
            r6 = move-exception
        L_0x005e:
            r0 = r9
            if (r0 == 0) goto L_0x006a
            r0 = r9
            r0.close()
        L_0x006a:
            r0 = r6
            throw r0
        L_0x006c:
            r6 = move-exception
            r0 = r7
            r9 = r0
            goto L_0x005e
        L_0x0073:
            r8 = move-exception
            goto L_0x004d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.d.a(java.lang.String, java.lang.String[]):long");
    }

    private Map<String, String> b(String str) {
        Map<String, String> hashMap;
        if (TextUtils.isEmpty(str)) {
            hashMap = new HashMap<>(0);
        } else {
            try {
                if (!str.startsWith("?")) {
                    String valueOf = String.valueOf(str);
                    str = valueOf.length() != 0 ? "?".concat(valueOf) : new String("?");
                }
                hashMap = i.a(new URI(str), "UTF-8");
            } catch (URISyntaxException e) {
                zze("Error parsing hit parameters", e);
                hashMap = new HashMap<>(0);
            }
        }
        return hashMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<java.lang.Long> c(long r11) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.d.c(long):java.util.List");
    }

    private Map<String, String> c(String str) {
        Map<String, String> hashMap;
        if (TextUtils.isEmpty(str)) {
            hashMap = new HashMap<>(0);
        } else {
            try {
                String valueOf = String.valueOf(str);
                hashMap = i.a(new URI(valueOf.length() != 0 ? "?".concat(valueOf) : new String("?")), "UTF-8");
            } catch (URISyntaxException e) {
                zze("Error parsing property parameters", e);
                hashMap = new HashMap<>(0);
            }
        }
        return hashMap;
    }

    private long k() {
        zzkN();
        zzma();
        return a("SELECT COUNT(*) FROM hits2");
    }

    private SQLiteDatabase l() {
        try {
            return this.c.getWritableDatabase();
        } catch (SQLiteException e) {
            zzd("Error opening database", e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String m() {
        return !zzlS().zzmW() ? zzlS().zznw() : zzlS().zzmX() ? zzlS().zznw() : zzlS().zznx();
    }

    public final long a(long j, String str, String str2) {
        b.a(str);
        b.a(str2);
        zzma();
        zzkN();
        return a("SELECT hits_count FROM properties WHERE app_uid=? AND cid=? AND tid=?", new String[]{String.valueOf(j), str, str2});
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x014d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.analytics.internal.zzab> a(long r11) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.d.a(long):java.util.List");
    }

    public final void a() {
        zzma();
        l().beginTransaction();
    }

    public final void a(long j, String str) {
        b.a(str);
        zzma();
        zzkN();
        int delete = l().delete("properties", "app_uid=? AND cid<>?", new String[]{String.valueOf(j), str});
        if (delete > 0) {
            zza("Deleted property records", Integer.valueOf(delete));
        }
    }

    public final void a(zzab zzabVar) {
        b.a(zzabVar);
        zzkN();
        zzma();
        b.a(zzabVar);
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry<String, String> entry : zzabVar.zzm().entrySet()) {
            String key = entry.getKey();
            if (!"ht".equals(key) && !"qt".equals(key) && !"AppUID".equals(key)) {
                builder.appendQueryParameter(key, entry.getValue());
            }
        }
        String encodedQuery = builder.build().getEncodedQuery();
        String str = encodedQuery;
        if (encodedQuery == null) {
            str = BuildConfig.FLAVOR;
        }
        if (str.length() > 8192) {
            zzlR().zza(zzabVar, "Hit length exceeds the maximum allowed size");
            return;
        }
        int zznu = zzlS().zznu();
        long k = k();
        if (k > zznu - 1) {
            List<Long> c = c((k - zznu) + 1);
            zzd("Store full, deleting hits to make room, count", Integer.valueOf(c.size()));
            a(c);
        }
        SQLiteDatabase l = l();
        ContentValues contentValues = new ContentValues();
        contentValues.put("hit_string", str);
        contentValues.put("hit_time", Long.valueOf(zzabVar.zznT()));
        contentValues.put("hit_app_id", Integer.valueOf(zzabVar.zznR()));
        contentValues.put("hit_url", zzabVar.zznV() ? zzlS().zznk() : zzlS().zznl());
        try {
            long insert = l.insert("hits2", null, contentValues);
            if (insert == -1) {
                zzbK("Failed to insert a hit (got -1)");
            } else {
                zzb("Hit saved to database. db-id, hit", Long.valueOf(insert), zzabVar);
            }
        } catch (SQLiteException e) {
            zze("Error storing a hit", e);
        }
    }

    public final void a(zzh zzhVar) {
        b.a(zzhVar);
        zzma();
        zzkN();
        SQLiteDatabase l = l();
        Map<String, String> zzm = zzhVar.zzm();
        b.a(zzm);
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry<String, String> entry : zzm.entrySet()) {
            builder.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String encodedQuery = builder.build().getEncodedQuery();
        String str = encodedQuery;
        if (encodedQuery == null) {
            str = BuildConfig.FLAVOR;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_uid", Long.valueOf(zzhVar.zzmi()));
        contentValues.put("cid", zzhVar.zzku());
        contentValues.put("tid", zzhVar.zzmj());
        contentValues.put("adid", Integer.valueOf(zzhVar.zzmk() ? 1 : 0));
        contentValues.put("hits_count", Long.valueOf(zzhVar.zzml()));
        contentValues.put("params", str);
        try {
            if (l.insertWithOnConflict("properties", null, contentValues, 5) == -1) {
                zzbK("Failed to insert/update a property (got -1)");
            }
        } catch (SQLiteException e) {
            zze("Error storing a property", e);
        }
    }

    public final void a(List<Long> list) {
        b.a(list);
        zzkN();
        zzma();
        if (!list.isEmpty()) {
            StringBuilder sb = new StringBuilder("hit_id");
            sb.append(" in (");
            for (int i = 0; i < list.size(); i++) {
                Long l = list.get(i);
                if (l == null || l.longValue() == 0) {
                    throw new SQLiteException("Invalid hit id");
                }
                if (i > 0) {
                    sb.append(",");
                }
                sb.append(l);
            }
            sb.append(")");
            String sb2 = sb.toString();
            try {
                SQLiteDatabase l2 = l();
                zza("Deleting dispatched hits. count", Integer.valueOf(list.size()));
                int delete = l2.delete("hits2", sb2, null);
                if (delete != list.size()) {
                    zzb("Deleted fewer hits then expected", Integer.valueOf(list.size()), Integer.valueOf(delete), sb2);
                }
            } catch (SQLiteException e) {
                zze("Error deleting hits", e);
                throw e;
            }
        }
    }

    public final void b() {
        zzma();
        l().setTransactionSuccessful();
    }

    public final void b(long j) {
        zzkN();
        zzma();
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Long.valueOf(j));
        zza("Deleting hit, id", Long.valueOf(j));
        a((List<Long>) arrayList);
    }

    public final void c() {
        zzma();
        l().endTransaction();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.c.close();
        } catch (SQLiteException e) {
            zze("Sql error closing database", e);
        } catch (IllegalStateException e2) {
            zze("Error closing database", e2);
        }
    }

    public final void d() {
        zzkN();
        zzma();
        l().delete("hits2", null, null);
    }

    public final void e() {
        zzkN();
        zzma();
        l().delete("properties", null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean f() {
        return k() == 0;
    }

    public final int g() {
        int i = 0;
        zzkN();
        zzma();
        if (this.d.a(86400000L)) {
            this.d.a();
            zzbG("Deleting stale hits (if any)");
            i = l().delete("hits2", "hit_time < ?", new String[]{Long.toString(zzlQ().a() - 2592000000L)});
            zza("Deleted stale hits, count", Integer.valueOf(i));
        }
        return i;
    }

    public final long h() {
        zzkN();
        zzma();
        return a(f3805b, (String[]) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0141  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.analytics.internal.zzh> i() {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.d.i():java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.internal.zzd
    public final void zzkO() {
    }
}
