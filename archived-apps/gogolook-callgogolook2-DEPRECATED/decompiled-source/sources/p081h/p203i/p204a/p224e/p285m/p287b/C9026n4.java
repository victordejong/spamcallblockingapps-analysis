package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.google.android.gms.measurement.internal.zzl;
import com.mopub.common.Constants;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p276q.C8547a1;
import p081h.p203i.p204a.p224e.p259j.p276q.C8670m0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8679n0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8686n7;
import p081h.p203i.p204a.p224e.p259j.p276q.C8696o7;
import p081h.p203i.p204a.p224e.p259j.p276q.C8707q0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8770x0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8783y0;
import p459j.p460a.p541n0.C13032a;
/* renamed from: h.i.a.e.m.b.n4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/n4.class */
public final class C9026n4 extends AbstractC9049r3 {

    /* renamed from: f */
    public static final String[] f20511f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"};

    /* renamed from: g */
    public static final String[] f20512g = {TtmlNode.ATTR_TTS_ORIGIN, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: h */
    public static final String[] f20513h = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"};

    /* renamed from: i */
    public static final String[] f20514i = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: j */
    public static final String[] f20515j = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: k */
    public static final String[] f20516k = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: e */
    public final C9025n3 f20518e = new C9025n3(mo16174e());

    /* renamed from: d */
    public final C9044q4 f20517d = new C9044q4(this, getContext(), "google_app_measurement.db");

    public C9026n4(C9061t3 t3Var) {
        super(t3Var);
    }

    @WorkerThread
    /* renamed from: a */
    public static void m16433a(ContentValues contentValues, String str, Object obj) {
        C7021t.m21283b(str);
        C7021t.m21290a(obj);
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
    /* renamed from: A */
    public final long m16447A() {
        return m16413a("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    @WorkerThread
    /* renamed from: B */
    public final long m16446B() {
        return m16413a("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    /* renamed from: C */
    public final boolean m16445C() {
        return m16414a("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    /* renamed from: D */
    public final boolean m16444D() {
        return m16414a("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }

    /* renamed from: E */
    public final long m16443E() {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor rawQuery = m16394v().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
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
                mo16178c().m16375s().m16337a("Error querying raw events", e);
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

    /* renamed from: F */
    public final boolean m16442F() {
        return getContext().getDatabasePath("google_app_measurement.db").exists();
    }

    /* renamed from: a */
    public final long m16430a(C8547a1 a1Var) throws IOException {
        long j;
        mo16328d();
        m16316q();
        C7021t.m21290a(a1Var);
        C7021t.m21283b(a1Var.f19591q);
        try {
            byte[] bArr = new byte[a1Var.m17077b()];
            C8696o7 a = C8696o7.m17260a(bArr, 0, bArr.length);
            a1Var.mo16952a(a);
            a.m17259b();
            C9096z3 m = m16334m();
            C7021t.m21290a(bArr);
            m.m16351j().mo16328d();
            MessageDigest w = C8959c4.m16697w();
            if (w == null) {
                m.mo16178c().m16375s().m16338a("Failed to get MD5");
                j = 0;
            } else {
                j = C8959c4.m16719a(w.digest(bArr));
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", a1Var.f19591q);
            contentValues.put("metadata_fingerprint", Long.valueOf(j));
            contentValues.put(TtmlNode.TAG_METADATA, bArr);
            try {
                m16394v().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
                return j;
            } catch (SQLiteException e) {
                mo16178c().m16375s().m16336a("Error storing raw event metadata. appId", C9027o.m16380a(a1Var.f19591q), e);
                throw e;
            }
        } catch (IOException e2) {
            mo16178c().m16375s().m16336a("Data loss. Failed to serialize event metadata. appId", C9027o.m16380a(a1Var.f19591q), e2);
            throw e2;
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final long m16414a(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = m16394v().rawQuery(str, strArr);
                if (rawQuery.moveToFirst()) {
                    long j = rawQuery.getLong(0);
                    if (rawQuery != null) {
                        rawQuery.close();
                    }
                    return j;
                }
                throw new SQLiteException("Database returned empty set");
            } catch (SQLiteException e) {
                mo16178c().m16375s().m16336a("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final long m16413a(String str, String[] strArr, long j) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor2 = m16394v().rawQuery(str, strArr);
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
                mo16178c().m16375s().m16336a("Database error", str, e);
                throw e;
            }
        } finally {
            if (cursor2 != null) {
                cursor2.close();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00fd  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<p081h.p203i.p204a.p224e.p259j.p276q.C8770x0, java.lang.Long> m16419a(java.lang.String r8, java.lang.Long r9) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9026n4.m16419a(java.lang.String, java.lang.Long):android.util.Pair");
    }

    @WorkerThread
    /* renamed from: a */
    public final C9032o4 m16434a(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        C7021t.m21283b(str);
        mo16328d();
        m16316q();
        C9032o4 o4Var = new C9032o4();
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                SQLiteDatabase v = m16394v();
                Cursor query = v.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!query.moveToFirst()) {
                    mo16178c().m16372v().m16337a("Not updating daily counts, app is not known. appId", C9027o.m16380a(str));
                    if (query != null) {
                        query.close();
                    }
                    return o4Var;
                }
                if (query.getLong(0) == j) {
                    o4Var.f20547b = query.getLong(1);
                    o4Var.f20546a = query.getLong(2);
                    o4Var.f20548c = query.getLong(3);
                    o4Var.f20549d = query.getLong(4);
                    o4Var.f20550e = query.getLong(5);
                }
                if (z) {
                    o4Var.f20547b++;
                }
                if (z2) {
                    o4Var.f20546a++;
                }
                if (z3) {
                    o4Var.f20548c++;
                }
                if (z4) {
                    o4Var.f20549d++;
                }
                if (z5) {
                    o4Var.f20550e++;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j));
                contentValues.put("daily_public_events_count", Long.valueOf(o4Var.f20546a));
                contentValues.put("daily_events_count", Long.valueOf(o4Var.f20547b));
                contentValues.put("daily_conversions_count", Long.valueOf(o4Var.f20548c));
                contentValues.put("daily_error_events_count", Long.valueOf(o4Var.f20549d));
                contentValues.put("daily_realtime_events_count", Long.valueOf(o4Var.f20550e));
                v.update("apps", contentValues, "app_id=?", new String[]{str});
                if (query != null) {
                    query.close();
                }
                return o4Var;
            } catch (SQLiteException e) {
                mo16178c().m16375s().m16336a("Error updating daily counts. appId", C9027o.m16380a(str), e);
                if (0 != 0) {
                    cursor.close();
                }
                return o4Var;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor2.close();
            }
            throw th;
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final Object m16432a(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type == 0) {
            mo16178c().m16375s().m16338a("Loaded invalid null value from database");
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
                mo16178c().m16375s().m16337a("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                return null;
            }
            mo16178c().m16375s().m16338a("Loaded invalid blob type value, ignoring it");
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0093  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m16435a(long r9) {
        /*
            r8 = this;
            r0 = r8
            r0.mo16328d()
            r0 = r8
            r0.m16316q()
            r0 = r8
            android.database.sqlite.SQLiteDatabase r0 = r0.m16394v()     // Catch: all -> 0x0064, SQLiteException -> 0x006b
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
            h.i.a.e.m.b.o r0 = r0.mo16178c()     // Catch: SQLiteException -> 0x005f, all -> 0x008d
            h.i.a.e.m.b.q r0 = r0.m16389A()     // Catch: SQLiteException -> 0x005f, all -> 0x008d
            java.lang.String r1 = "No expired configs for apps with pending events"
            r0.m16338a(r1)     // Catch: SQLiteException -> 0x005f, all -> 0x008d
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
            h.i.a.e.m.b.o r0 = r0.mo16178c()     // Catch: all -> 0x008d
            h.i.a.e.m.b.q r0 = r0.m16375s()     // Catch: all -> 0x008d
            java.lang.String r1 = "Error selecting expired configs"
            r2 = r13
            r0.m16337a(r1, r2)     // Catch: all -> 0x008d
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9026n4.m16435a(long):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x013c  */
    @androidx.annotation.WorkerThread
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<p081h.p203i.p204a.p224e.p285m.p287b.C8953b4> m16423a(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9026n4.m16423a(java.lang.String):java.util.List");
    }

    @WorkerThread
    /* renamed from: a */
    public final List<Pair<C8547a1, Long>> m16422a(String str, int i, int i2) {
        int i3;
        byte[] a;
        mo16328d();
        m16316q();
        C7021t.m21286a(i > 0);
        C7021t.m21286a(i2 > 0);
        C7021t.m21283b(str);
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = m16394v().query("queue", new String[]{"rowid", "data", "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i));
                if (!query.moveToFirst()) {
                    List<Pair<C8547a1, Long>> emptyList = Collections.emptyList();
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
                        a = m16334m().m16092a(query.getBlob(1));
                    } catch (IOException e) {
                        mo16178c().m16375s().m16336a("Failed to unzip queued bundle. appId", C9027o.m16380a(str), e);
                        i3 = i4;
                    }
                    if (!arrayList.isEmpty() && a.length + i4 > i2) {
                        break;
                    }
                    C8686n7 a2 = C8686n7.m17304a(a, 0, a.length);
                    C8547a1 a1Var = new C8547a1();
                    try {
                        a1Var.mo16953a(a2);
                        if (!query.isNull(2)) {
                            a1Var.f19574M = Integer.valueOf(query.getInt(2));
                        }
                        i3 = i4 + a.length;
                        arrayList.add(Pair.create(a1Var, Long.valueOf(j)));
                    } catch (IOException e2) {
                        mo16178c().m16375s().m16336a("Failed to merge queued bundle. appId", C9027o.m16380a(str), e2);
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
                mo16178c().m16375s().m16336a("Error querying bundles. appId", C9027o.m16380a(str), e3);
                List<Pair<C8547a1, Long>> emptyList2 = Collections.emptyList();
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

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0108, code lost:
        r15 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x010a, code lost:
        mo16178c().m16375s().m16337a("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x0211: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r19 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:74:0x0211 */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.WorkerThread
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<p081h.p203i.p204a.p224e.p285m.p287b.C8953b4> m16417a(java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9026n4.m16417a(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16427a(C8978f4 f4Var) {
        C7021t.m21290a(f4Var);
        mo16328d();
        m16316q();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", f4Var.m16639f());
        contentValues.put("app_instance_id", f4Var.m16657a());
        contentValues.put("gmp_app_id", f4Var.m16649c());
        contentValues.put("resettable_device_id_hash", f4Var.m16630i());
        contentValues.put("last_bundle_index", Long.valueOf(f4Var.m16616p()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(f4Var.m16628j()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(f4Var.m16626k()));
        contentValues.put("app_version", f4Var.m16642e());
        contentValues.put("app_store", f4Var.m16622m());
        contentValues.put("gmp_version", Long.valueOf(f4Var.m16620n()));
        contentValues.put("dev_cert_hash", Long.valueOf(f4Var.m16618o()));
        contentValues.put("measurement_enabled", Boolean.valueOf(f4Var.m16645d()));
        contentValues.put("day", Long.valueOf(f4Var.m16612t()));
        contentValues.put("daily_public_events_count", Long.valueOf(f4Var.m16611u()));
        contentValues.put("daily_events_count", Long.valueOf(f4Var.m16610v()));
        contentValues.put("daily_conversions_count", Long.valueOf(f4Var.m16609w()));
        contentValues.put("config_fetched_time", Long.valueOf(f4Var.m16615q()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(f4Var.m16614r()));
        contentValues.put("app_version_int", Long.valueOf(f4Var.m16624l()));
        contentValues.put("firebase_instance_id", f4Var.m16653b());
        contentValues.put("daily_error_events_count", Long.valueOf(f4Var.m16607y()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(f4Var.m16608x()));
        contentValues.put("health_monitor_sample", f4Var.m16606z());
        contentValues.put("android_id", Long.valueOf(f4Var.m16660B()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(f4Var.m16659C()));
        contentValues.put("ssaid_reporting_enabled", Boolean.valueOf(f4Var.m16658D()));
        contentValues.put("admob_app_id", f4Var.m16633h());
        try {
            SQLiteDatabase v = m16394v();
            if (v.update("apps", contentValues, "app_id = ?", new String[]{f4Var.m16639f()}) == 0 && v.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                mo16178c().m16375s().m16337a("Failed to insert/update app (got -1). appId", C9027o.m16380a(f4Var.m16639f()));
            }
        } catch (SQLiteException e) {
            mo16178c().m16375s().m16336a("Error storing app. appId", C9027o.m16380a(f4Var.m16639f()), e);
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16424a(C9081w4 w4Var) {
        C7021t.m21290a(w4Var);
        mo16328d();
        m16316q();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", w4Var.f20741a);
        contentValues.put("name", w4Var.f20742b);
        contentValues.put("lifetime_count", Long.valueOf(w4Var.f20743c));
        contentValues.put("current_bundle_count", Long.valueOf(w4Var.f20744d));
        contentValues.put("last_fire_timestamp", Long.valueOf(w4Var.f20745e));
        contentValues.put("last_bundled_timestamp", Long.valueOf(w4Var.f20746f));
        contentValues.put("last_bundled_day", w4Var.f20747g);
        contentValues.put("last_sampled_complex_event_id", w4Var.f20748h);
        contentValues.put("last_sampling_rate", w4Var.f20749i);
        Boolean bool = w4Var.f20750j;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (m16394v().insertWithOnConflict(Constants.VIDEO_TRACKING_EVENTS_KEY, null, contentValues, 5) == -1) {
                mo16178c().m16375s().m16337a("Failed to insert/update event aggregates (got -1). appId", C9027o.m16380a(w4Var.f20741a));
            }
        } catch (SQLiteException e) {
            mo16178c().m16375s().m16336a("Error storing event aggregates. appId", C9027o.m16380a(w4Var.f20741a), e);
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16415a(String str, C8670m0[] m0VarArr) {
        boolean z;
        m16316q();
        mo16328d();
        C7021t.m21283b(str);
        C7021t.m21290a(m0VarArr);
        SQLiteDatabase v = m16394v();
        v.beginTransaction();
        try {
            m16316q();
            mo16328d();
            C7021t.m21283b(str);
            SQLiteDatabase v2 = m16394v();
            v2.delete("property_filters", "app_id=?", new String[]{str});
            v2.delete("event_filters", "app_id=?", new String[]{str});
            for (C8670m0 m0Var : m0VarArr) {
                m16316q();
                mo16328d();
                C7021t.m21283b(str);
                C7021t.m21290a(m0Var);
                C7021t.m21290a(m0Var.f19839e);
                C7021t.m21290a(m0Var.f19838d);
                if (m0Var.f19837c == null) {
                    mo16178c().m16372v().m16337a("Audience with no ID. appId", C9027o.m16380a(str));
                } else {
                    int intValue = m0Var.f19837c.intValue();
                    C8679n0[] n0VarArr = m0Var.f19839e;
                    int length = n0VarArr.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            C8707q0[] q0VarArr = m0Var.f19838d;
                            int length2 = q0VarArr.length;
                            int i2 = 0;
                            while (true) {
                                if (i2 >= length2) {
                                    C8679n0[] n0VarArr2 = m0Var.f19839e;
                                    int length3 = n0VarArr2.length;
                                    int i3 = 0;
                                    while (true) {
                                        if (i3 >= length3) {
                                            z = true;
                                            break;
                                        } else if (!m16421a(str, intValue, n0VarArr2[i3])) {
                                            z = false;
                                            break;
                                        } else {
                                            i3++;
                                        }
                                    }
                                    boolean z2 = z;
                                    if (z) {
                                        C8707q0[] q0VarArr2 = m0Var.f19838d;
                                        int length4 = q0VarArr2.length;
                                        int i4 = 0;
                                        while (true) {
                                            z2 = z;
                                            if (i4 >= length4) {
                                                break;
                                            } else if (!m16420a(str, intValue, q0VarArr2[i4])) {
                                                z2 = false;
                                                break;
                                            } else {
                                                i4++;
                                            }
                                        }
                                    }
                                    if (!z2) {
                                        m16316q();
                                        mo16328d();
                                        C7021t.m21283b(str);
                                        SQLiteDatabase v3 = m16394v();
                                        v3.delete("property_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(intValue)});
                                        v3.delete("event_filters", "app_id=? and audience_id=?", new String[]{str, String.valueOf(intValue)});
                                    }
                                } else if (q0VarArr[i2].f19929c == null) {
                                    mo16178c().m16372v().m16336a("Property filter with no ID. Audience definition ignored. appId, audienceId", C9027o.m16380a(str), m0Var.f19837c);
                                    break;
                                } else {
                                    i2++;
                                }
                            }
                        } else if (n0VarArr[i].f19853c == null) {
                            mo16178c().m16372v().m16336a("Event filter with no ID. Audience definition ignored. appId, audienceId", C9027o.m16380a(str), m0Var.f19837c);
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (C8670m0 m0Var2 : m0VarArr) {
                arrayList.add(m0Var2.f19837c);
            }
            m16416a(str, arrayList);
            v.setTransactionSuccessful();
        } finally {
            v.endTransaction();
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16412a(List<Long> list) {
        mo16328d();
        m16316q();
        C7021t.m21290a(list);
        C7021t.m21293a(list.size());
        if (m16442F()) {
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
            if (m16414a(sb3.toString(), (String[]) null) > 0) {
                mo16178c().m16372v().m16338a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase v = m16394v();
                StringBuilder sb4 = new StringBuilder(String.valueOf(sb2).length() + 127);
                sb4.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb4.append(sb2);
                sb4.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                v.execSQL(sb4.toString());
            } catch (SQLiteException e) {
                mo16178c().m16375s().m16337a("Error incrementing retry count. error", e);
            }
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final boolean m16431a(zzl zzlVar) {
        C7021t.m21290a(zzlVar);
        mo16328d();
        m16316q();
        if (m16404d(zzlVar.f7176a, zzlVar.f7178c.f7152b) == null && m16414a("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{zzlVar.f7176a}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzlVar.f7176a);
        contentValues.put(TtmlNode.ATTR_TTS_ORIGIN, zzlVar.f7177b);
        contentValues.put("name", zzlVar.f7178c.f7152b);
        m16433a(contentValues, C13032a.f29462d, zzlVar.f7178c.m31657c());
        contentValues.put("active", Boolean.valueOf(zzlVar.f7180e));
        contentValues.put("trigger_event_name", zzlVar.f7181f);
        contentValues.put("trigger_timeout", Long.valueOf(zzlVar.f7183h));
        m16351j();
        contentValues.put("timed_out_event", C8959c4.m16732a((Parcelable) zzlVar.f7182g));
        contentValues.put("creation_timestamp", Long.valueOf(zzlVar.f7179d));
        m16351j();
        contentValues.put("triggered_event", C8959c4.m16732a((Parcelable) zzlVar.f7184i));
        contentValues.put("triggered_timestamp", Long.valueOf(zzlVar.f7178c.f7153c));
        contentValues.put("time_to_live", Long.valueOf(zzlVar.f7185j));
        m16351j();
        contentValues.put("expired_event", C8959c4.m16732a((Parcelable) zzlVar.f7186k));
        try {
            if (m16394v().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            mo16178c().m16375s().m16337a("Failed to insert/update conditional user property (got -1)", C9027o.m16380a(zzlVar.f7176a));
            return true;
        } catch (SQLiteException e) {
            mo16178c().m16375s().m16336a("Error storing conditional user property", C9027o.m16380a(zzlVar.f7176a), e);
            return true;
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final boolean m16429a(C8547a1 a1Var, boolean z) {
        mo16328d();
        m16316q();
        C7021t.m21290a(a1Var);
        C7021t.m21283b(a1Var.f19591q);
        C7021t.m21290a(a1Var.f19582h);
        m16390z();
        long currentTimeMillis = mo16174e().currentTimeMillis();
        if (a1Var.f19582h.longValue() < currentTimeMillis - C9008k4.m16482t() || a1Var.f19582h.longValue() > C9008k4.m16482t() + currentTimeMillis) {
            mo16178c().m16372v().m16335a("Storing bundle outside of the max uploading time span. appId, now, timestamp", C9027o.m16380a(a1Var.f19591q), Long.valueOf(currentTimeMillis), a1Var.f19582h);
        }
        try {
            byte[] bArr = new byte[a1Var.m17077b()];
            C8696o7 a = C8696o7.m17260a(bArr, 0, bArr.length);
            a1Var.mo16952a(a);
            a.m17259b();
            byte[] b = m16334m().m16086b(bArr);
            mo16178c().m16389A().m16337a("Saving bundle, size", Integer.valueOf(b.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", a1Var.f19591q);
            contentValues.put("bundle_end_timestamp", a1Var.f19582h);
            contentValues.put("data", b);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            Integer num = a1Var.f19574M;
            if (num != null) {
                contentValues.put("retry_count", num);
            }
            try {
                if (m16394v().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                mo16178c().m16375s().m16337a("Failed to insert bundle (got -1). appId", C9027o.m16380a(a1Var.f19591q));
                return false;
            } catch (SQLiteException e) {
                mo16178c().m16375s().m16336a("Error storing bundle. appId", C9027o.m16380a(a1Var.f19591q), e);
                return false;
            }
        } catch (IOException e2) {
            mo16178c().m16375s().m16336a("Data loss. Failed to serialize bundle. appId", C9027o.m16380a(a1Var.f19591q), e2);
            return false;
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final boolean m16428a(C8953b4 b4Var) {
        C7021t.m21290a(b4Var);
        mo16328d();
        m16316q();
        if (m16404d(b4Var.f20236a, b4Var.f20238c) == null) {
            if (!C8959c4.m16706e(b4Var.f20238c)) {
                long a = m16414a("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{b4Var.f20236a, b4Var.f20237b});
                if (m16349l().m16501d(b4Var.f20236a, C8966e.f20320j0)) {
                    if (!"_ap".equals(b4Var.f20238c) && a >= 25) {
                        return false;
                    }
                } else if (a >= 25) {
                    return false;
                }
            } else if (m16414a("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{b4Var.f20236a}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", b4Var.f20236a);
        contentValues.put(TtmlNode.ATTR_TTS_ORIGIN, b4Var.f20237b);
        contentValues.put("name", b4Var.f20238c);
        contentValues.put("set_timestamp", Long.valueOf(b4Var.f20239d));
        m16433a(contentValues, C13032a.f29462d, b4Var.f20240e);
        try {
            if (m16394v().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            mo16178c().m16375s().m16337a("Failed to insert/update user property (got -1). appId", C9027o.m16380a(b4Var.f20236a));
            return true;
        } catch (SQLiteException e) {
            mo16178c().m16375s().m16336a("Error storing user property. appId", C9027o.m16380a(b4Var.f20236a), e);
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m16425a(C9075v4 v4Var, long j, boolean z) {
        mo16328d();
        m16316q();
        C7021t.m21290a(v4Var);
        C7021t.m21283b(v4Var.f20720a);
        C8770x0 x0Var = new C8770x0();
        x0Var.f20107f = Long.valueOf(v4Var.f20724e);
        x0Var.f20104c = new C8783y0[v4Var.f20725f.size()];
        Iterator<String> it = v4Var.f20725f.iterator();
        int i = 0;
        while (it.hasNext()) {
            String next = it.next();
            C8783y0 y0Var = new C8783y0();
            x0Var.f20104c[i] = y0Var;
            y0Var.f20135c = next;
            m16334m().m16101a(y0Var, v4Var.f20725f.m31662a(next));
            i++;
        }
        try {
            byte[] bArr = new byte[x0Var.m17077b()];
            C8696o7 a = C8696o7.m17260a(bArr, 0, bArr.length);
            x0Var.mo16952a(a);
            a.m17259b();
            mo16178c().m16389A().m16336a("Saving event, name, data size", m16352i().m16473a(v4Var.f20721b), Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", v4Var.f20720a);
            contentValues.put("name", v4Var.f20721b);
            contentValues.put("timestamp", Long.valueOf(v4Var.f20723d));
            contentValues.put("metadata_fingerprint", Long.valueOf(j));
            contentValues.put("data", bArr);
            contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
            try {
                if (m16394v().insert("raw_events", null, contentValues) != -1) {
                    return true;
                }
                mo16178c().m16375s().m16337a("Failed to insert raw event (got -1). appId", C9027o.m16380a(v4Var.f20720a));
                return false;
            } catch (SQLiteException e) {
                mo16178c().m16375s().m16336a("Error storing raw event. appId", C9027o.m16380a(v4Var.f20720a), e);
                return false;
            }
        } catch (IOException e2) {
            mo16178c().m16375s().m16336a("Data loss. Failed to serialize event params/data. appId", C9027o.m16380a(v4Var.f20720a), e2);
            return false;
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final boolean m16421a(String str, int i, C8679n0 n0Var) {
        m16316q();
        mo16328d();
        C7021t.m21283b(str);
        C7021t.m21290a(n0Var);
        if (TextUtils.isEmpty(n0Var.f19854d)) {
            mo16178c().m16372v().m16335a("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", C9027o.m16380a(str), Integer.valueOf(i), String.valueOf(n0Var.f19853c));
            return false;
        }
        try {
            byte[] bArr = new byte[n0Var.m17077b()];
            C8696o7 a = C8696o7.m17260a(bArr, 0, bArr.length);
            n0Var.mo16952a(a);
            a.m17259b();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", n0Var.f19853c);
            contentValues.put("event_name", n0Var.f19854d);
            contentValues.put("data", bArr);
            try {
                if (m16394v().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                    return true;
                }
                mo16178c().m16375s().m16337a("Failed to insert event filter (got -1). appId", C9027o.m16380a(str));
                return true;
            } catch (SQLiteException e) {
                mo16178c().m16375s().m16336a("Error storing event filter. appId", C9027o.m16380a(str), e);
                return false;
            }
        } catch (IOException e2) {
            mo16178c().m16375s().m16336a("Configuration loss. Failed to serialize event filter. appId", C9027o.m16380a(str), e2);
            return false;
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final boolean m16420a(String str, int i, C8707q0 q0Var) {
        m16316q();
        mo16328d();
        C7021t.m21283b(str);
        C7021t.m21290a(q0Var);
        if (TextUtils.isEmpty(q0Var.f19930d)) {
            mo16178c().m16372v().m16335a("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", C9027o.m16380a(str), Integer.valueOf(i), String.valueOf(q0Var.f19929c));
            return false;
        }
        try {
            byte[] bArr = new byte[q0Var.m17077b()];
            C8696o7 a = C8696o7.m17260a(bArr, 0, bArr.length);
            q0Var.mo16952a(a);
            a.m17259b();
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("audience_id", Integer.valueOf(i));
            contentValues.put("filter_id", q0Var.f19929c);
            contentValues.put("property_name", q0Var.f19930d);
            contentValues.put("data", bArr);
            try {
                if (m16394v().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                    return true;
                }
                mo16178c().m16375s().m16337a("Failed to insert property filter (got -1). appId", C9027o.m16380a(str));
                return false;
            } catch (SQLiteException e) {
                mo16178c().m16375s().m16336a("Error storing property filter. appId", C9027o.m16380a(str), e);
                return false;
            }
        } catch (IOException e2) {
            mo16178c().m16375s().m16336a("Configuration loss. Failed to serialize property filter. appId", C9027o.m16380a(str), e2);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m16418a(String str, Long l, long j, C8770x0 x0Var) {
        mo16328d();
        m16316q();
        C7021t.m21290a(x0Var);
        C7021t.m21283b(str);
        C7021t.m21290a(l);
        try {
            byte[] bArr = new byte[x0Var.m17077b()];
            C8696o7 a = C8696o7.m17260a(bArr, 0, bArr.length);
            x0Var.mo16952a(a);
            a.m17259b();
            mo16178c().m16389A().m16336a("Saving complex main event, appId, data size", m16352i().m16473a(str), Integer.valueOf(bArr.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("event_id", l);
            contentValues.put("children_to_process", Long.valueOf(j));
            contentValues.put("main_event", bArr);
            try {
                if (m16394v().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                    return true;
                }
                mo16178c().m16375s().m16337a("Failed to insert complex main event (got -1). appId", C9027o.m16380a(str));
                return false;
            } catch (SQLiteException e) {
                mo16178c().m16375s().m16336a("Error storing complex main event. appId", C9027o.m16380a(str), e);
                return false;
            }
        } catch (IOException e2) {
            mo16178c().m16375s().m16335a("Data loss. Failed to serialize event params/data. appId, eventId", C9027o.m16380a(str), l, e2);
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m16416a(String str, List<Integer> list) {
        C7021t.m21283b(str);
        m16316q();
        mo16328d();
        SQLiteDatabase v = m16394v();
        try {
            long a = m16414a("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int max = Math.max(0, Math.min(2000, m16349l().m16505b(str, C8966e.f20290P)));
            if (a <= max) {
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
            return v.delete("audience_filter_values", sb3.toString(), new String[]{str, Integer.toString(max)}) > 0;
        } catch (SQLiteException e) {
            mo16178c().m16375s().m16336a("Database error querying filters. appId", C9027o.m16380a(str), e);
            return false;
        }
    }

    /* JADX WARN: Not initialized variable reg: 15, insn: 0x03a1: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r15 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:140:0x03a1 */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02a6  */
    @androidx.annotation.WorkerThread
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p081h.p203i.p204a.p224e.p285m.p287b.C8978f4 m16411b(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 944
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9026n4.m16411b(java.lang.String):h.i.a.e.m.b.f4");
    }

    @WorkerThread
    /* renamed from: b */
    public final C9081w4 m16410b(String str, String str2) {
        Cursor cursor;
        Throwable th;
        SQLiteException e;
        Cursor cursor2;
        boolean z;
        Boolean bool;
        C7021t.m21283b(str);
        C7021t.m21283b(str2);
        mo16328d();
        m16316q();
        try {
            try {
                z = false;
                cursor2 = m16394v().query(Constants.VIDEO_TRACKING_EVENTS_KEY, new String[]{"lifetime_count", "current_bundle_count", "last_fire_timestamp", "last_bundled_timestamp", "last_bundled_day", "last_sampled_complex_event_id", "last_sampling_rate", "last_exempt_from_sampling"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                if (cursor2.moveToFirst()) {
                    long j = cursor2.getLong(0);
                    long j2 = cursor2.getLong(1);
                    long j3 = cursor2.getLong(2);
                    long j4 = cursor2.isNull(3) ? 0L : cursor2.getLong(3);
                    Long valueOf = cursor2.isNull(4) ? null : Long.valueOf(cursor2.getLong(4));
                    Long valueOf2 = cursor2.isNull(5) ? null : Long.valueOf(cursor2.getLong(5));
                    Long valueOf3 = cursor2.isNull(6) ? null : Long.valueOf(cursor2.getLong(6));
                    if (!cursor2.isNull(7)) {
                        if (cursor2.getLong(7) == 1) {
                            z = true;
                        }
                        bool = Boolean.valueOf(z);
                    } else {
                        bool = null;
                    }
                    try {
                        C9081w4 w4Var = new C9081w4(str, str2, j, j2, j3, j4, valueOf, valueOf2, valueOf3, bool);
                        if (cursor2.moveToNext()) {
                            mo16178c().m16375s().m16337a("Got multiple records for event aggregates, expected one. appId", C9027o.m16380a(str));
                        }
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        return w4Var;
                    } catch (SQLiteException e2) {
                        e = e2;
                        mo16178c().m16375s().m16335a("Error querying events. appId", C9027o.m16380a(str), m16352i().m16473a(str2), e);
                        if (cursor2 == null) {
                            return null;
                        }
                        cursor2.close();
                        return null;
                    }
                } else if (cursor2 == null) {
                    return null;
                } else {
                    cursor2.close();
                    return null;
                }
            } catch (SQLiteException e3) {
                e = e3;
            } catch (Throwable th3) {
                th = th3;
                cursor = cursor2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e4) {
            e = e4;
            cursor2 = null;
        } catch (Throwable th4) {
            th = th4;
            cursor = null;
        }
    }

    @WorkerThread
    /* renamed from: b */
    public final List<zzl> m16409b(String str, String str2, String str3) {
        C7021t.m21283b(str);
        mo16328d();
        m16316q();
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
        return m16408b(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00b6, code lost:
        r21 = r0;
        r20 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00bb, code lost:
        mo16178c().m16375s().m16337a("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzl> m16408b(java.lang.String r17, java.lang.String[] r18) {
        /*
            Method dump skipped, instructions count: 633
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9026n4.m16408b(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* renamed from: c */
    public final long m16407c(String str) {
        C7021t.m21283b(str);
        mo16328d();
        m16316q();
        try {
            return m16394v().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(1000000, m16349l().m16505b(str, C8966e.f20336z))))});
        } catch (SQLiteException e) {
            mo16178c().m16375s().m16336a("Error deleting over the limit events. appId", C9027o.m16380a(str), e);
            return 0L;
        }
    }

    @WorkerThread
    /* renamed from: c */
    public final void m16406c(String str, String str2) {
        C7021t.m21283b(str);
        C7021t.m21283b(str2);
        mo16328d();
        m16316q();
        try {
            mo16178c().m16389A().m16337a("Deleted user attribute rows", Integer.valueOf(m16394v().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2})));
        } catch (SQLiteException e) {
            mo16178c().m16375s().m16335a("Error deleting user attribute. appId", C9027o.m16380a(str), m16352i().m16470c(str2), e);
        }
    }

    /* JADX WARN: Not initialized variable reg: 16, insn: 0x0105: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r16 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:44:0x0105 */
    @WorkerThread
    /* renamed from: d */
    public final C8953b4 m16404d(String str, String str2) {
        Cursor cursor;
        Throwable th;
        SQLiteException e;
        C7021t.m21283b(str);
        C7021t.m21283b(str2);
        mo16328d();
        m16316q();
        try {
            try {
                cursor = m16394v().query("user_attributes", new String[]{"set_timestamp", C13032a.f29462d, TtmlNode.ATTR_TTS_ORIGIN}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SQLiteException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
        try {
            if (cursor.moveToFirst()) {
                try {
                    C8953b4 b4Var = new C8953b4(str, cursor.getString(2), str2, cursor.getLong(0), m16432a(cursor, 1));
                    if (cursor.moveToNext()) {
                        mo16178c().m16375s().m16337a("Got multiple records for user property, expected one. appId", C9027o.m16380a(str));
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return b4Var;
                } catch (SQLiteException e3) {
                    e = e3;
                    mo16178c().m16375s().m16335a("Error querying user property. appId", C9027o.m16380a(str), m16352i().m16470c(str2), e);
                    if (cursor == null) {
                        return null;
                    }
                    cursor.close();
                    return null;
                }
            } else if (cursor == null) {
                return null;
            } else {
                cursor.close();
                return null;
            }
        } catch (SQLiteException e4) {
            e = e4;
        } catch (Throwable th4) {
            th = th4;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b5  */
    @androidx.annotation.WorkerThread
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] m16405d(java.lang.String r10) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r0 = p081h.p203i.p204a.p224e.p235d.p240n.C7021t.m21283b(r0)
            r0 = r9
            r0.mo16328d()
            r0 = r9
            r0.m16316q()
            r0 = r9
            android.database.sqlite.SQLiteDatabase r0 = r0.m16394v()     // Catch: all -> 0x0085, SQLiteException -> 0x008b
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
            h.i.a.e.m.b.o r0 = r0.mo16178c()     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
            h.i.a.e.m.b.q r0 = r0.m16375s()     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
            java.lang.String r1 = "Got multiple records for app config, expected one. appId"
            r2 = r10
            java.lang.Object r2 = p081h.p203i.p204a.p224e.p285m.p287b.C9027o.m16380a(r2)     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
            r0.m16337a(r1, r2)     // Catch: SQLiteException -> 0x0080, all -> 0x00b0
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
            h.i.a.e.m.b.o r0 = r0.mo16178c()     // Catch: all -> 0x00b0
            h.i.a.e.m.b.q r0 = r0.m16375s()     // Catch: all -> 0x00b0
            java.lang.String r1 = "Error querying remote config. appId"
            r2 = r10
            java.lang.Object r2 = p081h.p203i.p204a.p224e.p285m.p287b.C9027o.m16380a(r2)     // Catch: all -> 0x00b0
            r3 = r14
            r0.m16336a(r1, r2, r3)     // Catch: all -> 0x00b0
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9026n4.m16405d(java.lang.String):byte[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x0204  */
    @androidx.annotation.WorkerThread
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzl m16402e(java.lang.String r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9026n4.m16402e(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzl");
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x011d  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, p081h.p203i.p204a.p224e.p259j.p276q.C8556b1> m16403e(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9026n4.m16403e(java.lang.String):java.util.Map");
    }

    @WorkerThread
    /* renamed from: f */
    public final int m16400f(String str, String str2) {
        C7021t.m21283b(str);
        C7021t.m21283b(str2);
        mo16328d();
        m16316q();
        try {
            return m16394v().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            mo16178c().m16375s().m16335a("Error deleting conditional property", C9027o.m16380a(str), m16352i().m16470c(str2), e);
            return 0;
        }
    }

    /* renamed from: f */
    public final long m16401f(String str) {
        C7021t.m21283b(str);
        return m16413a("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0170  */
    /* JADX WARN: Type inference failed for: r11v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<p081h.p203i.p204a.p224e.p259j.p276q.C8679n0>> m16399g(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9026n4.m16399g(java.lang.String, java.lang.String):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0170  */
    /* JADX WARN: Type inference failed for: r11v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.Integer, java.util.List<p081h.p203i.p204a.p224e.p259j.p276q.C8707q0>> m16398h(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9026n4.m16398h(java.lang.String, java.lang.String):java.util.Map");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    @androidx.annotation.WorkerThread
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m16397i(java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9026n4.m16397i(java.lang.String, java.lang.String):long");
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9049r3
    /* renamed from: r */
    public final boolean mo16085r() {
        return false;
    }

    @WorkerThread
    /* renamed from: t */
    public final void m16396t() {
        m16316q();
        m16394v().beginTransaction();
    }

    @WorkerThread
    /* renamed from: u */
    public final void m16395u() {
        m16316q();
        m16394v().endTransaction();
    }

    @WorkerThread
    /* renamed from: v */
    public final SQLiteDatabase m16394v() {
        mo16328d();
        try {
            return this.f20517d.getWritableDatabase();
        } catch (SQLiteException e) {
            mo16178c().m16372v().m16337a("Error opening database", e);
            throw e;
        }
    }

    @WorkerThread
    /* renamed from: w */
    public final void m16393w() {
        m16316q();
        m16394v().setTransactionSuccessful();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0069  */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    @androidx.annotation.WorkerThread
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m16392x() {
        /*
            r4 = this;
            r0 = r4
            android.database.sqlite.SQLiteDatabase r0 = r0.m16394v()
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
            h.i.a.e.m.b.o r0 = r0.mo16178c()     // Catch: all -> 0x0064
            h.i.a.e.m.b.q r0 = r0.m16375s()     // Catch: all -> 0x0064
            java.lang.String r1 = "Database error getting next bundle app id"
            r2 = r7
            r0.m16337a(r1, r2)     // Catch: all -> 0x0064
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9026n4.m16392x():java.lang.String");
    }

    /* renamed from: y */
    public final boolean m16391y() {
        return m16414a("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    @WorkerThread
    /* renamed from: z */
    public final void m16390z() {
        int delete;
        mo16328d();
        m16316q();
        if (m16442F()) {
            long a = m16350k().f20203h.m16696a();
            long elapsedRealtime = mo16174e().elapsedRealtime();
            if (Math.abs(elapsedRealtime - a) > C8966e.f20283I.m16678a().longValue()) {
                m16350k().f20203h.m16695a(elapsedRealtime);
                mo16328d();
                m16316q();
                if (m16442F() && (delete = m16394v().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(mo16174e().currentTimeMillis()), String.valueOf(C9008k4.m16482t())})) > 0) {
                    mo16178c().m16389A().m16337a("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
                }
            }
        }
    }
}
