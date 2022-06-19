package p193e.p194a.p786g0.p792n;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.z.c.l;
/* renamed from: e.a.g0.n.b */
/* loaded from: classes14-dex2jar.jar:e/a/g0/n/b.class */
public final class C14408b extends AbstractC19316a implements AbstractC14407a {

    /* renamed from: b */
    public final int f41554b = 1;

    /* renamed from: c */
    public final String f41555c = "s";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C14408b(SharedPreferences sharedPreferences) {
        super(sharedPreferences);
        l.e(sharedPreferences, "sharedPrefs");
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a, p193e.p194a.p786g0.p792n.AbstractC14407a
    public /* bridge */ /* synthetic */ Integer getInt(String str, int i) {
        return Integer.valueOf(getInt(str, i));
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a, p193e.p194a.p372b0.p406e.p409r.AbstractC8438a
    public /* bridge */ /* synthetic */ Long getLong(String str, long j) {
        return Long.valueOf(getLong(str, j));
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f41554b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f41555c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
    }
}
