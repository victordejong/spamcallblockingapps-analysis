package p193e.p194a.p912i4;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import java.util.Map;
import javax.inject.Inject;
import p193e.p194a.p372b0.p424n.AbstractC8529e;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
/* renamed from: e.a.i4.j */
/* loaded from: classes11-dex2jar.jar:e/a/i4/j.class */
public final class C15280j implements AbstractC15279i {
    @Inject

    /* renamed from: a */
    public AbstractC8529e f43501a;
    @Inject

    /* renamed from: b */
    public AbstractC8541a f43502b;

    @Override // p193e.p194a.p912i4.AbstractC15279i
    /* renamed from: a */
    public void mo18959a(InternalTruecallerNotification internalTruecallerNotification) {
        l.e(internalTruecallerNotification, RemoteMessageConst.NOTIFICATION);
        Map<String, String> map = internalTruecallerNotification.f14111j.f40462b;
        if (map == null || !map.containsKey("cr")) {
            return;
        }
        boolean parseBoolean = Boolean.parseBoolean(map.get("cr"));
        AbstractC8541a abstractC8541a = this.f43502b;
        if (abstractC8541a == null) {
            l.l("coreSettings");
            throw null;
        }
        abstractC8541a.putBoolean("profileIsCredUser", parseBoolean);
        AbstractC8529e abstractC8529e = this.f43501a;
        if (abstractC8529e != null) {
            abstractC8529e.mo28413a();
        } else {
            l.l("profileRefreshNotifier");
            throw null;
        }
    }
}
