package p193e.p194a.p437c.p438a.p471e.p474c;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.LinkedHashMap;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C27010k0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p437c.p438a.p471e.p475d.AbstractC8995a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B#\b\u0007\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\b\b\u0001\u0010\u0013\u001a\u00020\u0011\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\"\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Le/a/c/a/e/c/e;", "Ln3/v/y0;", "Le/a/c/a/e/d/a;", "model", "Ls1/s;", AbstractC2405c.f7629a, "(Le/a/c/a/e/d/a;)V", "Le/a/c/a/i/h;", "d", "Le/a/c/a/i/h;", "lifeCycleAwareAnalyticsLogger", "Ln3/v/k0;", "", "Le/a/c/a/e/c/f;", "a", "Ln3/v/k0;", "updateUiLiveData", "Ls1/w/f;", "Ls1/w/f;", "ioContext", "Le/a/c/w/o0/g;", C22021b.f61237c, "Le/a/c/w/o0/g;", "smartSmsFeatureFilter", "<init>", "(Le/a/c/w/o0/g;Ls1/w/f;Le/a/c/a/i/h;)V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.e.c.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/e/c/e.class */
public final class C8989e extends AbstractC27040y0 {

    /* renamed from: a */
    public final C27010k0<List<AbstractC8990f>> f27319a = new C27010k0<>();

    /* renamed from: b */
    public final AbstractC10821g f27320b;

    /* renamed from: c */
    public final f f27321c;

    /* renamed from: d */
    public final AbstractC9114h f27322d;

    @Inject
    public C8989e(AbstractC10821g abstractC10821g, @Named("IO") f fVar, AbstractC9114h abstractC9114h) {
        l.e(abstractC10821g, "smartSmsFeatureFilter");
        l.e(fVar, "ioContext");
        l.e(abstractC9114h, "lifeCycleAwareAnalyticsLogger");
        this.f27320b = abstractC10821g;
        this.f27321c = fVar;
        this.f27322d = abstractC9114h;
    }

    /* renamed from: c */
    public final void m27893c(AbstractC8995a abstractC8995a) {
        l.e(abstractC8995a, "model");
        AbstractC9114h abstractC9114h = this.f27322d;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        String str = abstractC8995a.f27327a;
        l.e(str, "<set-?>");
        String str2 = abstractC8995a.f27328b;
        l.e(str2, "<set-?>");
        String str3 = abstractC8995a.f27332f;
        l.e(str3, "<set-?>");
        String str4 = abstractC8995a.f27329c;
        l.e(str4, "<set-?>");
        String str5 = abstractC8995a.f27330d;
        l.e(str5, "<set-?>");
        String str6 = abstractC8995a.f27331e;
        l.e(str6, "<set-?>");
        if (str.length() > 0) {
            abstractC9114h.mo27869Zd(new C10529b(new SimpleAnalyticsModel(str, str2, str3, str4, str5, str6, 0L, null, false, 448, null), i.W0(linkedHashMap)));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
