package p193e.p194a.p437c.p531c0;

import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import s1.z.c.l;
/* renamed from: e.a.c.c0.z */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/z.class */
public final class C10042z extends AbstractC10039x<String> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10042z(SharedPreferences sharedPreferences, String str, String str2) {
        super(sharedPreferences, str, str2);
        l.e(sharedPreferences, "sharedPrefs");
        l.e(str, AnalyticsConstants.KEY);
        l.e(str2, "defValue");
    }

    @Override // p193e.p194a.p437c.p531c0.AbstractC10039x
    /* renamed from: m */
    public String mo26788m(String str, String str2) {
        String str3 = str2;
        l.e(str, AnalyticsConstants.KEY);
        l.e(str3, "defValue");
        String string = this.f29874m.getString(str, str3);
        String str4 = str3;
        if (string != null) {
            str4 = string;
        }
        return str4;
    }
}
