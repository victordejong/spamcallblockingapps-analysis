package p193e.p194a.p852i.p867c0;

import com.truecaller.ads.leadgen.dto.LeadgenDto;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import u3.l0;
import x3.b;
import x3.h0.d;
import x3.h0.e;
import x3.h0.f;
import x3.h0.o;
import x3.h0.s;
import x3.h0.y;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bb\u0018��2\u00020\u0001J \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002H§\u0002¢\u0006\u0004\b\u0006\u0010\u0007J5\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u00022\u0014\b\u0001\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\bH'¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00042\b\b\u0001\u0010\r\u001a\u00020\u0002H'¢\u0006\u0004\b\u000f\u0010\u0007¨\u0006\u0010"}, d2 = {"Le/a/i/c0/i;", "", "", "campaign", "Lx3/b;", "Lcom/truecaller/ads/leadgen/dto/LeadgenDto;", "get", "(Ljava/lang/String;)Lx3/b;", "", "fields", "Ljava/lang/Void;", C22021b.f61237c, "(Ljava/lang/String;Ljava/util/Map;)Lx3/b;", "url", "Lu3/l0;", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.i.c0.i */
/* loaded from: classes3-dex2jar.jar:e/a/i/c0/i.class */
public interface AbstractC15061i {
    @f
    /* renamed from: a */
    b<l0> m19200a(@y String str);

    @o("/v0/response/{campaign}")
    @e
    /* renamed from: b */
    b<Void> m19199b(@s("campaign") String str, @d(encoded = false) Map<String, String> map);

    @f("/v1/campaign/{campaign}")
    b<LeadgenDto> get(@s("campaign") String str);
}
