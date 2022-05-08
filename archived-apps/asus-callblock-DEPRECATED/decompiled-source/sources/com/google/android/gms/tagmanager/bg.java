package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.common.a.d;
import com.google.android.gms.common.a.e;
import com.google.android.gms.tagmanager.cg;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bg.class */
public final class bg implements aa {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4296a = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL,'%s' INTEGER NOT NULL);", "gtm_hits", "hit_id", "hit_time", "hit_url", "hit_first_send_time");

    /* renamed from: b  reason: collision with root package name */
    private final b f4297b;
    private volatile i c;
    private final ab d;
    private final Context e;
    private final String f;
    private long g;
    private d h;
    private final int i;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bg$a.class */
    final class a implements cg.a {
        a() {
        }

        @Override // com.google.android.gms.tagmanager.cg.a
        public final void a(w wVar) {
            bg.this.a(wVar.f4422a);
        }

        @Override // com.google.android.gms.tagmanager.cg.a
        public final void b(w wVar) {
            bg.this.a(wVar.f4422a);
            an.e(new StringBuilder(57).append("Permanent failure dispatching hitId: ").append(wVar.f4422a).toString());
        }

        @Override // com.google.android.gms.tagmanager.cg.a
        public final void c(w wVar) {
            long j = wVar.f4423b;
            if (j == 0) {
                bg.a(bg.this, wVar.f4422a, bg.this.h.a());
            } else if (j + 14400000 < bg.this.h.a()) {
                bg.this.a(wVar.f4422a);
                an.e(new StringBuilder(47).append("Giving up on failed hitId: ").append(wVar.f4422a).toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bg$b.class */
    public final class b extends SQLiteOpenHelper {

        /* renamed from: b  reason: collision with root package name */
        private boolean f4300b;
        private long c = 0;

        b(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 1);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0075  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static boolean a(java.lang.String r9, android.database.sqlite.SQLiteDatabase r10) {
            /*
                r0 = 0
                r11 = r0
                r0 = r10
                java.lang.String r1 = "SQLITE_MASTER"
                r2 = 1
                java.lang.String[] r2 = new java.lang.String[r2]     // Catch: SQLiteException -> 0x0039, all -> 0x007d
                r3 = r2
                r4 = 0
                java.lang.String r5 = "name"
                r3[r4] = r5     // Catch: SQLiteException -> 0x0039, all -> 0x007d
                java.lang.String r3 = "name=?"
                r4 = 1
                java.lang.String[] r4 = new java.lang.String[r4]     // Catch: SQLiteException -> 0x0039, all -> 0x007d
                r5 = r4
                r6 = 0
                r7 = r9
                r5[r6] = r7     // Catch: SQLiteException -> 0x0039, all -> 0x007d
                r5 = 0
                r6 = 0
                r7 = 0
                android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: SQLiteException -> 0x0039, all -> 0x007d
                r10 = r0
                r0 = r10
                boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0083, SQLiteException -> 0x0087
                r12 = r0
                r0 = r12
                r13 = r0
                r0 = r10
                if (r0 == 0) goto L_0x0036
                r0 = r10
                r0.close()
                r0 = r12
                r13 = r0
            L_0x0036:
                r0 = r13
                return r0
            L_0x0039:
                r10 = move-exception
                r0 = 0
                r10 = r0
            L_0x003c:
                r0 = r9
                java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: all -> 0x0070
                r9 = r0
                r0 = r9
                int r0 = r0.length()     // Catch: all -> 0x0070
                if (r0 == 0) goto L_0x0063
                java.lang.String r0 = "Error querying for table "
                r1 = r9
                java.lang.String r0 = r0.concat(r1)     // Catch: all -> 0x0070
                r9 = r0
            L_0x004f:
                r0 = r9
                com.google.android.gms.tagmanager.an.b(r0)     // Catch: all -> 0x0070
                r0 = r10
                if (r0 == 0) goto L_0x005d
                r0 = r10
                r0.close()
            L_0x005d:
                r0 = 0
                r13 = r0
                goto L_0x0036
            L_0x0063:
                java.lang.String r0 = new java.lang.String     // Catch: all -> 0x0070
                r1 = r0
                java.lang.String r2 = "Error querying for table "
                r1.<init>(r2)     // Catch: all -> 0x0070
                r9 = r0
                goto L_0x004f
            L_0x0070:
                r9 = move-exception
            L_0x0071:
                r0 = r10
                if (r0 == 0) goto L_0x007b
                r0 = r10
                r0.close()
            L_0x007b:
                r0 = r9
                throw r0
            L_0x007d:
                r9 = move-exception
                r0 = r11
                r10 = r0
                goto L_0x0071
            L_0x0083:
                r9 = move-exception
                goto L_0x0071
            L_0x0087:
                r11 = move-exception
                goto L_0x003c
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.bg.b.a(java.lang.String, android.database.sqlite.SQLiteDatabase):boolean");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final SQLiteDatabase getWritableDatabase() {
            if (!this.f4300b || this.c + 3600000 <= bg.this.h.a()) {
                SQLiteDatabase sQLiteDatabase = null;
                this.f4300b = true;
                this.c = bg.this.h.a();
                try {
                    sQLiteDatabase = super.getWritableDatabase();
                } catch (SQLiteException e) {
                    bg.this.e.getDatabasePath(bg.this.f).delete();
                }
                SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
                if (sQLiteDatabase == null) {
                    sQLiteDatabase2 = super.getWritableDatabase();
                }
                this.f4300b = false;
                return sQLiteDatabase2;
            }
            throw new SQLiteException("Database creation failed");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            r.a(sQLiteDatabase.getPath());
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (Build.VERSION.SDK_INT < 15) {
                try {
                    sQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null).moveToFirst();
                } finally {
                }
            }
            if (!a("gtm_hits", sQLiteDatabase)) {
                sQLiteDatabase.execSQL(bg.f4296a);
                return;
            }
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM gtm_hits WHERE 0", null);
            HashSet hashSet = new HashSet();
            try {
                for (String str : rawQuery.getColumnNames()) {
                    hashSet.add(str);
                }
                rawQuery.close();
                if (!hashSet.remove("hit_id") || !hashSet.remove("hit_url") || !hashSet.remove("hit_time") || !hashSet.remove("hit_first_send_time")) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public bg(ab abVar, Context context) {
        this(abVar, context, "gtm_urls.db");
    }

    private bg(ab abVar, Context context, String str) {
        this.e = context.getApplicationContext();
        this.f = str;
        this.d = abVar;
        this.h = e.c();
        this.f4297b = new b(this.e, this.f);
        this.c = new cg(this.e, new a());
        this.g = 0L;
        this.i = 2000;
    }

    private SQLiteDatabase a(String str) {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = this.f4297b.getWritableDatabase();
        } catch (SQLiteException e) {
            an.b(str);
            sQLiteDatabase = null;
        }
        return sQLiteDatabase;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<java.lang.String> a(int r11) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.bg.a(int):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j) {
        a(new String[]{String.valueOf(j)});
    }

    static /* synthetic */ void a(bg bgVar, long j, long j2) {
        SQLiteDatabase a2 = bgVar.a("Error opening database for getNumStoredHits.");
        if (a2 != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("hit_first_send_time", Long.valueOf(j2));
            try {
                a2.update("gtm_hits", contentValues, "hit_id=?", new String[]{String.valueOf(j)});
            } catch (SQLiteException e) {
                an.b(new StringBuilder(69).append("Error setting HIT_FIRST_DISPATCH_TIME for hitId: ").append(j).toString());
                bgVar.a(j);
            }
        }
    }

    private void a(String[] strArr) {
        SQLiteDatabase a2;
        boolean z = true;
        if (strArr != null && strArr.length != 0 && (a2 = a("Error opening database for deleteHits.")) != null) {
            try {
                a2.delete("gtm_hits", String.format("HIT_ID in (%s)", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))), strArr);
                ab abVar = this.d;
                if (d() != 0) {
                    z = false;
                }
                abVar.a(z);
            } catch (SQLiteException e) {
                an.b("Error deleting hits");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0185  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<com.google.android.gms.tagmanager.w> c() {
        /*
            Method dump skipped, instructions count: 697
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.bg.c():java.util.List");
    }

    private int d() {
        int i;
        Cursor cursor = null;
        Cursor cursor2 = null;
        int i2 = 0;
        SQLiteDatabase a2 = a("Error opening database for getNumStoredHits.");
        if (a2 == null) {
            i = 0;
        } else {
            try {
                try {
                    Cursor rawQuery = a2.rawQuery("SELECT COUNT(*) from gtm_hits", null);
                    if (rawQuery.moveToFirst()) {
                        cursor2 = rawQuery;
                        cursor = rawQuery;
                        i2 = (int) rawQuery.getLong(0);
                    }
                    i = i2;
                    if (rawQuery != null) {
                        rawQuery.close();
                        i = i2;
                    }
                } catch (SQLiteException e) {
                    cursor = cursor2;
                    an.b("Error getting numStoredHits");
                    i = 0;
                    if (cursor2 != null) {
                        cursor2.close();
                        i = 0;
                    }
                }
            } catch (Throwable th) {
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int e() {
        /*
            r9 = this;
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r9
            java.lang.String r1 = "Error opening database for getNumStoredHits."
            android.database.sqlite.SQLiteDatabase r0 = r0.a(r1)
            r12 = r0
            r0 = r12
            if (r0 != 0) goto L_0x0011
        L_0x000f:
            r0 = r10
            return r0
        L_0x0011:
            r0 = r12
            java.lang.String r1 = "gtm_hits"
            r2 = 2
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: SQLiteException -> 0x0048, all -> 0x0060
            r3 = r2
            r4 = 0
            java.lang.String r5 = "hit_id"
            r3[r4] = r5     // Catch: SQLiteException -> 0x0048, all -> 0x0060
            r3 = r2
            r4 = 1
            java.lang.String r5 = "hit_first_send_time"
            r3[r4] = r5     // Catch: SQLiteException -> 0x0048, all -> 0x0060
            java.lang.String r3 = "hit_first_send_time=0"
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: SQLiteException -> 0x0048, all -> 0x0060
            r12 = r0
            r0 = r12
            int r0 = r0.getCount()     // Catch: all -> 0x006d, SQLiteException -> 0x0083
            r13 = r0
            r0 = r13
            r10 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0045
            r0 = r12
            r0.close()
            r0 = r13
            r10 = r0
        L_0x0045:
            goto L_0x000f
        L_0x0048:
            r12 = move-exception
            r0 = 0
            r12 = r0
        L_0x004b:
            java.lang.String r0 = "Error getting num untried hits"
            com.google.android.gms.tagmanager.an.b(r0)     // Catch: all -> 0x0079
            r0 = r12
            if (r0 == 0) goto L_0x0087
            r0 = r12
            r0.close()
            r0 = 0
            r10 = r0
            goto L_0x0045
        L_0x0060:
            r12 = move-exception
        L_0x0061:
            r0 = r11
            if (r0 == 0) goto L_0x006b
            r0 = r11
            r0.close()
        L_0x006b:
            r0 = r12
            throw r0
        L_0x006d:
            r11 = move-exception
            r0 = r12
            r14 = r0
            r0 = r11
            r12 = r0
            r0 = r14
            r11 = r0
            goto L_0x0061
        L_0x0079:
            r14 = move-exception
            r0 = r12
            r11 = r0
            r0 = r14
            r12 = r0
            goto L_0x0061
        L_0x0083:
            r11 = move-exception
            goto L_0x004b
        L_0x0087:
            r0 = 0
            r10 = r0
            goto L_0x0045
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.bg.e():int");
    }

    @Override // com.google.android.gms.tagmanager.aa
    public final void a() {
        an.e("GTM Dispatch running...");
        if (this.c.a()) {
            List<w> c = c();
            if (c.isEmpty()) {
                an.e("...nothing to dispatch");
                this.d.a(true);
                return;
            }
            this.c.a(c);
            if (e() > 0) {
                cd.c().a();
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.aa
    public final void a(long j, String str) {
        boolean z = true;
        long a2 = this.h.a();
        if (a2 > this.g + 86400000) {
            this.g = a2;
            SQLiteDatabase a3 = a("Error opening database for deleteStaleHits.");
            if (a3 != null) {
                a3.delete("gtm_hits", "HIT_TIME < ?", new String[]{Long.toString(this.h.a() - 2592000000L)});
                ab abVar = this.d;
                if (d() != 0) {
                    z = false;
                }
                abVar.a(z);
            }
        }
        int d = (d() - this.i) + 1;
        if (d > 0) {
            List<String> a4 = a(d);
            an.e(new StringBuilder(51).append("Store full, deleting ").append(a4.size()).append(" hits to make room.").toString());
            a((String[]) a4.toArray(new String[0]));
        }
        SQLiteDatabase a5 = a("Error opening database for putHit");
        if (a5 != null) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("hit_time", Long.valueOf(j));
            contentValues.put("hit_url", str);
            contentValues.put("hit_first_send_time", (Integer) 0);
            try {
                a5.insert("gtm_hits", null, contentValues);
                this.d.a(false);
            } catch (SQLiteException e) {
                an.b("Error storing hit");
            }
        }
    }
}
