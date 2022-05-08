package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.la */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/la.class */
public final class C7316la extends C7441w2 implements AbstractC7291ja {
    public C7316la(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7291ja
    /* renamed from: E */
    public final void mo20805E() throws RemoteException {
        m20616b(11, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7291ja
    /* renamed from: a */
    public final void mo20804a(AbstractC7326m8 m8Var, String str) throws RemoteException {
        Parcel G0 = m20618G0();
        C7465y2.m20510a(G0, m8Var);
        G0.writeString(str);
        m20616b(10, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7291ja
    public final void onAdClicked() throws RemoteException {
        m20616b(1, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7291ja
    public final void onAdClosed() throws RemoteException {
        m20616b(2, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7291ja
    public final void onAdFailedToLoad(int i) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeInt(i);
        m20616b(3, G0);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7291ja
    public final void onAdImpression() throws RemoteException {
        m20616b(8, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7291ja
    public final void onAdLeftApplication() throws RemoteException {
        m20616b(4, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7291ja
    public final void onAdLoaded() throws RemoteException {
        m20616b(6, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7291ja
    public final void onAdOpened() throws RemoteException {
        m20616b(5, m20618G0());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7291ja
    public final void onAppEvent(String str, String str2) throws RemoteException {
        Parcel G0 = m20618G0();
        G0.writeString(str);
        G0.writeString(str2);
        m20616b(9, G0);
    }
}
