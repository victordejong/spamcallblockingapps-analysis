package p193e.p194a.p437c.p593s.p594a;

import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.insights.models.categorizerseed.CategorizerSeedServiceModel;
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
/* renamed from: e.a.c.s.a.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/s/a/b.class */
public final class C10681b implements AbstractC10680a {

    /* renamed from: a */
    public final g f31769a = C25225a.m3978P1(new C10683b());

    /* renamed from: b */
    public final AbstractC9686e f31770b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bb\u0018��2\u00020\u0001J3\u0010\u0007\u001a\u00020\u00062\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00022\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0002H§@ø\u0001��¢\u0006\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t"}, d2 = {"e/a/c/s/a/b$a", "", "", "appVersion", "countryCode", "offsetVersion", "Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;", "a", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;", "insights_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.c.s.a.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/s/a/b$a.class */
    public interface AbstractC10682a {
        @f("/api/v1/categorizer/seed")
        /* renamed from: a */
        Object m25752a(@t("appVersion") String str, @t("country") String str2, @t("offsetVersion") String str3, d<? super CategorizerSeedServiceModel> dVar);
    }

    /* renamed from: e.a.c.s.a.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/s/a/b$b.class */
    public static final class C10683b extends m implements a<AbstractC10682a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10683b() {
            super(0);
            C10681b.this = r4;
        }

        public Object invoke() {
            C8365b c8365b = new C8365b();
            c8365b.m28639a(KnownEndpoints.INSIGHT_CATEGORIZER);
            c8365b.m28634f(AbstractC10682a.class);
            c8365b.m28635e(new C10692a(C10681b.this.f31770b.mo27312a()));
            TimeUnit timeUnit = TimeUnit.SECONDS;
            c8365b.f25721g = 30;
            c8365b.f25722h = timeUnit;
            return (AbstractC10682a) c8365b.m28637c(AbstractC10682a.class);
        }
    }

    @Inject
    public C10681b(AbstractC9686e abstractC9686e) {
        l.e(abstractC9686e, "environmentHelper");
        this.f31770b = abstractC9686e;
    }

    @Override // p193e.p194a.p437c.p593s.p594a.AbstractC10680a
    /* renamed from: a */
    public Object mo25753a(String str, String str2, String str3, d<? super CategorizerSeedServiceModel> dVar) {
        return ((AbstractC10682a) this.f31769a.getValue()).m25752a(str, str2, str3, dVar);
    }
}
