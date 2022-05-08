package p081h.p203i.p204a.p224e.p259j.p260a;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.AdRequest;
import java.util.List;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p285m.p286a.C8941a;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.aa */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/aa.class */
public final class BinderC7174aa extends AbstractBinderC7218e2 {

    /* renamed from: b */
    public static final Object f17288b = new Object();
    @GuardedBy("lock")

    /* renamed from: c */
    public static BinderC7174aa f17289c;

    /* renamed from: a */
    public final C8941a f17290a;

    public BinderC7174aa(C8941a aVar) {
        this.f17290a = aVar;
    }

    /* renamed from: a */
    public static final /* synthetic */ void m20992a(Context context, BinderC7174aa aaVar) {
        try {
            ((AbstractC7231f2) C7464y1.m20512a(context, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager", C7200ca.f17313a)).mo20922a(aaVar);
        } catch (RemoteException | C7166a2 | NullPointerException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: a */
    public static void m20991a(final Context context, String str, Bundle bundle) {
        synchronized (f17288b) {
            if (f17289c == null) {
                final BinderC7174aa aaVar = new BinderC7174aa(C8941a.m16790a(context, AdRequest.LOGTAG, "am", str, bundle));
                f17289c = aaVar;
                new Thread(new Runnable(context, aaVar) { // from class: h.i.a.e.j.a.ba

                    /* renamed from: a */
                    public final Context f17305a;

                    /* renamed from: b */
                    public final BinderC7174aa f17306b;

                    {
                        this.f17305a = context;
                        this.f17306b = aaVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        BinderC7174aa.m20992a(this.f17305a, this.f17306b);
                    }
                }).start();
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: N */
    public final String mo20962N() throws RemoteException {
        return this.f17290a.m16779c();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: R */
    public final String mo20961R() throws RemoteException {
        return this.f17290a.m16775e();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: X */
    public final String mo20960X() throws RemoteException {
        return this.f17290a.m16774f();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: a */
    public final List mo20958a(String str, String str2) throws RemoteException {
        return this.f17290a.m16787a(str, str2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: a */
    public final Map mo20955a(String str, String str2, boolean z) throws RemoteException {
        return this.f17290a.m16784a(str, str2, z);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: a */
    public final void mo20959a(AbstractC7106b bVar, String str, String str2) throws RemoteException {
        this.f17290a.m16791a(bVar != null ? (Activity) BinderC7110d.m21059A(bVar) : null, str, str2);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: a */
    public final void mo20957a(String str, String str2, Bundle bundle) throws RemoteException {
        this.f17290a.m16786a(str, str2, bundle);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: a */
    public final void mo20956a(String str, String str2, AbstractC7106b bVar) throws RemoteException {
        this.f17290a.m16785a(str, str2, bVar != null ? BinderC7110d.m21059A(bVar) : null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: b */
    public final int mo20954b(String str) throws RemoteException {
        return this.f17290a.m16777c(str);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: b */
    public final void mo20953b(String str, String str2, Bundle bundle) throws RemoteException {
        this.f17290a.m16780b(str, str2, bundle);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: d */
    public final void mo20952d(Bundle bundle) throws RemoteException {
        this.f17290a.m16789a(bundle);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: f */
    public final void mo20951f(Bundle bundle) throws RemoteException {
        this.f17290a.m16778c(bundle);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: g */
    public final Bundle mo20950g(Bundle bundle) throws RemoteException {
        return this.f17290a.m16782b(bundle);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: j */
    public final void mo20949j(String str) throws RemoteException {
        this.f17290a.m16788a(str);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: l */
    public final void mo20948l(String str) throws RemoteException {
        this.f17290a.m16781b(str);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: p0 */
    public final long mo20947p0() throws RemoteException {
        return this.f17290a.m16792a();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: s0 */
    public final String mo20946s0() throws RemoteException {
        return this.f17290a.m16783b();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7205d2
    /* renamed from: v0 */
    public final String mo20945v0() throws RemoteException {
        return this.f17290a.m16776d();
    }
}
