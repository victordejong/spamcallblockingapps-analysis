package p193e.p194a.p677d3;

import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.callerid.p135v1.GetBusinessCard;
import com.truecaller.api.services.callerid.p135v1.model.SignedBusinessCard;
import com.truecaller.log.AssertionUtil;
import com.truecaller.videocallerid.data.OutgoingVideoDetails;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1238t2.p1239a.p1240a.p1241a.C20436b;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p947k.AbstractC16111h;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d3.f */
/* loaded from: classes6-dex2jar.jar:e/a/d3/f.class */
public final class C12587f implements AbstractC12585d {

    /* renamed from: a */
    public final AbstractC12592j f36721a;

    /* renamed from: b */
    public final AbstractC12583b f36722b;

    /* renamed from: c */
    public final a<AbstractC16111h> f36723c;

    @Inject
    public C12587f(AbstractC12592j abstractC12592j, AbstractC12583b abstractC12583b, a<AbstractC16111h> aVar) {
        l.e(abstractC12592j, "stubManager");
        l.e(abstractC12583b, "businessCardIOUtils");
        l.e(aVar, "videoCallerId");
        this.f36721a = abstractC12592j;
        this.f36722b = abstractC12583b;
        this.f36723c = aVar;
    }

    @Override // p193e.p194a.p677d3.AbstractC12585d
    /* renamed from: a */
    public boolean mo22855a(String str) {
        GetBusinessCard.Response m11141f;
        SignedBusinessCard businessCard;
        synchronized (this) {
            GetBusinessCard.Request.C2910a newBuilder = GetBusinessCard.Request.newBuilder();
            if (str != null) {
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.addVideoIds(str);
            } else {
                newBuilder.copyOnWrite();
                ((GeneratedMessageLite.Builder) newBuilder).instance.clearVideoIds();
            }
            GetBusinessCard.Request build = newBuilder.build();
            try {
                C20436b.C20437a mo20911c = this.f36721a.mo20911c(AbstractC8371e.C8372a.f25732a);
                if (mo20911c != null && (m11141f = mo20911c.m11141f(build)) != null && (businessCard = m11141f.getBusinessCard()) != null) {
                    return this.f36722b.mo22859b(businessCard);
                }
            } catch (RuntimeException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
            }
            return false;
        }
    }

    @Override // p193e.p194a.p677d3.AbstractC12585d
    /* renamed from: b */
    public boolean mo22854b() {
        boolean mo22855a;
        synchronized (this) {
            String str = null;
            OutgoingVideoDetails outgoingVideoDetails = (OutgoingVideoDetails) d.c3((f) null, new C12586e(this, null), 1, (Object) null);
            if (outgoingVideoDetails != null) {
                str = outgoingVideoDetails.f15999a;
            }
            mo22855a = mo22855a(str);
        }
        return mo22855a;
    }
}
