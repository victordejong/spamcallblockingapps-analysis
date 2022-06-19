package p193e.p194a.p437c.p531c0;

import android.content.SharedPreferences;
import androidx.lifecycle.LiveData;
import com.razorpay.AnalyticsConstants;
import s1.z.c.l;
/* renamed from: e.a.c.c0.x */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/x.class */
public abstract class AbstractC10039x<T> extends LiveData<T> {

    /* renamed from: l */
    public final SharedPreferences.OnSharedPreferenceChangeListener f29873l = new SharedPreferences$OnSharedPreferenceChangeListenerC10040a();

    /* renamed from: m */
    public final SharedPreferences f29874m;

    /* renamed from: n */
    public final String f29875n;

    /* renamed from: o */
    public final T f29876o;

    /* renamed from: e.a.c.c0.x$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c0/x$a.class */
    public static final class SharedPreferences$OnSharedPreferenceChangeListenerC10040a implements SharedPreferences.OnSharedPreferenceChangeListener {
        public SharedPreferences$OnSharedPreferenceChangeListenerC10040a() {
            AbstractC10039x.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if (l.a(str, AbstractC10039x.this.f29875n)) {
                AbstractC10039x abstractC10039x = AbstractC10039x.this;
                abstractC10039x.mo1001j(abstractC10039x.mo26788m(str, abstractC10039x.f29876o));
            }
        }
    }

    public AbstractC10039x(SharedPreferences sharedPreferences, String str, T t) {
        l.e(sharedPreferences, "sharedPrefs");
        l.e(str, AnalyticsConstants.KEY);
        this.f29874m = sharedPreferences;
        this.f29875n = str;
        this.f29876o = t;
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: h */
    public void mo3056h() {
        mo1001j(mo26788m(this.f29875n, this.f29876o));
        this.f29874m.registerOnSharedPreferenceChangeListener(this.f29873l);
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: i */
    public void mo3055i() {
        this.f29874m.unregisterOnSharedPreferenceChangeListener(this.f29873l);
    }

    /* renamed from: m */
    public abstract T mo26788m(String str, T t);
}
