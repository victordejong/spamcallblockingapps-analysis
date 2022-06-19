package p193e.p194a.p793g3;

import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.g3.h */
/* loaded from: classes7-dex2jar.jar:e/a/g3/h.class */
public final class C14428h implements AbstractC14427g {

    /* renamed from: a */
    public final SharedPreferences f41583a;

    @Inject
    public C14428h(SharedPreferences sharedPreferences) {
        l.e(sharedPreferences, "sharedPreferences");
        this.f41583a = sharedPreferences;
    }

    @Override // p193e.p194a.p793g3.AbstractC14427g
    /* renamed from: a */
    public void mo20108a(String str, String str2) {
        l.e(str, AnalyticsConstants.KEY);
        l.e(str2, "value");
        C22128a.m8585p0(this.f41583a, str, str2);
    }

    @Override // p193e.p194a.p793g3.AbstractC14427g
    public String getString(String str) {
        l.e(str, AnalyticsConstants.KEY);
        return this.f41583a.getString(str, null);
    }
}
