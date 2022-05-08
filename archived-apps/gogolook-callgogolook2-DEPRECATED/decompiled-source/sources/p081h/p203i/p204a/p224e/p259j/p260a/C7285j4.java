package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzjo;
import com.google.android.gms.internal.ads.zzpy;
/* renamed from: h.i.a.e.j.a.j4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/j4.class */
public final class C7285j4 extends C7441w2 implements AbstractC7259h4 {
    public C7285j4(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7259h4
    /* renamed from: F */
    public final AbstractC7220e4 mo20882F() throws RemoteException {
        AbstractC7220e4 e4Var;
        Parcel a = m20617a(1, m20618G0());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            e4Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            e4Var = queryLocalInterface instanceof AbstractC7220e4 ? (AbstractC7220e4) queryLocalInterface : new C7246g4(readStrongBinder);
        }
        a.recycle();
        return e4Var;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7259h4
    /* renamed from: a */
    public final void mo20881a(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, publisherAdViewOptions);
        m20616b(9, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7259h4
    /* renamed from: a */
    public final void mo20880a(zzpy zzpyVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20508a(G0, zzpyVar);
        m20616b(6, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7259h4
    /* renamed from: a */
    public final void mo20879a(AbstractC7169a5 a5Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, a5Var);
        m20616b(7, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7259h4
    /* renamed from: a */
    public final void mo20878a(AbstractC7181b4 b4Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, b4Var);
        m20616b(2, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7259h4
    /* renamed from: a */
    public final void mo20877a(AbstractC7186b9 b9Var, zzjo zzjoVar) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, b9Var);
        C7465y2.m20508a(G0, zzjoVar);
        m20616b(8, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7259h4
    /* renamed from: a */
    public final void mo20876a(AbstractC7225e9 e9Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, e9Var);
        m20616b(10, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7259h4
    /* renamed from: a */
    public final void mo20875a(AbstractC7362p8 p8Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, p8Var);
        m20616b(3, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7259h4
    /* renamed from: a */
    public final void mo20874a(AbstractC7399s8 s8Var) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, s8Var);
        m20616b(4, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7259h4
    /* renamed from: a */
    public final void mo20873a(String str, AbstractC7471y8 y8Var, AbstractC7435v8 v8Var) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeString(str);
        C7465y2.m20510a(G0, y8Var);
        C7465y2.m20510a(G0, v8Var);
        m20616b(5, G0);
    }
}
