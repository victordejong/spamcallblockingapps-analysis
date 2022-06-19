package p193e.p194a.p912i4;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.businesscard.BusinessCardBackgroundWorker;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import s1.z.c.l;
/* renamed from: e.a.i4.h */
/* loaded from: classes11-dex2jar.jar:e/a/i4/h.class */
public final class C15278h implements AbstractC15277g {
    @Inject

    /* renamed from: a */
    public AbstractC15279i f43500a;

    @Override // p193e.p194a.p912i4.AbstractC15277g
    /* renamed from: a */
    public void mo18960a(InternalTruecallerNotification internalTruecallerNotification) {
        l.e(internalTruecallerNotification, RemoteMessageConst.NOTIFICATION);
        AbstractC15279i abstractC15279i = this.f43500a;
        if (abstractC15279i == null) {
            l.l("credProfileUpdateHelper");
            throw null;
        }
        abstractC15279i.mo18959a(internalTruecallerNotification);
        C26702l m1431n = C26702l.m1431n(AbstractApplicationC8442a.m28551L());
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26842r.C26843a m1268f = new C26842r.C26843a(BusinessCardBackgroundWorker.class).m1268f(0L, TimeUnit.SECONDS);
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        m1268f.f75127c.f74911j = new C26825d(c26826a);
        m1431n.m1279i("BusinessCardBackgroundWorker", enumC26832h, m1268f.m1272b());
    }
}
