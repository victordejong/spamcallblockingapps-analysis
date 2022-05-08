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
import com.google.android.gms.tagmanager.c;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dk.class */
public final class dk implements c.AbstractC0131c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4387a = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' STRING NOT NULL, '%s' BLOB NOT NULL, '%s' INTEGER NOT NULL);", "datalayer", "ID", "key", "value", "expires");

    /* renamed from: b  reason: collision with root package name */
    private final Executor f4388b;
    private final Context c;
    private a d;
    private d e;
    private int f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dk$a.class */
    public final class a extends SQLiteOpenHelper {
        a(Context context, String str) {
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.dk.a.a(java.lang.String, android.database.sqlite.SQLiteDatabase):boolean");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final SQLiteDatabase getWritableDatabase() {
            SQLiteDatabase sQLiteDatabase = null;
            try {
                sQLiteDatabase = super.getWritableDatabase();
            } catch (SQLiteException e) {
                dk.this.c.getDatabasePath("google_tagmanager.db").delete();
            }
            SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
            if (sQLiteDatabase == null) {
                sQLiteDatabase2 = super.getWritableDatabase();
            }
            return sQLiteDatabase2;
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
            if (!a("datalayer", sQLiteDatabase)) {
                sQLiteDatabase.execSQL(dk.f4387a);
                return;
            }
            Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT * FROM datalayer WHERE 0", null);
            HashSet hashSet = new HashSet();
            try {
                for (String str : rawQuery.getColumnNames()) {
                    hashSet.add(str);
                }
                rawQuery.close();
                if (!hashSet.remove("key") || !hashSet.remove("value") || !hashSet.remove("ID") || !hashSet.remove("expires")) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dk$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final String f4396a;

        /* renamed from: b  reason: collision with root package name */
        final byte[] f4397b;

        b(String str, byte[] bArr) {
            this.f4396a = str;
            this.f4397b = bArr;
        }

        public final String toString() {
            String str = this.f4396a;
            return new StringBuilder(String.valueOf(str).length() + 54).append("KeyAndSerialized: key = ").append(str).append(" serialized hash = ").append(Arrays.hashCode(this.f4397b)).toString();
        }
    }

    public dk(Context context) {
        this(context, e.c(), "google_tagmanager.db", Executors.newSingleThreadExecutor());
    }

    private dk(Context context, d dVar, String str, Executor executor) {
        this.c = context;
        this.e = dVar;
        this.f = 2000;
        this.f4388b = executor;
        this.d = new a(this.c, str);
    }

    private static Object a(byte[] bArr) {
        ObjectInputStream objectInputStream;
        Throwable th;
        ObjectInputStream objectInputStream2;
        Object obj = null;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            objectInputStream2 = new ObjectInputStream(byteArrayInputStream);
            try {
                obj = objectInputStream2.readObject();
                try {
                    objectInputStream2.close();
                    byteArrayInputStream.close();
                } catch (IOException e) {
                }
            } catch (IOException e2) {
                if (objectInputStream2 != null) {
                    try {
                        objectInputStream2.close();
                    } catch (IOException e3) {
                    }
                }
                byteArrayInputStream.close();
                return obj;
            } catch (ClassNotFoundException e4) {
                if (objectInputStream2 != null) {
                    try {
                        objectInputStream2.close();
                    } catch (IOException e5) {
                    }
                }
                byteArrayInputStream.close();
                return obj;
            } catch (Throwable th2) {
                th = th2;
                objectInputStream = objectInputStream2;
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e6) {
                        throw th;
                    }
                }
                byteArrayInputStream.close();
                throw th;
            }
        } catch (IOException e7) {
            objectInputStream2 = null;
        } catch (ClassNotFoundException e8) {
            objectInputStream2 = null;
        } catch (Throwable th3) {
            th = th3;
            objectInputStream = null;
        }
        return obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<java.lang.String> a(int r11) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.dk.a(int):java.util.List");
    }

    private void a(long j) {
        SQLiteDatabase b2 = b("Error opening database for deleteOlderThan.");
        if (b2 != null) {
            try {
                an.e(new StringBuilder(33).append("Deleted ").append(b2.delete("datalayer", "expires <= ?", new String[]{Long.toString(j)})).append(" expired items").toString());
            } catch (SQLiteException e) {
                an.b("Error deleting old entries.");
            }
        }
    }

    static /* synthetic */ void a(dk dkVar, String str) {
        SQLiteDatabase b2 = dkVar.b("Error opening database for clearKeysWithPrefix.");
        try {
        } catch (SQLiteException e) {
            String valueOf = String.valueOf(e);
            an.b(new StringBuilder(String.valueOf(str).length() + 44 + String.valueOf(valueOf).length()).append("Error deleting entries with key prefix: ").append(str).append(" (").append(valueOf).append(").").toString());
        } finally {
            dkVar.e();
        }
        if (b2 != null) {
            an.e(new StringBuilder(25).append("Cleared ").append(b2.delete("datalayer", "key = ? OR key LIKE ?", new String[]{str, String.valueOf(str).concat(".%")})).append(" items").toString());
        }
    }

    private static byte[] a(Object obj) {
        ObjectOutputStream objectOutputStream;
        Throwable th;
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeObject(obj);
                bArr = byteArrayOutputStream.toByteArray();
                try {
                    objectOutputStream.close();
                    byteArrayOutputStream.close();
                } catch (IOException e) {
                }
            } catch (IOException e2) {
                if (objectOutputStream != null) {
                    try {
                        objectOutputStream.close();
                    } catch (IOException e3) {
                        bArr = null;
                    }
                }
                byteArrayOutputStream.close();
                bArr = null;
                return bArr;
            } catch (Throwable th2) {
                th = th2;
                if (objectOutputStream != null) {
                    try {
                        objectOutputStream.close();
                    } catch (IOException e4) {
                        throw th;
                    }
                }
                byteArrayOutputStream.close();
                throw th;
            }
        } catch (IOException e5) {
            objectOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream = null;
        }
        return bArr;
    }

    private SQLiteDatabase b(String str) {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = this.d.getWritableDatabase();
        } catch (SQLiteException e) {
            an.b(str);
            sQLiteDatabase = null;
        }
        return sQLiteDatabase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<c.a> b() {
        try {
            a(this.e.a());
            List<b> c = c();
            ArrayList arrayList = new ArrayList();
            for (b bVar : c) {
                arrayList.add(new c.a(bVar.f4396a, a(bVar.f4397b)));
            }
            return arrayList;
        } finally {
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List<b> list, long j) {
        SQLiteDatabase b2;
        synchronized (this) {
            long a2 = this.e.a();
            a(a2);
            int size = list.size() + (d() - this.f);
            if (size > 0) {
                List<String> a3 = a(size);
                an.c(new StringBuilder(64).append("DataLayer store full, deleting ").append(a3.size()).append(" entries to make room.").toString());
                String[] strArr = (String[]) a3.toArray(new String[0]);
                if (!(strArr == null || strArr.length == 0 || (b2 = b("Error opening database for deleteEntries.")) == null)) {
                    try {
                        b2.delete("datalayer", String.format("%s in (%s)", "ID", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))), strArr);
                    } catch (SQLiteException e) {
                        String valueOf = String.valueOf(Arrays.toString(strArr));
                        an.b(valueOf.length() != 0 ? "Error deleting entries ".concat(valueOf) : new String("Error deleting entries "));
                    }
                }
            }
            c(list, a2 + j);
            e();
        }
    }

    private List<b> c() {
        SQLiteDatabase b2 = b("Error opening database for loadSerialized.");
        ArrayList arrayList = new ArrayList();
        if (b2 != null) {
            Cursor query = b2.query("datalayer", new String[]{"key", "value"}, null, null, null, null, "ID", null);
            while (query.moveToNext()) {
                try {
                    arrayList.add(new b(query.getString(0), query.getBlob(1)));
                } finally {
                    query.close();
                }
            }
        }
        return arrayList;
    }

    private void c(List<b> list, long j) {
        SQLiteDatabase b2 = b("Error opening database for writeEntryToDatabase.");
        if (b2 != null) {
            for (b bVar : list) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("expires", Long.valueOf(j));
                contentValues.put("key", bVar.f4396a);
                contentValues.put("value", bVar.f4397b);
                b2.insert("datalayer", null, contentValues);
            }
        }
    }

    private int d() {
        int i;
        Cursor cursor = null;
        Cursor cursor2 = null;
        int i2 = 0;
        SQLiteDatabase b2 = b("Error opening database for getNumStoredEntries.");
        try {
            if (b2 == null) {
                i = 0;
            } else {
                try {
                    Cursor rawQuery = b2.rawQuery("SELECT COUNT(*) from datalayer", null);
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
                    an.b("Error getting numStoredEntries");
                    i = 0;
                    if (cursor2 != null) {
                        cursor2.close();
                        i = 0;
                    }
                }
            }
            return i;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private void e() {
        try {
            this.d.close();
        } catch (SQLiteException e) {
        }
    }

    @Override // com.google.android.gms.tagmanager.c.AbstractC0131c
    public final void a(final c.AbstractC0131c.a aVar) {
        this.f4388b.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.dk.2
            @Override // java.lang.Runnable
            public final void run() {
                aVar.a(dk.this.b());
            }
        });
    }

    @Override // com.google.android.gms.tagmanager.c.AbstractC0131c
    public final void a(final String str) {
        this.f4388b.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.dk.3
            @Override // java.lang.Runnable
            public final void run() {
                dk.a(dk.this, str);
            }
        });
    }

    @Override // com.google.android.gms.tagmanager.c.AbstractC0131c
    public final void a(List<c.a> list, final long j) {
        final ArrayList arrayList = new ArrayList();
        for (c.a aVar : list) {
            arrayList.add(new b(aVar.f4338a, a(aVar.f4339b)));
        }
        this.f4388b.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.dk.1
            @Override // java.lang.Runnable
            public final void run() {
                dk.this.b(arrayList, j);
            }
        });
    }
}
