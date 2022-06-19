package p193e.p194a.p712e4;

import android.content.Context;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.net.Uri;
import android.os.Build;
import android.provider.Telephony;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.truecaller.multisim.SimInfo;
import java.util.ArrayList;
import java.util.List;
import p193e.p194a.p1041l0.AbstractC17351f;
import p193e.p194a.p712e4.C13498q;
import p193e.p194a.p712e4.p713e0.AbstractC13483a;
import p193e.p194a.p712e4.p713e0.C13484b;
import p193e.p194a.p712e4.p713e0.C13485c;
import p193e.p194a.p712e4.p714f0.C13487a;
/* renamed from: e.a.e4.r */
/* loaded from: classes11-dex2jar.jar:e/a/e4/r.class */
public abstract class AbstractC13501r implements AbstractC13497p {

    /* renamed from: a */
    public final Context f39147a;

    /* renamed from: b */
    public final C13487a f39148b;

    /* renamed from: c */
    public final AbstractC13483a f39149c;

    /* renamed from: d */
    public final AbstractC17351f f39150d;

    /* renamed from: e */
    public String f39151e;

    /* renamed from: f */
    public String f39152f;

    /* renamed from: g */
    public String f39153g;

    /* renamed from: h */
    public volatile boolean f39154h = false;

    /* renamed from: i */
    public volatile boolean f39155i = false;

    /* renamed from: j */
    public volatile boolean f39156j = false;

    /* renamed from: e.a.e4.r$a */
    /* loaded from: classes11-dex2jar.jar:e/a/e4/r$a.class */
    public enum EnumC13502a {
        ANDROID_11_NATIVE(C13498q.C13499a.f39145a, 30, null),
        LOLLIPOP_MR1_XIAOMI(C13476b.f39120a, 22, "xiaomi"),
        MARSHMALLOW_SAMSUNG(C13486f.f39130a, 23, "samsung"),
        MARSHMALLOW_HUAWEI(C13480d.f39125a, 23, "huawei"),
        MARSHMALLOW_LG(C13482e.f39127a, 23, "lge"),
        MARSHMALLOW_YU(C13488g.f39132a, 23, "yu"),
        SAMSUNG_LOLLIPOP_MR1(C13489h.f39133a, 22, "samsung"),
        MARSHMALLOW(C13478c.f39121a, 23, null),
        LOLLIPOP_MR1(C13474a.f39100a, 22, null);
        

        /* renamed from: a */
        public AbstractC13504s f39167a;

        /* renamed from: b */
        public int f39168b;

        /* renamed from: c */
        public String f39169c;

        static {
            int i = C13498q.f39140o;
            int i2 = C13506u.f39180w;
            int i3 = C13511y.f39191x;
            int i4 = C13509w.f39188x;
            int i5 = C13510x.f39190w;
            int i6 = C13512z.f39193w;
            int i7 = C13475a0.f39101C;
            int i8 = C13507v.f39184v;
            int i9 = C13505t.f39171s;
        }

        EnumC13502a(AbstractC13504s abstractC13504s, int i, String str) {
            this.f39167a = abstractC13504s;
            this.f39168b = i;
            this.f39169c = str;
        }
    }

    /* renamed from: e.a.e4.r$b */
    /* loaded from: classes11-dex2jar.jar:e/a/e4/r$b.class */
    public class C13503b extends CursorWrapper implements AbstractC13493l {

        /* renamed from: a */
        public final int f39170a;

        public C13503b(AbstractC13501r abstractC13501r, Cursor cursor) {
            super(cursor);
            String mo21747q = abstractC13501r.mo21747q();
            this.f39170a = mo21747q != null ? getColumnIndex(mo21747q) : -1;
        }

        @Override // p193e.p194a.p712e4.AbstractC13493l
        /* renamed from: z */
        public String mo16154z() {
            int i = this.f39170a;
            String str = "-1";
            if (i >= 0) {
                str = getString(i);
                if (str == null) {
                    str = "-1";
                }
            }
            return str;
        }
    }

    public AbstractC13501r(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f39147a = applicationContext;
        this.f39150d = AbstractC17351f.m16221c(context);
        this.f39148b = new C13487a(applicationContext);
        this.f39149c = Build.VERSION.SDK_INT >= 26 ? new C13485c(context) : new C13484b(context);
    }

