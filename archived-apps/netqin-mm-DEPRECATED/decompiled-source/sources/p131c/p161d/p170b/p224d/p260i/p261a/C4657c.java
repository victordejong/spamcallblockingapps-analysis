package p131c.p161d.p170b.p224d.p260i.p261a;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.ads.AdError;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzbv;
import com.google.android.gms.internal.measurement.zzcd;
import com.google.android.gms.internal.measurement.zzhy;
import com.google.android.gms.internal.measurement.zznv;
import com.google.android.gms.measurement.internal.zzab;
import com.google.android.gms.measurement.internal.zzac;
import com.google.android.gms.measurement.internal.zzae;
import com.google.android.gms.measurement.internal.zzan;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzeq;
import com.google.android.gms.measurement.internal.zzes;
import com.google.android.gms.measurement.internal.zzgu;
import com.google.android.gms.measurement.internal.zzgv;
import com.google.android.gms.measurement.internal.zzgx;
import com.google.android.gms.measurement.internal.zzkl;
import com.google.android.gms.measurement.internal.zzkr;
import com.google.android.gms.measurement.internal.zzkv;
import com.google.android.gms.measurement.internal.zzz;
import com.integralads.avid.library.mopub.AvidBridge;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import com.mopub.common.Constants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p012b.p035f.C0780a;
/* renamed from: c.d.b.d.i.a.c */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/c.class */
public final class C4657c extends AbstractC4750l7 {

    /* renamed from: f */
    public static final String[] f16989f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: g */
    public static final String[] f16990g = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: h */
    public static final String[] f16991h = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"};

    /* renamed from: i */
    public static final String[] f16992i = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: j */
    public static final String[] f16993j = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: k */
    public static final String[] f16994k = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: l */
    public static final String[] f16995l = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: m */
    public static final String[] f16996m = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: e */
    public final C4723i7 f16998e = new C4723i7(mo8779z());

    /* renamed from: d */
    public final C4667d f16997d = new C4667d(this, mo8846B(), "google_app_measurement.db");

    public C4657c(zzkl zzklVar) {
        super(zzklVar);
    }

