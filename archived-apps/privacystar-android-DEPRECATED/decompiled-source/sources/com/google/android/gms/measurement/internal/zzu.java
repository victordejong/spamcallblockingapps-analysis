package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzu.class */
public final class zzu {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzap zzapVar, SQLiteDatabase sQLiteDatabase) {
        if (zzapVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        File file = new File(sQLiteDatabase.getPath());
        if (!file.setReadable(false, false)) {
            zzapVar.zzjg().zzbx("Failed to turn off database read permission");
        }
        if (!file.setWritable(false, false)) {
            zzapVar.zzjg().zzbx("Failed to turn off database write permission");
        }
        if (!file.setReadable(true, true)) {
            zzapVar.zzjg().zzbx("Failed to turn on database read permission for owner");
        }
        if (!file.setWritable(true, true)) {
            zzapVar.zzjg().zzbx("Failed to turn on database write permission for owner");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public static void zza(zzap zzapVar, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) throws SQLiteException {
        String[] split;
        if (zzapVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        if (!zza(zzapVar, sQLiteDatabase, str)) {
            sQLiteDatabase.execSQL(str2);
        }
        try {
            if (zzapVar == null) {
                throw new IllegalArgumentException("Monitor must not be null");
            }
            Set<String> zzb = zzb(sQLiteDatabase, str);
            for (String str4 : str3.split(",")) {
                if (!zzb.remove(str4)) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 35 + String.valueOf(str4).length());
                    sb.append("Table ");
                    sb.append(str);
                    sb.append(" is missing required column: ");
                    sb.append(str4);
                    throw new SQLiteException(sb.toString());
                }
            }
            if (strArr != null) {
                for (int i = 0; i < strArr.length; i += 2) {
                    if (!zzb.remove(strArr[i])) {
                        sQLiteDatabase.execSQL(strArr[i + 1]);
                    }
                }
            }
            if (!zzb.isEmpty()) {
                zzapVar.zzjg().zze("Table has extra columns. table, columns", str, TextUtils.join(", ", zzb));
            }
        } catch (SQLiteException e) {
            zzapVar.zzjd().zzg("Failed to verify columns on table that was just created", str);
            throw e;
        }
    }

    @WorkerThread
    private static boolean zza(zzap zzapVar, SQLiteDatabase sQLiteDatabase, String str) {
        Throwable th;
        SQLiteException e;
        if (zzapVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SQLiteException e2) {
            e = e2;
        }
        try {
            boolean moveToFirst = cursor.moveToFirst();
            if (cursor != null) {
                cursor.close();
            }
            return moveToFirst;
        } catch (SQLiteException e3) {
            e = e3;
            zzapVar.zzjg().zze("Error querying for table", str, e);
            if (cursor == null) {
                return false;
            }
            cursor.close();
            return false;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = cursor;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    @WorkerThread
    private static Set<String> zzb(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
        sb.append("SELECT * FROM ");
        sb.append(str);
        sb.append(" LIMIT 0");
        Cursor rawQuery = sQLiteDatabase.rawQuery(sb.toString(), null);
        try {
            Collections.addAll(hashSet, rawQuery.getColumnNames());
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }
}
