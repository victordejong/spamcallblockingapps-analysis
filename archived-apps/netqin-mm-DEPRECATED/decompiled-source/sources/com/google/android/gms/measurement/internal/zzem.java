package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.util.VisibleForTesting;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4827u3;
import p131c.p161d.p170b.p224d.p260i.p261a.C4651b3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzem.class */
public final class zzem extends AbstractC4827u3 {

    /* renamed from: c */
    public final C4651b3 f29917c = new C4651b3(this, mo8846B(), "google_app_measurement_local.db");

    /* renamed from: d */
    public boolean f29918d;

    public zzem(zzfu zzfuVar) {
        super(zzfuVar);
    }

    /* renamed from: a */
    public static long m9188a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        try {
            Cursor query = sQLiteDatabase.query("messages", new String[]{"rowid"}, "type=?", new String[]{"3"}, null, null, "rowid desc", "1");
            if (query.moveToFirst()) {
                cursor = query;
                long j = query.getLong(0);
                if (query != null) {
                    query.close();
                }
                return j;
            } else if (query == null) {
                return -1L;
            } else {
                query.close();
                return -1L;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: A */
    public final boolean m9194A() {
        return m9189a(3, new byte[0]);
    }

    /* renamed from: C */
    public final boolean m9193C() {
        mo9085c();
        if (this.f29918d || !m9191E()) {
            return false;
        }
        int i = 5;
        for (int i2 = 0; i2 < 5; i2++) {
            SQLiteDatabase sQLiteDatabase = null;
            SQLiteDatabase sQLiteDatabase2 = null;
            SQLiteDatabase sQLiteDatabase3 = null;
            SQLiteDatabase sQLiteDatabase4 = null;
            try {
                try {
                    try {
                        SQLiteDatabase D = m9192D();
                        if (D == null) {
                            this.f29918d = true;
                            if (D == null) {
                                return false;
                            }
                            D.close();
                            return false;
                        }
                        D.beginTransaction();
                        D.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                        D.setTransactionSuccessful();
                        D.endTransaction();
                        if (D == null) {
                            return true;
                        }
                        D.close();
                        return true;
                    } catch (SQLiteFullException e) {
                        mo8789p().m9152q().m9142a("Error deleting app launch break from local database", e);
                        this.f29918d = true;
                        i = i;
                        if (0 != 0) {
                            sQLiteDatabase3.close();
                            i = i;
                        }
                    }
                } catch (SQLiteDatabaseLockedException e2) {
                    SystemClock.sleep(i);
                    int i3 = i + 20;
                    i = i3;
                    if (0 != 0) {
                        sQLiteDatabase2.close();
                        i = i3;
                    }
                }
            } catch (SQLiteException e3) {
                if (0 != 0) {
                    sQLiteDatabase4 = null;
                    try {
                        if (sQLiteDatabase.inTransaction()) {
                            sQLiteDatabase.endTransaction();
                        }
                    } catch (Throwable th) {
                        if (sQLiteDatabase4 != null) {
                            sQLiteDatabase4.close();
                        }
                        throw th;
                    }
                }
                mo8789p().m9152q().m9142a("Error deleting app launch break from local database", e3);
                this.f29918d = true;
                i = i;
                if (0 != 0) {
                    sQLiteDatabase.close();
                    i = i;
                }
            }
        }
        mo8789p().m9149t().m9143a("Error deleting app launch break from local database in reasonable time");
        return false;
    }

    @VisibleForTesting
    /* renamed from: D */
    public final SQLiteDatabase m9192D() throws SQLiteException {
        if (this.f29918d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f29917c.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f29918d = true;
        return null;
    }

    @VisibleForTesting
    /* renamed from: E */
    public final boolean m9191E() {
        return mo8846B().getDatabasePath("google_app_measurement_local.db").exists();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x042d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x042d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x042d A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v124, types: [long] */
    /* JADX WARN: Type inference failed for: r23v10 */
    /* JADX WARN: Type inference failed for: r23v11 */
    /* JADX WARN: Type inference failed for: r23v12 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Type inference failed for: r23v8 */
    /* JADX WARN: Type inference failed for: r23v9 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> m9190a(int r11) {
        /*
            Method dump skipped, instructions count: 1146
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzem.m9190a(int):java.util.List");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0250  */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2, types: [long] */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m9189a(int r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzem.m9189a(int, byte[]):boolean");
    }

    /* renamed from: a */
    public final boolean m9187a(zzaq zzaqVar) {
        Parcel obtain = Parcel.obtain();
        zzaqVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return m9189a(0, marshall);
        }
        mo8789p().m9151r().m9143a("Event is too long for local database. Sending event directly to service");
        return false;
    }

    /* renamed from: a */
    public final boolean m9186a(zzku zzkuVar) {
        Parcel obtain = Parcel.obtain();
        zzkuVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return m9189a(1, marshall);
        }
        mo8789p().m9151r().m9143a("User property too long for local database. Sending directly to service");
        return false;
    }

    /* renamed from: a */
    public final boolean m9185a(zzz zzzVar) {
        m24899f();
        byte[] a = zzkv.m8730a((Parcelable) zzzVar);
        if (a.length <= 131072) {
            return m9189a(2, a);
        }
        mo8789p().m9151r().m9143a("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4827u3
    /* renamed from: w */
    public final boolean mo8854w() {
        return false;
    }

    /* renamed from: y */
    public final void m9184y() {
        mo9085c();
        try {
            int delete = m9192D().delete("messages", null, null) + 0;
            if (delete > 0) {
                mo8789p().m9144y().m9142a("Reset local analytics data. records", Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            mo8789p().m9152q().m9142a("Error resetting local analytics data. error", e);
        }
    }
}
