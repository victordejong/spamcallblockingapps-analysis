package p131c.p161d.p282e.p289l.p290d.p293h;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p335s.AbstractC5898g;
/* renamed from: c.d.e.l.d.h.u */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/u.class */
public class C5286u implements AbstractC5287v {

    /* renamed from: f */
    public static final Pattern f18066f = Pattern.compile("[^\\p{Alnum}]");

    /* renamed from: g */
    public static final String f18067g = Pattern.quote("/");

    /* renamed from: a */
    public final C5288w f18068a;

    /* renamed from: b */
    public final Context f18069b;

    /* renamed from: c */
    public final String f18070c;

    /* renamed from: d */
    public final AbstractC5898g f18071d;

    /* renamed from: e */
    public String f18072e;

    public C5286u(Context context, String str, AbstractC5898g gVar) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        } else if (str != null) {
            this.f18069b = context;
            this.f18070c = str;
            this.f18071d = gVar;
            this.f18068a = new C5288w();
        } else {
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
    }

    /* renamed from: b */
    public static String m24057b(String str) {
        return str == null ? null : f18066f.matcher(str).replaceAll("").toLowerCase(Locale.US);
    }

    @Override // p131c.p161d.p282e.p289l.p290d.p293h.AbstractC5287v
    /* renamed from: a */
    public String mo24052a() {
        String str;
        synchronized (this) {
            if (this.f18072e != null) {
                return this.f18072e;
            }
            SharedPreferences h = CommonUtils.m7643h(this.f18069b);
            Task<String> id = this.f18071d.getId();
            String string = h.getString("firebase.installation.id", null);
            try {
                str = (String) C5229h0.m24231a(id);
            } catch (Exception e) {
                C5192b.m24319a().m24316a("Failed to retrieve installation id", e);
                str = string != null ? string : null;
            }
            if (string == null) {
                SharedPreferences d = CommonUtils.m7647d(this.f18069b);
                String string2 = d.getString("crashlytics.installation.id", null);
                C5192b a = C5192b.m24319a();
                a.m24317a("No cached FID; legacy id is " + string2);
                if (string2 == null) {
                    this.f18072e = m24060a(str, h);
                } else {
                    this.f18072e = string2;
                    m24059a(string2, str, h, d);
                }
                return this.f18072e;
            }
            if (string.equals(str)) {
                this.f18072e = h.getString("crashlytics.installation.id", null);
                C5192b a2 = C5192b.m24319a();
                a2.m24317a("Found matching FID, using Crashlytics IID: " + this.f18072e);
                if (this.f18072e == null) {
                    this.f18072e = m24060a(str, h);
                }
            } else {
                this.f18072e = m24060a(str, h);
            }
            return this.f18072e;
        }
    }

    /* renamed from: a */
    public final String m24061a(String str) {
        return str.replaceAll(f18067g, "");
    }

    /* renamed from: a */
    public final String m24060a(String str, SharedPreferences sharedPreferences) {
        String b;
        synchronized (this) {
            b = m24057b(UUID.randomUUID().toString());
            C5192b a = C5192b.m24319a();
            a.m24317a("Created new Crashlytics IID: " + b);
            sharedPreferences.edit().putString("crashlytics.installation.id", b).putString("firebase.installation.id", str).apply();
        }
        return b;
    }

    /* renamed from: a */
    public final void m24059a(String str, String str2, SharedPreferences sharedPreferences, SharedPreferences sharedPreferences2) {
        synchronized (this) {
            C5192b a = C5192b.m24319a();
            a.m24317a("Migrating legacy Crashlytics IID: " + str);
            sharedPreferences.edit().putString("crashlytics.installation.id", str).putString("firebase.installation.id", str2).apply();
            sharedPreferences2.edit().remove("crashlytics.installation.id").remove("crashlytics.advertising.id").apply();
        }
    }

    /* renamed from: b */
    public String m24058b() {
        return this.f18070c;
    }

    /* renamed from: c */
    public String m24056c() {
        return this.f18068a.m24051a(this.f18069b);
    }

    /* renamed from: d */
    public String m24055d() {
        return String.format(Locale.US, "%s/%s", m24061a(Build.MANUFACTURER), m24061a(Build.MODEL));
    }

    /* renamed from: e */
    public String m24054e() {
        return m24061a(Build.VERSION.INCREMENTAL);
    }

    /* renamed from: f */
    public String m24053f() {
        return m24061a(Build.VERSION.RELEASE);
    }
}
