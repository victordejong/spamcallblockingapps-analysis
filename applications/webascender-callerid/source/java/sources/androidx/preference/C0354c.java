package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.core.content.C0203a;
/* renamed from: androidx.preference.c */
/* loaded from: classes-dex2jar.jar:androidx/preference/c.class */
public class C0354c {

    /* renamed from: a */
    private Context f1759a;

    /* renamed from: c */
    private SharedPreferences f1761c;

    /* renamed from: d */
    private AbstractC0352a f1762d;

    /* renamed from: e */
    private SharedPreferences.Editor f1763e;

    /* renamed from: f */
    private boolean f1764f;

    /* renamed from: g */
    private String f1765g;

    /* renamed from: h */
    private int f1766h;

    /* renamed from: j */
    private PreferenceScreen f1768j;

    /* renamed from: b */
    private long f1760b = 0;

    /* renamed from: i */
    private int f1767i = 0;

    public C0354c(Context context) {
        this.f1759a = context;
        m5322n(m5332d(context));
    }

    /* renamed from: b */
    public static SharedPreferences m5334b(Context context) {
        return context.getSharedPreferences(m5332d(context), m5333c());
    }

    /* renamed from: c */
    private static int m5333c() {
        return 0;
    }

    /* renamed from: d */
    private static String m5332d(Context context) {
        return context.getPackageName() + "_preferences";
    }

    /* renamed from: j */
    public static void m5326j(Context context, int i, boolean z) {
        m5325k(context, m5332d(context), m5333c(), i, z);
    }

    /* renamed from: k */
    public static void m5325k(Context context, String str, int i, int i2, boolean z) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("_has_set_default_values", 0);
        if (z || !sharedPreferences.getBoolean("_has_set_default_values", false)) {
            C0354c c0354c = new C0354c(context);
            c0354c.m5322n(str);
            c0354c.m5323m(i);
            c0354c.m5327i(context, i2, null);
            sharedPreferences.edit().putBoolean("_has_set_default_values", true).apply();
        }
    }

    /* renamed from: l */
    private void m5324l(boolean z) {
        SharedPreferences.Editor editor;
        if (!z && (editor = this.f1763e) != null) {
            editor.apply();
        }
        this.f1764f = z;
    }

    /* renamed from: a */
    public <T extends Preference> T m5335a(CharSequence charSequence) {
        PreferenceScreen preferenceScreen = this.f1768j;
        if (preferenceScreen == null) {
            return null;
        }
        return (T) preferenceScreen.n0(charSequence);
    }

    /* renamed from: e */
    public SharedPreferences.Editor m5331e() {
        if (this.f1762d != null) {
            return null;
        }
        if (!this.f1764f) {
            return m5328h().edit();
        }
        if (this.f1763e == null) {
            this.f1763e = m5328h().edit();
        }
        return this.f1763e;
    }

    /* renamed from: f */
    public long m5330f() {
        long j;
        synchronized (this) {
            j = this.f1760b;
            this.f1760b = 1 + j;
        }
        return j;
    }

    /* renamed from: g */
    public AbstractC0352a m5329g() {
        return this.f1762d;
    }

    /* renamed from: h */
    public SharedPreferences m5328h() {
        if (m5329g() != null) {
            return null;
        }
        if (this.f1761c == null) {
            this.f1761c = (this.f1767i != 1 ? this.f1759a : C0203a.m6058b(this.f1759a)).getSharedPreferences(this.f1765g, this.f1766h);
        }
        return this.f1761c;
    }

    /* renamed from: i */
    public PreferenceScreen m5327i(Context context, int i, PreferenceScreen preferenceScreen) {
        m5324l(true);
        PreferenceScreen m5343d = new C0353b(context, this).m5343d(i, preferenceScreen);
        m5343d.m5393Q(this);
        m5324l(false);
        return m5343d;
    }

    /* renamed from: m */
    public void m5323m(int i) {
        this.f1766h = i;
        this.f1761c = null;
    }

    /* renamed from: n */
    public void m5322n(String str) {
        this.f1765g = str;
        this.f1761c = null;
    }

    /* renamed from: o */
    public boolean m5321o() {
        return !this.f1764f;
    }
}
