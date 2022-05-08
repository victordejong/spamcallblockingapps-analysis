package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.RemoteException;
import com.google.ads.AdRequest;
/* renamed from: h.i.a.e.j.a.fb */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/fb.class */
public final class RunnableC7240fb implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AdRequest.ErrorCode f17335a;

    /* renamed from: b */
    public final /* synthetic */ C7175ab f17336b;

    public RunnableC7240fb(C7175ab abVar, AdRequest.ErrorCode errorCode) {
        this.f17336b = abVar;
        this.f17335a = errorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC7291ja jaVar;
        try {
            jaVar = this.f17336b.f17291a;
            jaVar.onAdFailedToLoad(C7189c.m20973a(this.f17335a));
        } catch (RemoteException e) {
            C7452x1.m20567d("#007 Could not call remote method.", e);
        }
    }
}
