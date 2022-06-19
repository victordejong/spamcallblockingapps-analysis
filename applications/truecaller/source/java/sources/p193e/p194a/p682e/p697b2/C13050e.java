package p193e.p194a.p682e.p697b2;

import android.os.AsyncTask;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import n3.r.a.l;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p751f4.p762g.C14022p;
/* renamed from: e.a.e.b2.e */
/* loaded from: classes15-dex2jar.jar:e/a/e/b2/e.class */
public class C13050e extends AbstractC13048c {

    /* renamed from: b */
    public final C14022p f37893b;

    /* renamed from: c */
    public final String f37894c;

    /* renamed from: d */
    public AsyncTask<?, ?, ?> f37895d;

    /* renamed from: e */
    public final AbstractC19462a f37896e;

    /* renamed from: f */
    public final InitiateCallHelper f37897f;

    public C13050e(String str, C14022p c14022p, String str2, AbstractC19462a abstractC19462a, InitiateCallHelper initiateCallHelper) {
        this.f37893b = c14022p;
        this.f37894c = str;
        this.f37896e = abstractC19462a;
        this.f37897f = initiateCallHelper;
    }

    @Override // p193e.p194a.p682e.p697b2.AbstractC13048c
    /* renamed from: Hj */
    public void mo22103Hj(l lVar) {
        String str = this.f37894c;
        s1.z.c.l.e("deepLinkClickToCall", "analyticsContext");
        this.f37897f.m35744b(new InitiateCallHelper.CallOptions(str, "deepLinkClickToCall", null, null, false, false, null, true, InitiateCallHelper.CallContextOption.ShowOnBoarded.a));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.e.b2.f, PV] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC13051f) obj;
        this.f57683a = r0;
        r0.mo22102W(this.f37894c, null);
        String str = this.f37894c;
        C14022p c14022p = this.f37893b;
        c14022p.f40566p = str;
        c14022p.m20844d();
        this.f37895d = c14022p.m20842f(null, true, false, new C13049d(this));
        this.f37896e.mo13274b(C19597a.m13114b("callConfirmation"));
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f57683a = null;
        AsyncTask<?, ?, ?> asyncTask = this.f37895d;
        if (asyncTask != null) {
            asyncTask.cancel(true);
        }
    }
}
