package p081h.p119d.p120a;

import android.content.Context;
import android.os.Build;
import java.util.concurrent.ExecutorService;
import p081h.p119d.p120a.p124s.EnumC5804a;
import p081h.p119d.p120a.p124s.p126i.C5828c;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p126i.p127n.C5857d;
import p081h.p119d.p120a.p124s.p126i.p127n.C5860f;
import p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5870a;
import p081h.p119d.p120a.p124s.p126i.p128o.AbstractC5884h;
import p081h.p119d.p120a.p124s.p126i.p128o.C5881f;
import p081h.p119d.p120a.p124s.p126i.p128o.C5883g;
import p081h.p119d.p120a.p124s.p126i.p128o.C5886i;
import p081h.p119d.p120a.p124s.p126i.p129p.C5890a;
/* renamed from: h.d.a.m */
/* loaded from: classes-dex2jar.jar:h/d/a/m.class */
public class C5778m {

    /* renamed from: a */
    public final Context f14483a;

    /* renamed from: b */
    public C5828c f14484b;

    /* renamed from: c */
    public AbstractC5856c f14485c;

    /* renamed from: d */
    public AbstractC5884h f14486d;

    /* renamed from: e */
    public ExecutorService f14487e;

    /* renamed from: f */
    public ExecutorService f14488f;

    /* renamed from: g */
    public EnumC5804a f14489g;

    /* renamed from: h */
    public AbstractC5870a.AbstractC5871a f14490h;

    public C5778m(Context context) {
        this.f14483a = context.getApplicationContext();
    }

    /* renamed from: a */
    public C5776l m24461a() {
        if (this.f14487e == null) {
            this.f14487e = new C5890a(Math.max(1, Runtime.getRuntime().availableProcessors()));
        }
        if (this.f14488f == null) {
            this.f14488f = new C5890a(1);
        }
        C5886i iVar = new C5886i(this.f14483a);
        if (this.f14485c == null) {
            if (Build.VERSION.SDK_INT >= 11) {
                this.f14485c = new C5860f(iVar.m24174a());
            } else {
                this.f14485c = new C5857d();
            }
        }
        if (this.f14486d == null) {
            this.f14486d = new C5883g(iVar.m24171b());
        }
        if (this.f14490h == null) {
            this.f14490h = new C5881f(this.f14483a);
        }
        if (this.f14484b == null) {
            this.f14484b = new C5828c(this.f14486d, this.f14490h, this.f14488f, this.f14487e);
        }
        if (this.f14489g == null) {
            this.f14489g = EnumC5804a.f14652d;
        }
        return new C5776l(this.f14484b, this.f14486d, this.f14485c, this.f14483a, this.f14489g);
    }

    /* renamed from: a */
    public C5778m m24460a(EnumC5804a aVar) {
        this.f14489g = aVar;
        return this;
    }

    /* renamed from: a */
    public C5778m m24459a(AbstractC5870a.AbstractC5871a aVar) {
        this.f14490h = aVar;
        return this;
    }
}
