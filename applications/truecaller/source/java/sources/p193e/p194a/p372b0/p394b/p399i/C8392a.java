package p193e.p194a.p372b0.p394b.p399i;

import com.truecaller.common.network.country.CountryListDto;
import com.truecaller.common.network.util.KnownEndpoints;
import kotlin.Metadata;
import p193e.p194a.p372b0.p394b.p395a.C8363a;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import p193e.p194a.p372b0.p394b.p397g.C8385b;
import x3.b;
import x3.h0.f;
import x3.h0.t;
/* renamed from: e.a.b0.b.i.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/b/i/a.class */
public final class C8392a {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bb\u0018��2\u00020\u0001J!\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u0002H'¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"e/a/b0/b/i/a$a", "", "", "checksum", "Lx3/b;", "Lcom/truecaller/common/network/country/CountryListDto;", "get", "(Ljava/lang/String;)Lx3/b;", "common_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: e.a.b0.b.i.a$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/b/i/a$a.class */
    public interface AbstractC8393a {
        @f("/?countrylist=3&encoding=json")
        b<CountryListDto> get(@t("checksum") String str);
    }

    /* renamed from: a */
    public final b<CountryListDto> m28622a(String str) {
        C8365b c8365b = new C8365b();
        c8365b.m28639a(KnownEndpoints.REQUEST);
        c8365b.m28634f(AbstractC8393a.class);
        C8385b c8385b = new C8385b();
        c8385b.m28625e(false);
        c8365b.m28636d(C8363a.m28642a(c8385b));
        return ((AbstractC8393a) c8365b.m28637c(AbstractC8393a.class)).get(str);
    }
}
