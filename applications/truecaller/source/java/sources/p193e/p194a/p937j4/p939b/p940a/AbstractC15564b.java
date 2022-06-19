package p193e.p194a.p937j4.p939b.p940a;

import android.content.Context;
import android.content.SharedPreferences;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.p1057c1.C18023a0;
import p193e.p194a.p1053m0.p1057c1.SharedPreferencesC18033b0;
/* renamed from: e.a.j4.b.a.b */
/* loaded from: classes11-dex2jar.jar:e/a/j4/b/a/b.class */
public abstract class AbstractC15564b {

    /* renamed from: a */
    public final Context f44024a;

    public AbstractC15564b(Context context) {
        this.f44024a = context.getApplicationContext();
    }

    /* renamed from: a */
    public abstract String mo18661a();

    /* renamed from: b */
    public final SharedPreferences m18678b() {
        StringBuilder m8728C = C22128a.m8728C("truecaller.data.");
        m8728C.append(mo18661a());
        String sb = m8728C.toString();
        Context context = this.f44024a;
        C18023a0 c18023a0 = new C18023a0(context, sb);
        SharedPreferencesC18033b0 sharedPreferencesC18033b0 = new SharedPreferencesC18033b0(context, sb, c18023a0);
        sharedPreferencesC18033b0.f50951e.put(c18023a0, SharedPreferencesC18033b0.f50946l);
        if (SharedPreferencesC18033b0.m15520c(this.f44024a, "TC.settings.3.0.beta5")) {
            SharedPreferences sharedPreferences = this.f44024a.getSharedPreferences(sb, 0);
            SharedPreferencesC18033b0.m15522a(sharedPreferences, sharedPreferencesC18033b0);
            sharedPreferences.edit().clear().commit();
        }
        return sharedPreferencesC18033b0;
    }
}
