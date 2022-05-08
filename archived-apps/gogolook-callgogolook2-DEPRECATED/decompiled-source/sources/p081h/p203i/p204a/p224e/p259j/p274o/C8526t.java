package p081h.p203i.p204a.p224e.p259j.p274o;

import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import javax.annotation.Nullable;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6854d;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6878i;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p280k.AbstractC8825g;
/* renamed from: h.i.a.e.j.o.t */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/t.class */
public final class C8526t extends C8506f0 {

    /* renamed from: G */
    public final C8519m f19554G;

    public C8526t(Context context, Looper looper, AbstractC6825f.AbstractC6827b bVar, AbstractC6825f.AbstractC6828c cVar, String str) {
        this(context, looper, bVar, cVar, str, C6983e.m21398a(context));
    }

    public C8526t(Context context, Looper looper, AbstractC6825f.AbstractC6827b bVar, AbstractC6825f.AbstractC6828c cVar, String str, @Nullable C6983e eVar) {
        super(context, looper, bVar, cVar, str, eVar);
        this.f19554G = new C8519m(context, this.f19538F);
    }

    /* renamed from: E */
    public final Location m17870E() throws RemoteException {
        return this.f19554G.m17880a();
    }

    /* renamed from: a */
    public final void m17869a(LocationRequest locationRequest, C6878i<AbstractC8825g> iVar, AbstractC8505f fVar) throws RemoteException {
        synchronized (this.f19554G) {
            this.f19554G.m17879a(locationRequest, iVar, fVar);
        }
    }

    /* renamed from: a */
    public final void m17868a(LocationSettingsRequest locationSettingsRequest, AbstractC6854d<LocationSettingsResult> dVar, @Nullable String str) throws RemoteException {
        m21419m();
        boolean z = true;
        C7021t.m21285a(locationSettingsRequest != null, "locationSettingsRequest can't be null nor empty.");
        if (dVar == null) {
            z = false;
        }
        C7021t.m21285a(z, "listener can't be null.");
        ((AbstractC8511i) m21414u()).mo17884a(locationSettingsRequest, new BinderC8528v(dVar), str);
    }

    /* renamed from: a */
    public final void m17867a(C6878i.C6879a<AbstractC8825g> aVar, AbstractC8505f fVar) throws RemoteException {
        this.f19554G.m17878a(aVar, fVar);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d, p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6816f
    public final void disconnect() {
        synchronized (this.f19554G) {
            if (isConnected()) {
                try {
                    this.f19554G.m17875b();
                    this.f19554G.m17874c();
                } catch (Exception e) {
                    Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", e);
                }
            }
            super.disconnect();
        }
    }
}
