package p193e.p194a.p437c.p593s.p594a;

import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.insights.network.adapter.InsightsCountryFeatures;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p593s.p595b.C10692a;
import s1.g;
import s1.w.d;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
import x3.h0.f;
import x3.h0.t;
/* renamed from: e.a.c.s.a.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/s/a/f.class */
public final class C10689f implements AbstractC10688e {

    /* renamed from: a */
    public final g f31775a = C25225a.m3978P1(new C10691b());

    /* renamed from: b */
    public final AbstractC9686e f31776b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bb\u0018��2\u00020\u0001J)\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u0002H§@ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, d2 = {"e/a/c/s/a/f$a", "", "", "appVersion", "countryCode", "Lcom/truecaller/insights/network/adapter/InsightsCountryFeatures;", "a", "(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;", "insights_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.c.s.a.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/s/a/f$a.class */
    public interface AbstractC10690a {
        @f("/api/v1/feature-sync")
        /* renamed from: a */
        Object m25749a(@t("appVersion") String str, @t("country") String str2, d<? super InsightsCountryFeatures> dVar);
    }

    /* renamed from: e.a.c.s.a.f$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/s/a/f$b.class */
    public static final class C10691b extends m implements a<AbstractC10690a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10691b() {
            super(0);
            C10689f.this = r4;
        }

        public Object invoke() {
            C8365b c8365b = new C8365b();
            c8365b.m28639a(KnownEndpoints.INSIGHT_FEATURE_REGISTRY);
            c8365b.m28634f(AbstractC10690a.class);
            c8365b.m28635e(new C10692a(C10689f.this.f31776b.mo27312a()));
            TimeUnit timeUnit = TimeUnit.SECONDS;
            c8365b.f25721g = 30;
            c8365b.f25722h = timeUnit;
            return (AbstractC10690a) c8365b.m28637c(AbstractC10690a.class);
        }
    }

    @Inject
    public C10689f(AbstractC9686e abstractC9686e) {
        l.e(abstractC9686e, "environmentHelper");
        this.f31776b = abstractC9686e;
    }
}
