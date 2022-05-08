package p459j.p460a.p601x0.p602a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.collection.LruCache;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.developmode.LogManager;
import java.util.HashMap;
import java.util.HashSet;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14108o4;
/* renamed from: j.a.x0.a.f */
/* loaded from: classes3-dex2jar.jar:j/a/x0/a/f.class */
public class C14444f extends AbstractC14442e {

    /* renamed from: H */
    public static final Uri f32329H = Uri.parse("content://mms");

    /* renamed from: I */
    public static final HashMap<Long, String> f32330I = new HashMap<>(128);

    /* renamed from: J */
    public static final LruCache<Long, String> f32331J = new LruCache<>(128);

    /* renamed from: K */
    public static final HashSet<Long> f32332K = new HashSet<>();

    /* renamed from: L */
    public static final LruCache<Long, String> f32333L = new LruCache<>(128);

    /* renamed from: M */
    public static final HashSet<Long> f32334M = new HashSet<>();

    /* renamed from: D */
    public int f32335D = -2;

    /* renamed from: E */
    public String f32336E = "thread_id";

    /* renamed from: F */
    public int f32337F = -2;

    /* renamed from: G */
    public String f32338G = "m_type";

    public C14444f() {
        m1296N();
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: A */
    public boolean mo1289A() {
        if (C12810o.m5233l()) {
            return true;
        }
        LogManager.m28579a("MmsLoadingHelper", "detect no sms/mms permission");
        return false;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: D */
    public void mo1299D() {
        if (!C13915b3.m3062a("is_default_sms_app_last_time_aggregate", false) && C12810o.m5236i()) {
            C13915b3.m3057b("dialer_loaded_realm_log_of_sms_id", 0L);
            C13915b3.m3057b("dialer_loaded_realm_log_of_sms_date_min", 0L);
            C13915b3.m3057b("dialer_loaded_realm_log_of_sms_date", 0L);
            C13915b3.m3057b("dialer_loaded_realm_log_of_mms_id", 0L);
            C13915b3.m3057b("dialer_loaded_realm_log_of_mms_date_min", 0L);
            C13915b3.m3057b("dialer_loaded_realm_log_of_mms_date", 0L);
            C13915b3.m3055b("is_default_sms_app_last_time_aggregate", true);
        } else if (!C12810o.m5236i()) {
            C13915b3.m3055b("is_default_sms_app_last_time_aggregate", false);
        }
        super.mo1299D();
    }

    /* renamed from: L */
    public int m1298L() {
        if (!mo1324a()) {
            return 0;
        }
        if (-2 == this.f32337F && !TextUtils.isEmpty(this.f32338G)) {
            this.f32337F = this.f32302b.getColumnIndex(this.f32338G);
        }
        int i = this.f32337F;
        if (i >= 0) {
            return this.f32302b.getInt(i);
        }
        return 0;
    }

    /* renamed from: M */
    public Long m1297M() {
        if (mo1324a()) {
            if (-2 == this.f32335D && !TextUtils.isEmpty(this.f32336E)) {
                this.f32335D = this.f32302b.getColumnIndex(this.f32336E);
            }
            int i = this.f32335D;
            if (i >= 0) {
                return Long.valueOf(this.f32302b.getLong(i));
            }
        }
        return 0L;
    }

    /* renamed from: N */
    public void m1296N() {
        this.f32301a = f32329H;
        this.f32310j = "_id";
        this.f32312l = null;
        this.f32314n = null;
        this.f32316p = null;
        this.f32318r = "date";
        this.f32320t = null;
        this.f32322v = "msg_box";
        this.f32324x = null;
        this.f32326z = null;
        this.f32307g = "(m_type=132 OR m_type=130 OR m_type=128) AND (msg_box = 1 OR msg_box = 2) AND (thread_id > 0)";
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: a */
    public int mo1286a(int i) {
        if (i != 1) {
            return i != 2 ? 240 : 66;
        }
        return 65;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: b */
    public void mo1295b() {
        super.mo1295b();
        f32330I.clear();
        f32331J.evictAll();
        f32332K.clear();
        f32333L.evictAll();
        f32334M.clear();
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: d */
    public String mo1294d() {
        long u = mo1304u();
        String str = f32333L.get(Long.valueOf(u));
        str = str;
        if (TextUtils.isEmpty(str)) {
            str = str;
            if (!f32334M.contains(Long.valueOf(u))) {
                str = str;
                if (C12810o.m5233l()) {
                    Cursor query = MyApplication.m29013o().getContentResolver().query(Uri.parse(String.format("content://mms/%d/part", Long.valueOf(u))), new String[]{"text"}, "ct=?", new String[]{"text/plain"}, "_id ASC");
                    str = str;
                    if (query != null) {
                        int L = m1298L();
                        if (query.moveToFirst()) {
                            str = query.getString(0);
                        } else if (L == 128 || L == 132) {
                            str = "";
                        }
                        query.close();
                    }
                }
                if (str == null) {
                    f32334M.add(Long.valueOf(u));
                } else {
                    f32333L.put(Long.valueOf(u), str);
                }
            }
        }
        return str;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: f */
    public long mo1293f() {
        return super.mo1293f() * 1000;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: p */
    public String mo1292p() {
        long u = mo1304u();
        long longValue = m1297M().longValue();
        String str = f32331J.get(Long.valueOf(u));
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = str;
            if (!f32332K.contains(Long.valueOf(u))) {
                str2 = str;
                if (mo1289A()) {
                    Cursor query = MyApplication.m29013o().getContentResolver().query(Uri.parse(String.format("content://mms/%d/addr", Long.valueOf(u))), new String[]{"address"}, "(type = ?)", new String[]{String.valueOf(m1300z() == 65 ? 137 : 151)}, null);
                    str2 = str;
                    if (query != null) {
                        str2 = str;
                        if (query.moveToFirst()) {
                            String string = query.getString(0);
                            str2 = string;
                            if (C14108o4.m2496a(string, C14108o4.EnumC14110b.MESSAGE)) {
                                str2 = null;
                            }
                        }
                        query.close();
                    }
                }
                if (!TextUtils.isEmpty(str2)) {
                    f32331J.put(Long.valueOf(u), str2);
                    f32330I.put(Long.valueOf(longValue), str2);
                } else if (f32330I.containsKey(Long.valueOf(longValue))) {
                    str2 = f32330I.get(Long.valueOf(longValue));
                    f32331J.put(Long.valueOf(u), str2);
                } else {
                    str2 = str2;
                    if (mo1289A()) {
                        str2 = str2;
                        try {
                            ContentResolver contentResolver = MyApplication.m29013o().getContentResolver();
                            Uri parse = Uri.parse(String.format("content://mms-sms/conversations/%d/recipients", Long.valueOf(longValue)));
                            StringBuilder sb = new StringBuilder();
                            sb.append("_id=");
                            sb.append(longValue);
                            Cursor query2 = contentResolver.query(parse, new String[]{"recipient_ids"}, sb.toString(), null, "recipient_ids LIMIT 1");
                            str2 = str2;
                            if (query2 != null) {
                                String str3 = str2;
                                if (query2.moveToFirst()) {
                                    long j = query2.getLong(0);
                                    str3 = str2;
                                    if (j > 0) {
                                        Cursor query3 = MyApplication.m29013o().getContentResolver().query(Uri.parse(String.format("content://mms-sms/canonical-address/%d", Long.valueOf(j))), new String[]{"address"}, null, null, "address LIMIT 1");
                                        str3 = str2;
                                        if (query3 != null) {
                                            str3 = str2;
                                            if (query3.moveToFirst()) {
                                                String string2 = query3.getString(0);
                                                str3 = string2;
                                                if (C14108o4.m2496a(string2, C14108o4.EnumC14110b.MESSAGE)) {
                                                    str3 = null;
                                                }
                                            }
                                            query3.close();
                                        }
                                    }
                                }
                                str2 = str3;
                                query2.close();
                                str2 = str3;
                            }
                        } catch (Exception e) {
                            C14080m2.m2612a((Throwable) e);
                        }
                    }
                    if (TextUtils.isEmpty(str2)) {
                        f32332K.add(Long.valueOf(u));
                    } else {
                        f32331J.put(Long.valueOf(u), str2);
                        f32330I.put(Long.valueOf(longValue), str2);
                    }
                }
            }
        }
        return str2;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: r */
    public String[] mo1284r() {
        return new String[]{this.f32310j, this.f32318r, this.f32322v, this.f32336E, this.f32338G};
    }
}