    /* renamed from: a */
    public static void m25088a(ContentValues contentValues, String str, Object obj) {
        Preconditions.m17281b(str);
        Preconditions.m17288a(obj);
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

    /* renamed from: A */
    public final long m25104A() {
        return m25067a("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    /* renamed from: C */
    public final long m25103C() {
        return m25067a("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    /* renamed from: D */
    public final boolean m25102D() {
        return m25060b("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    /* renamed from: E */
    public final boolean m25101E() {
        return m25060b("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }

    /* renamed from: F */
    public final long m25100F() {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor rawQuery = m25044s().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
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
                mo8789p().m9152q().m9142a("Error querying raw events", e);
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

    /* renamed from: a */
    public final long m25082a(zzcd.zzg zzgVar) throws IOException {
        mo9085c();
        m24903n();
        Preconditions.m17288a(zzgVar);
        Preconditions.m17281b(zzgVar.m10098f());
        byte[] a = zzgVar.m9796a();
        long a2 = m24896i().m8752a(a);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzgVar.m10098f());
        contentValues.put("metadata_fingerprint", Long.valueOf(a2));
        contentValues.put("metadata", a);
        try {
            m25044s().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return a2;
        } catch (SQLiteException e) {
            mo8789p().m9152q().m9141a("Error storing raw event metadata. appId", zzeq.m9157a(zzgVar.m10098f()), e);
            throw e;
        }
    }

    /* renamed from: a */
    public final long m25067a(String str, String[] strArr, long j) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor2 = m25044s().rawQuery(str, strArr);
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
                mo8789p().m9152q().m9141a("Database error", str, e);
                throw e;
            }
        } finally {
            if (cursor2 != null) {
                cursor2.close();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00f9  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<com.google.android.gms.internal.measurement.zzcd.zzc, java.lang.Long> m25073a(java.lang.String r8, java.lang.Long r9) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25073a(java.lang.String, java.lang.Long):android.util.Pair");
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:94:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p131c.p161d.p170b.p224d.p260i.p261a.C4706h m25071a(java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 559
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25071a(java.lang.String, java.lang.String):c.d.b.d.i.a.h");
    }

    /* renamed from: a */
    public final zzae m25090a(long j, String str, long j2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        Preconditions.m17281b(str);
        mo9085c();
        m24903n();
        zzae zzaeVar = new zzae();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                SQLiteDatabase s = m25044s();
                Cursor query = s.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    mo8789p().m9149t().m9142a("Not updating daily counts, app is not known. appId", zzeq.m9157a(str));
                    if (query != null) {
                        query.close();
                    }
                    return zzaeVar;
                }
                if (query.getLong(0) == j) {
                    zzaeVar.f29795b = query.getLong(1);
                    zzaeVar.f29794a = query.getLong(2);
                    zzaeVar.f29796c = query.getLong(3);
                    zzaeVar.f29797d = query.getLong(4);
                    zzaeVar.f29798e = query.getLong(5);
                }
                if (z) {
                    zzaeVar.f29795b += j2;
                }
                if (z2) {
                    zzaeVar.f29794a += j2;
                }
                if (z3) {
                    zzaeVar.f29796c += j2;
                }
                if (z4) {
                    zzaeVar.f29797d += j2;
                }
                if (z5) {
                    zzaeVar.f29798e += j2;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j));
                contentValues.put("daily_public_events_count", Long.valueOf(zzaeVar.f29794a));
                contentValues.put("daily_events_count", Long.valueOf(zzaeVar.f29795b));
                contentValues.put("daily_conversions_count", Long.valueOf(zzaeVar.f29796c));
                contentValues.put("daily_error_events_count", Long.valueOf(zzaeVar.f29797d));
                contentValues.put("daily_realtime_events_count", Long.valueOf(zzaeVar.f29798e));
                s.update("apps", contentValues, "app_id=?", new String[]{str});
                if (query != null) {
                    query.close();
                }
                return zzaeVar;
            } catch (SQLiteException e) {
                mo8789p().m9152q().m9141a("Error updating daily counts. appId", zzeq.m9157a(str), e);
                if (0 != 0) {
                    cursor.close();
                }
                return zzaeVar;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    public final zzae m25089a(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return m25090a(j, str, 1L, false, false, z3, false, z5);
    }

    @VisibleForTesting
    /* renamed from: a */
    public final Object m25087a(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type == 0) {
            mo8789p().m9152q().m9143a("Loaded invalid null value from database");
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
                mo8789p().m9152q().m9142a("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                return null;
            }
            mo8789p().m9152q().m9143a("Loaded invalid blob type value, ignoring it");
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m25091a(long r9) {
        /*
            r8 = this;
            r0 = r8
            r0.mo9085c()
            r0 = r8
            r0.m24903n()
            r0 = 0
            r11 = r0
            r0 = r8
            android.database.sqlite.SQLiteDatabase r0 = r0.m25044s()     // Catch: all -> 0x006d, SQLiteException -> 0x0072
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
            com.google.android.gms.measurement.internal.zzeq r0 = r0.mo8789p()     // Catch: SQLiteException -> 0x0068, all -> 0x0097
            com.google.android.gms.measurement.internal.zzes r0 = r0.m9144y()     // Catch: SQLiteException -> 0x0068, all -> 0x0097
            java.lang.String r1 = "No expired configs for apps with pending events"
            r0.m9143a(r1)     // Catch: SQLiteException -> 0x0068, all -> 0x0097
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
            com.google.android.gms.measurement.internal.zzeq r0 = r0.mo8789p()     // Catch: all -> 0x0097
            com.google.android.gms.measurement.internal.zzes r0 = r0.m9152q()     // Catch: all -> 0x0097
            java.lang.String r1 = "Error selecting expired configs"
            r2 = r13
            r0.m9142a(r1, r2)     // Catch: all -> 0x0097
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
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25091a(long):java.lang.String");
    }

    /* renamed from: a */
    public final String m25066a(String str, String[] strArr, String str2) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor2 = m25044s().rawQuery(str, strArr);
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
                mo8789p().m9152q().m9141a("Database error", str, e);
                throw e;
            }
        } finally {
            if (cursor2 != null) {
                cursor2.close();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x0177  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<p131c.p161d.p170b.p224d.p260i.p261a.C4822t7> m25078a(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25078a(java.lang.String):java.util.List");
    }

    /* renamed from: a */
    public final List<Pair<zzcd.zzg, Long>> m25077a(String str, int i, int i2) {
        int i3;
        byte[] b;
        mo9085c();
        m24903n();
        Preconditions.m17284a(i > 0);
        Preconditions.m17284a(i2 > 0);
        Preconditions.m17281b(str);
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = m25044s().query("queue", new String[]{"rowid", "data", "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i));
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
                        b = m24896i().m8748b(query.getBlob(1));
                    } catch (IOException e) {
                        mo8789p().m9152q().m9141a("Failed to unzip queued bundle. appId", zzeq.m9157a(str), e);
                        i3 = i4;
                    }
                    if (!arrayList.isEmpty() && b.length + i4 > i2) {
                        break;
                    }
                    try {
                        zzcd.zzg.zza zzaVar = (zzcd.zzg.zza) zzkr.m8766a(zzcd.zzg.m10178F0(), b);
                        if (!query.isNull(2)) {
                            zzaVar.m9973i(query.getInt(2));
                        }
                        i3 = i4 + b.length;
                        arrayList.add(Pair.create((zzcd.zzg) ((zzhy) zzaVar.mo9619b()), Long.valueOf(j)));
                    } catch (IOException e2) {
                        mo8789p().m9152q().m9141a("Failed to merge queued bundle. appId", zzeq.m9157a(str), e2);
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
                mo8789p().m9152q().m9141a("Error querying bundles. appId", zzeq.m9157a(str), e3);
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
        mo8789p().m9152q().m9142a("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:106:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x024a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<p131c.p161d.p170b.p224d.p260i.p261a.C4822t7> m25070a(java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25070a(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00b6, code lost:
        r21 = r0;
        r20 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00bb, code lost:
        mo8789p().m9152q().m9142a("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzz> m25068a(java.lang.String r17, java.lang.String[] r18) {
        /*
            Method dump skipped, instructions count: 639
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25068a(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* renamed from: a */
    public final void m25085a(C4710h3 h3Var) {
        Preconditions.m17288a(h3Var);
        mo9085c();
        m24903n();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", h3Var.m24968l());
        contentValues.put("app_instance_id", h3Var.m24966m());
        contentValues.put("gmp_app_id", h3Var.m24964n());
        contentValues.put("resettable_device_id_hash", h3Var.m24958q());
        contentValues.put("last_bundle_index", Long.valueOf(h3Var.m25012B()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(h3Var.m24956s()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(h3Var.m24955t()));
        contentValues.put("app_version", h3Var.m24954u());
        contentValues.put("app_store", h3Var.m24952w());
        contentValues.put("gmp_version", Long.valueOf(h3Var.m24951x()));
        contentValues.put("dev_cert_hash", Long.valueOf(h3Var.m24950y()));
        contentValues.put("measurement_enabled", Boolean.valueOf(h3Var.m25013A()));
        contentValues.put("day", Long.valueOf(h3Var.m25008F()));
        contentValues.put("daily_public_events_count", Long.valueOf(h3Var.m25007G()));
        contentValues.put("daily_events_count", Long.valueOf(h3Var.m25006H()));
        contentValues.put("daily_conversions_count", Long.valueOf(h3Var.m25005I()));
        contentValues.put("config_fetched_time", Long.valueOf(h3Var.m25011C()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(h3Var.m25010D()));
        contentValues.put("app_version_int", Long.valueOf(h3Var.m24953v()));
        contentValues.put("firebase_instance_id", h3Var.m24957r());
        contentValues.put("daily_error_events_count", Long.valueOf(h3Var.m24994c()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(h3Var.m24998b()));
        contentValues.put("health_monitor_sample", h3Var.m24990d());
        contentValues.put("android_id", Long.valueOf(h3Var.m24984f()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(h3Var.m24981g()));
        contentValues.put("ssaid_reporting_enabled", Boolean.valueOf(h3Var.m24978h()));
        contentValues.put("admob_app_id", h3Var.m24962o());
        contentValues.put("dynamite_version", Long.valueOf(h3Var.m24949z()));
        if (h3Var.m24972j() != null) {
            if (h3Var.m24972j().size() == 0) {
                mo8789p().m9149t().m9142a("Safelisted events should not be an empty list. appId", h3Var.m24968l());
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", h3Var.m24972j()));
            }
        }
        if (zznv.m9491a() && m24897h().m9342e(h3Var.m24968l(), zzas.f29876j0)) {
            contentValues.put("ga_app_id", h3Var.m24960p());
        }
        try {
            SQLiteDatabase s = m25044s();
            if (s.update("apps", contentValues, "app_id = ?", new String[]{h3Var.m24968l()}) == 0 && s.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                mo8789p().m9152q().m9142a("Failed to insert/update app (got -1). appId", zzeq.m9157a(h3Var.m24968l()));
            }
        } catch (SQLiteException e) {
            mo8789p().m9152q().m9141a("Error storing app. appId", zzeq.m9157a(h3Var.m24968l()), e);
        }
    }

    /* renamed from: a */
    public final void m25084a(C4706h hVar) {
        Preconditions.m17288a(hVar);
        mo9085c();
        m24903n();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", hVar.f17102a);
        contentValues.put("name", hVar.f17103b);
        contentValues.put("lifetime_count", Long.valueOf(hVar.f17104c));
        contentValues.put("current_bundle_count", Long.valueOf(hVar.f17105d));
        contentValues.put("last_fire_timestamp", Long.valueOf(hVar.f17107f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(hVar.f17108g));
        contentValues.put("last_bundled_day", hVar.f17109h);
        contentValues.put("last_sampled_complex_event_id", hVar.f17110i);
        contentValues.put("last_sampling_rate", hVar.f17111j);
        contentValues.put("current_session_count", Long.valueOf(hVar.f17106e));
        Boolean bool = hVar.f17112k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (m25044s().insertWithOnConflict(Constants.VIDEO_TRACKING_EVENTS_KEY, null, contentValues, 5) == -1) {
                mo8789p().m9152q().m9142a("Failed to insert/update event aggregates (got -1). appId", zzeq.m9157a(hVar.f17102a));
            }
        } catch (SQLiteException e) {
            mo8789p().m9152q().m9141a("Error storing event aggregates. appId", zzeq.m9157a(hVar.f17102a), e);
        }
    }

    /* renamed from: a */
    public final void m25069a(String str, List<zzbv.zza> list) {
        boolean z;
        boolean z2;
        Preconditions.m17288a(list);
        for (int i = 0; i < list.size(); i++) {
            zzbv.zza.C10515zza l = list.get(i).m9662l();
            if (l.m10408o() != 0) {
                for (int i2 = 0; i2 < l.m10408o(); i2++) {
                    zzbv.zzb.zza l2 = l.m10409b(i2).m9662l();
                    zzbv.zzb.zza zzaVar = (zzbv.zzb.zza) ((zzhy.zzb) l2.clone());
                    String b = zzgv.m9009b(l2.zza());
                    if (b != null) {
                        zzaVar.mo9794a(b);
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    for (int i3 = 0; i3 < l2.m10388o(); i3++) {
                        zzbv.zzc a = l2.m10390a(i3);
                        String a2 = zzgu.m9011a(a.m10379v());
                        if (a2 != null) {
                            zzbv.zzc.zza l3 = a.m9662l();
                            l3.mo9794a(a2);
                            zzaVar.m10389a(i3, (zzbv.zzc) ((zzhy) l3.mo9619b()));
                            z2 = true;
                        }
                    }
                    if (z2) {
                        l.m10411a(i2, zzaVar);
                        list.set(i, (zzbv.zza) ((zzhy) l.mo9619b()));
                    }
                }
            }
            if (l.zza() != 0) {
                for (int i4 = 0; i4 < l.zza(); i4++) {
                    zzbv.zze a3 = l.m10412a(i4);
                    String a4 = zzgx.m9007a(a3.m10362q());
                    if (a4 != null) {
                        zzbv.zze.zza l4 = a3.m9662l();
                        l4.mo9794a(a4);
                        l.m10410a(i4, l4);
                        list.set(i, (zzbv.zza) ((zzhy) l.mo9619b()));
                    }
                }
            }
        }
        m24903n();
        mo9085c();
        Preconditions.m17281b(str);
        Preconditions.m17288a(list);
        SQLiteDatabase s = m25044s();
        s.beginTransaction();
        try {
            m24903n();
            mo9085c();
            Preconditions.m17281b(str);
            SQLiteDatabase s2 = m25044s();
            s2.delete("property_filters", "app_id=?", new String[]{str});
            s2.delete("event_filters", "app_id=?", new String[]{str});
            for (zzbv.zza zzaVar2 : list) {
                m24903n();
                mo9085c();
                Preconditions.m17281b(str);
                Preconditions.m17288a(zzaVar2);
                if (!zzaVar2.zza()) {
                    mo8789p().m9149t().m9142a("Audience with no ID. appId", zzeq.m9157a(str));
                } else {
                    int p = zzaVar2.m10418p();
                    Iterator<zzbv.zzb> it = zzaVar2.m10415s().iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (!it.next().zza()) {
                                mo8789p().m9149t().m9141a("Event filter with no ID. Audience definition ignored. appId, audienceId", zzeq.m9157a(str), Integer.valueOf(p));
                                break;
                            }
                        } else {
                            Iterator<zzbv.zze> it2 = zzaVar2.m10417q().iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    if (!it2.next().zza()) {
                                        mo8789p().m9149t().m9141a("Property filter with no ID. Audience definition ignored. appId, audienceId", zzeq.m9157a(str), Integer.valueOf(p));
                                        break;
                                    }
                                } else {
                                    Iterator<zzbv.zzb> it3 = zzaVar2.m10415s().iterator();
                                    while (true) {
                                        if (it3.hasNext()) {
                                            if (!m25076a(str, p, it3.next())) {
                                                z = false;
                                                break;
                                            }
                                        } else {
                                            z = true;
                                            break;
                                        }
                                    }
                                    boolean z3 = z;
                                    if (z) {
                                        Iterator<zzbv.zze> it4 = zzaVar2.m10417q().iterator();
                                        while (true) {
                                            z3 = z;
                                            if (it4.hasNext()) {
                                                if (!m25075a(str, p, it4.next())) {
                                                    z3 = false;
                                                    break;
                                                }
                                            } else {
                                                break;
                                            }
                                        }
                                    }
                                    if (!z3) {
                                        m24903n();
                                        mo9085c();
                                        Preconditions.m17281b(str);
                                        SQLiteDatabase s3 = m25044s();
                                        s3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(p)});
                                        s3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(p)});
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (zzbv.zza zzaVar3 : list) {
                arrayList.add(zzaVar3.zza() ? Integer.valueOf(zzaVar3.m10418p()) : null);
            }
            m25061b(str, arrayList);
            s.setTransactionSuccessful();
            s.endTransaction();
        } catch (Throwable th) {
            s.endTransaction();
            throw th;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m25065a(List<Long> list) {
        mo9085c();
        m24903n();
        Preconditions.m17288a(list);
        Preconditions.m17291a(list.size());
        if (m25041v()) {
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
            if (m25060b(sb3.toString(), (String[]) null) > 0) {
                mo8789p().m9149t().m9143a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase s = m25044s();
                StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 127);
                sb4.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb4.append(sb2);
                sb4.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                s.execSQL(sb4.toString());
            } catch (SQLiteException e) {
                mo8789p().m9152q().m9142a("Error incrementing retry count. error", e);
            }
        }
    }

    /* renamed from: a */
    public final boolean m25083a(C4822t7 t7Var) {
        Preconditions.m17288a(t7Var);
        mo9085c();
        m24903n();
        if (m25058c(t7Var.f17401a, t7Var.f17403c) == null) {
            if (zzkv.m8681g(t7Var.f17403c)) {
                if (m25060b("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{t7Var.f17401a}) >= m24897h().m9345d(t7Var.f17401a)) {
                    return false;
                }
            } else if (!"_npa".equals(t7Var.f17403c) && m25060b("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{t7Var.f17401a, t7Var.f17402b}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", t7Var.f17401a);
        contentValues.put("origin", t7Var.f17402b);
        contentValues.put("name", t7Var.f17403c);
        contentValues.put("set_timestamp", Long.valueOf(t7Var.f17404d));
        m25088a(contentValues, "value", t7Var.f17405e);
        try {
            if (m25044s().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            mo8789p().m9152q().m9142a("Failed to insert/update user property (got -1). appId", zzeq.m9157a(t7Var.f17401a));
            return true;
        } catch (SQLiteException e) {
            mo8789p().m9152q().m9141a("Error storing user property. appId", zzeq.m9157a(t7Var.f17401a), e);
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m25081a(zzcd.zzg zzgVar, boolean z) {
        mo9085c();
        m24903n();
        Preconditions.m17288a(zzgVar);
        Preconditions.m17281b(zzgVar.m10098f());
        Preconditions.m17280b(zzgVar.m10032r0());
        m25038y();
        long b = mo8779z().mo17091b();
        if (zzgVar.m10030s0() < b - zzab.m9324v() || zzgVar.m10030s0() > zzab.m9324v() + b) {
            mo8789p().m9149t().m9140a("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzeq.m9157a(zzgVar.m10098f()), Long.valueOf(b), Long.valueOf(zzgVar.m10030s0()));
        }
        try {
            byte[] c = m24896i().m8747c(zzgVar.m9796a());
            mo8789p().m9144y().m9142a("Saving bundle, size", Integer.valueOf(c.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzgVar.m10098f());
            contentValues.put("bundle_end_timestamp", Long.valueOf(zzgVar.m10030s0()));
            contentValues.put("data", c);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (zzgVar.m10168O()) {
                contentValues.put("retry_count", Integer.valueOf(zzgVar.m10166Q()));
            }
            try {
                if (m25044s().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                mo8789p().m9152q().m9142a("Failed to insert bundle (got -1). appId", zzeq.m9157a(zzgVar.m10098f()));
                return false;
            } catch (SQLiteException e) {
                mo8789p().m9152q().m9141a("Error storing bundle. appId", zzeq.m9157a(zzgVar.m10098f()), e);
                return false;
            }
        } catch (IOException e2) {
            mo8789p().m9152q().m9141a("Data loss. Failed to serialize bundle. appId", zzeq.m9157a(zzgVar.m10098f()), e2);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m25080a(zzan zzanVar, long j, boolean z) {
        mo9085c();
        m24903n();
        Preconditions.m17288a(zzanVar);
        Preconditions.m17281b(zzanVar.f29805a);
        byte[] a = m24896i().m8765a(zzanVar).m9796a();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzanVar.f29805a);
        contentValues.put("name", zzanVar.f29806b);
        contentValues.put(AvidJSONUtil.KEY_TIMESTAMP, Long.valueOf(zzanVar.f29808d));
        contentValues.put("metadata_fingerprint", Long.valueOf(j));
        contentValues.put("data", a);
        contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        try {
            if (m25044s().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            mo8789p().m9152q().m9142a("Failed to insert raw event (got -1). appId", zzeq.m9157a(zzanVar.f29805a));
            return false;
        } catch (SQLiteException e) {
            mo8789p().m9152q().m9141a("Error storing raw event. appId", zzeq.m9157a(zzanVar.f29805a), e);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m25079a(zzz zzzVar) {
        Preconditions.m17288a(zzzVar);
        mo9085c();
        m24903n();
        if (m25058c(zzzVar.f30178a, zzzVar.f30180c.f30142b) == null && m25060b("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzzVar.f30178a}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzzVar.f30178a);
        contentValues.put("origin", zzzVar.f30179b);
        contentValues.put("name", zzzVar.f30180c.f30142b);
        m25088a(contentValues, "value", zzzVar.f30180c.zza());
        contentValues.put(AvidBridge.APP_STATE_ACTIVE, Boolean.valueOf(zzzVar.f30182e));
        contentValues.put("trigger_event_name", zzzVar.f30183f);
        contentValues.put("trigger_timeout", Long.valueOf(zzzVar.f30185h));
        m24899f();
        contentValues.put("timed_out_event", zzkv.m8730a((Parcelable) zzzVar.f30184g));
        contentValues.put("creation_timestamp", Long.valueOf(zzzVar.f30181d));
        m24899f();
        contentValues.put("triggered_event", zzkv.m8730a((Parcelable) zzzVar.f30186i));
        contentValues.put("triggered_timestamp", Long.valueOf(zzzVar.f30180c.f30143c));
        contentValues.put("time_to_live", Long.valueOf(zzzVar.f30187j));
        m24899f();
        contentValues.put("expired_event", zzkv.m8730a((Parcelable) zzzVar.f30188k));
        try {
            if (m25044s().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            mo8789p().m9152q().m9142a("Failed to insert/update conditional user property (got -1)", zzeq.m9157a(zzzVar.f30178a));
            return true;
        } catch (SQLiteException e) {
            mo8789p().m9152q().m9141a("Error storing conditional user property", zzeq.m9157a(zzzVar.f30178a), e);
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m25076a(String str, int i, zzbv.zzb zzbVar) {
        m24903n();
        mo9085c();
        Preconditions.m17281b(str);
        Preconditions.m17288a(zzbVar);
        Integer num = null;
        if (TextUtils.isEmpty(zzbVar.m10400q())) {
            zzes t = mo8789p().m9149t();
            Object a = zzeq.m9157a(str);
            if (zzbVar.zza()) {
                num = Integer.valueOf(zzbVar.m10401p());
            }
            t.m9140a("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", a, Integer.valueOf(i), String.valueOf(num));
            return false;
        }
        byte[] a2 = zzbVar.m9796a();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzbVar.zza() ? Integer.valueOf(zzbVar.m10401p()) : null);
        contentValues.put("event_name", zzbVar.m10400q());
        contentValues.put("session_scoped", zzbVar.m10393x() ? Boolean.valueOf(zzbVar.m10392y()) : null);
        contentValues.put("data", a2);
        try {
            if (m25044s().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                return true;
            }
            mo8789p().m9152q().m9142a("Failed to insert event filter (got -1). appId", zzeq.m9157a(str));
            return true;
        } catch (SQLiteException e) {
            mo8789p().m9152q().m9141a("Error storing event filter. appId", zzeq.m9157a(str), e);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m25075a(String str, int i, zzbv.zze zzeVar) {
        m24903n();
        mo9085c();
        Preconditions.m17281b(str);
        Preconditions.m17288a(zzeVar);
        Integer num = null;
        if (TextUtils.isEmpty(zzeVar.m10362q())) {
            zzes t = mo8789p().m9149t();
            Object a = zzeq.m9157a(str);
            if (zzeVar.zza()) {
                num = Integer.valueOf(zzeVar.m10363p());
            }
            t.m9140a("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", a, Integer.valueOf(i), String.valueOf(num));
            return false;
        }
        byte[] a2 = zzeVar.m9796a();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzeVar.zza() ? Integer.valueOf(zzeVar.m10363p()) : null);
        contentValues.put("property_name", zzeVar.m10362q());
        contentValues.put("session_scoped", zzeVar.m10358u() ? Boolean.valueOf(zzeVar.m10357v()) : null);
        contentValues.put("data", a2);
        try {
            if (m25044s().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                return true;
            }
            mo8789p().m9152q().m9142a("Failed to insert property filter (got -1). appId", zzeq.m9157a(str));
            return false;
        } catch (SQLiteException e) {
            mo8789p().m9152q().m9141a("Error storing property filter. appId", zzeq.m9157a(str), e);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m25074a(String str, Bundle bundle) {
        mo9085c();
        m24903n();
        byte[] a = m24896i().m8765a(new zzan(this.f17262a, "", str, "dep", 0L, 0L, bundle)).m9796a();
        mo8789p().m9144y().m9141a("Saving default event parameters, appId, data size", m24900e().m9171a(str), Integer.valueOf(a.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("parameters", a);
        try {
            if (m25044s().insertWithOnConflict("default_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            mo8789p().m9152q().m9142a("Failed to insert default event parameters (got -1). appId", zzeq.m9157a(str));
            return false;
        } catch (SQLiteException e) {
            mo8789p().m9152q().m9141a("Error storing default event parameters. appId", zzeq.m9157a(str), e);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m25072a(String str, Long l, long j, zzcd.zzc zzcVar) {
        mo9085c();
        m24903n();
        Preconditions.m17288a(zzcVar);
        Preconditions.m17281b(str);
        Preconditions.m17288a(l);
        byte[] a = zzcVar.m9796a();
        mo8789p().m9144y().m9141a("Saving complex main event, appId, data size", m24900e().m9171a(str), Integer.valueOf(a.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", a);
        try {
            if (m25044s().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            mo8789p().m9152q().m9142a("Failed to insert complex main event (got -1). appId", zzeq.m9157a(str));
            return false;
        } catch (SQLiteException e) {
            mo8789p().m9152q().m9141a("Error storing complex main event. appId", zzeq.m9157a(str), e);
            return false;
        }
    }

    /* renamed from: b */
    public final long m25060b(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = m25044s().rawQuery(str, strArr);
                if (rawQuery.moveToFirst()) {
                    long j = rawQuery.getLong(0);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return j;
                }
                throw new SQLiteException("Database returned empty set");
            } catch (SQLiteException e) {
                mo8789p().m9152q().m9141a("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
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
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p131c.p161d.p170b.p224d.p260i.p261a.C4710h3 m25064b(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 1065
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25064b(java.lang.String):c.d.b.d.i.a.h3");
    }

    /* renamed from: b */
    public final List<zzz> m25062b(String str, String str2, String str3) {
        Preconditions.m17281b(str);
        mo9085c();
        m24903n();
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
        return m25068a(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* renamed from: b */
    public final void m25063b(String str, String str2) {
        Preconditions.m17281b(str);
        Preconditions.m17281b(str2);
        mo9085c();
        m24903n();
        try {
            m25044s().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            mo8789p().m9152q().m9140a("Error deleting user property. appId", zzeq.m9157a(str), m24900e().m9167c(str2), e);
        }
    }

    /* renamed from: b */
    public final boolean m25061b(String str, List<Integer> list) {
        Preconditions.m17281b(str);
        m24903n();
        mo9085c();
        SQLiteDatabase s = m25044s();
        try {
            long b = m25060b("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int max = Math.max(0, Math.min((int) AdError.SERVER_ERROR_CODE, m24897h().m9348b(str, zzas.f29826F)));
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
            return s.delete("audience_filter_values", sb3.toString(), new String[]{str, Integer.toString(max)}) > 0;
        } catch (SQLiteException e) {
            mo8789p().m9152q().m9141a("Database error querying filters. appId", zzeq.m9157a(str), e);
            return false;
        }
    }

    /* renamed from: c */
    public final long m25059c(String str) {
        Preconditions.m17281b(str);
        mo9085c();
        m24903n();
        try {
            return m25044s().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, m24897h().m9348b(str, zzas.f29887p))))});
        } catch (SQLiteException e) {
            mo8789p().m9152q().m9141a("Error deleting over the limit events. appId", zzeq.m9157a(str), e);
            return 0L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x011e  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p131c.p161d.p170b.p224d.p260i.p261a.C4822t7 m25058c(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25058c(java.lang.String, java.lang.String):c.d.b.d.i.a.t7");
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x021e  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzz m25056d(java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25056d(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzz");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b5  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] m25057d(java.lang.String r10) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r0 = com.google.android.gms.common.internal.Preconditions.m17281b(r0)
            r0 = r9
            r0.mo9085c()
            r0 = r9
            r0.m24903n()
            r0 = 0
            r11 = r0
            r0 = r9
            android.database.sqlite.SQLiteDatabase r0 = r0.m25044s()     // Catch: all -> 0x0087, SQLiteException -> 0x008b
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
            com.google.android.gms.measurement.internal.zzeq r0 = r0.mo8789p()     // Catch: SQLiteException -> 0x0082, all -> 0x00b0
            com.google.android.gms.measurement.internal.zzes r0 = r0.m9152q()     // Catch: SQLiteException -> 0x0082, all -> 0x00b0
            java.lang.String r1 = "Got multiple records for app config, expected one. appId"
            r2 = r10
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzeq.m9157a(r2)     // Catch: SQLiteException -> 0x0082, all -> 0x00b0
            r0.m9142a(r1, r2)     // Catch: SQLiteException -> 0x0082, all -> 0x00b0
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
            com.google.android.gms.measurement.internal.zzeq r0 = r0.mo8789p()     // Catch: all -> 0x00b0
            com.google.android.gms.measurement.internal.zzes r0 = r0.m9152q()     // Catch: all -> 0x00b0
            java.lang.String r1 = "Error querying remote config. appId"
            r2 = r10
            java.lang.Object r2 = com.google.android.gms.measurement.internal.zzeq.m9157a(r2)     // Catch: all -> 0x00b0
            r3 = r14
            r0.m9141a(r1, r2, r3)     // Catch: all -> 0x00b0
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
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25057d(java.lang.String):byte[]");
    }

    /* renamed from: e */
    public final int m25054e(String str, String str2) {
        Preconditions.m17281b(str);
        Preconditions.m17281b(str2);
        mo9085c();
        m24903n();
        try {
            return m25044s().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            mo8789p().m9152q().m9140a("Error deleting conditional property", zzeq.m9157a(str), m24900e().m9167c(str2), e);
            return 0;
        }
    }

    /* renamed from: e */
    public final Map<Integer, List<zzbv.zzb>> m25055e(String str) {
        Preconditions.m17281b(str);
        C0780a aVar = new C0780a();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = m25044s().query("event_filters", new String[]{"audience_id", "data"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    Map<Integer, List<zzbv.zzb>> emptyMap = Collections.emptyMap();
                    if (query != null) {
                        query.close();
                    }
                    return emptyMap;
                }
                do {
                    try {
                        zzbv.zzb zzbVar = (zzbv.zzb) ((zzhy) ((zzbv.zzb.zza) zzkr.m8766a(zzbv.zzb.m10391z(), query.getBlob(1))).mo9619b());
                        if (zzbVar.m10397t()) {
                            int i = query.getInt(0);
                            List list = (List) aVar.get(Integer.valueOf(i));
                            List list2 = list;
                            if (list == null) {
                                list2 = new ArrayList();
                                aVar.put(Integer.valueOf(i), list2);
                            }
                            list2.add(zzbVar);
                        }
                    } catch (IOException e) {
                        mo8789p().m9152q().m9141a("Failed to merge filter. appId", zzeq.m9157a(str), e);
                    }
                } while (query.moveToNext());
                if (query != null) {
                    query.close();
                }
                return aVar;
            } catch (SQLiteException e2) {
                mo8789p().m9152q().m9141a("Database error querying filters. appId", zzeq.m9157a(str), e2);
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0144  */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<java.lang.Integer>> m25053f(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25053f(java.lang.String):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0193  */
    /* JADX WARN: Type inference failed for: r11v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzbv.zzb>> m25052f(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25052f(java.lang.String, java.lang.String):java.util.Map");
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x0162  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, com.google.android.gms.internal.measurement.zzcd.zzi> m25051g(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25051g(java.lang.String):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0199  */
    /* JADX WARN: Type inference failed for: r10v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<com.google.android.gms.internal.measurement.zzbv.zze>> m25050g(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25050g(java.lang.String, java.lang.String):java.util.Map");
    }

    /* renamed from: h */
    public final long m25049h(String str) {
        Preconditions.m17281b(str);
        return m25067a("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    @com.google.android.gms.common.util.VisibleForTesting
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m25048h(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25048h(java.lang.String, java.lang.String):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x0177  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle m25047i(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25047i(java.lang.String):android.os.Bundle");
    }

    /* renamed from: j */
    public final zzac m25046j(String str) {
        Preconditions.m17288a(str);
        mo9085c();
        m24903n();
        return zzac.m9315a(m25066a("select consent_state from consent_settings where app_id=? limit 1;", new String[]{str}, "G1"));
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4750l7
    /* renamed from: q */
    public final boolean mo8746q() {
        return false;
    }

    /* renamed from: r */
    public final void m25045r() {
        m24903n();
        m25044s().setTransactionSuccessful();
    }

    @VisibleForTesting
    /* renamed from: s */
    public final SQLiteDatabase m25044s() {
        mo9085c();
        try {
            return this.f16997d.getWritableDatabase();
        } catch (SQLiteException e) {
            mo8789p().m9149t().m9142a("Error opening database", e);
            throw e;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006d  */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m25043t() {
        /*
            r4 = this;
            r0 = r4
            android.database.sqlite.SQLiteDatabase r0 = r0.m25044s()
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
            r6 = r0
            r0 = r5
            r7 = r0
            goto L_0x0069
        L_0x0047:
            r7 = move-exception
            r0 = 0
            r6 = r0
        L_0x004a:
            r0 = r6
            r5 = r0
            r0 = r4
            com.google.android.gms.measurement.internal.zzeq r0 = r0.mo8789p()     // Catch: all -> 0x0066
            com.google.android.gms.measurement.internal.zzes r0 = r0.m9152q()     // Catch: all -> 0x0066
            java.lang.String r1 = "Database error getting next bundle app id"
            r2 = r7
            r0.m9142a(r1, r2)     // Catch: all -> 0x0066
            r0 = r6
            if (r0 == 0) goto L_0x0064
            r0 = r6
            r0.close()
        L_0x0064:
            r0 = 0
            return r0
        L_0x0066:
            r7 = move-exception
            r0 = r5
            r6 = r0
        L_0x0069:
            r0 = r6
            if (r0 == 0) goto L_0x0073
            r0 = r6
            r0.close()
        L_0x0073:
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p260i.p261a.C4657c.m25043t():java.lang.String");
    }

    /* renamed from: u */
    public final boolean m25042u() {
        return m25060b("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    @VisibleForTesting
    /* renamed from: v */
    public final boolean m25041v() {
        return mo8846B().getDatabasePath("google_app_measurement.db").exists();
    }

    /* renamed from: w */
    public final void m25040w() {
        m24903n();
        m25044s().beginTransaction();
    }

    /* renamed from: x */
    public final void m25039x() {
        m24903n();
        m25044s().endTransaction();
    }

    /* renamed from: y */
    public final void m25038y() {
        int delete;
        mo9085c();
        m24903n();
        if (m25041v()) {
            long a = m24898g().f17214h.m9131a();
            long a2 = mo8779z().mo17092a();
            if (Math.abs(a2 - a) > zzas.f29905y.m9196a(null).longValue()) {
                m24898g().f17214h.m9130a(a2);
                mo9085c();
                m24903n();
                if (m25041v() && (delete = m25044s().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(mo8779z().mo17091b()), String.valueOf(zzab.m9324v())})) > 0) {
                    mo8789p().m9144y().m9142a("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
                }
            }
        }
    }
}
