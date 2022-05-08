package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7112f;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.e6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/e6.class */
public final class C7222e6 extends AbstractC7112f<AbstractC7247g5> {
    public C7222e6() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7112f
    /* renamed from: a */
    public final /* synthetic */ AbstractC7247g5 mo20463a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
        return queryLocalInterface instanceof AbstractC7247g5 ? (AbstractC7247g5) queryLocalInterface : new C7260h5(iBinder);
    }

    /* renamed from: b */
    public final AbstractC7208d5 m20936b(Context context) {
        try {
            IBinder a = m21057a(context).mo20918a(BinderC7110d.m21058a(context), 13000000);
            if (a == null) {
                return null;
            }
            IInterface queryLocalInterface = a.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            return queryLocalInterface instanceof AbstractC7208d5 ? (AbstractC7208d5) queryLocalInterface : new C7234f5(a);
        } catch (RemoteException | AbstractC7112f.C7113a e) {
            C7452x1.m20569c("Could not get remote MobileAdsSettingManager.", e);
            return null;
        }
    }
}
