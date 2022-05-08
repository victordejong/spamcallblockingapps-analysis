package p459j.p460a.p601x0.p602a;

import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.provider.CallLog;
import android.text.TextUtils;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.developmode.LogManager;
import java.util.Locale;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.p587d5.C13975b;
import p459j.p460a.p582w0.p594z4.C14336c;
/* renamed from: j.a.x0.a.c */
/* loaded from: classes3-dex2jar.jar:j/a/x0/a/c.class */
public class C14440c extends AbstractC14442e {

    /* renamed from: D */
    public boolean f32296D = false;

    /* renamed from: E */
    public int f32297E = -2;

    public C14440c() {
        mo1291L();
    }

    /* renamed from: a */
    public static String m1335a(Uri uri) {
        StringBuilder sb = new StringBuilder(200);
        for (char c : uri.toString().toCharArray()) {
            sb.append(Integer.toHexString(c));
        }
        return sb.toString();
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: A */
    public boolean mo1289A() {
        if (C13878a3.m3207k()) {
            return true;
        }
        LogManager.m28579a("CallLoadingHelper", "detect no call log permission");
        return false;
    }

    /* renamed from: L */
    public void mo1291L() {
        this.f32301a = CallLog.Calls.CONTENT_URI;
        this.f32310j = "_id";
        this.f32312l = "number";
        this.f32314n = "lookup_uri";
        this.f32316p = "name";
        this.f32318r = "date";
        this.f32320t = "duration";
        this.f32322v = "type";
        this.f32324x = "new";
        this.f32326z = null;
        this.f32296D = m1334d(this.f32314n);
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: a */
    public int mo1286a(int i) {
        int a = C14336c.m1531a(i);
        if (a == 1) {
            return 17;
        }
        if (a == 2) {
            return 18;
        }
        int i2 = 19;
        if (a != 3) {
            if (a != 5) {
                return 240;
            }
            i2 = C14017g4.m2802v() ? 19 : 240;
        }
        return i2;
    }

    /* renamed from: d */
    public boolean m1334d(String str) {
        Uri uri;
        if (Build.MANUFACTURER.toLowerCase(Locale.US).equals("samsung") || Build.MANUFACTURER.toLowerCase(Locale.US).equals("sony") || Build.MANUFACTURER.toLowerCase(Locale.US).equals("asus") || TextUtils.isEmpty(str) || (uri = this.f32301a) == null || TextUtils.isEmpty(uri.toString())) {
            return false;
        }
        String str2 = "has_column_" + m1335a(this.f32301a) + "_" + str;
        if (C13915b3.m3067a(str2)) {
            return C13915b3.m3062a(str2, false);
        }
        C13915b3.m3055b(str2, false);
        if (!C13878a3.m3207k()) {
            return false;
        }
        Cursor cursor = null;
        try {
            Cursor query = MyApplication.m29013o().getContentResolver().query(this.f32301a, null, null, null, "_id ASC LIMIT 1");
            C13915b3.m3055b(str2, query != null && query.getColumnIndex(str) >= 0);
            cursor = query;
            boolean a = C13915b3.m3062a(str2, false);
            if (query != null) {
                query.close();
            }
            return a;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: r */
    public String[] mo1284r() {
        return this.f32296D ? new String[]{this.f32310j, this.f32312l, this.f32318r, this.f32320t, this.f32322v, this.f32324x, this.f32316p, this.f32314n, "countryiso"} : new String[]{this.f32310j, this.f32312l, this.f32318r, this.f32320t, this.f32322v, this.f32324x, this.f32316p, "countryiso"};
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: t */
    public int mo1305t() {
        int t = super.mo1305t();
        int i = t;
        if (C13565v.m3921g().m23335b()) {
            if (t != 1) {
                return t != 2 ? t != 3 ? t : C13975b.f31383a.m9461a("call_log_type_missed", (Integer) 3) : C13975b.f31383a.m9461a("call_log_type_outgoing", (Integer) 2);
            }
            i = C13975b.f31383a.m9461a("call_log_type_incoming", (Integer) 1);
        }
        return i;
    }

    @Override // p459j.p460a.p601x0.p602a.AbstractC14442e
    /* renamed from: v */
    public String mo1283v() {
        if (mo1324a()) {
            if (-2 == this.f32297E && !TextUtils.isEmpty("countryiso")) {
                this.f32297E = this.f32302b.getColumnIndex("countryiso");
            }
            int i = this.f32297E;
            if (i >= 0) {
                String string = this.f32302b.getString(i);
                return string != null ? string.toUpperCase(Locale.US) : null;
            }
        }
        return super.mo1283v();
    }
}
