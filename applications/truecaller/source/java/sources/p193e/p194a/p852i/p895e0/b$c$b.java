package p193e.p194a.p852i.p895e0;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import com.razorpay.AnalyticsConstants;
import e.a.i.e0.b;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import q3.a.w2.x;
import s1.z.c.l;
/* renamed from: e.a.i.e0.b$c$b */
/* loaded from: classes3-dex2jar.jar:e/a/i/e0/b$c$b.class */
public final class b$c$b extends ConnectivityManager.NetworkCallback {

    /* renamed from: a */
    public final /* synthetic */ b.c f43202a;

    /* renamed from: b */
    public final /* synthetic */ x f43203b;

    public b$c$b(b.c cVar, x<? super Boolean> xVar) {
        this.f43202a = cVar;
        this.f43203b = xVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onAvailable(Network network) {
        l.e(network, AnalyticsConstants.NETWORK);
        NetworkCapabilities networkCapabilities = b.d(this.f43202a.g).getNetworkCapabilities(network);
        C19291g.m13534l1(this.f43203b, Boolean.valueOf(networkCapabilities != null ? networkCapabilities.hasCapability(12) : false));
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        l.e(network, AnalyticsConstants.NETWORK);
        C19291g.m13534l1(this.f43203b, Boolean.FALSE);
    }
}
