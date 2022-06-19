package p193e.p194a.p804h.p830o0;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import com.truecaller.settings.CallingSettings;
import javax.inject.Inject;
import p193e.p194a.p703e3.AbstractC13348a;
import p193e.p194a.p703e3.p704e.C13352a;
import s1.f0.q;
import s1.z.c.l;
/* renamed from: e.a.h.o0.h */
/* loaded from: classes2-dex2jar.jar:e/a/h/o0/h.class */
public final class C14716h implements AbstractC14715g {

    /* renamed from: a */
    public final AbstractC13348a f42217a;

    /* renamed from: b */
    public final CallingSettings f42218b;

    @Inject
    public C14716h(AbstractC13348a abstractC13348a, CallingSettings callingSettings) {
        l.e(abstractC13348a, "callAlert");
        l.e(callingSettings, "callingSettings");
        this.f42217a = abstractC13348a;
        this.f42218b = callingSettings;
    }

    @Override // p193e.p194a.p804h.p830o0.AbstractC14715g
    /* renamed from: a */
    public void mo19738a(String str) {
        l.e(str, "normalizedNumber");
        this.f42217a.mo21892a(str);
    }

    @Override // p193e.p194a.p804h.p830o0.AbstractC14715g
    /* renamed from: b */
    public void mo19737b(InternalTruecallerNotification internalTruecallerNotification) {
        l.e(internalTruecallerNotification, RemoteMessageConst.NOTIFICATION);
        boolean z = this.f42218b.getBoolean("showIncomingCallNotifications", true);
        AbstractC13348a abstractC13348a = this.f42217a;
        Long valueOf = Long.valueOf(internalTruecallerNotification.f14111j.f40461a.f40463a);
        l.d(valueOf, "notificationId");
        long longValue = valueOf.longValue();
        String m34844o = internalTruecallerNotification.m34844o();
        String m34847j = internalTruecallerNotification.m34847j("fn");
        String m34847j2 = internalTruecallerNotification.m34847j("ln");
        String m34847j3 = internalTruecallerNotification.m34847j("ci");
        String m34847j4 = internalTruecallerNotification.m34847j("cc");
        Long m34843p = internalTruecallerNotification.m34843p();
        String m34847j5 = internalTruecallerNotification.m34847j("bl");
        String m34847j6 = internalTruecallerNotification.m34847j("vi");
        String m34847j7 = internalTruecallerNotification.m34847j("vu");
        String m34847j8 = internalTruecallerNotification.m34847j("vs");
        Long l = null;
        Long j = m34847j8 != null ? q.j(m34847j8) : null;
        String m34847j9 = internalTruecallerNotification.m34847j("vd");
        if (m34847j9 != null) {
            l = q.j(m34847j9);
        }
        abstractC13348a.mo21886g(new C13352a(longValue, m34844o, m34847j, m34847j2, m34847j3, m34847j4, m34843p, m34847j5, m34847j6, m34847j7, j, l, internalTruecallerNotification.m34847j("vci"), Boolean.valueOf(Boolean.parseBoolean(internalTruecallerNotification.m34847j("vm")))), z);
    }
}
