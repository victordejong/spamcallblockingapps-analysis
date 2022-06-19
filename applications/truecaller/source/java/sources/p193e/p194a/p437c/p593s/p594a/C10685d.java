package p193e.p194a.p437c.p593s.p594a;

import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.insights.models.classifierseed.ClassifierSeedServiceModel;
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
/* renamed from: e.a.c.s.a.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/s/a/d.class */
public final class C10685d implements AbstractC10684c {

    /* renamed from: a */
    public final g f31772a = C25225a.m3978P1(new C10687b());

    /* renamed from: b */
    public final AbstractC9686e f31773b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bb\u0018��2\u00020\u0001J3\u0010\u0007\u001a\u00020\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0002H§@ø\u0001��¢\u0006\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t"}, d2 = {"e/a/c/s/a/d$a", "", "", "appVersion", "countryCode", "offsetVersion", "Lcom/truecaller/insights/models/classifierseed/ClassifierSeedServiceModel;", "a", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;", "insights_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.c.s.a.d$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/s/a/d$a.class */
    public interface AbstractC10686a {
        @f("/api/v1/updates-classifier/seed")
        /* renamed from: a */
        Object m25750a(@t("appVersion") String str, @t("country") String str2, @t("offsetVersion") String str3, d<? super ClassifierSeedServiceModel> dVar);
    }

    /* renamed from: e.a.c.s.a.d$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/s/a/d$b.class */
    public static final class C10687b extends m implements a<AbstractC10686a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10687b() {
            super(0);
            C10685d.this = r4;
        }

        public Object invoke() {
            C8365b c8365b = new C8365b();
            c8365b.m28639a(KnownEndpoints.INSIGHT_CATEGORIZER);
            c8365b.m28634f(AbstractC10686a.class);
            c8365b.m28635e(new C10692a(C10685d.this.f31773b.mo27312a()));
            TimeUnit timeUnit = TimeUnit.SECONDS;
            c8365b.f25721g = 30;
            c8365b.f25722h = timeUnit;
            return (AbstractC10686a) c8365b.m28637c(AbstractC10686a.class);
        }
    }

    @Inject
    public C10685d(AbstractC9686e abstractC9686e) {
        l.e(abstractC9686e, "environmentHelper");
        this.f31773b = abstractC9686e;
    }

    @Override // p193e.p194a.p437c.p593s.p594a.AbstractC10684c
    /* renamed from: a */
    public Object mo25751a(String str, String str2, String str3, d<? super ClassifierSeedServiceModel> dVar) {
        return ((AbstractC10686a) this.f31772a.getValue()).m25750a(str, str2, str3, dVar);
    }
}
