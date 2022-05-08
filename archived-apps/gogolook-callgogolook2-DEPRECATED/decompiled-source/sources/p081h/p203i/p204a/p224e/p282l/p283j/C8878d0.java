package p081h.p203i.p204a.p224e.p282l.p283j;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.MarkerOptions;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p259j.p275p.AbstractBinderC8543k;
import p081h.p203i.p204a.p224e.p259j.p275p.AbstractC8542j;
import p081h.p203i.p204a.p224e.p259j.p275p.C8533a;
import p081h.p203i.p204a.p224e.p259j.p275p.C8538f;
/* renamed from: h.i.a.e.l.j.d0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/j/d0.class */
public final class C8878d0 extends C8533a implements AbstractC8873b {
    public C8878d0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IGoogleMapDelegate");
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8873b
    /* renamed from: P */
    public final CameraPosition mo16840P() throws RemoteException {
        Parcel a = m17862a(1, m17863G0());
        CameraPosition cameraPosition = (CameraPosition) C8538f.m17857a(a, CameraPosition.CREATOR);
        a.recycle();
        return cameraPosition;
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8873b
    /* renamed from: a */
    public final AbstractC8542j mo16838a(MarkerOptions markerOptions) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17856a(G0, markerOptions);
        Parcel a = m17862a(11, G0);
        AbstractC8542j a2 = AbstractBinderC8543k.m17851a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8873b
    /* renamed from: a */
    public final void mo16839a(int i, int i2, int i3, int i4) throws RemoteException {
        Parcel G0 = m17863G0();
        G0.writeInt(i);
        G0.writeInt(i2);
        G0.writeInt(i3);
        G0.writeInt(i4);
        m17861b(39, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8873b
    /* renamed from: a */
    public final void mo16837a(AbstractC8882f0 f0Var) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17858a(G0, f0Var);
        m17861b(99, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8873b
    /* renamed from: a */
    public final void mo16836a(AbstractC8886h0 h0Var) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17858a(G0, h0Var);
        m17861b(96, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8873b
    /* renamed from: a */
    public final void mo16835a(AbstractC8890k kVar) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17858a(G0, kVar);
        m17861b(28, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8873b
    /* renamed from: a */
    public final void mo16834a(AbstractC8892m mVar) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17858a(G0, mVar);
        m17861b(42, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8873b
    /* renamed from: a */
    public final void mo16833a(AbstractC8896q qVar) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17858a(G0, qVar);
        m17861b(30, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8873b
    /* renamed from: c0 */
    public final AbstractC8877d mo16832c0() throws RemoteException {
        AbstractC8877d dVar;
        Parcel a = m17862a(26, m17863G0());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            dVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
            dVar = queryLocalInterface instanceof AbstractC8877d ? (AbstractC8877d) queryLocalInterface : new C8901v(readStrongBinder);
        }
        a.recycle();
        return dVar;
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8873b
    public final void clear() throws RemoteException {
        m17861b(14, m17863G0());
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8873b
    /* renamed from: l */
    public final void mo16831l(boolean z) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17855a(G0, z);
        m17861b(22, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8873b
    /* renamed from: n */
    public final void mo16830n(AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17858a(G0, bVar);
        m17861b(5, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8873b
    /* renamed from: u */
    public final void mo16829u(AbstractC7106b bVar) throws RemoteException {
        Parcel G0 = m17863G0();
        C8538f.m17858a(G0, bVar);
        m17861b(4, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8873b
    /* renamed from: u0 */
    public final AbstractC8883g mo16828u0() throws RemoteException {
        AbstractC8883g gVar;
        Parcel a = m17862a(25, m17863G0());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            gVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
            gVar = queryLocalInterface instanceof AbstractC8883g ? (AbstractC8883g) queryLocalInterface : new C8904y(readStrongBinder);
        }
        a.recycle();
        return gVar;
    }
}
