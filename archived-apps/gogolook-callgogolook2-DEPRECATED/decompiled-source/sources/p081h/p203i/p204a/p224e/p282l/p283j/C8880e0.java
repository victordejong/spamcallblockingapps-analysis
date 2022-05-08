package p081h.p203i.p204a.p224e.p282l.p283j;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p259j.p275p.C8533a;
import p081h.p203i.p204a.p224e.p259j.p275p.C8538f;
/* renamed from: h.i.a.e.l.j.e0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/j/e0.class */
public final class C8880e0 extends C8533a implements AbstractC8875c {
    public C8880e0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IMapViewDelegate");
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8875c
    /* renamed from: a */
    public final void mo16827a(AbstractC8894o oVar) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17858a(G0, oVar);
        m17861b(9, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8875c
    /* renamed from: d */
    public final AbstractC7106b mo16826d() throws RemoteException {
        Parcel a = m17862a(8, m17863G0());
        AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8875c
    public final void onCreate(Bundle bundle) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17856a(G0, bundle);
        m17861b(2, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8875c
    public final void onDestroy() throws RemoteException {
        m17861b(5, m17863G0());
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8875c
    public final void onPause() throws RemoteException {
        m17861b(4, m17863G0());
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8875c
    public final void onResume() throws RemoteException {
        m17861b(3, m17863G0());
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8875c
    public final void onStart() throws RemoteException {
        m17861b(12, m17863G0());
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8875c
    public final void onStop() throws RemoteException {
        m17861b(13, m17863G0());
    }
}
