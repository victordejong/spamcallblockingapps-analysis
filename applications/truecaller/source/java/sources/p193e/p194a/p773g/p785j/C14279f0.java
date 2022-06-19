package p193e.p194a.p773g.p785j;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import javax.inject.Inject;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p426p.AbstractC8552d;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.AbstractC14537p;
import s1.z.c.l;
/* renamed from: e.a.g.j.f0 */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/f0.class */
public final class C14279f0 implements AbstractC14537p {

    /* renamed from: a */
    public final AbstractC14537p f41325a;

    /* renamed from: b */
    public final AbstractC8552d f41326b;

    /* renamed from: c */
    public final AbstractC8432l f41327c;

    @Inject
    public C14279f0(AbstractC14537p abstractC14537p, AbstractC8552d abstractC8552d, AbstractC8432l abstractC8432l) {
        l.e(abstractC14537p, "tagDisplayUtil");
        l.e(abstractC8552d, "tagManager");
        l.e(abstractC8432l, "truecallerAccountManager");
        this.f41325a = abstractC14537p;
        this.f41326b = abstractC8552d;
        this.f41327c = abstractC8432l;
    }

    @Override // p193e.p194a.p798g5.AbstractC14537p
    /* renamed from: a */
    public C8551c mo20026a(C8551c c8551c) {
        l.e(c8551c, RemoteMessageConst.Notification.TAG);
        return this.f41325a.mo20026a(c8551c);
    }

    @Override // p193e.p194a.p798g5.AbstractC14537p
    /* renamed from: b */
    public C8551c mo20025b(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        return this.f41325a.mo20025b(contact);
    }

    @Override // p193e.p194a.p798g5.AbstractC14537p
    /* renamed from: c */
    public C8551c mo20024c(long j) {
        return this.f41325a.mo20024c(j);
    }
}
