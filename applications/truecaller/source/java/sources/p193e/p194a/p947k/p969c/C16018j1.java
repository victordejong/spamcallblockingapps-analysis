package p193e.p194a.p947k.p969c;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.utils.ReceiveVideoPreferences;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.z.c.l;
/* renamed from: e.a.k.c.j1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/j1.class */
public final class C16018j1 extends AbstractC19316a implements AbstractC16015i1 {

    /* renamed from: b */
    public final int f45163b = 2;

    /* renamed from: c */
    public final String f45164c = "videoCallerIdSettings";

    /* renamed from: d */
    public final Context f45165d;

    @Inject
    public C16018j1(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "videoCallerIdSettings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
        this.f45165d = context;
        m13467n3(context);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f45163b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f45164c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        if (i < 2) {
            putInt("receiveContactPreference", getBoolean("hiddenForAllContacts", false) ? ReceiveVideoPreferences.NoOne.getValue() : ReceiveVideoPreferences.Everyone.getValue());
        }
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16015i1
    public void reset() {
        m13471c(this.f45165d);
    }
}
