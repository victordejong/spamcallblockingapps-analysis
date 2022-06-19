package p193e.p194a.p852i.p862c.p865c;

import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.ads.adsrouter.model.AdResponse;
import com.truecaller.ads.adsrouter.model.C2813Ad;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import u3.l0;
import x3.b;
import x3.h0.f;
import x3.h0.s;
import x3.h0.t;
import x3.h0.u;
import x3.h0.y;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010$\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018��2\u00020\u0001J+\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0014\b\u0001\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0002H'¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00052\b\b\u0001\u0010\t\u001a\u00020\u0003H'¢\u0006\u0004\b\u000b\u0010\fJ)\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u00052\b\b\u0001\u0010\r\u001a\u00020\u00032\b\b\u0001\u0010\u000f\u001a\u00020\u000eH'¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Le/a/i/c/c/f;", "", "", "", "map", "Lx3/b;", "Lcom/truecaller/ads/adsrouter/model/AdResponse;", AbstractC2405c.f7629a, "(Ljava/util/Map;)Lx3/b;", "url", "Lu3/l0;", "a", "(Ljava/lang/String;)Lx3/b;", "campaign", "", "uiConfigVersion", "Lcom/truecaller/ads/adsrouter/model/Ad;", C22021b.f61237c, "(Ljava/lang/String;I)Lx3/b;", "ads_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.i.c.c.f */
/* loaded from: classes2-dex2jar.jar:e/a/i/c/c/f.class */
public interface AbstractC15021f {
    @f
    /* renamed from: a */
    b<l0> m19272a(@y String str);

    @f("/v1/uiConfig/{campaign}")
    /* renamed from: b */
    b<C2813Ad> m19271b(@s("campaign") String str, @t("ui_config_version") int i);

    @f("v2/ads")
    /* renamed from: c */
    b<AdResponse> m19270c(@u Map<String, Object> map);
}
