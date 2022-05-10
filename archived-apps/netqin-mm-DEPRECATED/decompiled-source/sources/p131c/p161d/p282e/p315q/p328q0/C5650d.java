package p131c.p161d.p282e.p315q.p328q0;

import android.app.Application;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p278d.p279a.p280a.p281a.C5123b;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p315q.p316o0.AbstractC5519a;
import p131c.p161d.p282e.p315q.p328q0.p332t3.AbstractC5814a;
import p131c.p161d.p362g.p363a.p364a.p365a.p366g.C6254b;
import p131c.p161d.p362g.p363a.p364a.p365a.p366g.C6259e;
import p131c.p161d.p362g.p363a.p364a.p365a.p366g.C6263g;
import p131c.p161d.p362g.p363a.p364a.p365a.p366g.C6267i;
/* renamed from: c.d.e.q.q0.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/d.class */
public class C5650d {

    /* renamed from: a */
    public final AbstractC5519a<C5692l0> f18730a;

    /* renamed from: b */
    public final C5128c f18731b;

    /* renamed from: c */
    public final Application f18732c;

    /* renamed from: d */
    public final AbstractC5814a f18733d;

    /* renamed from: e */
    public final C5823v2 f18734e;

    public C5650d(AbstractC5519a<C5692l0> aVar, C5128c cVar, Application application, AbstractC5814a aVar2, C5823v2 v2Var) {
        this.f18730a = aVar;
        this.f18731b = cVar;
        this.f18732c = application;
        this.f18733d = aVar2;
        this.f18734e = v2Var;
    }

    /* renamed from: a */
    public final C5123b m23339a() {
        C5123b.C5124a w = C5123b.m24484w();
        w.m24481c(String.valueOf(Build.VERSION.SDK_INT));
        w.m24482b(Locale.getDefault().toString());
        w.m24480d(TimeZone.getDefault().getID());
        String b = m23335b();
        if (!TextUtils.isEmpty(b)) {
            w.m24483a(b);
        }
        return w.mo6937a();
    }

    /* renamed from: a */
    public final C6259e m23338a(AbstractC5689k2 k2Var) {
        C6259e.C6261b w = C6259e.m21728w();
        w.m21725c(this.f18731b.m24464d().m24445b());
        w.m21727a(k2Var.mo23224a());
        w.m21726b(k2Var.mo23222b().mo22781a());
        return w.mo6937a();
    }

    /* renamed from: a */
    public C6267i m23337a(AbstractC5689k2 k2Var, C6254b bVar) {
        C5694l2.m23214c("Fetching campaigns from service.");
        this.f18734e.m22964a();
        C5692l0 l0Var = this.f18730a.get();
        C6263g.C6265b y = C6263g.m21713y();
        y.m21709a(this.f18731b.m24464d().m24444c());
        y.m21710a(bVar.m21740w());
        y.m21712a(m23339a());
        y.m21711a(m23338a(k2Var));
        return m23336a(l0Var.m23218a(y.mo6937a()));
    }

    /* renamed from: a */
    public final C6267i m23336a(C6267i iVar) {
        if (iVar.m21705v() >= this.f18733d.mo22976a() + TimeUnit.MINUTES.toMillis(1L) && iVar.m21705v() <= this.f18733d.mo22976a() + TimeUnit.DAYS.toMillis(3L)) {
            return iVar;
        }
        C6267i.C6269b h = iVar.mo6926h();
        h.m21700a(this.f18733d.mo22976a() + TimeUnit.DAYS.toMillis(1L));
        return h.mo6937a();
    }

    /* renamed from: b */
    public final String m23335b() {
        try {
            return this.f18732c.getPackageManager().getPackageInfo(this.f18732c.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            C5694l2.m23215b("Error finding versionName : " + e.getMessage());
            return null;
        }
    }
}
