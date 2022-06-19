package p193e.p194a.p937j4.p939b.p940a;

import android.content.Context;
import android.content.SharedPreferences;
import com.truecaller.log.AssertionUtil;
import java.util.Iterator;
import java.util.List;
import p193e.p194a.p1053m0.p1057c1.C18023a0;
import p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0;
import p193e.p194a.p937j4.p939b.p941b.AbstractC15578d;
/* renamed from: e.a.j4.b.a.a */
/* loaded from: classes11-dex2jar.jar:e/a/j4/b/a/a.class */
public abstract class AbstractC15563a<T extends AbstractC15578d> {

    /* renamed from: a */
    public final Context f44023a;

    public AbstractC15563a(Context context) {
        this.f44023a = context;
    }

    /* renamed from: a */
    public void mo18675a(List<T> list) {
        SharedPreferencesC18033b0 sharedPreferencesC18033b0 = (SharedPreferencesC18033b0) m18679g();
        int i = sharedPreferencesC18033b0.getInt("size", 0);
        SharedPreferences.Editor edit = sharedPreferencesC18033b0.edit();
        int i2 = i;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                i2 = i;
                if (!it.hasNext()) {
                    break;
                }
                i++;
                edit.putString(Integer.toString(i % Integer.MAX_VALUE), it.next().mo18611b());
            }
        }
        edit.putInt("size", i2);
        edit.apply();
    }

    /* renamed from: b */
    public void mo18674b() {
        mo18673c(true);
    }

    /* renamed from: c */
    public void mo18673c(boolean z) {
        SharedPreferences.Editor edit = ((SharedPreferencesC18033b0) m18679g()).edit();
        edit.clear();
        edit.apply();
    }

    /* renamed from: d */
    public T m18681d(Class<T> cls, int i) {
        T t;
        try {
            t = cls.newInstance();
        } catch (IllegalAccessException e) {
            AssertionUtil.shouldNeverHappen(e, new String[0]);
            t = null;
            t.mo18612a(((SharedPreferencesC18033b0) m18679g()).getString(Integer.toString(i % Integer.MAX_VALUE), ""));
            return t;
        } catch (InstantiationException e2) {
            AssertionUtil.shouldNeverHappen(e2, new String[0]);
            t = null;
            t.mo18612a(((SharedPreferencesC18033b0) m18679g()).getString(Integer.toString(i % Integer.MAX_VALUE), ""));
            return t;
        }
        t.mo18612a(((SharedPreferencesC18033b0) m18679g()).getString(Integer.toString(i % Integer.MAX_VALUE), ""));
        return t;
    }

    /* renamed from: e */
    public int m18680e() {
        return ((SharedPreferencesC18033b0) m18679g()).getInt("size", 0);
    }

    /* renamed from: f */
    public abstract String mo18615f();

    /* renamed from: g */
    public SharedPreferences m18679g() {
        String mo18615f = mo18615f();
        Context context = this.f44023a;
        C18023a0 c18023a0 = new C18023a0(context, mo18615f);
        SharedPreferencesC18033b0 sharedPreferencesC18033b0 = new SharedPreferencesC18033b0(context, mo18615f, c18023a0);
        sharedPreferencesC18033b0.f50951e.put(c18023a0, SharedPreferencesC18033b0.f50946l);
        if (SharedPreferencesC18033b0.m15520c(this.f44023a, "TC.settings.3.0.beta5")) {
            SharedPreferences sharedPreferences = this.f44023a.getSharedPreferences(mo18615f, 0);
            SharedPreferencesC18033b0.m15522a(sharedPreferences, sharedPreferencesC18033b0);
            sharedPreferences.edit().clear().commit();
        }
        return sharedPreferencesC18033b0;
    }

    /* renamed from: h */
    public int mo18614h() {
        return Math.min(m18680e(), Integer.MAX_VALUE);
    }
}
