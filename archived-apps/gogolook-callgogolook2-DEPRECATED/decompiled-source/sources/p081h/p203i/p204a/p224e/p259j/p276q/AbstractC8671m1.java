package p081h.p203i.p204a.p224e.p259j.p276q;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.util.Log;
import androidx.core.content.PermissionChecker;
import javax.annotation.Nullable;
/* renamed from: h.i.a.e.j.q.m1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/m1.class */
public abstract class AbstractC8671m1<T> {

    /* renamed from: f */
    public static final Object f19842f = new Object();
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: g */
    public static Context f19843g;

    /* renamed from: h */
    public static volatile Boolean f19844h;

    /* renamed from: a */
    public final C8762w1 f19845a;

    /* renamed from: b */
    public final String f19846b;

    /* renamed from: c */
    public final String f19847c;

    /* renamed from: d */
    public final T f19848d;

    /* renamed from: e */
    public volatile C8644j1 f19849e;

    public AbstractC8671m1(C8762w1 w1Var, String str, T t) {
        Uri uri;
        String str2;
        String str3;
        this.f19849e = null;
        uri = w1Var.f20033a;
        if (uri != null) {
            this.f19845a = w1Var;
            str2 = w1Var.f20034b;
            String valueOf = String.valueOf(str2);
            String valueOf2 = String.valueOf(str);
            this.f19847c = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
            str3 = w1Var.f20035c;
            String valueOf3 = String.valueOf(str3);
            String valueOf4 = String.valueOf(str);
            this.f19846b = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
            this.f19848d = t;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    public /* synthetic */ AbstractC8671m1(C8762w1 w1Var, String str, Object obj, C8708q1 q1Var) {
        this(w1Var, str, obj);
    }

    /* renamed from: a */
    public static AbstractC8671m1<Double> m17411a(C8762w1 w1Var, String str, double d) {
        return new C8735t1(w1Var, str, Double.valueOf(d));
    }

    /* renamed from: a */
    public static AbstractC8671m1<Integer> m17410a(C8762w1 w1Var, String str, int i) {
        return new C8717r1(w1Var, str, Integer.valueOf(i));
    }

    /* renamed from: a */
    public static AbstractC8671m1<Long> m17409a(C8762w1 w1Var, String str, long j) {
        return new C8708q1(w1Var, str, Long.valueOf(j));
    }

    /* renamed from: a */
    public static AbstractC8671m1<String> m17408a(C8762w1 w1Var, String str, String str2) {
        return new C8744u1(w1Var, str, str2);
    }

    /* renamed from: a */
    public static AbstractC8671m1<Boolean> m17407a(C8762w1 w1Var, String str, boolean z) {
        return new C8726s1(w1Var, str, Boolean.valueOf(z));
    }

    /* renamed from: a */
    public static <V> V m17412a(AbstractC8753v1<V> v1Var) {
        V v;
        try {
            v = v1Var.mo17107a();
        } catch (SecurityException e) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                v = v1Var.mo17107a();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return v;
    }

    /* renamed from: a */
    public static void m17413a(Context context) {
        Context applicationContext;
        synchronized (f19842f) {
            if ((Build.VERSION.SDK_INT < 24 || !context.isDeviceProtectedStorage()) && (applicationContext = context.getApplicationContext()) != null) {
                context = applicationContext;
            }
            if (f19843g != context) {
                f19844h = null;
            }
            f19843g = context;
        }
    }

    /* renamed from: a */
    public static boolean m17406a(String str, boolean z) {
        try {
            if (m17394g()) {
                return ((Boolean) m17412a(new AbstractC8753v1(str, false) { // from class: h.i.a.e.j.q.p1

                    /* renamed from: a */
                    public final String f19923a;

                    /* renamed from: b */
                    public final boolean f19924b = false;

                    {
                        this.f19923a = str;
                    }

                    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8753v1
                    /* renamed from: a */
                    public final Object mo17107a() {
                        Boolean valueOf;
                        valueOf = Boolean.valueOf(C8619h1.m17570a(AbstractC8671m1.f19843g.getContentResolver(), this.f19923a, this.f19924b));
                        return valueOf;
                    }
                })).booleanValue();
            }
            return false;
        } catch (SecurityException e) {
            Log.e("PhenotypeFlag", "Unable to read GServices, returning default value.", e);
            return false;
        }
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC8671m1 m17404b(C8762w1 w1Var, String str, double d) {
        return m17411a(w1Var, str, d);
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC8671m1 m17403b(C8762w1 w1Var, String str, int i) {
        return m17410a(w1Var, str, i);
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC8671m1 m17402b(C8762w1 w1Var, String str, long j) {
        return m17409a(w1Var, str, j);
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC8671m1 m17401b(C8762w1 w1Var, String str, String str2) {
        return m17408a(w1Var, str, str2);
    }

    /* renamed from: b */
    public static /* synthetic */ AbstractC8671m1 m17400b(C8762w1 w1Var, String str, boolean z) {
        return m17407a(w1Var, str, z);
    }

    /* renamed from: g */
    public static boolean m17394g() {
        if (f19844h == null) {
            Context context = f19843g;
            boolean z = false;
            if (context == null) {
                return false;
            }
            if (PermissionChecker.checkSelfPermission(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0) {
                z = true;
            }
            f19844h = Boolean.valueOf(z);
        }
        return f19844h.booleanValue();
    }

    /* renamed from: a */
    public final T m17414a() {
        if (f19843g != null) {
            T c = m17398c();
            if (c != null) {
                return c;
            }
            T d = m17397d();
            return d != null ? d : this.f19848d;
        }
        throw new IllegalStateException("Must call PhenotypeFlag.init() first");
    }

    /* renamed from: a */
    public abstract T mo17121a(String str);

    /* renamed from: b */
    public final T m17405b() {
        return this.f19848d;
    }

    @Nullable
    @TargetApi(24)
    /* renamed from: c */
    public final T m17398c() {
        Uri uri;
        C8644j1 e;
        String str;
        if (!m17406a("gms:phenotype:phenotype_flag:debug_bypass_phenotype", false)) {
            uri = this.f19845a.f20033a;
            if (uri == null || (e = m17396e()) == null || (str = (String) m17412a(new AbstractC8753v1(this, e) { // from class: h.i.a.e.j.q.n1

                /* renamed from: a */
                public final AbstractC8671m1 f19860a;

                /* renamed from: b */
                public final C8644j1 f19861b;

                {
                    this.f19860a = this;
                    this.f19861b = e;
                }

                @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8753v1
                /* renamed from: a */
                public final Object mo17107a() {
                    return this.f19861b.m17450a().get(this.f19860a.f19846b);
                }
            })) == null) {
                return null;
            }
            return mo17121a(str);
        }
        String valueOf = String.valueOf(this.f19846b);
        if (valueOf.length() != 0) {
            "Bypass reading Phenotype values for flag: ".concat(valueOf);
            return null;
        }
        new String("Bypass reading Phenotype values for flag: ");
        return null;
    }

    @Nullable
    /* renamed from: d */
    public final T m17397d() {
        if (!m17394g()) {
            return null;
        }
        try {
            String str = (String) m17412a(new AbstractC8753v1(this) { // from class: h.i.a.e.j.q.o1

                /* renamed from: a */
                public final AbstractC8671m1 f19900a;

                {
                    this.f19900a = this;
                }

                @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8753v1
                /* renamed from: a */
                public final Object mo17107a() {
                    return this.f19900a.m17395f();
                }
            });
            if (str != null) {
                return mo17121a(str);
            }
            return null;
        } catch (SecurityException e) {
            String valueOf = String.valueOf(this.f19846b);
            Log.e("PhenotypeFlag", valueOf.length() != 0 ? "Unable to read GServices for flag: ".concat(valueOf) : new String("Unable to read GServices for flag: "), e);
            return null;
        }
    }

    /* renamed from: e */
    public final C8644j1 m17396e() {
        Uri uri;
        if (this.f19849e == null) {
            try {
                ContentResolver contentResolver = f19843g.getContentResolver();
                uri = this.f19845a.f20033a;
                this.f19849e = C8644j1.m17449a(contentResolver, uri);
            } catch (SecurityException e) {
            }
        }
        return this.f19849e;
    }

    /* renamed from: f */
    public final /* synthetic */ String m17395f() {
        return C8619h1.m17571a(f19843g.getContentResolver(), this.f19847c, (String) null);
    }
}
