package p193e.p194a.p437c.p531c0;

import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import s1.z.c.l;
/* renamed from: e.a.c.c0.y */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/y.class */
public final class C10041y extends AbstractC10039x<Long> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10041y(SharedPreferences sharedPreferences, String str, long j) {
        super(sharedPreferences, str, Long.valueOf(j));
        l.e(sharedPreferences, "sharedPrefs");
        l.e(str, AnalyticsConstants.KEY);
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10039x
    /* renamed from: m */
    public Long mo26788m(String str, Long l) {
        long longValue = l.longValue();
        l.e(str, AnalyticsConstants.KEY);
        return Long.valueOf(this.f29874m.getLong(str, longValue));
    }
}
