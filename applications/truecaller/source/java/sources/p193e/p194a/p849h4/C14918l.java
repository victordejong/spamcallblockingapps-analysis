package p193e.p194a.p849h4;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.z.c.l;
/* renamed from: e.a.h4.l */
/* loaded from: classes11-dex2jar.jar:e/a/h4/l.class */
public final class C14918l extends AbstractC19316a implements AbstractC14917k {

    /* renamed from: b */
    public final int f42631b = 1;

    /* renamed from: c */
    public final String f42632c = "notification_channels_settings";

    @Inject
    public C14918l(Context context) {
        super(C22128a.m8731B0(context, AnalyticsConstants.CONTEXT, "notification_channels_settings", 0, "context.getSharedPrefere…ME, Context.MODE_PRIVATE)"));
    }

    @Override // p193e.p194a.p849h4.AbstractC14917k
    /* renamed from: a */
    public String mo19429a(String str) {
        l.e(str, "channelKey");
        return getString("noti_ch_" + str + "_id");
    }

    @Override // p193e.p194a.p849h4.AbstractC14917k
    /* renamed from: e2 */
    public void mo19428e2(String str, int i) {
        l.e(str, "channelKey");
        putInt("noti_ch_" + str + "_ver", i);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f42631b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f42632c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    @Override // p193e.p194a.p849h4.AbstractC14917k
    /* renamed from: s2 */
    public int mo19427s2(String str) {
        l.e(str, "channelKey");
        return getInt("noti_ch_" + str + "_ver", 0);
    }

    @Override // p193e.p194a.p849h4.AbstractC14917k
    /* renamed from: w1 */
    public void mo19426w1(String str, String str2) {
        l.e(str, "channelKey");
        l.e(str2, "newId");
        putString("noti_ch_" + str + "_id", str2);
    }
}
