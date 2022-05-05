package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzbj;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzfd;
import com.google.android.gms.internal.measurement.zzle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/c.class */
public final class C2692c extends AbstractC2837hj {

    /* renamed from: b */
    private static final String[] f16609b = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: c */
    private static final String[] f16610c = {AppMeasurementSdk.ConditionalUserProperty.ORIGIN, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: d */
    private static final String[] f16611d = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"};

    /* renamed from: e */
    private static final String[] f16612e = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: f */
    private static final String[] f16613f = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: g */
    private static final String[] f16614g = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: h */
    private static final String[] f16615h = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: i */
    private static final String[] f16616i = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: k */
    private final C2833hf f16618k = new C2833hf(zzm());

    /* renamed from: j */
    private final C2719d f16617j = new C2719d(this, zzn(), "google_app_measurement.db");

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2692c(zzke zzkeVar) {
        super(zzkeVar);
    }

    /* renamed from: a */
    private final long m2187a(String str, String[] strArr, long j) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor2 = m2172e().rawQuery(str, strArr);
                if (!cursor2.moveToFirst()) {
                    return j;
                }
                cursor2 = cursor2;
                cursor = cursor2;
                long j2 = cursor2.getLong(0);
                if (cursor2 != null) {
                    cursor2.close();
                }
                return j2;
            } catch (SQLiteException e) {
                zzr().zzf().zza("Database error", str, e);
                throw e;
            }
        } finally {
            if (cursor2 != null) {
                cursor2.close();
            }
        }
    }

    /* renamed from: a */
    private final Object m2206a(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type == 0) {
            zzr().zzf().zza("Loaded invalid null value from database");
            return null;
        } else if (type == 1) {
            return Long.valueOf(cursor.getLong(i));
        } else {
            if (type == 2) {
                return Double.valueOf(cursor.getDouble(i));
            }
            if (type == 3) {
                return cursor.getString(i);
            }
            zzey zzf = zzr().zzf();
            if (type != 4) {
                zzf.zza("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                return null;
            }
            zzf.zza("Loaded invalid blob type value, ignoring it");
            return null;
        }
    }

    /* renamed from: a */
    private static void m2207a(ContentValues contentValues, String str, Object obj) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else if (obj instanceof Double) {
            contentValues.put(str, (Double) obj);
        } else {
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    /* renamed from: a */
    private final boolean m2195a(String str, int i, zzbj.zzb zzbVar) {
        m2024w();
        zzd();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbVar);
        Integer num = null;
        if (TextUtils.isEmpty(zzbVar.zzc())) {
            zzey zzi = zzr().zzi();
            Object a = zzew.m1855a(str);
            if (zzbVar.zza()) {
                num = Integer.valueOf(zzbVar.zzb());
            }
            zzi.zza("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", a, Integer.valueOf(i), String.valueOf(num));
            return false;
        }
        byte[] zzbi = zzbVar.zzbi();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzbVar.zza() ? Integer.valueOf(zzbVar.zzb()) : null);
        contentValues.put("event_name", zzbVar.zzc());
        if (zzt().zze(str, zzap.zzbl)) {
            contentValues.put("session_scoped", zzbVar.zzj() ? Boolean.valueOf(zzbVar.zzk()) : null);
        }
        contentValues.put("data", zzbi);
        try {
            if (m2172e().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert event filter (got -1). appId", zzew.m1855a(str));
            return true;
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing event filter. appId", zzew.m1855a(str), e);
            return false;
        }
    }

    /* renamed from: a */
    private final boolean m2194a(String str, int i, zzbj.zze zzeVar) {
        m2024w();
        zzd();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzeVar);
        Integer num = null;
        if (TextUtils.isEmpty(zzeVar.zzc())) {
            zzey zzi = zzr().zzi();
            Object a = zzew.m1855a(str);
            if (zzeVar.zza()) {
                num = Integer.valueOf(zzeVar.zzb());
            }
            zzi.zza("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", a, Integer.valueOf(i), String.valueOf(num));
            return false;
        }
        byte[] zzbi = zzeVar.zzbi();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzeVar.zza() ? Integer.valueOf(zzeVar.zzb()) : null);
        contentValues.put("property_name", zzeVar.zzc());
        if (zzt().zze(str, zzap.zzbl)) {
            contentValues.put("session_scoped", zzeVar.zzg() ? Boolean.valueOf(zzeVar.zzh()) : null);
        }
        contentValues.put("data", zzbi);
        try {
            if (m2172e().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert property filter (got -1). appId", zzew.m1855a(str));
            return false;
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing property filter. appId", zzew.m1855a(str), e);
            return false;
        }
    }

    /* renamed from: b */
    private final long m2180b(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = m2172e().rawQuery(str, strArr);
                if (rawQuery.moveToFirst()) {
                    long j = rawQuery.getLong(0);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return j;
                }
                throw new SQLiteException("Database returned empty set");
            } catch (SQLiteException e) {
                zzr().zzf().zza("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: c */
    private final boolean m2176c(String str, List<Integer> list) {
        Preconditions.checkNotEmpty(str);
        m2024w();
        zzd();
        SQLiteDatabase e = m2172e();
        try {
            long b = m2180b("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int max = Math.max(0, Math.min(2000, zzt().zzb(str, zzap.zzaf)));
            if (b <= max) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                Integer num = list.get(i);
                if (num == null || !(num instanceof Integer)) {
                    return false;
                }
                arrayList.add(Integer.toString(num.intValue()));
            }
            String join = TextUtils.join(",", arrayList);
            StringBuilder sb = new StringBuilder(String.valueOf(join).length() + 2);
            sb.append("(");
            sb.append(join);
            sb.append(")");
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 140);
            sb3.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
            sb3.append(sb2);
            sb3.append(" order by rowid desc limit -1 offset ?)");
            return e.delete("audience_filter_values", sb3.toString(), new String[]{str, Integer.toString(max)}) > 0;
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Database error querying filters. appId", zzew.m1855a(str), e2);
            return false;
        }
    }

    /* renamed from: x */
    private final boolean m2148x() {
        return zzn().getDatabasePath("google_app_measurement.db").exists();
    }

    /* renamed from: a */
    public final long m2205a(zzbr.zzg zzgVar) {
        zzd();
        m2024w();
        Preconditions.checkNotNull(zzgVar);
        Preconditions.checkNotEmpty(zzgVar.zzx());
        byte[] zzbi = zzgVar.zzbi();
        long a = zzg().m1653a(zzbi);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzgVar.zzx());
        contentValues.put("metadata_fingerprint", Long.valueOf(a));
        contentValues.put("metadata", zzbi);
        try {
            m2172e().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return a;
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing raw event metadata. appId", zzew.m1855a(zzgVar.zzx()), e);
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00ed  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<com.google.android.gms.internal.measurement.zzbr.zzc, java.lang.Long> m2193a(java.lang.String r8, java.lang.Long r9) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2193a(java.lang.String, java.lang.Long):android.util.Pair");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0243  */
    /* JADX WARN: Type inference failed for: r40v0 */
    /* JADX WARN: Type inference failed for: r40v1, types: [long] */
    /* JADX WARN: Type inference failed for: r40v2 */
    /* JADX WARN: Type inference failed for: r40v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.C2827h m2191a(java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2191a(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.h");
    }

    /* renamed from: a */
    public final zzab m2208a(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        Preconditions.checkNotEmpty(str);
        zzd();
        m2024w();
        zzab zzabVar = new zzab();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                SQLiteDatabase e = m2172e();
                Cursor query = e.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    zzr().zzi().zza("Not updating daily counts, app is not known. appId", zzew.m1855a(str));
                    if (query != null) {
                        query.close();
                    }
                    return zzabVar;
                }
                if (query.getLong(0) == j) {
                    zzabVar.f17090b = query.getLong(1);
                    zzabVar.f17089a = query.getLong(2);
                    zzabVar.f17091c = query.getLong(3);
                    zzabVar.f17092d = query.getLong(4);
                    zzabVar.f17093e = query.getLong(5);
                }
                if (z) {
                    zzabVar.f17090b++;
                }
                if (z2) {
                    zzabVar.f17089a++;
                }
                if (z3) {
                    zzabVar.f17091c++;
                }
                if (z4) {
                    zzabVar.f17092d++;
                }
                if (z5) {
                    zzabVar.f17093e++;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j));
                contentValues.put("daily_public_events_count", Long.valueOf(zzabVar.f17089a));
                contentValues.put("daily_events_count", Long.valueOf(zzabVar.f17090b));
                contentValues.put("daily_conversions_count", Long.valueOf(zzabVar.f17091c));
                contentValues.put("daily_error_events_count", Long.valueOf(zzabVar.f17092d));
                contentValues.put("daily_realtime_events_count", Long.valueOf(zzabVar.f17093e));
                e.update("apps", contentValues, "app_id=?", new String[]{str});
                if (query != null) {
                    query.close();
                }
                return zzabVar;
            } catch (SQLiteException e2) {
                zzr().zzf().zza("Error updating daily counts. appId", zzew.m1855a(str), e2);
                if (0 != 0) {
                    cursor.close();
                }
                return zzabVar;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0093  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m2209a(long r9) {
        /*
            r8 = this;
            r0 = r8
            r0.zzd()
            r0 = r8
            r0.m2024w()
            r0 = r8
            android.database.sqlite.SQLiteDatabase r0 = r0.m2172e()     // Catch: all -> 0x0064, SQLiteException -> 0x006b
            java.lang.String r1 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x0064, SQLiteException -> 0x006b
            r3 = r2
            r4 = 0
            r5 = r9
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: all -> 0x0064, SQLiteException -> 0x006b
            r3[r4] = r5     // Catch: all -> 0x0064, SQLiteException -> 0x006b
            android.database.Cursor r0 = r0.rawQuery(r1, r2)     // Catch: all -> 0x0064, SQLiteException -> 0x006b
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r11
            boolean r0 = r0.moveToFirst()     // Catch: SQLiteException -> 0x005f, all -> 0x008d
            if (r0 != 0) goto L_0x0046
            r0 = r11
            r12 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()     // Catch: SQLiteException -> 0x005f, all -> 0x008d
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzx()     // Catch: SQLiteException -> 0x005f, all -> 0x008d
            java.lang.String r1 = "No expired configs for apps with pending events"
            r0.zza(r1)     // Catch: SQLiteException -> 0x005f, all -> 0x008d
            r0 = r11
            if (r0 == 0) goto L_0x0044
            r0 = r11
            r0.close()
        L_0x0044:
            r0 = 0
            return r0
        L_0x0046:
            r0 = r11
            r12 = r0
            r0 = r11
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: SQLiteException -> 0x005f, all -> 0x008d
            r13 = r0
            r0 = r11
            if (r0 == 0) goto L_0x005c
            r0 = r11
            r0.close()
        L_0x005c:
            r0 = r13
            return r0
        L_0x005f:
            r13 = move-exception
            goto L_0x006f
        L_0x0064:
            r11 = move-exception
            r0 = 0
            r12 = r0
            goto L_0x008e
        L_0x006b:
            r13 = move-exception
            r0 = 0
            r11 = r0
        L_0x006f:
            r0 = r11
            r12 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()     // Catch: all -> 0x008d
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzf()     // Catch: all -> 0x008d
            java.lang.String r1 = "Error selecting expired configs"
            r2 = r13
            r0.zza(r1, r2)     // Catch: all -> 0x008d
            r0 = r11
            if (r0 == 0) goto L_0x008b
            r0 = r11
            r0.close()
        L_0x008b:
            r0 = 0
            return r0
        L_0x008d:
            r11 = move-exception
        L_0x008e:
            r0 = r12
            if (r0 == 0) goto L_0x009a
            r0 = r12
            r0.close()
        L_0x009a:
            r0 = r11
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2209a(long):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x013c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.C2843hp> m2197a(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2197a(java.lang.String):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x020e A[EDGE_INSN: B:99:0x020e->B:73:0x020e ?: BREAK  , SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<android.util.Pair<com.google.android.gms.internal.measurement.zzbr.zzg, java.lang.Long>> m2196a(java.lang.String r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 606
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2196a(java.lang.String, int, int):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0110, code lost:
        r16 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0116, code lost:
        zzr().zzf().zza("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.C2843hp> m2190a(java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2190a(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00b6, code lost:
        r21 = r0;
        r20 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00bb, code lost:
        zzr().zzf().zza("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzv> m2188a(java.lang.String r17, java.lang.String[] r18) {
        /*
            Method dump skipped, instructions count: 633
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2188a(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0191  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<java.lang.Integer>> m2189a(java.lang.String r10, java.util.List<java.lang.String> r11) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2189a(java.lang.String, java.util.List):java.util.Map");
    }

    /* renamed from: a */
    public final void m2202a(C2744dy dyVar) {
        Preconditions.checkNotNull(dyVar);
        zzd();
        m2024w();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", dyVar.m2103c());
        contentValues.put("app_instance_id", dyVar.m2099d());
        contentValues.put("gmp_app_id", dyVar.m2096e());
        contentValues.put("resettable_device_id_hash", dyVar.m2087h());
        contentValues.put("last_bundle_index", Long.valueOf(dyVar.m2065s()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(dyVar.m2081j()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(dyVar.m2079k()));
        contentValues.put("app_version", dyVar.m2077l());
        contentValues.put("app_store", dyVar.m2073n());
        contentValues.put("gmp_version", Long.valueOf(dyVar.m2071o()));
        contentValues.put("dev_cert_hash", Long.valueOf(dyVar.m2069p()));
        contentValues.put("measurement_enabled", Boolean.valueOf(dyVar.m2066r()));
        contentValues.put("day", Long.valueOf(dyVar.m2061w()));
        contentValues.put("daily_public_events_count", Long.valueOf(dyVar.m2060x()));
        contentValues.put("daily_events_count", Long.valueOf(dyVar.m2059y()));
        contentValues.put("daily_conversions_count", Long.valueOf(dyVar.m2058z()));
        contentValues.put("config_fetched_time", Long.valueOf(dyVar.m2064t()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(dyVar.m2063u()));
        contentValues.put("app_version_int", Long.valueOf(dyVar.m2075m()));
        contentValues.put("firebase_instance_id", dyVar.m2084i());
        contentValues.put("daily_error_events_count", Long.valueOf(dyVar.m2121B()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(dyVar.m2122A()));
        contentValues.put("health_monitor_sample", dyVar.m2120C());
        contentValues.put("android_id", Long.valueOf(dyVar.m2118E()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(dyVar.m2117F()));
        contentValues.put("ssaid_reporting_enabled", Boolean.valueOf(dyVar.m2116G()));
        contentValues.put("admob_app_id", dyVar.m2093f());
        contentValues.put("dynamite_version", Long.valueOf(dyVar.m2067q()));
        if (dyVar.m2114I() != null) {
            if (dyVar.m2114I().size() == 0) {
                zzr().zzi().zza("Safelisted events should not be an empty list. appId", dyVar.m2103c());
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", dyVar.m2114I()));
            }
        }
        if (zzle.zzb() && zzt().zze(dyVar.m2103c(), zzap.zzcc)) {
            contentValues.put("ga_app_id", dyVar.m2090g());
        }
        try {
            SQLiteDatabase e = m2172e();
            if (e.update("apps", contentValues, "app_id = ?", new String[]{dyVar.m2103c()}) == 0 && e.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                zzr().zzf().zza("Failed to insert/update app (got -1). appId", zzew.m1855a(dyVar.m2103c()));
            }
        } catch (SQLiteException e2) {
            zzr().zzf().zza("Error storing app. appId", zzew.m1855a(dyVar.m2103c()), e2);
        }
    }

    /* renamed from: a */
    public final void m2201a(C2827h hVar) {
        Preconditions.checkNotNull(hVar);
        zzd();
        m2024w();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", hVar.f16995a);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, hVar.f16996b);
        contentValues.put("lifetime_count", Long.valueOf(hVar.f16997c));
        contentValues.put("current_bundle_count", Long.valueOf(hVar.f16998d));
        contentValues.put("last_fire_timestamp", Long.valueOf(hVar.f17000f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(hVar.f17001g));
        contentValues.put("last_bundled_day", hVar.f17002h);
        contentValues.put("last_sampled_complex_event_id", hVar.f17003i);
        contentValues.put("last_sampling_rate", hVar.f17004j);
        if (zzt().zze(hVar.f16995a, zzap.zzbm)) {
            contentValues.put("current_session_count", Long.valueOf(hVar.f16999e));
        }
        contentValues.put("last_exempt_from_sampling", (hVar.f17005k == null || !hVar.f17005k.booleanValue()) ? null : 1L);
        try {
            if (m2172e().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                zzr().zzf().zza("Failed to insert/update event aggregates (got -1). appId", zzew.m1855a(hVar.f16995a));
            }
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing event aggregates. appId", zzew.m1855a(hVar.f16995a), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m2186a(List<Long> list) {
        zzd();
        m2024w();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (m2148x()) {
            String join = TextUtils.join(",", list);
            StringBuilder sb = new StringBuilder(String.valueOf(join).length() + 2);
            sb.append("(");
            sb.append(join);
            sb.append(")");
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder(String.valueOf(sb2).length() + 80);
            sb3.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
            sb3.append(sb2);
            sb3.append(" AND retry_count =  2147483647 LIMIT 1");
            if (m2180b(sb3.toString(), (String[]) null) > 0) {
                zzr().zzi().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase e = m2172e();
                StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 127);
                sb4.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb4.append(sb2);
                sb4.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                e.execSQL(sb4.toString());
            } catch (SQLiteException e2) {
                zzr().zzf().zza("Error incrementing retry count. error", e2);
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2837hj
    /* renamed from: a */
    protected final boolean mo1675a() {
        return false;
    }

    /* renamed from: a */
    public final boolean m2204a(zzbr.zzg zzgVar, boolean z) {
        Object a;
        String str;
        zzey zzf;
        ContentValues contentValues;
        zzd();
        m2024w();
        Preconditions.checkNotNull(zzgVar);
        Preconditions.checkNotEmpty(zzgVar.zzx());
        Preconditions.checkState(zzgVar.zzk());
        m2163h();
        long currentTimeMillis = zzm().currentTimeMillis();
        if (zzgVar.zzl() < currentTimeMillis - zzx.zzj() || zzgVar.zzl() > zzx.zzj() + currentTimeMillis) {
            zzr().zzi().zza("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzew.m1855a(zzgVar.zzx()), Long.valueOf(currentTimeMillis), Long.valueOf(zzgVar.zzl()));
        }
        try {
            byte[] c = zzg().m1648c(zzgVar.zzbi());
            zzr().zzx().zza("Saving bundle, size", Integer.valueOf(c.length));
            contentValues = new ContentValues();
            contentValues.put("app_id", zzgVar.zzx());
            contentValues.put("bundle_end_timestamp", Long.valueOf(zzgVar.zzl()));
            contentValues.put("data", c);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (zzgVar.zzaz()) {
                contentValues.put("retry_count", Integer.valueOf(zzgVar.zzba()));
            }
        } catch (IOException e) {
            e = e;
            zzf = zzr().zzf();
            a = zzew.m1855a(zzgVar.zzx());
            str = "Data loss. Failed to serialize bundle. appId";
        }
        try {
            if (m2172e().insert("queue", null, contentValues) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert bundle (got -1). appId", zzew.m1855a(zzgVar.zzx()));
            return false;
        } catch (SQLiteException e2) {
            e = e2;
            zzf = zzr().zzf();
            a = zzew.m1855a(zzgVar.zzx());
            str = "Error storing bundle. appId";
            zzf.zza(str, a, e);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m2200a(C2843hp hpVar) {
        Preconditions.checkNotNull(hpVar);
        zzd();
        m2024w();
        if (m2177c(hpVar.f17034a, hpVar.f17036c) == null) {
            if (zzkm.m1631a(hpVar.f17036c)) {
                if (m2180b("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{hpVar.f17034a}) >= 25) {
                    return false;
                }
            } else if (zzt().zze(hpVar.f17034a, zzap.zzba)) {
                if (!"_npa".equals(hpVar.f17036c) && m2180b("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{hpVar.f17034a, hpVar.f17035b}) >= 25) {
                    return false;
                }
            } else if (m2180b("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{hpVar.f17034a, hpVar.f17035b}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", hpVar.f17034a);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ORIGIN, hpVar.f17035b);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, hpVar.f17036c);
        contentValues.put("set_timestamp", Long.valueOf(hpVar.f17037d));
        m2207a(contentValues, AppMeasurementSdk.ConditionalUserProperty.VALUE, hpVar.f17038e);
        try {
            if (m2172e().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert/update user property (got -1). appId", zzew.m1855a(hpVar.f17034a));
            return true;
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing user property. appId", zzew.m1855a(hpVar.f17034a), e);
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m2199a(zzak zzakVar, long j, boolean z) {
        zzd();
        m2024w();
        Preconditions.checkNotNull(zzakVar);
        Preconditions.checkNotEmpty(zzakVar.f17100a);
        zzbr.zzc.zza zzb = zzbr.zzc.zzj().zzb(zzakVar.f17103d);
        Iterator<String> it = zzakVar.f17104e.iterator();
        while (it.hasNext()) {
            String next = it.next();
            zzbr.zze.zza zza = zzbr.zze.zzh().zza(next);
            zzg().m1669a(zza, zzakVar.f17104e.m1993a(next));
            zzb.zza(zza);
        }
        byte[] zzbi = ((zzbr.zzc) ((zzfd) zzb.zzu())).zzbi();
        zzr().zzx().zza("Saving event, name, data size", zzo().m1866a(zzakVar.f17101b), Integer.valueOf(zzbi.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzakVar.f17100a);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzakVar.f17101b);
        contentValues.put("timestamp", Long.valueOf(zzakVar.f17102c));
        contentValues.put("metadata_fingerprint", Long.valueOf(j));
        contentValues.put("data", zzbi);
        contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        try {
            if (m2172e().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert raw event (got -1). appId", zzew.m1855a(zzakVar.f17100a));
            return false;
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing raw event. appId", zzew.m1855a(zzakVar.f17100a), e);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m2198a(zzv zzvVar) {
        Preconditions.checkNotNull(zzvVar);
        zzd();
        m2024w();
        if (m2177c(zzvVar.zza, zzvVar.zzc.zza) == null && m2180b("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzvVar.zza}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzvVar.zza);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ORIGIN, zzvVar.zzb);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.NAME, zzvVar.zzc.zza);
        m2207a(contentValues, AppMeasurementSdk.ConditionalUserProperty.VALUE, zzvVar.zzc.zza());
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.valueOf(zzvVar.zze));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, zzvVar.zzf);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.valueOf(zzvVar.zzh));
        zzp();
        contentValues.put("timed_out_event", zzkm.m1634a((Parcelable) zzvVar.zzg));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzvVar.zzd));
        zzp();
        contentValues.put("triggered_event", zzkm.m1634a((Parcelable) zzvVar.zzi));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.valueOf(zzvVar.zzc.zzb));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.valueOf(zzvVar.zzj));
        zzp();
        contentValues.put("expired_event", zzkm.m1634a((Parcelable) zzvVar.zzk));
        try {
            if (m2172e().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert/update conditional user property (got -1)", zzew.m1855a(zzvVar.zza));
            return true;
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing conditional user property", zzew.m1855a(zzvVar.zza), e);
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m2192a(String str, Long l, long j, zzbr.zzc zzcVar) {
        zzd();
        m2024w();
        Preconditions.checkNotNull(zzcVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l);
        byte[] zzbi = zzcVar.zzbi();
        zzr().zzx().zza("Saving complex main event, appId, data size", zzo().m1866a(str), Integer.valueOf(zzbi.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", zzbi);
        try {
            if (m2172e().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            zzr().zzf().zza("Failed to insert complex main event (got -1). appId", zzew.m1855a(str));
            return false;
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error storing complex main event. appId", zzew.m1855a(str), e);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0382  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02e2  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.C2744dy m2184b(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 1140
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2184b(java.lang.String):com.google.android.gms.measurement.internal.dy");
    }

    /* renamed from: b */
    public final List<zzv> m2182b(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzd();
        m2024w();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return m2188a(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* renamed from: b */
    public final void m2185b() {
        m2024w();
        m2172e().beginTransaction();
    }

    /* renamed from: b */
    public final void m2183b(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzd();
        m2024w();
        try {
            zzr().zzx().zza("Deleted user attribute rows", Integer.valueOf(m2172e().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error deleting user attribute. appId", zzew.m1855a(str), zzo().m1862c(str2), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0266, code lost:
        r12.zza(r15, r13, r16);
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2181b(java.lang.String r9, java.util.List<com.google.android.gms.internal.measurement.zzbj.zza> r10) {
        /*
            Method dump skipped, instructions count: 983
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2181b(java.lang.String, java.util.List):void");
    }

    /* renamed from: c */
    public final long m2178c(String str) {
        Preconditions.checkNotEmpty(str);
        zzd();
        m2024w();
        try {
            return m2172e().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, zzt().zzb(str, zzap.zzp))))});
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error deleting over the limit events. appId", zzew.m1855a(str), e);
            return 0L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x010d  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.C2843hp m2177c(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2177c(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.hp");
    }

    /* renamed from: c */
    public final void m2179c() {
        m2024w();
        m2172e().setTransactionSuccessful();
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0205  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzv m2173d(java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2173d(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzv");
    }

    /* renamed from: d */
    public final void m2175d() {
        m2024w();
        m2172e().endTransaction();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b5  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] m2174d(java.lang.String r10) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r0 = com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r0)
            r0 = r9
            r0.zzd()
            r0 = r9
            r0.m2024w()
            r0 = r9
            android.database.sqlite.SQLiteDatabase r0 = r0.m2172e()     // Catch: all -> 0x0085, SQLiteException -> 0x008b
            java.lang.String r1 = "apps"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x0085, SQLiteException -> 0x008b
            r3 = r2
            r4 = 0
            java.lang.String r5 = "remote_config"
            r3[r4] = r5     // Catch: all -> 0x0085, SQLiteException -> 0x008b
            java.lang.String r3 = "app_id=?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: all -> 0x0085, SQLiteException -> 0x008b
            r5 = r4
            r6 = 0
            r7 = r10
            r5[r6] = r7     // Catch: all -> 0x0085, SQLiteException -> 0x008b
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: all -> 0x0085, SQLiteException -> 0x008b
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r11
            boolean r0 = r0.moveToFirst()     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L_0x004a
            r0 = r11
            if (r0 == 0) goto L_0x0048
            r0 = r11
            r0.close()
        L_0x0048:
            r0 = 0
            return r0
        L_0x004a:
            r0 = r11
            r12 = r0
            r0 = r11
            r1 = 0
            byte[] r0 = r0.getBlob(r1)     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
            r14 = r0
            r0 = r11
            r12 = r0
            r0 = r11
            boolean r0 = r0.moveToNext()     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
            if (r0 == 0) goto L_0x0073
            r0 = r11
            r12 = r0
            r0 = r9
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzf()     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
            java.lang.String r1 = "Got multiple records for app config, expected one. appId"
            r2 = r10
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzew.m1855a(r2)     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
            r0.zza(r1, r2)     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
        L_0x0073:
            r0 = r11
            if (r0 == 0) goto L_0x007d
            r0 = r11
            r0.close()
        L_0x007d:
            r0 = r14
            return r0
        L_0x0080:
            r14 = move-exception
            goto L_0x008f
        L_0x0085:
            r10 = move-exception
            r0 = 0
            r12 = r0
            goto L_0x00b1
        L_0x008b:
            r14 = move-exception
            r0 = 0
            r11 = r0
        L_0x008f:
            r0 = r11
            r12 = r0
            r0 = r9
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()     // Catch: all -> 0x00b0
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzf()     // Catch: all -> 0x00b0
            java.lang.String r1 = "Error querying remote config. appId"
            r2 = r10
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzew.m1855a(r2)     // Catch: all -> 0x00b0
            r3 = r14
            r0.zza(r1, r2, r3)     // Catch: all -> 0x00b0
            r0 = r11
            if (r0 == 0) goto L_0x00ae
            r0 = r11
            r0.close()
        L_0x00ae:
            r0 = 0
            return r0
        L_0x00b0:
            r10 = move-exception
        L_0x00b1:
            r0 = r12
            if (r0 == 0) goto L_0x00bb
            r0 = r12
            r0.close()
        L_0x00bb:
            r0 = r10
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2174d(java.lang.String):byte[]");
    }

    /* renamed from: e */
    public final int m2170e(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzd();
        m2024w();
        try {
            return m2172e().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error deleting conditional property", zzew.m1855a(str), zzo().m1862c(str2), e);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final SQLiteDatabase m2172e() {
        zzd();
        try {
            return this.f16617j.getWritableDatabase();
        } catch (SQLiteException e) {
            zzr().zzi().zza("Error opening database", e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010b  */
    /* JADX WARN: Type inference failed for: r10v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r10v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<java.lang.Integer>> m2171e(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2171e(java.lang.String):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0069  */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m2169f() {
        /*
            r4 = this;
            r0 = r4
            android.database.sqlite.SQLiteDatabase r0 = r0.m2172e()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)     // Catch: all -> 0x003f, SQLiteException -> 0x0045
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0.moveToFirst()     // Catch: SQLiteException -> 0x003b, all -> 0x0064
            if (r0 == 0) goto L_0x002f
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: SQLiteException -> 0x003b, all -> 0x0064
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x002d
            r0 = r6
            r0.close()
        L_0x002d:
            r0 = r7
            return r0
        L_0x002f:
            r0 = r6
            if (r0 == 0) goto L_0x0039
            r0 = r6
            r0.close()
        L_0x0039:
            r0 = 0
            return r0
        L_0x003b:
            r7 = move-exception
            goto L_0x0048
        L_0x003f:
            r6 = move-exception
            r0 = 0
            r5 = r0
            goto L_0x0065
        L_0x0045:
            r7 = move-exception
            r0 = 0
            r6 = r0
        L_0x0048:
            r0 = r6
            r5 = r0
            r0 = r4
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()     // Catch: all -> 0x0064
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzf()     // Catch: all -> 0x0064
            java.lang.String r1 = "Database error getting next bundle app id"
            r2 = r7
            r0.zza(r1, r2)     // Catch: all -> 0x0064
            r0 = r6
            if (r0 == 0) goto L_0x0062
            r0 = r6
            r0.close()
        L_0x0062:
            r0 = 0
            return r0
        L_0x0064:
            r6 = move-exception
        L_0x0065:
            r0 = r5
            if (r0 == 0) goto L_0x006f
            r0 = r5
            r0.close()
        L_0x006f:
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2169f():java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0110  */
    /* JADX WARN: Type inference failed for: r11v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r11v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, com.google.android.gms.internal.measurement.zzbr.zzi> m2168f(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2168f(java.lang.String):java.util.Map");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0160  */
    /* JADX WARN: Type inference failed for: r11v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzbj.zzb>> m2167f(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2167f(java.lang.String, java.lang.String):java.util.Map");
    }

    /* renamed from: g */
    public final long m2165g(String str) {
        Preconditions.checkNotEmpty(str);
        return m2187a("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0160  */
    /* JADX WARN: Type inference failed for: r11v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzbj.zze>> m2164g(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2164g(java.lang.String, java.lang.String):java.util.Map");
    }

    /* renamed from: g */
    public final boolean m2166g() {
        return m2180b("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m2162h(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2692c.m2162h(java.lang.String, java.lang.String):long");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m2163h() {
        int delete;
        zzd();
        m2024w();
        if (m2148x()) {
            long zza = zzs().f16682f.zza();
            long elapsedRealtime = zzm().elapsedRealtime();
            if (Math.abs(elapsedRealtime - zza) > zzap.zzy.zza(null).longValue()) {
                zzs().f16682f.zza(elapsedRealtime);
                zzd();
                m2024w();
                if (m2148x() && (delete = m2172e().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zzm().currentTimeMillis()), String.valueOf(zzx.zzj())})) > 0) {
                    zzr().zzx().zza("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
                }
            }
        }
    }

    /* renamed from: i */
    public final long m2161i() {
        return m2187a("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    /* renamed from: j */
    public final long m2160j() {
        return m2187a("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    /* renamed from: k */
    public final boolean m2159k() {
        return m2180b("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    /* renamed from: l */
    public final boolean m2158l() {
        return m2180b("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }

    /* renamed from: m */
    public final long m2157m() {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor rawQuery = m2172e().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                if (rawQuery.moveToFirst()) {
                    cursor2 = rawQuery;
                    cursor = rawQuery;
                    long j = rawQuery.getLong(0);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return j;
                } else if (rawQuery == null) {
                    return -1L;
                } else {
                    rawQuery.close();
                    return -1L;
                }
            } catch (SQLiteException e) {
                zzr().zzf().zza("Error querying raw events", e);
                if (cursor == null) {
                    return -1L;
                }
                cursor.close();
                return -1L;
            }
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }
}
