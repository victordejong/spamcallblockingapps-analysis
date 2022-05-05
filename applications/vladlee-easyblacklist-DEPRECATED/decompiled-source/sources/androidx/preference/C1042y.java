package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.core.content.C0646b;
/* renamed from: androidx.preference.y */
/* loaded from: classes-dex2jar.jar:androidx/preference/y.class */
public final class C1042y {

    /* renamed from: a */
    private Context f4390a;

    /* renamed from: d */
    private AbstractC1025m f4393d;

    /* renamed from: e */
    private SharedPreferences.Editor f4394e;

    /* renamed from: f */
    private boolean f4395f;

    /* renamed from: g */
    private String f4396g;

    /* renamed from: h */
    private int f4397h;

    /* renamed from: j */
    private PreferenceScreen f4399j;

    /* renamed from: k */
    private AbstractC1046d f4400k;

    /* renamed from: l */
    private AbstractC1045c f4401l;

    /* renamed from: m */
    private AbstractC1043a f4402m;

    /* renamed from: n */
    private AbstractC1044b f4403n;

    /* renamed from: b */
    private long f4391b = 0;

    /* renamed from: i */
    private int f4398i = 0;

    /* renamed from: c */
    private SharedPreferences f4392c = null;

    /* renamed from: androidx.preference.y$a */
    /* loaded from: classes-dex2jar.jar:androidx/preference/y$a.class */
    public interface AbstractC1043a {
        /* renamed from: b */
        void mo7347b(Preference preference);
    }

    /* renamed from: androidx.preference.y$b */
    /* loaded from: classes-dex2jar.jar:androidx/preference/y$b.class */
    public interface AbstractC1044b {
        /* renamed from: a */
        void mo7346a(PreferenceScreen preferenceScreen);
    }

    /* renamed from: androidx.preference.y$c */
    /* loaded from: classes-dex2jar.jar:androidx/preference/y$c.class */
    public interface AbstractC1045c {
        /* renamed from: a */
        boolean mo7345a(Preference preference);
    }

    /* renamed from: androidx.preference.y$d */
    /* loaded from: classes-dex2jar.jar:androidx/preference/y$d.class */
    public static abstract class AbstractC1046d {
        /* renamed from: a */
        public abstract boolean m7344a();

        /* renamed from: b */
        public abstract boolean m7343b();
    }

    public C1042y(Context context) {
        this.f4390a = context;
        this.f4396g = context.getPackageName() + "_preferences";
    }

    /* renamed from: a */
    private void m7356a(boolean z) {
        SharedPreferences.Editor editor;
        if (!z && (editor = this.f4394e) != null) {
            editor.apply();
        }
        this.f4395f = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final long m7364a() {
        long j;
        synchronized (this) {
            j = this.f4391b;
            this.f4391b = 1 + j;
        }
        return j;
    }

    /* renamed from: a */
    public final <T extends Preference> T m7357a(CharSequence charSequence) {
        PreferenceScreen preferenceScreen = this.f4399j;
        if (preferenceScreen == null) {
            return null;
        }
        return (T) preferenceScreen.m7434b(charSequence);
    }

    /* renamed from: a */
    public final PreferenceScreen m7363a(Context context, int i, PreferenceScreen preferenceScreen) {
        m7356a(true);
        PreferenceScreen preferenceScreen2 = (PreferenceScreen) new C1041x(context, this).m7370a(i, preferenceScreen);
        preferenceScreen2.m7475a(this);
        m7356a(false);
        return preferenceScreen2;
    }

    /* renamed from: a */
    public final void m7362a(Preference preference) {
        AbstractC1043a aVar = this.f4402m;
        if (aVar != null) {
            aVar.mo7347b(preference);
        }
    }

    /* renamed from: a */
    public final void m7360a(AbstractC1043a aVar) {
        this.f4402m = aVar;
    }

    /* renamed from: a */
    public final void m7359a(AbstractC1044b bVar) {
        this.f4403n = bVar;
    }

    /* renamed from: a */
    public final void m7358a(AbstractC1045c cVar) {
        this.f4401l = cVar;
    }

    /* renamed from: a */
    public final boolean m7361a(PreferenceScreen preferenceScreen) {
        PreferenceScreen preferenceScreen2 = this.f4399j;
        if (preferenceScreen == preferenceScreen2) {
            return false;
        }
        if (preferenceScreen2 != null) {
            preferenceScreen2.mo7440H();
        }
        this.f4399j = preferenceScreen;
        return true;
    }

    /* renamed from: b */
    public final AbstractC1025m m7355b() {
        return this.f4393d;
    }

    /* renamed from: c */
    public final SharedPreferences m7354c() {
        if (this.f4393d != null) {
            return null;
        }
        if (this.f4392c == null) {
            this.f4392c = (this.f4398i != 1 ? this.f4390a : C0646b.m8611d(this.f4390a)).getSharedPreferences(this.f4396g, this.f4397h);
        }
        return this.f4392c;
    }

    /* renamed from: d */
    public final PreferenceScreen m7353d() {
        return this.f4399j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final SharedPreferences.Editor m7352e() {
        if (this.f4393d != null) {
            return null;
        }
        if (!this.f4395f) {
            return m7354c().edit();
        }
        if (this.f4394e == null) {
            this.f4394e = m7354c().edit();
        }
        return this.f4394e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final boolean m7351f() {
        return !this.f4395f;
    }

    /* renamed from: g */
    public final AbstractC1046d m7350g() {
        return this.f4400k;
    }

    /* renamed from: h */
    public final AbstractC1045c m7349h() {
        return this.f4401l;
    }

    /* renamed from: i */
    public final AbstractC1044b m7348i() {
        return this.f4403n;
    }
}
