package p193e.p194a.p717f.p733y;

import android.os.Build;
import android.telecom.Call;
import com.truecaller.videocallerid.utils.analytics.VideoPlayerContext;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p717f.p718a.C13642g;
import p193e.p194a.p947k.AbstractC16107d;
import p193e.p194a.p947k.p969c.AbstractC15964c2;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.service.InCallUIServicePresenter$handleBusinessCallsWithVideoCallerID$1", f = "InCallUIServicePresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.f.y.m */
/* loaded from: classes10-dex2jar.jar:e/a/f/y/m.class */
public final class C13776m extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C13778o f39935e;

    /* renamed from: f */
    public final /* synthetic */ C13642g f39936f;

    /* renamed from: g */
    public final /* synthetic */ Call f39937g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13776m(C13778o c13778o, C13642g c13642g, Call call, d dVar) {
        super(2, dVar);
        this.f39935e = c13778o;
        this.f39936f = c13642g;
        this.f39937g = call;
    }

    /* renamed from: i */
    public final d<s> m21138i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13776m(this.f39935e, this.f39936f, this.f39937g, dVar);
    }

    /* renamed from: k */
    public final Object m21137k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13776m(this.f39935e, this.f39936f, this.f39937g, dVar).m21136s(s.a);
    }

    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* renamed from: s */
    public final Object m21136s(Object obj) {
        char c;
        s sVar = s.a;
        C25225a.m3932a3(obj);
        AbstractC15964c2 mo17867A = this.f39935e.f39944E.mo17867A();
        C13642g c13642g = this.f39936f;
        String mo18082e = mo17867A.mo18082e(c13642g != null ? c13642g.f39533w : null);
        if (mo18082e != null) {
            long mo13821a = this.f39935e.f39967v.mo13821a();
            if (Build.VERSION.SDK_INT >= 26) {
                Call.Details details = this.f39937g.getDetails();
                l.d(details, "call.details");
                c = details.getCreationTimeMillis();
            } else {
                c = this.f39935e.f39967v.mo13819c();
            }
            if (c > mo13821a) {
                AbstractC16107d abstractC16107d = this.f39935e.f39946K;
                C13642g c13642g2 = this.f39936f;
                String str = null;
                if (c13642g2 != null) {
                    str = c13642g2.f39515e;
                }
                abstractC16107d.mo17872e(c, mo18082e, str, VideoPlayerContext.INCALL_NOTIF_SERVICE.getValue());
            }
            if (this.f39935e.f39966u.m21046b() && this.f39935e.f39966u.m21047a() && !this.f39935e.f39966u.m21045c()) {
                C13642g c13642g3 = this.f39936f;
                if (c13642g3 != null) {
                    this.f39935e.m21111Uj(false, false);
                    C13778o.m21125Jj(this.f39935e, c13642g3.f39511a);
                    C13778o.m21127Ij(this.f39935e, c13642g3);
                }
                AbstractC13773k abstractC13773k = (AbstractC13773k) this.f39935e.f57683a;
                if (abstractC13773k != null) {
                    abstractC13773k.mo21147x();
                }
            }
        }
        return sVar;
    }
}
