package p046g.p047g.p048d.p053n;

import android.os.Build;
import com.hiya.api.zipkin.interceptor.HeadersInfo;
import g.g.a.b.j1.c;
import g.g.a.b.j1.g;
import g.g.a.b.j1.i;
import kotlin.w.c.k;
import p046g.p047g.p048d.AbstractC1943e;
/* renamed from: g.g.d.n.a */
/* loaded from: classes2-dex2jar.jar:g/g/d/n/a.class */
public final class C1952a {
    /* renamed from: a */
    public static final void m549a(AbstractC1943e abstractC1943e, HeadersInfo headersInfo) {
        k.g(abstractC1943e, "$this$setIdentificationInfo");
        k.g(headersInfo, "headersInfo");
        c clientInfoProvider = headersInfo.getClientInfoProvider();
        g g = clientInfoProvider != null ? clientInfoProvider.g() : null;
        k.c(g, "headersInfo.getClientInfoProvider()?.idProvider");
        String d = g.d();
        c clientInfoProvider2 = headersInfo.getClientInfoProvider();
        i iVar = null;
        if (clientInfoProvider2 != null) {
            iVar = clientInfoProvider2.b();
        }
        k.c(iVar, "headersInfo.getClientInf…)?.productionInfoProvider");
        String b = iVar.b();
        k.c(b, "headersInfo.getClientInf…foProvider.productVersion");
        k.c(d, "installationId");
        abstractC1943e.m575o(d);
        abstractC1943e.m582h(b);
        abstractC1943e.m586d("Android" + Build.VERSION.SDK_INT + "/" + Build.VERSION.INCREMENTAL);
    }
}
