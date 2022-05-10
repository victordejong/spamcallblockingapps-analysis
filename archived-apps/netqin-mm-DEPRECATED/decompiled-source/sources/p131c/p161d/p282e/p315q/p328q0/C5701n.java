package p131c.p161d.p282e.p315q.p328q0;

import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p161d.p282e.C5126a;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p313o.AbstractC5473d;
/* renamed from: c.d.e.q.q0.n */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/n.class */
public class C5701n {

    /* renamed from: a */
    public C5715p3 f18846a;

    /* renamed from: b */
    public AtomicBoolean f18847b;

    public C5701n(C5128c cVar, C5715p3 p3Var, AbstractC5473d dVar) {
        this.f18846a = p3Var;
        this.f18847b = new AtomicBoolean(cVar.m24461g());
        dVar.mo23717a(C5126a.class, C5696m.m23194a(this));
    }

    /* renamed from: a */
    public boolean m23187a() {
        return m23184c() ? this.f18846a.m23164c("auto_init", true) : m23185b() ? this.f18846a.m23165b("firebase_inapp_messaging_auto_data_collection_enabled", true) : this.f18847b.get();
    }

    /* renamed from: b */
    public final boolean m23185b() {
        return this.f18846a.m23168a("firebase_inapp_messaging_auto_data_collection_enabled");
    }

    /* renamed from: c */
    public final boolean m23184c() {
        return this.f18846a.m23166b("auto_init");
    }
}
