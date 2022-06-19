package p193e.p194a.p437c.p531c0;

import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import s1.z.c.l;
/* renamed from: e.a.c.c0.w */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/w.class */
public final class C10038w extends AbstractC10039x<Integer> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10038w(SharedPreferences sharedPreferences, String str, int i) {
        super(sharedPreferences, str, Integer.valueOf(i));
        l.e(sharedPreferences, "sharedPrefs");
        l.e(str, AnalyticsConstants.KEY);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10039x
    /* renamed from: m */
    public Integer mo26788m(String str, Integer num) {
        int intValue = num.intValue();
        l.e(str, AnalyticsConstants.KEY);
        return Integer.valueOf(this.f29874m.getInt(str, intValue));
    }
}
