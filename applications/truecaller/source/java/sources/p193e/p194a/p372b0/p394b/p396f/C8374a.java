package p193e.p194a.p372b0.p394b.p396f;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p614c3.AbstractC10925a;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.z.c.l;
/* renamed from: e.a.b0.b.f.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/f/a.class */
public final class C8374a {

    /* renamed from: a */
    public final Context f25734a;

    /* renamed from: b */
    public final String f25735b;

    /* renamed from: c */
    public final String f25736c;

    /* renamed from: d */
    public final AbstractC10925a f25737d;

    /* renamed from: e */
    public final AbstractC13497p f25738e;

    /* renamed from: f */
    public final AbstractC12597c f25739f;

    /* renamed from: g */
    public final a<AbstractC8621z> f25740g;

    /* renamed from: h */
    public final C8375b f25741h;

    /* renamed from: i */
    public final a<C20592g> f25742i;

    @Inject
    public C8374a(Context context, String str, String str2, AbstractC10925a abstractC10925a, AbstractC13497p abstractC13497p, AbstractC12597c abstractC12597c, a<AbstractC8621z> aVar, C8375b c8375b, @Named("features_registry") a<C20592g> aVar2) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "actualAppVersion");
        l.e(str2, "storeAppVersion");
        l.e(abstractC10925a, "buildHelper");
        l.e(abstractC13497p, "multiSimManager");
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        l.e(aVar, "phoneNumberHelper");
        l.e(c8375b, "simInfoProvider");
        l.e(aVar2, "featuresRegistry");
        this.f25734a = context;
        this.f25735b = str;
        this.f25736c = str2;
        this.f25737d = abstractC10925a;
        this.f25738e = abstractC13497p;
        this.f25739f = abstractC12597c;
        this.f25740g = aVar;
        this.f25741h = c8375b;
        this.f25742i = aVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00a5, code lost:
        if ((!r13.isEmpty()) != false) goto L16;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.truecaller.account.network.InstallationDetailsDto m28629a() {
        /*
            Method dump skipped, instructions count: 862
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p394b.p396f.C8374a.m28629a():com.truecaller.account.network.InstallationDetailsDto");
    }
}
