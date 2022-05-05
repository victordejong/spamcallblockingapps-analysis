package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzes.class */
public final class zzes extends AbstractC2713cu {

    /* renamed from: a */
    private final C2726dg f17134a = new C2726dg(this, zzn(), "google_app_measurement_local.db");

    /* renamed from: b */
    private boolean f17135b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzes(zzga zzgaVar) {
        super(zzgaVar);
    }

    /* renamed from: a */
    private static long m1873a(SQLiteDatabase sQLiteDatabase) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0188 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0244 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0244 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x023e  */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2, types: [long] */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m1874a(int r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 639
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzes.m1874a(int, byte[]):boolean");
    }

    /* renamed from: e */
    private final SQLiteDatabase m1872e() {
        if (this.f17135b) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f17134a.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f17135b = true;
        return null;
    }

    /* renamed from: f */
    private final boolean m1871f() {
        return zzn().getDatabasePath("google_app_measurement_local.db").exists();
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2713cu
    /* renamed from: c */
    protected final boolean mo1734c() {
        return false;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0446  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0492  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x04bc  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x04a4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:232:0x04a4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x04a4 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v154, types: [long] */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v5 */
    /* JADX WARN: Type inference failed for: r21v6 */
    /* JADX WARN: Type inference failed for: r21v7 */
    /* JADX WARN: Type inference failed for: r21v8 */
    /* JADX WARN: Type inference failed for: r21v9 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> zza(int r11) {
        /*
            Method dump skipped, instructions count: 1260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzes.zza(int):java.util.List");
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final boolean zza(zzan zzanVar) {
        Parcel obtain = Parcel.obtain();
        zzanVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return m1874a(0, marshall);
        }
        zzr().zzi().zza("Event is too long for local database. Sending event directly to service");
        return false;
    }

    public final boolean zza(zzkl zzklVar) {
        Parcel obtain = Parcel.obtain();
        zzklVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return m1874a(1, marshall);
        }
        zzr().zzi().zza("User property too long for local database. Sending directly to service");
        return false;
    }

    public final boolean zza(zzv zzvVar) {
        zzp();
        byte[] a = zzkm.m1634a((Parcelable) zzvVar);
        if (a.length <= 131072) {
            return m1874a(2, a);
        }
        zzr().zzi().zza("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    public final void zzab() {
        zzb();
        zzd();
        try {
            int delete = m1872e().delete("messages", null, null) + 0;
            if (delete > 0) {
                zzr().zzx().zza("Reset local analytics data. records", Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error resetting local analytics data. error", e);
        }
    }

    public final boolean zzac() {
        return m1874a(3, new byte[0]);
    }

    public final boolean zzad() {
        zzd();
        zzb();
        if (this.f17135b || !m1871f()) {
            return false;
        }
        int i = 5;
        for (int i2 = 0; i2 < 5; i2++) {
            SQLiteDatabase sQLiteDatabase = null;
            SQLiteDatabase sQLiteDatabase2 = null;
            try {
                try {
                    SQLiteDatabase e = m1872e();
                    if (e == null) {
                        this.f17135b = true;
                        if (e == null) {
                            return false;
                        }
                        e.close();
                        return false;
                    }
                    e.beginTransaction();
                    e.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                    e.setTransactionSuccessful();
                    e.endTransaction();
                    if (e == null) {
                        return true;
                    }
                    e.close();
                    return true;
                } catch (SQLiteFullException e2) {
                    zzr().zzf().zza("Error deleting app launch break from local database", e2);
                    this.f17135b = true;
                    i = i;
                    if (0 != 0) {
                        i = i;
                        sQLiteDatabase = null;
                        sQLiteDatabase.close();
                    }
                }
            } catch (SQLiteDatabaseLockedException e3) {
                SystemClock.sleep(i);
                int i3 = i + 20;
                i = i3;
                if (0 != 0) {
                    sQLiteDatabase = null;
                    i = i3;
                    sQLiteDatabase.close();
                }
            } catch (SQLiteException e4) {
                if (0 != 0) {
                    sQLiteDatabase2 = null;
                    try {
                        if (sQLiteDatabase.inTransaction()) {
                            sQLiteDatabase.endTransaction();
                        }
                    } catch (Throwable th) {
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.close();
                        }
                        throw th;
                    }
                }
                zzr().zzf().zza("Error deleting app launch break from local database", e4);
                this.f17135b = true;
                i = i;
                if (0 != 0) {
                    i = i;
                    sQLiteDatabase.close();
                }
            }
        }
        zzr().zzi().zza("Error deleting app launch break from local database in reasonable time");
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzb zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzhb zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzep zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzij zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzii zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzes zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzjo zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ C2734do zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }
}