    /* renamed from: B */
    public static AbstractC13497p m21754B(Context context, TelephonyManager telephonyManager) {
        String str;
        AbstractC13497p mo21746a;
        String lowerCase = Build.MANUFACTURER.toLowerCase();
        EnumC13502a[] values = EnumC13502a.values();
        for (int i = 0; i < 9; i++) {
            EnumC13502a enumC13502a = values[i];
            if (Build.VERSION.SDK_INT >= enumC13502a.f39168b && (((str = enumC13502a.f39169c) == null || lowerCase.contains(str)) && (mo21746a = enumC13502a.f39167a.mo21746a(context, telephonyManager)) != null)) {
                mo21746a.getClass().getSimpleName();
                return mo21746a;
            }
        }
        return new C13481d0(context, telephonyManager);
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: A */
    public List<String> mo21755A() {
        List<SimInfo> mo21742d = mo21742d();
        ArrayList arrayList = new ArrayList();
        for (SimInfo simInfo : mo21742d) {
            if (!TextUtils.isEmpty(simInfo.f13990h)) {
                arrayList.add(simInfo.f13990h);
            } else {
                arrayList.add("");
            }
        }
        return arrayList;
    }

    /* renamed from: C */
    public final boolean m21753C(Uri uri, String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                Cursor query = this.f39147a.getContentResolver().query(uri, new String[]{str}, null, null, "_id ASC LIMIT 1");
                if (query == null) {
                    return true;
                }
                query.close();
                return true;
            } catch (Throwable th) {
                String str2 = str + " could not be queried for " + uri;
                return false;
            }
        }
        return false;
    }

    /* renamed from: D */
    public abstract String mo21722D();

    /* renamed from: E */
    public abstract String mo21730E();

    /* renamed from: F */
    public abstract String mo21729F();

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: a */
    public String mo21721a() {
        return "-1";
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: f */
    public final String mo21752f() {
        if (this.f39155i) {
            return this.f39152f;
        }
        synchronized (this) {
            if (this.f39155i) {
                return this.f39152f;
            } else if (!this.f39148b.m21765a("android.permission.READ_SMS")) {
                return null;
            } else {
                String mo21730E = mo21730E();
                if (m21753C(Telephony.Mms.CONTENT_URI, mo21730E)) {
                    this.f39152f = mo21730E;
                }
                this.f39155i = true;
                return this.f39152f;
            }
        }
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: g */
    public final String mo21751g() {
        if (this.f39154h) {
            return this.f39151e;
        }
        synchronized (this) {
            if (this.f39154h) {
                return this.f39151e;
            } else if (!this.f39148b.m21765a("android.permission.READ_SMS")) {
                return null;
            } else {
                String mo21729F = mo21729F();
                if (m21753C(Telephony.Sms.CONTENT_URI, mo21729F)) {
                    this.f39151e = mo21729F;
                }
                this.f39154h = true;
                return this.f39151e;
            }
        }
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: j */
    public void mo21750j(String str) {
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: m */
    public int mo21749m(String str) {
        return this.f39149c.mo21766a(str);
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: n */
    public int mo21748n(int i) {
        return this.f39150d.mo16186d(i);
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: q */
    public final String mo21747q() {
        if (this.f39156j) {
            return this.f39153g;
        }
        synchronized (this) {
            if (this.f39156j) {
                return this.f39153g;
            } else if (!this.f39148b.m21765a("android.permission.READ_CALL_LOG")) {
                return null;
            } else {
                String mo21722D = mo21722D();
                if (m21753C(this.f39150d.mo16184b(), mo21722D)) {
                    this.f39153g = mo21722D;
                }
                this.f39156j = true;
                return this.f39153g;
            }
        }
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: w */
    public SmsManager mo21733w(String str) {
        return SmsManager.getDefault();
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: x */
    public AbstractC13493l mo21718x(Cursor cursor) {
        return new C13503b(this, cursor);
    }

    @Override // p193e.p194a.p712e4.AbstractC13497p
    /* renamed from: y */
    public boolean mo21732y() {
        return false;
    }
}
