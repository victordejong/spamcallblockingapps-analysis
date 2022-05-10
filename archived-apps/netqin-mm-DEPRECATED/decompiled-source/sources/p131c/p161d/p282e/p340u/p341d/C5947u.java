package p131c.p161d.p282e.p340u.p341d;

import android.content.Context;
import android.content.SharedPreferences;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p349l.C5995c;
/* renamed from: c.d.e.u.d.u */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/d/u.class */
public class C5947u {

    /* renamed from: b */
    public static final C5969a f19306b = C5969a.m22496a();

    /* renamed from: c */
    public static C5947u f19307c;

    /* renamed from: a */
    public SharedPreferences f19308a;

    /* renamed from: b */
    public static C5947u m22599b() {
        C5947u uVar;
        synchronized (C5947u.class) {
            try {
                if (f19307c == null) {
                    f19307c = new C5947u();
                }
                uVar = f19307c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return uVar;
    }

    /* renamed from: a */
    public final Context m22606a() {
        try {
            C5128c.m24458j();
            return C5128c.m24458j().m24468b();
        } catch (IllegalStateException e) {
            return null;
        }
    }

    /* renamed from: a */
    public C5995c<Boolean> m22604a(String str) {
        if (str == null) {
            f19306b.m22495a("Key is null when getting boolean value on device cache.", new Object[0]);
            return C5995c.m22363c();
        }
        if (this.f19308a == null) {
            m22605a(m22606a());
            if (this.f19308a == null) {
                return C5995c.m22363c();
            }
        }
        if (!this.f19308a.contains(str)) {
            return C5995c.m22363c();
        }
        try {
            return C5995c.m22366a(Boolean.valueOf(this.f19308a.getBoolean(str, false)));
        } catch (ClassCastException e) {
            f19306b.m22495a(String.format("Key %s from sharedPreferences has type other than long: %s", str, e.getMessage()), new Object[0]);
            return C5995c.m22363c();
        }
    }

    /* renamed from: a */
    public void m22605a(Context context) {
        synchronized (this) {
            if (this.f19308a == null && context != null) {
                this.f19308a = context.getSharedPreferences("FirebasePerfSharedPrefs", 0);
            }
        }
    }

    /* renamed from: a */
    public boolean m22603a(String str, float f) {
        if (str == null) {
            f19306b.m22495a("Key is null when setting float value on device cache.", new Object[0]);
            return false;
        }
        if (this.f19308a == null) {
            m22605a(m22606a());
            if (this.f19308a == null) {
                return false;
            }
        }
        this.f19308a.edit().putFloat(str, f).apply();
        return true;
    }

    /* renamed from: a */
    public boolean m22602a(String str, long j) {
        if (str == null) {
            f19306b.m22495a("Key is null when setting long value on device cache.", new Object[0]);
            return false;
        }
        if (this.f19308a == null) {
            m22605a(m22606a());
            if (this.f19308a == null) {
                return false;
            }
        }
        this.f19308a.edit().putLong(str, j).apply();
        return true;
    }

    /* renamed from: a */
    public boolean m22601a(String str, String str2) {
        if (str == null) {
            f19306b.m22495a("Key is null when setting String value on device cache.", new Object[0]);
            return false;
        }
        if (this.f19308a == null) {
            m22605a(m22606a());
            if (this.f19308a == null) {
                return false;
            }
        }
        if (str2 == null) {
            this.f19308a.edit().remove(str).apply();
            return true;
        }
        this.f19308a.edit().putString(str, str2).apply();
        return true;
    }

    /* renamed from: a */
    public boolean m22600a(String str, boolean z) {
        if (str == null) {
            f19306b.m22495a("Key is null when setting boolean value on device cache.", new Object[0]);
            return false;
        }
        if (this.f19308a == null) {
            m22605a(m22606a());
            if (this.f19308a == null) {
                return false;
            }
        }
        this.f19308a.edit().putBoolean(str, z).apply();
        return true;
    }

    /* renamed from: b */
    public C5995c<Float> m22598b(String str) {
        if (str == null) {
            f19306b.m22495a("Key is null when getting float value on device cache.", new Object[0]);
            return C5995c.m22363c();
        }
        if (this.f19308a == null) {
            m22605a(m22606a());
            if (this.f19308a == null) {
                return C5995c.m22363c();
            }
        }
        if (!this.f19308a.contains(str)) {
            return C5995c.m22363c();
        }
        try {
            return C5995c.m22366a(Float.valueOf(this.f19308a.getFloat(str, 0.0f)));
        } catch (ClassCastException e) {
            f19306b.m22495a(String.format("Key %s from sharedPreferences has type other than float: %s", str, e.getMessage()), new Object[0]);
            return C5995c.m22363c();
        }
    }

    /* renamed from: c */
    public C5995c<Long> m22597c(String str) {
        if (str == null) {
            f19306b.m22495a("Key is null when getting long value on device cache.", new Object[0]);
            return C5995c.m22363c();
        }
        if (this.f19308a == null) {
            m22605a(m22606a());
            if (this.f19308a == null) {
                return C5995c.m22363c();
            }
        }
        if (!this.f19308a.contains(str)) {
            return C5995c.m22363c();
        }
        try {
            return C5995c.m22366a(Long.valueOf(this.f19308a.getLong(str, 0L)));
        } catch (ClassCastException e) {
            f19306b.m22495a(String.format("Key %s from sharedPreferences has type other than long: %s", str, e.getMessage()), new Object[0]);
            return C5995c.m22363c();
        }
    }

    /* renamed from: d */
    public C5995c<String> m22596d(String str) {
        if (str == null) {
            f19306b.m22495a("Key is null when getting String value on device cache.", new Object[0]);
            return C5995c.m22363c();
        }
        if (this.f19308a == null) {
            m22605a(m22606a());
            if (this.f19308a == null) {
                return C5995c.m22363c();
            }
        }
        if (!this.f19308a.contains(str)) {
            return C5995c.m22363c();
        }
        try {
            return C5995c.m22366a(this.f19308a.getString(str, ""));
        } catch (ClassCastException e) {
            f19306b.m22495a(String.format("Key %s from sharedPreferences has type other than String: %s", str, e.getMessage()), new Object[0]);
            return C5995c.m22363c();
        }
    }
}
