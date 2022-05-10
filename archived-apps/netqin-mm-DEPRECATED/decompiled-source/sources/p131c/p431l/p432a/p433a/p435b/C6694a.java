package p131c.p431l.p432a.p433a.p435b;

import android.app.Application;
import p131c.p396i.p397a.C6490b;
import p131c.p396i.p397a.C6497d;
import p131c.p396i.p397a.p406i.C6557b;
import p131c.p396i.p418b.AbstractC6621c;
import p131c.p396i.p418b.C6619a;
import p131c.p431l.p432a.p459h.p460a.C6813a;
import p131c.p431l.p432a.p468n.C6850i;
/* renamed from: c.l.a.a.b.a */
/* loaded from: classes-dex2jar.jar:c/l/a/a/b/a.class */
public class C6694a {

    /* renamed from: a */
    public static AbstractC6621c f20660a = new C6695a();

    /* renamed from: c.l.a.a.b.a$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/a/b/a$a.class */
    public static final class C6695a extends AbstractC6621c.AbstractC6622a {
        @Override // p131c.p396i.p418b.AbstractC6621c.AbstractC6622a, p131c.p396i.p418b.AbstractC6621c
        /* renamed from: a */
        public void mo20035a() {
            if (!C6813a.m19695c()) {
                C6850i.m19579a("GDPR", "用户未同意GDPR，故不更新数据");
            }
        }
    }

    /* renamed from: c.l.a.a.b.a$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/a/b/a$b.class */
    public static final class C6696b extends C6497d.AbstractC6503e.AbstractC6504a {
        @Override // p131c.p396i.p397a.C6497d.AbstractC6503e.AbstractC6504a, p131c.p396i.p397a.C6497d.AbstractC6503e
        /* renamed from: a */
        public void mo20034a() {
            super.mo20034a();
        }
    }

    /* renamed from: a */
    public static void m20038a() {
        C6557b.m20501b().m20504a(new C6699d());
        C6557b.m20501b().m20504a(new C6700e());
        C6557b.m20501b().m20504a(new C6701f());
        C6557b.m20501b().m20504a(new C6704i());
        C6557b.m20501b().m20504a(new C6703h());
        C6557b.m20501b().m20504a(new C6698c());
        C6557b.m20501b().m20504a(new C6702g());
    }

    /* renamed from: a */
    public static void m20037a(Application application) {
        m20036b(application);
        C6497d.m20645o().m20679a(new C6696b());
        C6619a.m20316b().m20322a(f20660a);
    }

    /* renamed from: b */
    public static void m20036b(Application application) {
        m20038a();
        C6490b.m20715a(application, 112L, "1", 2131755010, false, false);
    }
}
