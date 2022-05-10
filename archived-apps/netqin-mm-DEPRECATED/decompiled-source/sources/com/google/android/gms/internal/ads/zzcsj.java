package com.google.android.gms.internal.ads;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.internal.ads.zzua;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsj.class */
public final class zzcsj {
    /* renamed from: a */
    public static int m13877a(SQLiteDatabase sQLiteDatabase, int i) {
        int i2 = 0;
        if (i == 2) {
            return 0;
        }
        Cursor c = m13875c(sQLiteDatabase, i);
        if (c.getCount() > 0) {
            c.moveToNext();
            i2 = 0 + c.getInt(c.getColumnIndexOrThrow("value"));
        }
        c.close();
        return i2;
    }

    /* renamed from: a */
    public static ArrayList<zzua.zzo.zza> m13878a(SQLiteDatabase sQLiteDatabase) {
        ArrayList<zzua.zzo.zza> arrayList = new ArrayList<>();
        Cursor query = sQLiteDatabase.query("offline_signal_contents", new String[]{"serialized_proto_data"}, null, null, null, null, null);
        while (query.moveToNext()) {
            try {
                arrayList.add(zzua.zzo.zza.m11269a(query.getBlob(query.getColumnIndexOrThrow("serialized_proto_data"))));
            } catch (zzekj e) {
                zzbbq.m15856b("Unable to deserialize proto from offline signals database:");
                zzbbq.m15856b(e.getMessage());
            }
        }
        query.close();
        return arrayList;
    }

    /* renamed from: b */
    public static long m13876b(SQLiteDatabase sQLiteDatabase, int i) {
        Cursor c = m13875c(sQLiteDatabase, 2);
        long j = 0;
        if (c.getCount() > 0) {
            c.moveToNext();
            j = 0 + c.getLong(c.getColumnIndexOrThrow("value"));
        }
        c.close();
        return j;
    }

    /* renamed from: c */
    public static Cursor m13875c(SQLiteDatabase sQLiteDatabase, int i) {
        String[] strArr = new String[1];
        if (i == 0) {
            strArr[0] = "failed_requests";
        } else if (i == 1) {
            strArr[0] = "total_requests";
        } else if (i == 2) {
            strArr[0] = "last_successful_request_time";
        }
        return sQLiteDatabase.query("offline_signal_statistics", new String[]{"value"}, "statistic_name = ?", strArr, null, null, null);
    }
}
