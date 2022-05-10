package p131c.p431l.p432a.p452c;

import android.app.Activity;
import android.content.Context;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p131c.p132a.p133a.p134a.AbstractC1982b;
import p131c.p132a.p133a.p134a.AbstractC1984c;
import p131c.p132a.p133a.p134a.AbstractC1989e;
import p131c.p132a.p133a.p134a.AbstractC2002j;
import p131c.p132a.p133a.p134a.AbstractC2009m;
import p131c.p132a.p133a.p134a.C1979a;
import p131c.p132a.p133a.p134a.C1991f;
import p131c.p132a.p133a.p134a.C1994g;
import p131c.p132a.p133a.p134a.C1999i;
import p131c.p132a.p133a.p134a.C2004k;
import p131c.p132a.p133a.p134a.C2006l;
import p131c.p431l.p432a.p452c.p453f.C6798a;
import p131c.p431l.p432a.p468n.C6850i;
/* renamed from: c.l.a.c.b */
/* loaded from: classes2-dex2jar.jar:c/l/a/c/b.class */
public class C6782b implements AbstractC2002j {

    /* renamed from: a */
    public AbstractC1984c f20905a;

    /* renamed from: b */
    public boolean f20906b;

    /* renamed from: c */
    public final AbstractC6791g f20907c;

    /* renamed from: d */
    public Activity f20908d;

    /* renamed from: e */
    public final List<C1999i> f20909e = new ArrayList();

    /* renamed from: f */
    public int f20910f;

    /* renamed from: g */
    public int f20911g;

