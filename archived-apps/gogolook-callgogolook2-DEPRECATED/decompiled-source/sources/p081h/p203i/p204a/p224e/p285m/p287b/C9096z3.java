package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.google.android.gms.measurement.internal.zzad;
import com.google.android.gms.measurement.internal.zzh;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.BitSet;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7029a;
import p081h.p203i.p204a.p224e.p259j.p276q.C8547a1;
import p081h.p203i.p204a.p224e.p259j.p276q.C8556b1;
import p081h.p203i.p204a.p224e.p259j.p276q.C8579d1;
import p081h.p203i.p204a.p224e.p259j.p276q.C8679n0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8688o0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8696o7;
import p081h.p203i.p204a.p224e.p259j.p276q.C8698p0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8707q0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8716r0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8752v0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8770x0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8783y0;
import p081h.p203i.p204a.p224e.p259j.p276q.C8792z0;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: h.i.a.e.m.b.z3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/z3.class */
public final class C9096z3 extends AbstractC9049r3 {
    public C9096z3(C9061t3 t3Var) {
        super(t3Var);
    }

    /* renamed from: a */
    public static C8783y0 m16102a(C8770x0 x0Var, String str) {
        C8783y0[] y0VarArr;
        for (C8783y0 y0Var : x0Var.f20104c) {
            if (y0Var.f20135c.equals(str)) {
                return y0Var;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static void m16098a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    /* renamed from: a */
    public static void m16096a(StringBuilder sb, int i, String str, C8556b1 b1Var) {
        if (b1Var != null) {
            m16098a(sb, 3);
            sb.append(str);
            sb.append(" {\n");
            int i2 = 0;
            if (b1Var.f19608d != null) {
                m16098a(sb, 4);
                sb.append("results: ");
                long[] jArr = b1Var.f19608d;
                int length = jArr.length;
                int i3 = 0;
                int i4 = 0;
                while (i3 < length) {
                    long j = jArr[i3];
                    if (i4 != 0) {
                        sb.append(UserProfile.CARD_CATE_SEPARATOR);
                    }
                    sb.append(Long.valueOf(j));
                    i3++;
                    i4++;
                }
                sb.append('\n');
            }
            if (b1Var.f19607c != null) {
                m16098a(sb, 4);
                sb.append("status: ");
                long[] jArr2 = b1Var.f19607c;
                int length2 = jArr2.length;
                int i5 = 0;
                while (i2 < length2) {
                    long j2 = jArr2[i2];
                    if (i5 != 0) {
                        sb.append(UserProfile.CARD_CATE_SEPARATOR);
                    }
                    sb.append(Long.valueOf(j2));
                    i2++;
                    i5++;
                }
                sb.append('\n');
            }
            m16098a(sb, 3);
            sb.append("}\n");
        }
    }

    /* renamed from: a */
    public static void m16094a(StringBuilder sb, int i, String str, Object obj) {
        if (obj != null) {
            m16098a(sb, i + 1);
            sb.append(str);
            sb.append(": ");
            sb.append(obj);
            sb.append('\n');
        }
    }

    /* renamed from: a */
    public static boolean m16099a(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* renamed from: a */
    public static boolean m16090a(long[] jArr, int i) {
        return i < (jArr.length << 6) && ((1 << (i % 64)) & jArr[i / 64]) != 0;
    }

    /* renamed from: a */
    public static long[] m16093a(BitSet bitSet) {
        int i;
        int length = (bitSet.length() + 63) / 64;
        long[] jArr = new long[length];
        for (int i2 = 0; i2 < length; i2++) {
            jArr[i2] = 0;
            for (int i3 = 0; i3 < 64 && (i = (i2 << 6) + i3) < bitSet.length(); i3++) {
                if (bitSet.get(i)) {
                    jArr[i2] = jArr[i2] | (1 << i3);
                }
            }
        }
        return jArr;
    }

    /* renamed from: a */
    public static C8783y0[] m16089a(C8783y0[] y0VarArr, String str, Object obj) {
        for (C8783y0 y0Var : y0VarArr) {
            if (str.equals(y0Var.f20135c)) {
                y0Var.f20137e = null;
                y0Var.f20136d = null;
                y0Var.f20139g = null;
                if (obj instanceof Long) {
                    y0Var.f20137e = (Long) obj;
                } else if (obj instanceof String) {
                    y0Var.f20136d = (String) obj;
                } else if (obj instanceof Double) {
                    y0Var.f20139g = (Double) obj;
                }
                return y0VarArr;
            }
        }
        C8783y0[] y0VarArr2 = new C8783y0[y0VarArr.length + 1];
        System.arraycopy(y0VarArr, 0, y0VarArr2, 0, y0VarArr.length);
        C8783y0 y0Var2 = new C8783y0();
        y0Var2.f20135c = str;
        if (obj instanceof Long) {
            y0Var2.f20137e = (Long) obj;
        } else if (obj instanceof String) {
            y0Var2.f20136d = (String) obj;
        } else if (obj instanceof Double) {
            y0Var2.f20139g = (Double) obj;
        }
        y0VarArr2[y0VarArr.length] = y0Var2;
        return y0VarArr2;
    }

    /* renamed from: b */
    public static Object m16088b(C8770x0 x0Var, String str) {
        C8783y0 a = m16102a(x0Var, str);
        if (a == null) {
            return null;
        }
        String str2 = a.f20136d;
        if (str2 != null) {
            return str2;
        }
        Long l = a.f20137e;
        if (l != null) {
            return l;
        }
        Double d = a.f20139g;
        if (d != null) {
            return d;
        }
        return null;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final <T extends Parcelable> T m16091a(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            try {
                obtain.unmarshall(bArr, 0, bArr.length);
                obtain.setDataPosition(0);
                T createFromParcel = creator.createFromParcel(obtain);
                obtain.recycle();
                return createFromParcel;
            } catch (C7029a.C7030a e) {
                mo16178c().m16375s().m16338a("Failed to load parcelable from buffer");
                obtain.recycle();
                return null;
            }
        } catch (Throwable th) {
            obtain.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    public final String m16104a(C8679n0 n0Var) {
        if (n0Var == null) {
            return C14247d.f31851f;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        m16094a(sb, 0, "filter_id", n0Var.f19853c);
        m16094a(sb, 0, "event_name", m16352i().m16473a(n0Var.f19854d));
        m16095a(sb, 1, "event_count_filter", n0Var.f19857g);
        sb.append("  filters {\n");
        for (C8688o0 o0Var : n0Var.f19855e) {
            m16097a(sb, 2, o0Var);
        }
        m16098a(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    /* renamed from: a */
    public final String m16103a(C8707q0 q0Var) {
        if (q0Var == null) {
            return C14247d.f31851f;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        m16094a(sb, 0, "filter_id", q0Var.f19929c);
        m16094a(sb, 0, "property_name", m16352i().m16470c(q0Var.f19930d));
        m16097a(sb, 1, q0Var.f19931e);
        sb.append("}\n");
        return sb.toString();
    }

    /* renamed from: a */
    public final void m16105a(C8579d1 d1Var, Object obj) {
        C7021t.m21290a(obj);
        d1Var.f19652e = null;
        d1Var.f19653f = null;
        d1Var.f19655h = null;
        if (obj instanceof String) {
            d1Var.f19652e = (String) obj;
        } else if (obj instanceof Long) {
            d1Var.f19653f = (Long) obj;
        } else if (obj instanceof Double) {
            d1Var.f19655h = (Double) obj;
        } else {
            mo16178c().m16375s().m16337a("Ignoring invalid (type) user attribute value", obj);
        }
    }

    /* renamed from: a */
    public final void m16101a(C8783y0 y0Var, Object obj) {
        C7021t.m21290a(obj);
        y0Var.f20136d = null;
        y0Var.f20137e = null;
        y0Var.f20139g = null;
        if (obj instanceof String) {
            y0Var.f20136d = (String) obj;
        } else if (obj instanceof Long) {
            y0Var.f20137e = (Long) obj;
        } else if (obj instanceof Double) {
            y0Var.f20139g = (Double) obj;
        } else {
            mo16178c().m16375s().m16337a("Ignoring invalid (type) event param value", obj);
        }
    }

    /* renamed from: a */
    public final void m16097a(StringBuilder sb, int i, C8688o0 o0Var) {
        String[] strArr;
        String str;
        if (o0Var != null) {
            m16098a(sb, i);
            sb.append("filter {\n");
            m16094a(sb, i, "complement", o0Var.f19898e);
            m16094a(sb, i, "param_name", m16352i().m16471b(o0Var.f19899f));
            int i2 = i + 1;
            C8716r0 r0Var = o0Var.f19896c;
            if (r0Var != null) {
                m16098a(sb, i2);
                sb.append("string_filter");
                sb.append(" {\n");
                Integer num = r0Var.f19939c;
                if (num != null) {
                    switch (num.intValue()) {
                        case 1:
                            str = "REGEXP";
                            break;
                        case 2:
                            str = "BEGINS_WITH";
                            break;
                        case 3:
                            str = "ENDS_WITH";
                            break;
                        case 4:
                            str = "PARTIAL";
                            break;
                        case 5:
                            str = "EXACT";
                            break;
                        case 6:
                            str = "IN_LIST";
                            break;
                        default:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                    }
                    m16094a(sb, i2, "match_type", str);
                }
                m16094a(sb, i2, "expression", r0Var.f19940d);
                m16094a(sb, i2, "case_sensitive", r0Var.f19941e);
                if (r0Var.f19942f.length > 0) {
                    m16098a(sb, i2 + 1);
                    sb.append("expression_list {\n");
                    for (String str2 : r0Var.f19942f) {
                        m16098a(sb, i2 + 2);
                        sb.append(str2);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                m16098a(sb, i2);
                sb.append("}\n");
            }
            m16095a(sb, i2, "number_filter", o0Var.f19897d);
            m16098a(sb, i);
            sb.append("}\n");
        }
    }

    /* renamed from: a */
    public final void m16095a(StringBuilder sb, int i, String str, C8698p0 p0Var) {
        if (p0Var != null) {
            m16098a(sb, i);
            sb.append(str);
            sb.append(" {\n");
            Integer num = p0Var.f19918c;
            if (num != null) {
                int intValue = num.intValue();
                m16094a(sb, i, "comparison_type", intValue != 1 ? intValue != 2 ? intValue != 3 ? intValue != 4 ? "UNKNOWN_COMPARISON_TYPE" : "BETWEEN" : "EQUAL" : "GREATER_THAN" : "LESS_THAN");
            }
            m16094a(sb, i, "match_as_float", p0Var.f19919d);
            m16094a(sb, i, "comparison_value", p0Var.f19920e);
            m16094a(sb, i, "min_comparison_value", p0Var.f19921f);
            m16094a(sb, i, "max_comparison_value", p0Var.f19922g);
            m16098a(sb, i);
            sb.append("}\n");
        }
    }

    /* renamed from: a */
    public final boolean m16107a(long j, long j2) {
        return j == 0 || j2 <= 0 || Math.abs(mo16174e().currentTimeMillis() - j) > j2;
    }

    @WorkerThread
    /* renamed from: a */
    public final boolean m16106a(zzad zzadVar, zzh zzhVar) {
        C7021t.m21290a(zzadVar);
        C7021t.m21290a(zzhVar);
        if (!TextUtils.isEmpty(zzhVar.f7159b) || !TextUtils.isEmpty(zzhVar.f7175r)) {
            return true;
        }
        mo16187b();
        return false;
    }

    /* renamed from: a */
    public final byte[] m16100a(C8792z0 z0Var) {
        try {
            byte[] bArr = new byte[z0Var.m17077b()];
            C8696o7 a = C8696o7.m17260a(bArr, 0, bArr.length);
            z0Var.mo16952a(a);
            a.m17259b();
            return bArr;
        } catch (IOException e) {
            mo16178c().m16375s().m16337a("Data loss. Failed to serialize batch", e);
            return null;
        }
    }

    /* renamed from: a */
    public final byte[] m16092a(byte[] bArr) throws IOException {
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr2 = new byte[1024];
            while (true) {
                int read = gZIPInputStream.read(bArr2);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr2, 0, read);
                } else {
                    gZIPInputStream.close();
                    byteArrayInputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException e) {
            mo16178c().m16375s().m16337a("Failed to ungzip content", e);
            throw e;
        }
    }

    /* renamed from: b */
    public final String m16087b(C8792z0 z0Var) {
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        C8547a1[] a1VarArr = z0Var.f20154c;
        if (a1VarArr != null) {
            int length = a1VarArr.length;
            for (int i = 0; i < length; i++) {
                C8547a1 a1Var = a1VarArr[i];
                if (!(a1Var == null || a1Var == null)) {
                    m16098a(sb, 1);
                    sb.append("bundle {\n");
                    m16094a(sb, 1, "protocol_version", a1Var.f19577c);
                    m16094a(sb, 1, "platform", a1Var.f19585k);
                    m16094a(sb, 1, "gmp_version", a1Var.f19593s);
                    m16094a(sb, 1, "uploading_gmp_version", a1Var.f19594t);
                    m16094a(sb, 1, "config_version", a1Var.f19570I);
                    m16094a(sb, 1, "gmp_app_id", a1Var.f19562A);
                    m16094a(sb, 1, "admob_app_id", a1Var.f19575N);
                    m16094a(sb, 1, "app_id", a1Var.f19591q);
                    m16094a(sb, 1, "app_version", a1Var.f19592r);
                    m16094a(sb, 1, "app_version_major", a1Var.f19566E);
                    m16094a(sb, 1, "firebase_instance_id", a1Var.f19565D);
                    m16094a(sb, 1, "dev_cert_hash", a1Var.f19598x);
                    m16094a(sb, 1, "app_store", a1Var.f19590p);
                    m16094a(sb, 1, "upload_timestamp_millis", a1Var.f19580f);
                    m16094a(sb, 1, "start_timestamp_millis", a1Var.f19581g);
                    m16094a(sb, 1, "end_timestamp_millis", a1Var.f19582h);
                    m16094a(sb, 1, "previous_bundle_start_timestamp_millis", a1Var.f19583i);
                    m16094a(sb, 1, "previous_bundle_end_timestamp_millis", a1Var.f19584j);
                    m16094a(sb, 1, "app_instance_id", a1Var.f19597w);
                    m16094a(sb, 1, "resettable_device_id", a1Var.f19595u);
                    m16094a(sb, 1, "device_id", a1Var.f19569H);
                    m16094a(sb, 1, "ds_id", a1Var.f19572K);
                    m16094a(sb, 1, "limited_ad_tracking", a1Var.f19596v);
                    m16094a(sb, 1, "os_version", a1Var.f19586l);
                    m16094a(sb, 1, "device_model", a1Var.f19587m);
                    m16094a(sb, 1, "user_default_language", a1Var.f19588n);
                    m16094a(sb, 1, "time_zone_offset_minutes", a1Var.f19589o);
                    m16094a(sb, 1, "bundle_sequential_index", a1Var.f19599y);
                    m16094a(sb, 1, "service_upload", a1Var.f19563B);
                    m16094a(sb, 1, "health_monitor", a1Var.f19600z);
                    Long l = a1Var.f19571J;
                    if (!(l == null || l.longValue() == 0)) {
                        m16094a(sb, 1, "android_id", a1Var.f19571J);
                    }
                    Integer num = a1Var.f19574M;
                    if (num != null) {
                        m16094a(sb, 1, "retry_counter", num);
                    }
                    C8579d1[] d1VarArr = a1Var.f19579e;
                    a1VarArr = a1VarArr;
                    if (d1VarArr != null) {
                        int length2 = d1VarArr.length;
                        int i2 = 0;
                        while (true) {
                            a1VarArr = a1VarArr;
                            if (i2 >= length2) {
                                break;
                            }
                            C8579d1 d1Var = d1VarArr[i2];
                            if (d1Var != null) {
                                m16098a(sb, 2);
                                sb.append("user_property {\n");
                                m16094a(sb, 2, "set_timestamp_millis", d1Var.f19650c);
                                m16094a(sb, 2, "name", m16352i().m16470c(d1Var.f19651d));
                                m16094a(sb, 2, "string_value", d1Var.f19652e);
                                m16094a(sb, 2, "int_value", d1Var.f19653f);
                                m16094a(sb, 2, "double_value", d1Var.f19655h);
                                m16098a(sb, 2);
                                sb.append("}\n");
                            }
                            i2++;
                        }
                    }
                    C8752v0[] v0VarArr = a1Var.f19564C;
                    if (v0VarArr != null) {
                        for (C8752v0 v0Var : v0VarArr) {
                            if (v0Var != null) {
                                m16098a(sb, 2);
                                sb.append("audience_membership {\n");
                                m16094a(sb, 2, "audience_id", v0Var.f20017c);
                                m16094a(sb, 2, "new_audience", v0Var.f20020f);
                                m16096a(sb, 2, "current_data", v0Var.f20018d);
                                m16096a(sb, 2, "previous_data", v0Var.f20019e);
                                m16098a(sb, 2);
                                sb.append("}\n");
                            }
                        }
                    }
                    C8770x0[] x0VarArr = a1Var.f19578d;
                    if (x0VarArr != null) {
                        int length3 = x0VarArr.length;
                        for (int i3 = 0; i3 < length3; i3++) {
                            C8770x0 x0Var = x0VarArr[i3];
                            if (x0Var != null) {
                                m16098a(sb, 2);
                                sb.append("event {\n");
                                m16094a(sb, 2, "name", m16352i().m16473a(x0Var.f20105d));
                                m16094a(sb, 2, "timestamp_millis", x0Var.f20106e);
                                m16094a(sb, 2, "previous_timestamp_millis", x0Var.f20107f);
                                m16094a(sb, 2, "count", x0Var.f20108g);
                                C8783y0[] y0VarArr = x0Var.f20104c;
                                x0VarArr = x0VarArr;
                                if (y0VarArr != null) {
                                    int length4 = y0VarArr.length;
                                    int i4 = 0;
                                    while (true) {
                                        x0VarArr = x0VarArr;
                                        if (i4 >= length4) {
                                            break;
                                        }
                                        C8783y0 y0Var = y0VarArr[i4];
                                        if (y0Var != null) {
                                            m16098a(sb, 3);
                                            sb.append("param {\n");
                                            m16094a(sb, 3, "name", m16352i().m16471b(y0Var.f20135c));
                                            m16094a(sb, 3, "string_value", y0Var.f20136d);
                                            m16094a(sb, 3, "int_value", y0Var.f20137e);
                                            m16094a(sb, 3, "double_value", y0Var.f20139g);
                                            m16098a(sb, 3);
                                            sb.append("}\n");
                                        }
                                        i4++;
                                    }
                                }
                                m16098a(sb, 2);
                                sb.append("}\n");
                            }
                        }
                    }
                    m16098a(sb, 1);
                    sb.append("}\n");
                }
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    /* renamed from: b */
    public final byte[] m16086b(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            mo16178c().m16375s().m16337a("Failed to gzip content", e);
            throw e;
        }
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9049r3
    /* renamed from: r */
    public final boolean mo16085r() {
        return false;
    }
}
