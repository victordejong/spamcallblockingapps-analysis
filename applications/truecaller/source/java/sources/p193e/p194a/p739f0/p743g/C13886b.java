package p193e.p194a.p739f0.p743g;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.z.c.l;
/* renamed from: e.a.f0.g.b */
/* loaded from: classes13-dex2jar.jar:e/a/f0/g/b.class */
public final class C13886b extends AbstractC19316a implements AbstractC13885a {

    /* renamed from: b */
    public final String f40264b = "social_media_prefs";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13886b(SharedPreferences sharedPreferences) {
        super(sharedPreferences);
        l.e(sharedPreferences, "prefs");
    }

    @Override // p193e.p194a.p739f0.p743g.AbstractC13885a
    /* renamed from: K2 */
    public void mo20974K2(boolean z) {
        putBoolean("tc_news_promo_clicked", z);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return 0;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f40264b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
    }
}
