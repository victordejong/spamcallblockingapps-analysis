package p000a.p001a.p002a.p003a.p004a.p006b;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
import p000a.p001a.p002a.p003a.AbstractC0147l;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
/* renamed from: a.a.a.a.a.b.x */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/x.class */
public final class C0043x {

    /* renamed from: e */
    private static final Pattern f78e = Pattern.compile("[^\\p{Alnum}]");

    /* renamed from: f */
    private static final String f79f = Pattern.quote("/");

    /* renamed from: a */
    C0017c f80a;

    /* renamed from: b */
    C0016b f81b;

    /* renamed from: c */
    boolean f82c;

    /* renamed from: d */
    C0042w f83d;

    /* renamed from: g */
    private final ReentrantLock f84g = new ReentrantLock();

    /* renamed from: h */
    private final C0045y f85h;

    /* renamed from: i */
    private final boolean f86i;

    /* renamed from: j */
    private final boolean f87j;

    /* renamed from: k */
    private final Context f88k;

    /* renamed from: l */
    private final String f89l;

    /* renamed from: m */
    private final String f90m;

    /* renamed from: n */
    private final Collection<AbstractC0147l> f91n;

    /* renamed from: a.a.a.a.a.b.x$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/x$a.class */
    public enum EnumC0044a {
        WIFI_MAC_ADDRESS(1),
        BLUETOOTH_MAC_ADDRESS(2),
        FONT_TOKEN(53),
        ANDROID_ID(100),
        ANDROID_DEVICE_ID(101),
        ANDROID_SERIAL(102),
        ANDROID_ADVERTISING_ID(103);
        

        /* renamed from: h */
        public final int f100h;

        EnumC0044a(int i) {
            this.f100h = i;
        }
    }

    public C0043x(Context context, String str, String str2, Collection<AbstractC0147l> collection) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        } else if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        } else if (collection != null) {
            this.f88k = context;
            this.f89l = str;
            this.f90m = str2;
            this.f91n = collection;
            this.f85h = new C0045y();
            this.f80a = new C0017c(context);
            this.f83d = new C0042w();
            this.f86i = C0026j.m10352a(context, "com.crashlytics.CollectDeviceIdentifiers", true);
            if (!this.f86i) {
                AbstractC0150o c = C0137d.m10155c();
                c.mo10135a("Fabric", "Device ID collection disabled for " + context.getPackageName());
            }
            this.f87j = C0026j.m10352a(context, "com.crashlytics.CollectUserIdentifiers", true);
            if (!this.f87j) {
                AbstractC0150o c2 = C0137d.m10155c();
                c2.mo10135a("Fabric", "User information collection disabled for " + context.getPackageName());
            }
        } else {
            throw new IllegalArgumentException("kits must not be null");
        }
    }

    /* renamed from: a */
    private String m10295a(SharedPreferences sharedPreferences) {
        this.f84g.lock();
        String str = null;
        try {
            String string = sharedPreferences.getString("crashlytics.installation.id", null);
            str = string;
            if (string == null) {
                String uuid = UUID.randomUUID().toString();
                if (uuid != null) {
                    str = f78e.matcher(uuid).replaceAll("").toLowerCase(Locale.US);
                }
                sharedPreferences.edit().putString("crashlytics.installation.id", str).commit();
            }
            return str;
        } finally {
            this.f84g.unlock();
        }
    }

    /* renamed from: a */
    private static String m10294a(String str) {
        return str.replaceAll(f79f, "");
    }

    /* renamed from: d */
    public static String m10291d() {
        return m10294a(Build.VERSION.RELEASE);
    }

    /* renamed from: e */
    public static String m10290e() {
        return m10294a(Build.VERSION.INCREMENTAL);
    }

    /* renamed from: f */
    public static String m10289f() {
        return String.format(Locale.US, "%s/%s", m10294a(Build.MANUFACTURER), m10294a(Build.MODEL));
    }

    /* renamed from: j */
    private C0016b m10285j() {
        C0016b bVar;
        synchronized (this) {
            if (!this.f82c) {
                this.f81b = this.f80a.m10376a();
                this.f82c = true;
            }
            bVar = this.f81b;
        }
        return bVar;
    }

    /* renamed from: a */
    public final boolean m10296a() {
        return this.f87j;
    }

    /* renamed from: b */
    public final String m10293b() {
        SharedPreferences.Editor putString;
        String str = this.f90m;
        String str2 = str;
        if (str == null) {
            SharedPreferences a = C0026j.m10355a(this.f88k);
            C0016b j = m10285j();
            if (j != null) {
                String str3 = j.f27a;
                this.f84g.lock();
                try {
                    if (!TextUtils.isEmpty(str3)) {
                        String string = a.getString("crashlytics.advertising.id", null);
                        if (TextUtils.isEmpty(string)) {
                            putString = a.edit().putString("crashlytics.advertising.id", str3);
                        } else if (!string.equals(str3)) {
                            putString = a.edit().remove("crashlytics.installation.id").putString("crashlytics.advertising.id", str3);
                        }
                        putString.commit();
                    }
                } finally {
                    this.f84g.unlock();
                }
            }
            str2 = a.getString("crashlytics.installation.id", null);
            if (str2 == null) {
                str2 = m10295a(a);
            }
        }
        return str2;
    }

    /* renamed from: c */
    public final String m10292c() {
        return this.f89l;
    }

    /* renamed from: g */
    public final Map<EnumC0044a, String> m10288g() {
        HashMap hashMap = new HashMap();
        for (AbstractC0147l lVar : this.f91n) {
            if (lVar instanceof AbstractC0035p) {
                for (Map.Entry<EnumC0044a, String> entry : ((AbstractC0035p) lVar).getDeviceIdentifiers().entrySet()) {
                    EnumC0044a key = entry.getKey();
                    String value = entry.getValue();
                    if (value != null) {
                        hashMap.put(key, value);
                    }
                }
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: h */
    public final String m10287h() {
        return this.f85h.m10284a(this.f88k);
    }

    /* renamed from: i */
    public final Boolean m10286i() {
        Boolean bool = null;
        if (this.f86i && !C0042w.m10297a(this.f88k)) {
            C0016b j = m10285j();
            bool = null;
            if (j != null) {
                bool = Boolean.valueOf(j.f28b);
            }
        }
        return bool;
    }
}
