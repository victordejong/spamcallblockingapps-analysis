package p016g.p017g.p018d.p023n;

import android.os.Build;
import com.hiya.api.zipkin.interceptor.HeadersInfo;
import g.g.a.b.j1.c;
import g.g.a.b.j1.g;
import g.g.a.b.j1.i;
import kotlin.w.c.k;
import p016g.p017g.p018d.AbstractC0275e;
/* renamed from: g.g.d.n.a */
/* loaded from: classes2-dex2jar.jar:g/g/d/n/a.class */
public final class C0284a {
    /* renamed from: a */
    public static final void m549a(AbstractC0275e eVar, HeadersInfo headersInfo) {
        k.g(eVar, "$this$setIdentificationInfo");
        k.g(headersInfo, "headersInfo");
        c clientInfoProvider = headersInfo.getClientInfoProvider();
        i iVar = null;
        g g = clientInfoProvider != null ? clientInfoProvider.g() : null;
        k.c(g, "headersInfo.getClientInfoProvider()?.idProvider");
        String d = g.d();
        c clientInfoProvider2 = headersInfo.getClientInfoProvider();
        if (clientInfoProvider2 != null) {
            iVar = clientInfoProvider2.b();
        }
        k.c(iVar, "headersInfo.getClientInf…)?.productionInfoProvider");
        String b = iVar.b();
        k.c(b, "headersInfo.getClientInf…foProvider.productVersion");
        k.c(d, "installationId");
        eVar.m575o(d);
        eVar.m582h(b);
        eVar.m586d("Android" + Build.VERSION.SDK_INT + "/" + Build.VERSION.INCREMENTAL);
    }
}
