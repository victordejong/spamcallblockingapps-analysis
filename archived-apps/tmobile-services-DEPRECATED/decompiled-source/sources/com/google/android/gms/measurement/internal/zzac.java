package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzbv;
import com.google.android.gms.internal.measurement.zzcd;
import com.google.android.gms.internal.measurement.zzhz;
import com.google.android.gms.internal.measurement.zznt;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzac.class */
public final class zzac extends zzkj {

    /* renamed from: f */
    private static final String[] f8831f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: g */
    private static final String[] f8832g = {FirebaseAnalytics.Param.ORIGIN, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: h */
    private static final String[] f8833h = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"};

    /* renamed from: i */
    private static final String[] f8834i = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: j */
    private static final String[] f8835j = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: k */
    private static final String[] f8836k = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: l */
    private static final String[] f8837l = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: m */
    private static final String[] f8838m = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: e */
    private final zzkf f8840e = new zzkf(mo11085a());

    /* renamed from: d */
    private final zzah f8839d = new zzah(this, mo11075f(), "google_app_measurement.db");

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzac(zzki zzkiVar) {
        super(zzkiVar);
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: E */
    private final Object m11796E(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type == 0) {
            mo11081c().m11560D().m11540a("Loaded invalid null value from database");
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
            if (type != 4) {
                mo11081c().m11560D().m11539b("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                return null;
            }
            mo11081c().m11560D().m11540a("Loaded invalid blob type value, ignoring it");
            return null;
        }
    }

    @WorkerThread
    /* renamed from: G */
    private final String m11792G(String str, String[] strArr, String str2) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor2 = m11749u().rawQuery(str, strArr);
                if (!cursor2.moveToFirst()) {
                    return str2;
                }
                cursor2 = cursor2;
                cursor = cursor2;
                String string = cursor2.getString(0);
                if (cursor2 != null) {
                    cursor2.close();
                }
                return string;
            } catch (SQLiteException e) {
                mo11081c().m11560D().m11538c("Database error", str, e);
                throw e;
            }
        } finally {
            if (cursor2 != null) {
                cursor2.close();
            }
        }
    }

    @WorkerThread
    /* renamed from: L */
    private static void m11785L(ContentValues contentValues, String str, Object obj) {
        Preconditions.m14527g(str);
        Preconditions.m14523k(obj);
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

    @WorkerThread
    /* renamed from: U */
    private final boolean m11776U(String str, int i, zzbv.zzb zzbVar) {
        m11038q();
        mo11316e();
        Preconditions.m14527g(str);
        Preconditions.m14523k(zzbVar);
        Integer num = null;
        if (TextUtils.isEmpty(zzbVar.m13370J())) {
            zzet G = mo11081c().m11557G();
            Object v = zzer.m11546v(str);
            if (zzbVar.m13372G()) {
                num = Integer.valueOf(zzbVar.m13371H());
            }
            G.m11537d("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", v, Integer.valueOf(i), String.valueOf(num));
            return false;
        }
        byte[] g = zzbVar.m12660g();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzbVar.m13372G() ? Integer.valueOf(zzbVar.m13371H()) : null);
        contentValues.put("event_name", zzbVar.m13370J());
        contentValues.put("session_scoped", zzbVar.m13363Q() ? Boolean.valueOf(zzbVar.m13362R()) : null);
        contentValues.put("data", g);
        try {
            if (m11749u().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                return true;
            }
            mo11081c().m11560D().m11539b("Failed to insert event filter (got -1). appId", zzer.m11546v(str));
            return true;
        } catch (SQLiteException e) {
            mo11081c().m11560D().m11538c("Error storing event filter. appId", zzer.m11546v(str), e);
            return false;
        }
    }

    @WorkerThread
    /* renamed from: V */
    private final boolean m11775V(String str, int i, zzbv.zze zzeVar) {
        m11038q();
        mo11316e();
        Preconditions.m14527g(str);
        Preconditions.m14523k(zzeVar);
        Integer num = null;
        if (TextUtils.isEmpty(zzeVar.m13325F())) {
            zzet G = mo11081c().m11557G();
            Object v = zzer.m11546v(str);
            if (zzeVar.m13327D()) {
                num = Integer.valueOf(zzeVar.m13326E());
            }
            G.m11537d("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", v, Integer.valueOf(i), String.valueOf(num));
            return false;
        }
        byte[] g = zzeVar.m12660g();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzeVar.m13327D() ? Integer.valueOf(zzeVar.m13326E()) : null);
        contentValues.put("property_name", zzeVar.m13325F());
        contentValues.put("session_scoped", zzeVar.m13321K() ? Boolean.valueOf(zzeVar.m13320L()) : null);
        contentValues.put("data", g);
        try {
            if (m11749u().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                return true;
            }
            mo11081c().m11560D().m11539b("Failed to insert property filter (got -1). appId", zzer.m11546v(str));
            return false;
        } catch (SQLiteException e) {
            mo11081c().m11560D().m11538c("Error storing property filter. appId", zzer.m11546v(str), e);
            return false;
        }
    }

    @VisibleForTesting
    /* renamed from: g0 */
    private final boolean m11764g0() {
        return mo11075f().getDatabasePath("google_app_measurement.db").exists();
    }

    @WorkerThread
    /* renamed from: h0 */
    private final long m11763h0(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = m11749u().rawQuery(str, strArr);
                if (rawQuery.moveToFirst()) {
                    long j = rawQuery.getLong(0);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return j;
                }
                throw new SQLiteException("Database returned empty set");
            } catch (SQLiteException e) {
                mo11081c().m11560D().m11538c("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: l0 */
    private final boolean m11759l0(String str, List<Integer> list) {
        Preconditions.m14527g(str);
        m11038q();
        mo11316e();
        SQLiteDatabase u = m11749u();
        try {
            long h0 = m11763h0("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int max = Math.max(0, Math.min(2000, m11311l().m10878t(str, zzat.f8897F)));
            if (h0 <= max) {
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
            return u.delete("audience_filter_values", sb3.toString(), new String[]{str, Integer.toString(max)}) > 0;
        } catch (SQLiteException e) {
            mo11081c().m11560D().m11538c("Database error querying filters. appId", zzer.m11546v(str), e);
            return false;
        }
    }

    @WorkerThread
    /* renamed from: y */
    private final long m11741y(String str, String[] strArr, long j) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor2 = m11749u().rawQuery(str, strArr);
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
                mo11081c().m11560D().m11538c("Database error", str, e);
                throw e;
            }
        } finally {
            if (cursor2 != null) {
                cursor2.close();
            }
        }
    }

    @WorkerThread
    /* renamed from: A */
    public final zzaf m11804A(long j, String str, long j2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        Preconditions.m14527g(str);
        mo11316e();
        m11038q();
        zzaf zzafVar = new zzaf();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                SQLiteDatabase u = m11749u();
                Cursor query = u.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    mo11081c().m11557G().m11539b("Not updating daily counts, app is not known. appId", zzer.m11546v(str));
                    if (query != null) {
                        query.close();
                    }
                    return zzafVar;
                }
                if (query.getLong(0) == j) {
                    zzafVar.f8845b = query.getLong(1);
                    zzafVar.f8844a = query.getLong(2);
                    zzafVar.f8846c = query.getLong(3);
                    zzafVar.f8847d = query.getLong(4);
                    zzafVar.f8848e = query.getLong(5);
                }
                if (z) {
                    zzafVar.f8845b += j2;
                }
                if (z2) {
                    zzafVar.f8844a += j2;
                }
                if (z3) {
                    zzafVar.f8846c += j2;
                }
                if (z4) {
                    zzafVar.f8847d += j2;
                }
                if (z5) {
                    zzafVar.f8848e += j2;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j));
                contentValues.put("daily_public_events_count", Long.valueOf(zzafVar.f8844a));
                contentValues.put("daily_events_count", Long.valueOf(zzafVar.f8845b));
                contentValues.put("daily_conversions_count", Long.valueOf(zzafVar.f8846c));
                contentValues.put("daily_error_events_count", Long.valueOf(zzafVar.f8847d));
                contentValues.put("daily_realtime_events_count", Long.valueOf(zzafVar.f8848e));
                u.update("apps", contentValues, "app_id=?", new String[]{str});
                if (query != null) {
                    query.close();
                }
                return zzafVar;
            } catch (SQLiteException e) {
                mo11081c().m11560D().m11538c("Error updating daily counts. appId", zzer.m11546v(str), e);
                if (0 != 0) {
                    cursor.close();
                }
                return zzafVar;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x0177  */
    /* renamed from: A0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle m11803A0(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11803A0(java.lang.String):android.os.Bundle");
    }

    @WorkerThread
    /* renamed from: B */
    public final zzaf m11802B(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return m11804A(j, str, 1L, false, false, z3, false, z5);
    }

    /* renamed from: B0 */
    public final zzad m11801B0(String str) {
        Preconditions.m14523k(str);
        mo11316e();
        m11038q();
        return zzad.m11736b(m11792G("select consent_state from consent_settings where app_id=? limit 1;", new String[]{str}, "G1"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:93:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.WorkerThread
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzan m11800C(java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 561
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11800C(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzan");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: C0 */
    public final void m11799C0() {
        int delete;
        mo11316e();
        m11038q();
        if (m11764g0()) {
            long a = m11312k().f9189h.m11433a();
            long b = mo11085a().mo14334b();
            if (Math.abs(b - a) > zzat.f8976y.m11594a(null).longValue()) {
                m11312k().f9189h.m11432b(b);
                mo11316e();
                m11038q();
                if (m11764g0() && (delete = m11749u().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(mo11085a().mo14335a()), String.valueOf(zzy.m10894I())})) > 0) {
                    mo11081c().m11552L().m11539b("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
                }
            }
        }
    }

    @WorkerThread
    /* renamed from: D0 */
    public final long m11797D0() {
        return m11741y("select max(bundle_end_timestamp) from queue", null, 0L);
    }

    @WorkerThread
    /* renamed from: E0 */
    public final long m11795E0() {
        return m11741y("select max(timestamp) from raw_events", null, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009d  */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m11794F(long r9) {
        /*
            r8 = this;
            r0 = r8
            r0.mo11316e()
            r0 = r8
            r0.m11038q()
            r0 = 0
            r11 = r0
            r0 = r8
            android.database.sqlite.SQLiteDatabase r0 = r0.m11749u()     // Catch: all -> 0x006d, SQLiteException -> 0x0072
            java.lang.String r1 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x006d, SQLiteException -> 0x0072
            r3 = r2
            r4 = 0
            r5 = r9
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: all -> 0x006d, SQLiteException -> 0x0072
            r3[r4] = r5     // Catch: all -> 0x006d, SQLiteException -> 0x0072
            android.database.Cursor r0 = r0.rawQuery(r1, r2)     // Catch: all -> 0x006d, SQLiteException -> 0x0072
            r12 = r0
            r0 = r12
            r11 = r0
            r0 = r12
            boolean r0 = r0.moveToFirst()     // Catch: SQLiteException -> 0x0068, all -> 0x0097
            if (r0 != 0) goto L_0x004c
            r0 = r12
            r11 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzer r0 = r0.mo11081c()     // Catch: SQLiteException -> 0x0068, all -> 0x0097
            com.google.android.gms.measurement.internal.zzet r0 = r0.m11552L()     // Catch: SQLiteException -> 0x0068, all -> 0x0097
            java.lang.String r1 = "No expired configs for apps with pending events"
            r0.m11540a(r1)     // Catch: SQLiteException -> 0x0068, all -> 0x0097
            r0 = r12
            if (r0 == 0) goto L_0x004a
            r0 = r12
            r0.close()
        L_0x004a:
            r0 = 0
            return r0
        L_0x004c:
            r0 = r12
            r11 = r0
            r0 = r12
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: SQLiteException -> 0x0068, all -> 0x0097
            r13 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0065
            r0 = r12
            r0.close()
        L_0x0065:
            r0 = r13
            return r0
        L_0x0068:
            r13 = move-exception
            goto L_0x0077
        L_0x006d:
            r12 = move-exception
            goto L_0x0099
        L_0x0072:
            r13 = move-exception
            r0 = 0
            r12 = r0
        L_0x0077:
            r0 = r12
            r11 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzer r0 = r0.mo11081c()     // Catch: all -> 0x0097
            com.google.android.gms.measurement.internal.zzet r0 = r0.m11560D()     // Catch: all -> 0x0097
            java.lang.String r1 = "Error selecting expired configs"
            r2 = r13
            r0.m11539b(r1, r2)     // Catch: all -> 0x0097
            r0 = r12
            if (r0 == 0) goto L_0x0095
            r0 = r12
            r0.close()
        L_0x0095:
            r0 = 0
            return r0
        L_0x0097:
            r12 = move-exception
        L_0x0099:
            r0 = r11
            if (r0 == 0) goto L_0x00a3
            r0 = r11
            r0.close()
        L_0x00a3:
            r0 = r12
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11794F(long):java.lang.String");
    }

    /* renamed from: F0 */
    public final boolean m11793F0() {
        return m11763h0("select count(1) > 0 from raw_events", null) != 0;
    }

    /* renamed from: G0 */
    public final boolean m11791G0() {
        return m11763h0("select count(1) > 0 from raw_events where realtime = 1", null) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x0177  */
    @androidx.annotation.WorkerThread
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzkt> m11790H(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11790H(java.lang.String):java.util.List");
    }

    /* renamed from: H0 */
    public final long m11789H0() {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor rawQuery = m11749u().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
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
                mo11081c().m11560D().m11539b("Error querying raw events", e);
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

    @WorkerThread
    /* renamed from: I */
    public final List<Pair<zzcd.zzg, Long>> m11788I(String str, int i, int i2) {
        int i3;
        byte[] U;
        mo11316e();
        m11038q();
        Preconditions.m14533a(i > 0);
        Preconditions.m14533a(i2 > 0);
        Preconditions.m14527g(str);
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = m11749u().query("queue", new String[]{"rowid", "data", "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i));
                if (!query.moveToFirst()) {
                    List<Pair<zzcd.zzg, Long>> emptyList = Collections.emptyList();
                    if (query != null) {
                        query.close();
                    }
                    return emptyList;
                }
                ArrayList arrayList = new ArrayList();
                int i4 = 0;
                do {
                    long j = query.getLong(0);
                    try {
                        U = m11115m().m11014U(query.getBlob(1));
                    } catch (IOException e) {
                        mo11081c().m11560D().m11538c("Failed to unzip queued bundle. appId", zzer.m11546v(str), e);
                        i3 = i4;
                    }
                    if (!arrayList.isEmpty() && U.length + i4 > i2) {
                        break;
                    }
                    try {
                        zzcd.zzg.zza zzaVar = (zzcd.zzg.zza) zzks.m11006y(zzcd.zzg.m13080O0(), U);
                        if (!query.isNull(2)) {
                            zzaVar.m12902u0(query.getInt(2));
                        }
                        i3 = i4 + U.length;
                        arrayList.add(Pair.create((zzcd.zzg) ((zzhz) zzaVar.mo12321k()), Long.valueOf(j)));
                    } catch (IOException e2) {
                        mo11081c().m11560D().m11538c("Failed to merge queued bundle. appId", zzer.m11546v(str), e2);
                        i3 = i4;
                    }
                    if (!query.moveToNext()) {
                        break;
                    }
                    i4 = i3;
                } while (i3 <= i2);
                if (query != null) {
                    query.close();
                }
                return arrayList;
            } catch (SQLiteException e3) {
                mo11081c().m11560D().m11538c("Error querying bundles. appId", zzer.m11546v(str), e3);
                List<Pair<zzcd.zzg, Long>> emptyList2 = Collections.emptyList();
                if (0 != 0) {
                    cursor.close();
                }
                return emptyList2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0108, code lost:
        r15 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x010a, code lost:
        mo11081c().m11560D().m11539b("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:106:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x024a  */
    @androidx.annotation.WorkerThread
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzkt> m11787J(java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11787J(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00b6, code lost:
        r21 = r0;
        r20 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00bb, code lost:
        mo11081c().m11560D().m11539b("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzw> m11786K(java.lang.String r17, java.lang.String[] r18) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11786K(java.lang.String, java.lang.String[]):java.util.List");
    }

    @WorkerThread
    /* renamed from: M */
    public final void m11784M(zzan zzanVar) {
        Preconditions.m14523k(zzanVar);
        mo11316e();
        m11038q();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzanVar.f8869a);
        contentValues.put("name", zzanVar.f8870b);
        contentValues.put("lifetime_count", Long.valueOf(zzanVar.f8871c));
        contentValues.put("current_bundle_count", Long.valueOf(zzanVar.f8872d));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzanVar.f8874f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzanVar.f8875g));
        contentValues.put("last_bundled_day", zzanVar.f8876h);
        contentValues.put("last_sampled_complex_event_id", zzanVar.f8877i);
        contentValues.put("last_sampling_rate", zzanVar.f8878j);
        contentValues.put("current_session_count", Long.valueOf(zzanVar.f8873e));
        Boolean bool = zzanVar.f8879k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (m11749u().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                mo11081c().m11560D().m11539b("Failed to insert/update event aggregates (got -1). appId", zzer.m11546v(zzanVar.f8869a));
            }
        } catch (SQLiteException e) {
            mo11081c().m11560D().m11538c("Error storing event aggregates. appId", zzer.m11546v(zzanVar.f8869a), e);
        }
    }

    @WorkerThread
    /* renamed from: N */
    public final void m11783N(zzf zzfVar) {
        Preconditions.m14523k(zzfVar);
        mo11316e();
        m11038q();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzfVar.m11472t());
        contentValues.put("app_instance_id", zzfVar.m11468x());
        contentValues.put("gmp_app_id", zzfVar.m11530A());
        contentValues.put("resettable_device_id_hash", zzfVar.m11521J());
        contentValues.put("last_bundle_index", Long.valueOf(zzfVar.m11493f0()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzfVar.m11515P()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzfVar.m11513R()));
        contentValues.put("app_version", zzfVar.m11511T());
        contentValues.put("app_store", zzfVar.m11507X());
        contentValues.put("gmp_version", Long.valueOf(zzfVar.m11505Z()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzfVar.m11501b0()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzfVar.m11495e0()));
        contentValues.put("day", Long.valueOf(zzfVar.m11485j0()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzfVar.m11483k0()));
        contentValues.put("daily_events_count", Long.valueOf(zzfVar.m11481l0()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzfVar.m11479m0()));
        contentValues.put("config_fetched_time", Long.valueOf(zzfVar.m11491g0()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzfVar.m11489h0()));
        contentValues.put("app_version_int", Long.valueOf(zzfVar.m11509V()));
        contentValues.put("firebase_instance_id", zzfVar.m11518M());
        contentValues.put("daily_error_events_count", Long.valueOf(zzfVar.m11490h()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzfVar.m11492g()));
        contentValues.put("health_monitor_sample", zzfVar.m11488i());
        contentValues.put("android_id", Long.valueOf(zzfVar.m11484k()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(zzfVar.m11482l()));
        contentValues.put("ssaid_reporting_enabled", Boolean.valueOf(zzfVar.m11480m()));
        contentValues.put("admob_app_id", zzfVar.m11527D());
        contentValues.put("dynamite_version", Long.valueOf(zzfVar.m11497d0()));
        if (zzfVar.m11477o() != null) {
            if (zzfVar.m11477o().size() == 0) {
                mo11081c().m11557G().m11539b("Safelisted events should not be an empty list. appId", zzfVar.m11472t());
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", zzfVar.m11477o()));
            }
        }
        if (zznt.m11872a() && m11311l().m10901B(zzfVar.m11472t(), zzat.f8947j0)) {
            contentValues.put("ga_app_id", zzfVar.m11524G());
        }
        try {
            SQLiteDatabase u = m11749u();
            if (u.update("apps", contentValues, "app_id = ?", new String[]{zzfVar.m11472t()}) == 0 && u.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                mo11081c().m11560D().m11539b("Failed to insert/update app (got -1). appId", zzer.m11546v(zzfVar.m11472t()));
            }
        } catch (SQLiteException e) {
            mo11081c().m11560D().m11538c("Error storing app. appId", zzer.m11546v(zzfVar.m11472t()), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: O */
    public final void m11782O(String str, List<zzbv.zza> list) {
        boolean z;
        boolean z2;
        Preconditions.m14523k(list);
        for (int i = 0; i < list.size(); i++) {
            zzbv.zza.C2483zza w = list.get(i).m12423w();
            if (w.m13382C() != 0) {
                for (int i2 = 0; i2 < w.m13382C(); i2++) {
                    zzbv.zzb.zza w2 = w.m13381D(i2).m12423w();
                    zzbv.zzb.zza zzaVar = (zzbv.zzb.zza) ((zzhz.zza) w2.clone());
                    String b = zzgs.m11305b(w2.m13359A());
                    if (b != null) {
                        zzaVar.m13356y(b);
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    for (int i3 = 0; i3 < w2.m13358C(); i3++) {
                        zzbv.zzc z3 = w2.m13355z(i3);
                        String a = zzgv.m11301a(z3.m13345L());
                        if (a != null) {
                            zzbv.zzc.zza w3 = z3.m12423w();
                            w3.m13342x(a);
                            zzaVar.m13357x(i3, (zzbv.zzc) ((zzhz) w3.mo12321k()));
                            z2 = true;
                        }
                    }
                    if (z2) {
                        w.m13379y(i2, zzaVar);
                        list.set(i, (zzbv.zza) ((zzhz) w.mo12321k()));
                    }
                }
            }
            if (w.m13380x() != 0) {
                for (int i4 = 0; i4 < w.m13380x(); i4++) {
                    zzbv.zze A = w.m13383A(i4);
                    String a2 = zzgu.m11302a(A.m13325F());
                    if (a2 != null) {
                        zzbv.zze.zza w4 = A.m12423w();
                        w4.m13317x(a2);
                        w.m13378z(i4, w4);
                        list.set(i, (zzbv.zza) ((zzhz) w.mo12321k()));
                    }
                }
            }
        }
        m11038q();
        mo11316e();
        Preconditions.m14527g(str);
        Preconditions.m14523k(list);
        SQLiteDatabase u = m11749u();
        u.beginTransaction();
        try {
            m11038q();
            mo11316e();
            Preconditions.m14527g(str);
            SQLiteDatabase u2 = m11749u();
            u2.delete("property_filters", "app_id=?", new String[]{str});
            u2.delete("event_filters", "app_id=?", new String[]{str});
            for (zzbv.zza zzaVar2 : list) {
                m11038q();
                mo11316e();
                Preconditions.m14527g(str);
                Preconditions.m14523k(zzaVar2);
                if (!zzaVar2.m13391G()) {
                    mo11081c().m11557G().m11539b("Audience with no ID. appId", zzer.m11546v(str));
                } else {
                    int H = zzaVar2.m13390H();
                    Iterator<zzbv.zzb> it = zzaVar2.m13386M().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (!it.next().m13372G()) {
                                mo11081c().m11557G().m11538c("Event filter with no ID. Audience definition ignored. appId, audienceId", zzer.m11546v(str), Integer.valueOf(H));
                                break;
                            }
                        } else {
                            Iterator<zzbv.zze> it2 = zzaVar2.m13388K().iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    if (!it2.next().m13327D()) {
                                        mo11081c().m11557G().m11538c("Property filter with no ID. Audience definition ignored. appId, audienceId", zzer.m11546v(str), Integer.valueOf(H));
                                        break;
                                    }
                                } else {
                                    Iterator<zzbv.zzb> it3 = zzaVar2.m13386M().iterator();
                                    while (true) {
                                        if (it3.hasNext()) {
                                            if (!m11776U(str, H, it3.next())) {
                                                z = false;
                                                break;
                                            }
                                        } else {
                                            z = true;
                                            break;
                                        }
                                    }
                                    boolean z4 = z;
                                    if (z) {
                                        Iterator<zzbv.zze> it4 = zzaVar2.m13388K().iterator();
                                        while (true) {
                                            z4 = z;
                                            if (it4.hasNext()) {
                                                if (!m11775V(str, H, it4.next())) {
                                                    z4 = false;
                                                    break;
                                                }
                                            } else {
                                                break;
                                            }
                                        }
                                    }
                                    if (!z4) {
                                        m11038q();
                                        mo11316e();
                                        Preconditions.m14527g(str);
                                        SQLiteDatabase u3 = m11749u();
                                        u3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(H)});
                                        u3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(H)});
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (zzbv.zza zzaVar3 : list) {
                arrayList.add(zzaVar3.m13391G() ? Integer.valueOf(zzaVar3.m13390H()) : null);
            }
            m11759l0(str, arrayList);
            u.setTransactionSuccessful();
        } finally {
            u.endTransaction();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    @WorkerThread
    /* renamed from: P */
    public final void m11781P(List<Long> list) {
        mo11316e();
        m11038q();
        Preconditions.m14523k(list);
        Preconditions.m14521m(list.size());
        if (m11764g0()) {
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
            if (m11763h0(sb3.toString(), null) > 0) {
                mo11081c().m11557G().m11540a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase u = m11749u();
                StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 127);
                sb4.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb4.append(sb2);
                sb4.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                u.execSQL(sb4.toString());
            } catch (SQLiteException e) {
                mo11081c().m11560D().m11539b("Error incrementing retry count. error", e);
            }
        }
    }

    @WorkerThread
    /* renamed from: Q */
    public final boolean m11780Q(zzcd.zzg zzgVar, boolean z) {
        mo11316e();
        m11038q();
        Preconditions.m14523k(zzgVar);
        Preconditions.m14527g(zzgVar.m13058T2());
        Preconditions.m14520n(zzgVar.m12982s2());
        m11799C0();
        long a = mo11085a().mo14335a();
        if (zzgVar.m12979t2() < a - zzy.m10894I() || zzgVar.m12979t2() > zzy.m10894I() + a) {
            mo11081c().m11557G().m11537d("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzer.m11546v(zzgVar.m13058T2()), Long.valueOf(a), Long.valueOf(zzgVar.m12979t2()));
        }
        try {
            byte[] V = m11115m().m11013V(zzgVar.m12660g());
            mo11081c().m11552L().m11539b("Saving bundle, size", Integer.valueOf(V.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzgVar.m13058T2());
            contentValues.put("bundle_end_timestamp", Long.valueOf(zzgVar.m12979t2()));
            contentValues.put("data", V);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (zzgVar.m12972w0()) {
                contentValues.put("retry_count", Integer.valueOf(zzgVar.m13107H0()));
            }
            try {
                if (m11749u().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                mo11081c().m11560D().m11539b("Failed to insert bundle (got -1). appId", zzer.m11546v(zzgVar.m13058T2()));
                return false;
            } catch (SQLiteException e) {
                mo11081c().m11560D().m11538c("Error storing bundle. appId", zzer.m11546v(zzgVar.m13058T2()), e);
                return false;
            }
        } catch (IOException e2) {
            mo11081c().m11560D().m11538c("Data loss. Failed to serialize bundle. appId", zzer.m11546v(zzgVar.m13058T2()), e2);
            return false;
        }
    }

    /* renamed from: R */
    public final boolean m11779R(zzak zzakVar, long j, boolean z) {
        mo11316e();
        m11038q();
        Preconditions.m14523k(zzakVar);
        Preconditions.m14527g(zzakVar.f8856a);
        byte[] g = m11115m().m11008w(zzakVar).m12660g();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzakVar.f8856a);
        contentValues.put("name", zzakVar.f8857b);
        contentValues.put("timestamp", Long.valueOf(zzakVar.f8859d));
        contentValues.put("metadata_fingerprint", Long.valueOf(j));
        contentValues.put("data", g);
        contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        try {
            if (m11749u().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            mo11081c().m11560D().m11539b("Failed to insert raw event (got -1). appId", zzer.m11546v(zzakVar.f8856a));
            return false;
        } catch (SQLiteException e) {
            mo11081c().m11560D().m11538c("Error storing raw event. appId", zzer.m11546v(zzakVar.f8856a), e);
            return false;
        }
    }

    @WorkerThread
    /* renamed from: S */
    public final boolean m11778S(zzkt zzktVar) {
        Preconditions.m14523k(zzktVar);
        mo11316e();
        m11038q();
        if (m11757n0(zzktVar.f9706a, zzktVar.f9708c) == null) {
            if (zzkw.m10963c0(zzktVar.f9708c)) {
                if (m11763h0("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzktVar.f9706a}) >= m11311l().m10874x(zzktVar.f9706a)) {
                    return false;
                }
            } else if (!"_npa".equals(zzktVar.f9708c) && m11763h0("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzktVar.f9706a, zzktVar.f9707b}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzktVar.f9706a);
        contentValues.put(FirebaseAnalytics.Param.ORIGIN, zzktVar.f9707b);
        contentValues.put("name", zzktVar.f9708c);
        contentValues.put("set_timestamp", Long.valueOf(zzktVar.f9709d));
        m11785L(contentValues, FirebaseAnalytics.Param.VALUE, zzktVar.f9710e);
        try {
            if (m11749u().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            mo11081c().m11560D().m11539b("Failed to insert/update user property (got -1). appId", zzer.m11546v(zzktVar.f9706a));
            return true;
        } catch (SQLiteException e) {
            mo11081c().m11560D().m11538c("Error storing user property. appId", zzer.m11546v(zzktVar.f9706a), e);
            return true;
        }
    }

    @WorkerThread
    /* renamed from: T */
    public final boolean m11777T(zzw zzwVar) {
        Preconditions.m14523k(zzwVar);
        mo11316e();
        m11038q();
        if (m11757n0(zzwVar.f9776f, zzwVar.f9778h.f9700g) == null && m11763h0("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzwVar.f9776f}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzwVar.f9776f);
        contentValues.put(FirebaseAnalytics.Param.ORIGIN, zzwVar.f9777g);
        contentValues.put("name", zzwVar.f9778h.f9700g);
        m11785L(contentValues, FirebaseAnalytics.Param.VALUE, zzwVar.f9778h.m11035B());
        contentValues.put("active", Boolean.valueOf(zzwVar.f9780j));
        contentValues.put("trigger_event_name", zzwVar.f9781k);
        contentValues.put("trigger_timeout", Long.valueOf(zzwVar.f9783m));
        m11313j();
        contentValues.put("timed_out_event", zzkw.m10951n0(zzwVar.f9782l));
        contentValues.put("creation_timestamp", Long.valueOf(zzwVar.f9779i));
        m11313j();
        contentValues.put("triggered_event", zzkw.m10951n0(zzwVar.f9784n));
        contentValues.put("triggered_timestamp", Long.valueOf(zzwVar.f9778h.f9701h));
        contentValues.put("time_to_live", Long.valueOf(zzwVar.f9785o));
        m11313j();
        contentValues.put("expired_event", zzkw.m10951n0(zzwVar.f9786p));
        try {
            if (m11749u().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            mo11081c().m11560D().m11539b("Failed to insert/update conditional user property (got -1)", zzer.m11546v(zzwVar.f9776f));
            return true;
        } catch (SQLiteException e) {
            mo11081c().m11560D().m11538c("Error storing conditional user property", zzer.m11546v(zzwVar.f9776f), e);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: W */
    public final boolean m11774W(String str, Bundle bundle) {
        mo11316e();
        m11038q();
        byte[] g = m11115m().m11008w(new zzak(this.f9354a, "", str, "dep", 0L, 0L, bundle)).m12660g();
        mo11081c().m11552L().m11538c("Saving default event parameters, appId, data size", m11314i().m11569u(str), Integer.valueOf(g.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("parameters", g);
        try {
            if (m11749u().insertWithOnConflict("default_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            mo11081c().m11560D().m11539b("Failed to insert default event parameters (got -1). appId", zzer.m11546v(str));
            return false;
        } catch (SQLiteException e) {
            mo11081c().m11560D().m11538c("Error storing default event parameters. appId", zzer.m11546v(str), e);
            return false;
        }
    }

    /* renamed from: X */
    public final boolean m11773X(String str, Long l, long j, zzcd.zzc zzcVar) {
        mo11316e();
        m11038q();
        Preconditions.m14523k(zzcVar);
        Preconditions.m14527g(str);
        Preconditions.m14523k(l);
        byte[] g = zzcVar.m12660g();
        mo11081c().m11552L().m11538c("Saving complex main event, appId, data size", m11314i().m11569u(str), Integer.valueOf(g.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", g);
        try {
            if (m11749u().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            mo11081c().m11560D().m11539b("Failed to insert complex main event (got -1). appId", zzer.m11546v(str));
            return false;
        } catch (SQLiteException e) {
            mo11081c().m11560D().m11538c("Error storing complex main event. appId", zzer.m11546v(str), e);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02a2  */
    @androidx.annotation.WorkerThread
    /* renamed from: i0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzf m11762i0(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 1065
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11762i0(java.lang.String):com.google.android.gms.measurement.internal.zzf");
    }

    @WorkerThread
    /* renamed from: j0 */
    public final List<zzw> m11761j0(String str, String str2, String str3) {
        Preconditions.m14527g(str);
        mo11316e();
        m11038q();
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
        return m11786K(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    @WorkerThread
    /* renamed from: k0 */
    public final void m11760k0(String str, String str2) {
        Preconditions.m14527g(str);
        Preconditions.m14527g(str2);
        mo11316e();
        m11038q();
        try {
            m11749u().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            mo11081c().m11560D().m11537d("Error deleting user property. appId", zzer.m11546v(str), m11314i().m11565y(str2), e);
        }
    }

    /* renamed from: m0 */
    public final long m11758m0(String str) {
        Preconditions.m14527g(str);
        mo11316e();
        m11038q();
        try {
            return m11749u().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, m11311l().m10878t(str, zzat.f8958p))))});
        } catch (SQLiteException e) {
            mo11081c().m11560D().m11538c("Error deleting over the limit events. appId", zzer.m11546v(str), e);
            return 0L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x011e  */
    @androidx.annotation.WorkerThread
    /* renamed from: n0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzkt m11757n0(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11757n0(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzkt");
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x021e  */
    @androidx.annotation.WorkerThread
    /* renamed from: o0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzw m11756o0(java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11756o0(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzw");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b5  */
    @androidx.annotation.WorkerThread
    /* renamed from: p0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] m11755p0(java.lang.String r10) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r0 = com.google.android.gms.common.internal.Preconditions.m14527g(r0)
            r0 = r9
            r0.mo11316e()
            r0 = r9
            r0.m11038q()
            r0 = 0
            r11 = r0
            r0 = r9
            android.database.sqlite.SQLiteDatabase r0 = r0.m11749u()     // Catch: all -> 0x0087, SQLiteException -> 0x008b
            java.lang.String r1 = "apps"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x0087, SQLiteException -> 0x008b
            r3 = r2
            r4 = 0
            java.lang.String r5 = "remote_config"
            r3[r4] = r5     // Catch: all -> 0x0087, SQLiteException -> 0x008b
            java.lang.String r3 = "app_id=?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: all -> 0x0087, SQLiteException -> 0x008b
            r5 = r4
            r6 = 0
            r7 = r10
            r5[r6] = r7     // Catch: all -> 0x0087, SQLiteException -> 0x008b
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: all -> 0x0087, SQLiteException -> 0x008b
            r12 = r0
            r0 = r12
            r11 = r0
            r0 = r12
            boolean r0 = r0.moveToFirst()     // Catch: SQLiteException -> 0x0082, all -> 0x00b0
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L_0x004c
            r0 = r12
            if (r0 == 0) goto L_0x004a
            r0 = r12
            r0.close()
        L_0x004a:
            r0 = 0
            return r0
        L_0x004c:
            r0 = r12
            r11 = r0
            r0 = r12
            r1 = 0
            byte[] r0 = r0.getBlob(r1)     // Catch: SQLiteException -> 0x0082, all -> 0x00b0
            r14 = r0
            r0 = r12
            r11 = r0
            r0 = r12
            boolean r0 = r0.moveToNext()     // Catch: SQLiteException -> 0x0082, all -> 0x00b0
            if (r0 == 0) goto L_0x0075
            r0 = r12
            r11 = r0
            r0 = r9
            com.google.android.gms.measurement.internal.zzer r0 = r0.mo11081c()     // Catch: SQLiteException -> 0x0082, all -> 0x00b0
            com.google.android.gms.measurement.internal.zzet r0 = r0.m11560D()     // Catch: SQLiteException -> 0x0082, all -> 0x00b0
            java.lang.String r1 = "Got multiple records for app config, expected one. appId"
            r2 = r10
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzer.m11546v(r2)     // Catch: SQLiteException -> 0x0082, all -> 0x00b0
            r0.m11539b(r1, r2)     // Catch: SQLiteException -> 0x0082, all -> 0x00b0
        L_0x0075:
            r0 = r12
            if (r0 == 0) goto L_0x007f
            r0 = r12
            r0.close()
        L_0x007f:
            r0 = r14
            return r0
        L_0x0082:
            r14 = move-exception
            goto L_0x008f
        L_0x0087:
            r10 = move-exception
            goto L_0x00b1
        L_0x008b:
            r14 = move-exception
            r0 = 0
            r12 = r0
        L_0x008f:
            r0 = r12
            r11 = r0
            r0 = r9
            com.google.android.gms.measurement.internal.zzer r0 = r0.mo11081c()     // Catch: all -> 0x00b0
            com.google.android.gms.measurement.internal.zzet r0 = r0.m11560D()     // Catch: all -> 0x00b0
            java.lang.String r1 = "Error querying remote config. appId"
            r2 = r10
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzer.m11546v(r2)     // Catch: all -> 0x00b0
            r3 = r14
            r0.m11538c(r1, r2, r3)     // Catch: all -> 0x00b0
            r0 = r12
            if (r0 == 0) goto L_0x00ae
            r0 = r12
            r0.close()
        L_0x00ae:
            r0 = 0
            return r0
        L_0x00b0:
            r10 = move-exception
        L_0x00b1:
            r0 = r11
            if (r0 == 0) goto L_0x00bb
            r0 = r11
            r0.close()
        L_0x00bb:
            r0 = r10
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11755p0(java.lang.String):byte[]");
    }

    @WorkerThread
    /* renamed from: q0 */
    public final int m11754q0(String str, String str2) {
        Preconditions.m14527g(str);
        Preconditions.m14527g(str2);
        mo11316e();
        m11038q();
        try {
            return m11749u().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            mo11081c().m11560D().m11537d("Error deleting conditional property", zzer.m11546v(str), m11314i().m11565y(str2), e);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r0 */
    public final Map<Integer, List<zzbv.zzb>> m11753r0(String str) {
        Preconditions.m14527g(str);
        ArrayMap arrayMap = new ArrayMap();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = m11749u().query("event_filters", new String[]{"audience_id", "data"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    Map<Integer, List<zzbv.zzb>> emptyMap = Collections.emptyMap();
                    if (query != null) {
                        query.close();
                    }
                    return emptyMap;
                }
                do {
                    try {
                        zzbv.zzb zzbVar = (zzbv.zzb) ((zzhz) ((zzbv.zzb.zza) zzks.m11006y(zzbv.zzb.m13361S(), query.getBlob(1))).mo12321k());
                        if (zzbVar.m13367M()) {
                            int i = query.getInt(0);
                            List list = (List) arrayMap.get(Integer.valueOf(i));
                            List list2 = list;
                            if (list == null) {
                                list2 = new ArrayList();
                                arrayMap.put(Integer.valueOf(i), list2);
                            }
                            list2.add(zzbVar);
                        }
                    } catch (IOException e) {
                        mo11081c().m11560D().m11538c("Failed to merge filter. appId", zzer.m11546v(str), e);
                    }
                } while (query.moveToNext());
                if (query != null) {
                    query.close();
                }
                return arrayMap;
            } catch (SQLiteException e2) {
                mo11081c().m11560D().m11538c("Database error querying filters. appId", zzer.m11546v(str), e2);
                Map<Integer, List<zzbv.zzb>> emptyMap2 = Collections.emptyMap();
                if (0 != 0) {
                    cursor.close();
                }
                return emptyMap2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzkj
    /* renamed from: s */
    protected final boolean mo10928s() {
        return false;
    }

    @WorkerThread
    /* renamed from: s0 */
    public final void m11752s0() {
        m11038q();
        m11749u().beginTransaction();
    }

    @WorkerThread
    /* renamed from: t */
    public final void m11751t() {
        m11038q();
        m11749u().setTransactionSuccessful();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:64:0x012e  */
    /* renamed from: t0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<java.lang.Integer>> m11750t0(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11750t0(java.lang.String):java.util.Map");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    @WorkerThread
    /* renamed from: u */
    public final SQLiteDatabase m11749u() {
        mo11316e();
        try {
            return this.f8839d.getWritableDatabase();
        } catch (SQLiteException e) {
            mo11081c().m11557G().m11539b("Error opening database", e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0199  */
    /* JADX WARN: Type inference failed for: r10v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: u0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzbv.zzb>> m11748u0(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11748u0(java.lang.String, java.lang.String):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006d  */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    @androidx.annotation.WorkerThread
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m11747v() {
        /*
            r4 = this;
            r0 = r4
            android.database.sqlite.SQLiteDatabase r0 = r0.m11749u()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)     // Catch: all -> 0x003f, SQLiteException -> 0x0047
            r6 = r0
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0.moveToFirst()     // Catch: SQLiteException -> 0x003b, all -> 0x0066
            if (r0 == 0) goto L_0x002f
            r0 = r6
            r5 = r0
            r0 = r6
            r1 = 0
            java.lang.String r0 = r0.getString(r1)     // Catch: SQLiteException -> 0x003b, all -> 0x0066
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
            goto L_0x004a
        L_0x003f:
            r5 = move-exception
            r0 = 0
            r7 = r0
            r0 = r5
            r6 = r0
            goto L_0x0069
        L_0x0047:
            r7 = move-exception
            r0 = 0
            r6 = r0
        L_0x004a:
            r0 = r6
            r5 = r0
            r0 = r4
            com.google.android.gms.measurement.internal.zzer r0 = r0.mo11081c()     // Catch: all -> 0x0066
            com.google.android.gms.measurement.internal.zzet r0 = r0.m11560D()     // Catch: all -> 0x0066
            java.lang.String r1 = "Database error getting next bundle app id"
            r2 = r7
            r0.m11539b(r1, r2)     // Catch: all -> 0x0066
            r0 = r6
            if (r0 == 0) goto L_0x0064
            r0 = r6
            r0.close()
        L_0x0064:
            r0 = 0
            return r0
        L_0x0066:
            r6 = move-exception
            r0 = r5
            r7 = r0
        L_0x0069:
            r0 = r7
            if (r0 == 0) goto L_0x0073
            r0 = r7
            r0.close()
        L_0x0073:
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11747v():java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0162  */
    /* renamed from: v0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, com.google.android.gms.internal.measurement.zzcd.zzi> m11746v0(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11746v0(java.lang.String):java.util.Map");
    }

    /* renamed from: w */
    public final boolean m11745w() {
        return m11763h0("select count(1) > 0 from queue where has_realtime = 1", null) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0193  */
    /* JADX WARN: Type inference failed for: r11v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* renamed from: w0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzbv.zze>> m11744w0(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11744w0(java.lang.String, java.lang.String):java.util.Map");
    }

    /* renamed from: x */
    public final long m11743x(zzcd.zzg zzgVar) throws IOException {
        mo11316e();
        m11038q();
        Preconditions.m14523k(zzgVar);
        Preconditions.m14527g(zzgVar.m13058T2());
        byte[] g = zzgVar.m12660g();
        long u = m11115m().m11010u(g);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzgVar.m13058T2());
        contentValues.put("metadata_fingerprint", Long.valueOf(u));
        contentValues.put("metadata", g);
        try {
            m11749u().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return u;
        } catch (SQLiteException e) {
            mo11081c().m11560D().m11538c("Error storing raw event metadata. appId", zzer.m11546v(zzgVar.m13058T2()), e);
            throw e;
        }
    }

    @WorkerThread
    /* renamed from: x0 */
    public final void m11742x0() {
        m11038q();
        m11749u().endTransaction();
    }

    /* renamed from: y0 */
    public final long m11740y0(String str) {
        Preconditions.m14527g(str);
        return m11741y("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00f9  */
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<com.google.android.gms.internal.measurement.zzcd.zzc, java.lang.Long> m11739z(java.lang.String r8, java.lang.Long r9) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11739z(java.lang.String, java.lang.Long):android.util.Pair");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    @com.google.android.gms.common.util.VisibleForTesting
    @androidx.annotation.WorkerThread
    /* renamed from: z0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m11738z0(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzac.m11738z0(java.lang.String, java.lang.String):long");
    }
}
