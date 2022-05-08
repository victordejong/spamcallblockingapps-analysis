package p459j.p460a.p515i0.p516a;

import com.gogolook.whoscallsdk.core.offlinedb.PersonalDb;
import com.mopub.common.AdType;
import gogolook.callgogolook2.gson.UserProfile;
import kotlin.Metadata;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.p186m.AbstractC6377c;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p081h.p160h.p179e.p180a.p188o.AbstractC6408e;
import p081h.p160h.p179e.p180a.p188o.C6400b;
import p081h.p160h.p179e.p180a.p188o.C6406d;
import p081h.p160h.p179e.p180a.p188o.EnumC6399a;
import p081h.p160h.p179e.p180a.p190p.C6429b;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.p590x4.C14289m;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
import p626l.p641z.p643d.C15163y;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0007J\b\u0010\u0010\u001a\u00020\u000fH\u0007J\b\u0010\u0011\u001a\u00020\u000fH\u0007J\u001a\u0010\u0012\u001a\u00020\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\b\u0010\u0017\u001a\u00020\u0018H\u0007J\b\u0010\u0019\u001a\u00020\u001aH\u0007J\b\u0010\u001b\u001a\u00020\u001cH\u0007J\b\u0010\u001d\u001a\u00020\u001aH\u0002J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u0004H\u0007J\b\u0010!\u001a\u00020\u0018H\u0007J\b\u0010\"\u001a\u00020\u0016H\u0007J\b\u0010#\u001a\u00020\u0016H\u0007J\u0012\u0010$\u001a\u00020\u00162\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\u001a\u0010%\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010&\u001a\u0004\u0018\u00010'H\u0007J\b\u0010(\u001a\u00020\u0016H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000b¨\u0006)"}, m815d2 = {"Lgogolook/callgogolook2/offline/offlinedb/PersonalDbManager;", "", "()V", "KEY_GGA", "", "KEY_GGA_CLUSTER", "KEY_GGA_TYPE", "KEY_GGA_VERSION", "mOfflineDb", "Lcom/gogolook/whoscallsdk/core/offlinedb/SdkOfflineDb;", "getMOfflineDb", "()Lcom/gogolook/whoscallsdk/core/offlinedb/SdkOfflineDb;", "mOfflineDb$delegate", "Lkotlin/Lazy;", "cancelDownload", "", AdType.CLEAR, "clearApiCache", "download", "callback", "Lcom/gogolook/whoscallsdk/core/net/WCFileProgressCallback;", "manually", "", "getCurrentVersion", "", "getDbInfo", "Lcom/gogolook/whoscallsdk/core/offlinedb/PersonalDbData;", "getDbInfoJson", "Lorg/json/JSONObject;", "getNextDbInfo", "getOfflineDbItem", "Lcom/gogolook/whoscallsdk/core/offlinedb/PersonalDb;", "hashedNum", "getTotalNumCount", "hasNewVersion", "isDownloaded", "isDownloading", "refreshStatus", "refreshCallback", "Lcom/gogolook/whoscallsdk/core/net/WCHttpCallback;", "shouldDownload", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.i0.a.l */
/* loaded from: classes3-dex2jar.jar:j/a/i0/a/l.class */
public final class C12436l {

    /* renamed from: a */
    public static final /* synthetic */ AbstractC14906i[] f28030a;

    /* renamed from: c */
    public static final C12436l f28032c = new C12436l();

    /* renamed from: b */
    public static final AbstractC14974f f28031b = C14975g.m662a(C12438b.f28037a);

    /* renamed from: j.a.i0.a.l$a */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/l$a.class */
    public static final class C12437a extends AbstractC6377c {

        /* renamed from: a */
        public final /* synthetic */ C15163y f28033a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC6377c f28034b;

        /* renamed from: c */
        public final /* synthetic */ int f28035c;

        /* renamed from: d */
        public final /* synthetic */ boolean f28036d;

        public C12437a(C15163y yVar, AbstractC6377c cVar, int i, boolean z) {
            this.f28033a = yVar;
            this.f28034b = cVar;
            this.f28035c = i;
            this.f28036d = z;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1446a() {
            AbstractC6377c cVar = this.f28034b;
            if (cVar != null) {
                cVar.mo1446a();
            }
            C14289m.m1908a(1, this.f28035c, this.f28036d, 3, -1, (String) null, System.currentTimeMillis() - this.f28033a.f33151a);
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1445a(int i) {
            AbstractC6377c cVar = this.f28034b;
            if (cVar != null) {
                cVar.mo1445a(i);
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1444a(C6429b bVar) {
            AbstractC6377c cVar = this.f28034b;
            if (cVar != null) {
                cVar.mo1444a(bVar);
            }
            C14289m.m1908a(1, this.f28035c, this.f28036d, 2, bVar != null ? bVar.m22647a() : -1, bVar != null ? bVar.m22646b() : null, System.currentTimeMillis() - this.f28033a.f33151a);
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: b */
        public void mo1443b() {
            AbstractC6377c cVar = this.f28034b;
            if (cVar != null) {
                cVar.mo1443b();
            }
            C14289m.m1908a(1, this.f28035c, this.f28036d, 1, -1, (String) null, System.currentTimeMillis() - this.f28033a.f33151a);
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: c */
        public void mo1442c() {
            this.f28033a.f33151a = System.currentTimeMillis();
            AbstractC6377c cVar = this.f28034b;
            if (cVar != null) {
                cVar.mo1442c();
            }
            C14289m.m1908a(1, this.f28035c, this.f28036d, 0, -1, (String) null, -1);
        }
    }

    /* renamed from: j.a.i0.a.l$b */
    /* loaded from: classes3-dex2jar.jar:j/a/i0/a/l$b.class */
    public static final class C12438b extends AbstractC15150l implements AbstractC15107a<AbstractC6408e> {

        /* renamed from: a */
        public static final C12438b f28037a = new C12438b();

        public C12438b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final AbstractC6408e invoke() {
            AbstractC6408e a = C6400b.f15927d.m22805a().m22809a(EnumC6399a.TYPE_DB_PERSONAL_OFFLINE);
            if (a != null) {
                return a;
            }
            C15149k.m378b();
            throw null;
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C12436l.class), "mOfflineDb", "getMOfflineDb()Lcom/gogolook/whoscallsdk/core/offlinedb/SdkOfflineDb;");
        C15131a0.m412a(sVar);
        f28030a = new AbstractC14906i[]{sVar};
    }

    /* renamed from: a */
    public static final PersonalDb m6175a(String str) {
        C15149k.m377b(str, "hashedNum");
        return (PersonalDb) f28032c.m6178a().mo22678a(str, PersonalDb.class);
    }

    /* renamed from: a */
    public static final void m6176a(AbstractC6377c cVar, boolean z) {
        int g = f28032c.m6173b().m22748g();
        C15163y yVar = new C15163y();
        yVar.f33151a = System.currentTimeMillis();
        AbstractC6408e a = f28032c.m6178a();
        String n = C14017g4.m2810n();
        C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
        a.mo22679a(n, C14063l4.m2690a(), new C12437a(yVar, cVar, g, z));
    }

    /* renamed from: a */
    public static final void m6174a(boolean z, AbstractC6378d dVar) {
        AbstractC6408e a = f28032c.m6178a();
        String n = C14017g4.m2810n();
        C15149k.m383a((Object) n, "UtilsInfo.getRegionCode()");
        a.mo22677a(n, z, C14063l4.m2690a(), dVar);
    }

    /* renamed from: a */
    public static final boolean m6177a(AbstractC6377c cVar) {
        return f28032c.m6178a().mo22690a(cVar);
    }

    /* renamed from: c */
    public static final void m6172c() {
        f28032c.m6178a().mo22692a();
    }

    /* renamed from: d */
    public static final void m6171d() {
        f28032c.m6178a().mo22676b();
    }

    /* renamed from: e */
    public static final int m6170e() {
        return m6169f().m22748g();
    }

    /* renamed from: f */
    public static final C6406d m6169f() {
        C6406d dVar = new C6406d();
        f28032c.m6178a().mo22681a((AbstractC6408e) dVar);
        return dVar;
    }

    /* renamed from: g */
    public static final JSONObject m6168g() {
        C6406d f = m6169f();
        JSONObject put = new JSONObject().put("type", f.m22756c()).put("ver", f.m22748g()).put(UserProfile.CARDCATE_KEY_CID, f.m22759b());
        C15149k.m383a((Object) put, "JSONObject()\n           …(KEY_GGA_CLUSTER, it.cid)");
        C15149k.m383a((Object) put, "getDbInfo().let {\n      …LUSTER, it.cid)\n        }");
        return put;
    }

    /* renamed from: h */
    public static final int m6167h() {
        return m6169f().m22753d();
    }

    /* renamed from: i */
    public static final boolean m6166i() {
        return f28032c.m6178a().mo22671e();
    }

    /* renamed from: j */
    public static final boolean m6165j() {
        return f28032c.m6178a().mo22670f();
    }

    /* renamed from: k */
    public static final boolean m6164k() {
        return !m6165j() || m6166i();
    }

    /* renamed from: a */
    public final AbstractC6408e m6178a() {
        AbstractC14974f fVar = f28031b;
        AbstractC14906i iVar = f28030a[0];
        return (AbstractC6408e) fVar.getValue();
    }

    /* renamed from: b */
    public final C6406d m6173b() {
        C6406d dVar = new C6406d();
        f28032c.m6178a().mo22674b((AbstractC6408e) dVar);
        return dVar;
    }
}
