package p193e.p194a.p437c.p531c0;

import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import s1.z.c.l;
/* renamed from: e.a.c.c0.v */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/v.class */
public final class C10037v extends AbstractC10039x<Boolean> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10037v(SharedPreferences sharedPreferences, String str, boolean z) {
        super(sharedPreferences, str, Boolean.valueOf(z));
        l.e(sharedPreferences, "sharedPrefs");
        l.e(str, AnalyticsConstants.KEY);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10039x
    /* renamed from: m */
    public Boolean mo26788m(String str, Boolean bool) {
        boolean booleanValue = bool.booleanValue();
        l.e(str, AnalyticsConstants.KEY);
        return Boolean.valueOf(this.f29874m.getBoolean(str, booleanValue));
    }
}
