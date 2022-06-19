package androidx.work.impl.p012m.p014f;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.work.AbstractC0541m;
/* renamed from: androidx.work.impl.m.f.e$b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/e$b.class */
class e$b extends ConnectivityManager.NetworkCallback {

    /* renamed from: a */
    final /* synthetic */ e f2577a;

    e$b(e eVar) {
        this.f2577a = eVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        AbstractC0541m.m4308c().m4310a(e.j, String.format("Network capabilities changed: %s", networkCapabilities), new Throwable[0]);
        e eVar = this.f2577a;
        eVar.m4429d(eVar.g());
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public void onLost(Network network) {
        AbstractC0541m.m4308c().m4310a(e.j, "Network connection lost", new Throwable[0]);
        e eVar = this.f2577a;
        eVar.m4429d(eVar.g());
    }
}
