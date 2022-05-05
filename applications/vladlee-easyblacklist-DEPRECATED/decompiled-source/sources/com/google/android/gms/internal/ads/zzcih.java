package com.google.android.gms.internal.ads;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.internal.ads.zzsy;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcih.class */
public final class zzcih {
    /* renamed from: a */
    private static Cursor m3762a(SQLiteDatabase sQLiteDatabase, int i) {
        String[] strArr = new String[1];
        if (i == 0) {
            strArr[0] = "failed_requests";
        } else if (i == 1) {
            strArr[0] = "total_requests";
        } else if (i == 2) {
            strArr[0] = "last_successful_request_time";
        }
        return sQLiteDatabase.query("offline_signal_statistics", new String[]{AppMeasurementSdk.ConditionalUserProperty.VALUE}, "statistic_name = ?", strArr, null, null, null);
    }

    public static int zza(SQLiteDatabase sQLiteDatabase, int i) {
        int i2 = 0;
        if (i == 2) {
            return 0;
        }
        Cursor a = m3762a(sQLiteDatabase, i);
        if (a.getCount() > 0) {
            a.moveToNext();
            i2 = 0 + a.getInt(a.getColumnIndexOrThrow(AppMeasurementSdk.ConditionalUserProperty.VALUE));
        }
        a.close();
        return i2;
    }

    public static ArrayList<zzsy.zzj.zza> zza(SQLiteDatabase sQLiteDatabase) {
        ArrayList<zzsy.zzj.zza> arrayList = new ArrayList<>();
        Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                arrayList.add(zzsy.zzj.zza.zzg(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
            } catch (zzdse e) {
                zzavs.zzex("Unable to deserialize proto from offline signals database:");
                zzavs.zzex(e.getMessage());
            }
        }
        query.close();
        return arrayList;
    }

    public static long zzb(SQLiteDatabase sQLiteDatabase, int i) {
        Cursor a = m3762a(sQLiteDatabase, 2);
        long j = 0;
        if (a.getCount() > 0) {
            a.moveToNext();
            j = 0 + a.getLong(a.getColumnIndexOrThrow(AppMeasurementSdk.ConditionalUserProperty.VALUE));
        }
        a.close();
        return j;
    }
}