    /* renamed from: c.l.a.c.b$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/c/b$a.class */
    public class RunnableC6783a implements Runnable {
        public RunnableC6783a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C6782b.this.f20907c.mo3327a();
            C6850i.m19579a("BillingManager", "Setup successful. Querying inventory.");
            C6782b.this.m19800c();
        }
    }

    /* renamed from: c.l.a.c.b$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/c/b$b.class */
    public class RunnableC6784b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2004k f20913a;

        public RunnableC6784b(C2004k kVar) {
            this.f20913a = kVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C6850i.m19579a("BillingManager", "Launching in-app purchase flow");
            C1991f.C1992a i = C1991f.m31297i();
            i.m31295a(this.f20913a);
            C1991f a = i.m31296a();
            if (C6782b.this.f20905a != null) {
                C6782b.this.f20905a.mo31350a(C6782b.this.f20908d, a);
            }
        }
    }

    /* renamed from: c.l.a.c.b$c */
    /* loaded from: classes2-dex2jar.jar:c/l/a/c/b$c.class */
    public class RunnableC6785c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ List f20915a;

        /* renamed from: b */
        public final /* synthetic */ String f20916b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC2009m f20917c;

        /* renamed from: c.l.a.c.b$c$a */
        /* loaded from: classes2-dex2jar.jar:c/l/a/c/b$c$a.class */
        public class C6786a implements AbstractC2009m {
            public C6786a() {
            }

            @Override // p131c.p132a.p133a.p134a.AbstractC2009m
            /* renamed from: a */
            public void mo3328a(C1994g gVar, List<C2004k> list) {
                RunnableC6785c.this.f20917c.mo3328a(gVar, list);
            }
        }

        public RunnableC6785c(List list, String str, AbstractC2009m mVar) {
            this.f20915a = list;
            this.f20916b = str;
            this.f20917c = mVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2006l.C2007a c = C2006l.m31257c();
            c.m31254a(this.f20915a);
            c.m31255a(this.f20916b);
            if (C6782b.this.f20905a != null) {
                C6782b.this.f20905a.mo31338a(c.m31256a(), new C6786a());
            }
        }
    }

    /* renamed from: c.l.a.c.b$d */
    /* loaded from: classes2-dex2jar.jar:c/l/a/c/b$d.class */
    public class C6787d implements AbstractC1982b {

        /* renamed from: a */
        public final /* synthetic */ C1999i f20920a;

        public C6787d(C1999i iVar) {
            this.f20920a = iVar;
        }

        @Override // p131c.p132a.p133a.p134a.AbstractC1982b
        /* renamed from: a */
        public void mo19796a(C1994g gVar) {
            C6850i.m19579a("BillingManager", "onAcknowledgePurchaseResponse");
            if (gVar == null || gVar.m31291b() != 0) {
                C6850i.m19579a("BillingManager", "onAcknowledgeFail");
                C6782b.m19797e(C6782b.this);
                if (C6782b.this.f20911g < 2) {
                    C6782b.this.m19814a(this.f20920a);
                } else {
                    C6782b.this.m19804b();
                }
            } else {
                C6850i.m19579a("BillingManager", "onAcknowledgeSuccess");
                C6782b.this.m19804b();
            }
        }
    }

    /* renamed from: c.l.a.c.b$e */
    /* loaded from: classes2-dex2jar.jar:c/l/a/c/b$e.class */
    public class RunnableC6788e implements Runnable {

        /* renamed from: c.l.a.c.b$e$a */
        /* loaded from: classes2-dex2jar.jar:c/l/a/c/b$e$a.class */
        public class C6789a implements AbstractC1982b {
            public C6789a(RunnableC6788e eVar) {
            }

            @Override // p131c.p132a.p133a.p134a.AbstractC1982b
            /* renamed from: a */
            public void mo19796a(C1994g gVar) {
                if (gVar != null && gVar.m31291b() == 0) {
                    C6793d.m19786a(true);
                    C6850i.m19579a("BillingManager acknowledgePurchase", "Purchase successful.");
                }
            }
        }

        public RunnableC6788e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C6782b.this.f20905a != null && C6782b.this.m19817a()) {
                C1999i.C2000a b = C6782b.this.f20905a.mo31329b("subs");
                if (b == null || b.m31270c() != 0) {
                    C6850i.m19577b("BillingManager", "Got an error response trying to query subscription purchases");
                } else if (b.m31271b() != null && !b.m31271b().isEmpty()) {
                    for (C1999i iVar : b.m31271b()) {
                        if (iVar.m31277b() == 1 && !iVar.m31273f()) {
                            C1979a.C1980a b2 = C1979a.m31361b();
                            b2.m31359a(iVar.m31276c());
                            C1979a a = b2.m31360a();
                            if (C6782b.this.f20905a != null) {
                                C6782b.this.f20905a.mo31348a(a, new C6789a(this));
                            } else {
                                return;
                            }
                        }
                    }
                }
                C6782b.this.m19815a(b);
            }
        }
    }

    /* renamed from: c.l.a.c.b$f */
    /* loaded from: classes2-dex2jar.jar:c/l/a/c/b$f.class */
    public class C6790f implements AbstractC1989e {

        /* renamed from: a */
        public final /* synthetic */ Runnable f20923a;

        public C6790f(Runnable runnable) {
            this.f20923a = runnable;
        }

        @Override // p131c.p132a.p133a.p134a.AbstractC1989e
        /* renamed from: a */
        public void mo19795a() {
            C6782b.this.f20906b = false;
        }

        @Override // p131c.p132a.p133a.p134a.AbstractC1989e
        /* renamed from: a */
        public void mo19794a(C1994g gVar) {
            C6850i.m19579a("BillingManager", "Setup finished. Response code: " + gVar.m31291b());
            if (gVar.m31291b() == 0) {
                C6782b.this.f20906b = true;
                C6793d.m19784b(true);
                Runnable runnable = this.f20923a;
                if (runnable != null) {
                    runnable.run();
                }
            } else {
                C6793d.m19784b(false);
            }
            C6782b.this.f20910f = Integer.valueOf(gVar.m31291b()).intValue();
        }
    }

    /* renamed from: c.l.a.c.b$g */
    /* loaded from: classes2-dex2jar.jar:c/l/a/c/b$g.class */
    public interface AbstractC6791g {
        /* renamed from: a */
        void mo3327a();

        /* renamed from: a */
        void mo3326a(List<C1999i> list);
    }

    public C6782b(Context context, AbstractC6791g gVar) {
        C6850i.m19579a("BillingManager", "Creating Billing client.");
        this.f20907c = gVar;
        AbstractC1984c.C1985a a = AbstractC1984c.m31355a(context);
        a.m31352b();
        a.m31353a(this);
        this.f20905a = a.m31354a();
        if (context instanceof Activity) {
            this.f20908d = (Activity) context;
        }
        C6850i.m19579a("BillingManager", "Starting setup.");
        m19801b(new RunnableC6783a());
    }

    /* renamed from: e */
    public static /* synthetic */ int m19797e(C6782b bVar) {
        int i = bVar.f20911g;
        bVar.f20911g = i + 1;
        return i;
    }

    @Override // p131c.p132a.p133a.p134a.AbstractC2002j
    /* renamed from: a */
    public void mo19816a(C1994g gVar, List<C1999i> list) {
        if (gVar.m31291b() == 0 && list != null) {
            for (C1999i iVar : list) {
                m19803b(iVar);
            }
            this.f20907c.mo3326a(this.f20909e);
        } else if (1 == gVar.m31291b()) {
            C6850i.m19576c("BillingManager", "onPurchasesUpdated() - user cancelled the purchase flow - skipping");
        } else {
            C6850i.m19575d("BillingManager", "onPurchasesUpdated() got unknown resultCode: " + gVar.m31291b());
        }
    }

    /* renamed from: a */
    public final void m19815a(C1999i.C2000a aVar) {
        if (this.f20905a == null || aVar.m31270c() != 0) {
            C6850i.m19575d("BillingManager", "Billing client was null or result code (" + aVar.m31270c() + ") was bad - quitting");
            return;
        }
        C6850i.m19579a("BillingManager", "Query inventory was successful.");
        this.f20909e.clear();
        C1994g.C1995a c = C1994g.m31290c();
        c.m31288a(0);
        mo19816a(c.m31289a(), aVar.m31271b());
    }

    /* renamed from: a */
    public final void m19814a(C1999i iVar) {
        if (iVar.m31277b() == 1) {
            C6850i.m19579a("BillingManager", iVar.m31273f() ? "onAcknowledgeTrue" : "onAcknowledgeFalse");
            if (!iVar.m31273f()) {
                C1979a.C1980a b = C1979a.m31361b();
                b.m31359a(iVar.m31276c());
                C1979a a = b.m31360a();
                AbstractC1984c cVar = this.f20905a;
                if (cVar != null) {
                    cVar.mo31348a(a, new C6787d(iVar));
                }
            }
        }
    }

    /* renamed from: a */
    public void m19813a(C2004k kVar) {
        m19807a(new RunnableC6784b(kVar));
    }

    /* renamed from: a */
    public final void m19807a(Runnable runnable) {
        if (this.f20906b) {
            runnable.run();
        } else if (this.f20905a != null) {
            m19801b(runnable);
        }
    }

    /* renamed from: a */
    public void m19805a(String str, List<String> list, AbstractC2009m mVar) {
        m19807a(new RunnableC6785c(list, str, mVar));
    }

    /* renamed from: a */
    public boolean m19817a() {
        int b = this.f20905a.mo31336a("subscriptions").m31291b();
        if (b != 0) {
            C6850i.m19575d("BillingManager", "areSubscriptionsSupported() got an error response: " + b);
        }
        return b == 0;
    }

    /* renamed from: a */
    public final boolean m19806a(String str, String str2) {
        try {
            return C6798a.m19769a("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxbg51xLhUsLCxTFd84CWwpYuY1bc1A30yZ6ZiOIpgs97WczcBLkRDQC7VkTfHjrT6TtAdTQo7pJDfwWP+PiRQBo09uGOfkokba7c+5IkBncz01T2iC/49+XlerFfxsJSUUddK1gFFcjvc/SfodsWi8F4wirl2WfVkLxw47VtmiID3wrOocrSr4FZ9AsEPEM/L3UVh/kig2Vz/t2iUVAQcg2USJ6MQ67o7+MDyZBwT/HtK2o/4y8PqexcWg54P7DBL8fK8ogWqvbpf22MZuheB3ECfDEIsCaA8giXYVXSSCV5KOmkwMizltkA/PNAODkLOBoY965iiKKvnxbng2ywmwIDAQAB", str, str2);
        } catch (IOException e) {
            C6850i.m19577b("BillingManager", "Got an exception trying to validate a purchase: " + e);
            return false;
        }
    }

    /* renamed from: b */
    public void m19804b() {
        C6850i.m19579a("BillingManager", "Destroying the manager.");
        AbstractC1984c cVar = this.f20905a;
        if (cVar != null && cVar.mo31333b()) {
            this.f20905a.mo31351a();
            this.f20905a = null;
        }
    }

    /* renamed from: b */
    public final void m19803b(C1999i iVar) {
        if (!m19806a(iVar.m31278a(), iVar.m31275d())) {
            C6850i.m19576c("BillingManager", "Got a purchase: " + iVar + "; but signature is bad. Skipping...");
            return;
        }
        C6850i.m19579a("BillingManager", "Got a verified purchase: " + iVar);
        this.f20909e.add(iVar);
        m19814a(iVar);
    }

    /* renamed from: b */
    public void m19801b(Runnable runnable) {
        this.f20905a.mo31340a(new C6790f(runnable));
    }

    /* renamed from: c */
    public void m19800c() {
        m19807a(new RunnableC6788e());
    }
}
