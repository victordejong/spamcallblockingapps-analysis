package p193e.p194a.p751f4.p753b.p756h;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import com.appsflyer.AppsFlyerProperties;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import p3.a.l0;
import s1.z.c.l;
/* renamed from: e.a.f4.b.h.e */
/* loaded from: classes11-dex2jar.jar:e/a/f4/b/h/e.class */
public final class C13976e extends ConnectivityManager.NetworkCallback implements AbstractC13973c {

    /* renamed from: a */
    public final ConnectivityManager f40405a;

    /* renamed from: b */
    public boolean f40406b;

    /* renamed from: c */
    public boolean f40407c;

    /* renamed from: d */
    public final Map<Object, l0> f40408d = new LinkedHashMap();

    public C13976e(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Object systemService = context.getSystemService("connectivity");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.f40405a = (ConnectivityManager) systemService;
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13973c
    /* renamed from: a */
    public void mo20919a(Object obj, l0 l0Var) {
        ConnectivityManager connectivityManager;
        l.e(obj, RemoteMessageConst.Notification.TAG);
        l.e(l0Var, AppsFlyerProperties.CHANNEL);
        this.f40408d.put(obj, l0Var);
        if (!this.f40406b && (connectivityManager = this.f40405a) != null) {
            connectivityManager.registerDefaultNetworkCallback(this);
            this.f40406b = true;
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        l.e(network, AnalyticsConstants.NETWORK);
        if (this.f40407c) {
            for (l0 l0Var : this.f40408d.values()) {
                l0Var.i();
            }
        }
        this.f40407c = false;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        l.e(network, AnalyticsConstants.NETWORK);
        this.f40407c = true;
    }
}
