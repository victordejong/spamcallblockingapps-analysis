package p193e.p194a.p765f5.p768g;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.swish.deeplink.data.SwishResultDto;
import java.text.NumberFormat;
import java.util.Locale;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p765f5.AbstractC14046a;
import p193e.p194a.p765f5.p772i.AbstractC14071c;
import p193e.p194a.p997k3.p998j.C16461b;
import s1.f0.r;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.f5.g.h */
/* loaded from: classes14-dex2jar.jar:e/a/f5/g/h.class */
public final class C14061h extends AbstractC20574a<AbstractC14059f> implements AbstractC14058e {

    /* renamed from: d */
    public final NumberFormat f40650d = NumberFormat.getNumberInstance(new Locale("sv", "SE"));

    /* renamed from: e */
    public final f f40651e;

    /* renamed from: f */
    public final f f40652f;

    /* renamed from: g */
    public final AbstractC14046a f40653g;

    /* renamed from: h */
    public final AbstractC19223c0 f40654h;

    /* renamed from: i */
    public final AbstractC21631b f40655i;

    /* renamed from: j */
    public final C16461b f40656j;

    /* renamed from: k */
    public final AbstractC8541a f40657k;

    /* renamed from: l */
    public final AbstractC19462a f40658l;

    /* renamed from: m */
    public final AbstractC8621z f40659m;

    /* renamed from: n */
    public final AbstractC13497p f40660n;

    /* renamed from: o */
    public final C20592g f40661o;

    /* renamed from: p */
    public final AbstractC14071c f40662p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C14061h(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC14046a abstractC14046a, AbstractC19223c0 abstractC19223c0, AbstractC21631b abstractC21631b, C16461b c16461b, AbstractC8541a abstractC8541a, AbstractC19462a abstractC19462a, AbstractC8621z abstractC8621z, AbstractC13497p abstractC13497p, C20592g c20592g, AbstractC14071c abstractC14071c) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(abstractC14046a, "swishManager");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC21631b, "flashManager");
        l.e(c16461b, "aggregatedContactDao");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(abstractC13497p, "multiSimManager");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC14071c, "swishMessageSender");
        this.f40651e = fVar;
        this.f40652f = fVar2;
        this.f40653g = abstractC14046a;
        this.f40654h = abstractC19223c0;
        this.f40655i = abstractC21631b;
        this.f40656j = c16461b;
        this.f40657k = abstractC8541a;
        this.f40658l = abstractC19462a;
        this.f40659m = abstractC8621z;
        this.f40660n = abstractC13497p;
        this.f40661o = c20592g;
        this.f40662p = abstractC14071c;
    }

    /* renamed from: Ij */
    public final String m20806Ij(SwishResultDto swishResultDto) {
        String str;
        if (swishResultDto.getPayee() == null) {
            str = null;
        } else if (this.f40653g.mo20815f(swishResultDto.getPayee())) {
            AbstractC8621z abstractC8621z = this.f40659m;
            String payee = swishResultDto.getPayee();
            String mo21743b = this.f40660n.mo21743b();
            l.d(mo21743b, "multiSimManager.defaultSimToken");
            str = abstractC8621z.mo28177n(payee, mo21743b, "SE");
        } else if (!r.y(swishResultDto.getPayee(), "+", false, 2)) {
            StringBuilder m8558w = C22128a.m8558w('+');
            m8558w.append(swishResultDto.getPayee());
            str = m8558w.toString();
        } else {
            str = swishResultDto.getPayee();
        }
        return str;
    }
}
