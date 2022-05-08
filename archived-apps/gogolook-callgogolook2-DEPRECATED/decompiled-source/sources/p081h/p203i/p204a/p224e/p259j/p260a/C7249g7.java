package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.doubleclick.CustomRenderedAd;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.g7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/g7.class */
public final class C7249g7 implements CustomRenderedAd {

    /* renamed from: a */
    public final AbstractC7262h7 f17343a;

    public C7249g7(AbstractC7262h7 h7Var) {
        this.f17343a = h7Var;
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public final String getBaseUrl() {
        try {
            return this.f17343a.mo20899o0();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public final String getContent() {
        try {
            return this.f17343a.getContent();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public final void onAdRendered(View view) {
        try {
            this.f17343a.mo20898t(view != null ? BinderC7110d.m21058a(view) : null);
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public final void recordClick() {
        try {
            this.f17343a.recordClick();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public final void recordImpression() {
        try {
            this.f17343a.recordImpression();
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }
}
