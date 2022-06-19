package p193e.p194a.p937j4.p938a;

import com.truecaller.TrueApp;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.p698c.View$OnClickListenerC13135s1;
import p193e.p194a.p997k3.p998j.C16487j;
/* renamed from: e.a.j4.a.e */
/* loaded from: classes11-dex2jar.jar:e/a/j4/a/e.class */
public abstract class AbstractAsyncTaskC15562e extends AbstractAsyncTaskC15557a {
    @Override // p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a
    /* renamed from: a */
    public void mo18682a(Object obj) {
    }

    @Override // android.os.AsyncTask
    public Object doInBackground(Object... objArr) {
        try {
            boolean z = TrueApp.f9585r;
            new C16487j(AbstractApplicationC8442a.m28551L()).m17331c(((View$OnClickListenerC13135s1.AbstractAsyncTaskC13140e.AsyncTaskC13141a) this).f38230d);
            return null;
        } catch (Throwable th) {
            C10480a.m26057J1(th, "Exception caught in runInBackground");
            return null;
        }
    }
}
