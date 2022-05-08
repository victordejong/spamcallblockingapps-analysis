package p081h.p160h.p161a;

import android.content.Context;
import android.util.ArrayMap;
import androidx.annotation.MainThread;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.Networking;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import p081h.p160h.p161a.C6187d;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p163i.C6214a;
import p081h.p160h.p161a.p165k.C6219a;
import p081h.p160h.p161a.p166l.AbstractC6252c;
import p081h.p160h.p161a.p166l.C6246a;
import p081h.p160h.p161a.p166l.C6250b;
import p081h.p160h.p161a.p166l.C6254d;
import p081h.p160h.p161a.p167m.AbstractC6257a;
import p081h.p160h.p161a.p167m.AbstractC6258b;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
import p081h.p160h.p161a.p170p.C6268a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14976h;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010#\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000f*\u0002\u0013\u001d\u0018�� D2\u00020\u0001:\u0001DB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u00101\u001a\u00020\u00152\u0006\u00102\u001a\u00020\u0007H\u0002J\u0010\u00103\u001a\u0002042\u0006\u00105\u001a\u000206H\u0002J\u0012\u00107\u001a\u0002042\b\u00108\u001a\u0004\u0018\u00010\u0007H\u0002J\u0010\u00109\u001a\u0002042\u0006\u00102\u001a\u00020\u0007H\u0002J\b\u0010:\u001a\u000204H\u0002J\u0016\u0010;\u001a\u00020��2\u0006\u00102\u001a\u00020\u00072\u0006\u0010<\u001a\u00020\u0015J\u000e\u0010=\u001a\u00020��2\u0006\u0010>\u001a\u00020\u0015J\u0010\u0010?\u001a\u00020��2\b\u0010@\u001a\u0004\u0018\u00010\"J\u0012\u0010A\u001a\u0002042\b\u0010B\u001a\u0004\u0018\u00010)H\u0007J\u0006\u0010C\u001a\u000204R'\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R(\u0010\u000e\u001a\u0004\u0018\u00010\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u0003@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0004R\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0014R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u0015@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R$\u0010\u001a\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u0015@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019R\u0010\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001eR\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n��R!\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00070$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\f\u001a\u0004\b%\u0010&R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010*\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n��R$\u0010,\u001a\u00020+2\u0006\u0010\r\u001a\u00020+@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b-\u0010.\"\u0004\b/\u00100¨\u0006E"}, m815d2 = {"Lcom/gogolook/adsdk/WCAdManager;", "", "adUnitName", "", "(Ljava/lang/String;)V", "adFetchLogMap", "", "Lcom/gogolook/adsdk/Definition$AdSource;", "Lcom/gogolook/adsdk/logs/AdFetchLog;", "getAdFetchLogMap", "()Ljava/util/Map;", "adFetchLogMap$delegate", "Lkotlin/Lazy;", "<set-?>", "fetchErrorMessage", "getFetchErrorMessage", "()Ljava/lang/String;", "setFetchErrorMessage", "internalSdkInitializationListener", "com/gogolook/adsdk/WCAdManager$internalSdkInitializationListener$1", "Lcom/gogolook/adsdk/WCAdManager$internalSdkInitializationListener$1;", "", "isAdRequesting", "()Z", "setAdRequesting", "(Z)V", "isWaitingMoPubSdkInit", "setWaitingMoPubSdkInit", "mAdFetchStatusListener", "com/gogolook/adsdk/WCAdManager$mAdFetchStatusListener$1", "Lcom/gogolook/adsdk/WCAdManager$mAdFetchStatusListener$1;", "mAdFetcher", "Lcom/gogolook/adsdk/fetcher/BaseAdFetcher;", "mAdRequestStatusListener", "Lcom/gogolook/adsdk/listener/AdRequestStatusListener;", "mAdSourceNeedRequestParamList", "", "getMAdSourceNeedRequestParamList", "()Ljava/util/Set;", "mAdSourceNeedRequestParamList$delegate", "mContext", "Landroid/content/Context;", "mIsUsingDebugAdUnit", "", "moPubSdkInitDuration", "getMoPubSdkInitDuration", "()J", "setMoPubSdkInitDuration", "(J)V", "getIfAdSourceNeedRequest", "adSource", "notifyAdRequestStatus", "", "requestState", "Lcom/gogolook/adsdk/Definition$RequestState;", "requestNext", "currentRequestAdSource", "requestSource", "resetStatusForMoPubSdkInit", "setAdSourceNeedRequest", "isNeedRequest", "setIsUsingDebugAdUnit", "isUsingDebugAdUnit", "setRequestStatusListener", "adRequestStatusListener", "startRequest", "context", "stopRequest", "Companion", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.e */
/* loaded from: classes2-dex2jar.jar:h/h/a/e.class */
public final class C6192e {

    /* renamed from: n */
    public static final /* synthetic */ AbstractC14906i[] f15371n;

    /* renamed from: a */
    public final AbstractC14974f f15374a;

    /* renamed from: b */
    public AbstractC6252c f15375b;

    /* renamed from: c */
    public AbstractC6258b f15376c;

    /* renamed from: d */
    public Context f15377d;

    /* renamed from: e */
    public boolean f15378e;

    /* renamed from: f */
    public boolean f15379f;

    /* renamed from: g */
    public boolean f15380g;

    /* renamed from: h */
    public String f15381h;

    /* renamed from: i */
    public final AbstractC14974f f15382i;

    /* renamed from: j */
    public long f15383j;

    /* renamed from: k */
    public final C6195c f15384k;

    /* renamed from: l */
    public final C6196d f15385l;

    /* renamed from: m */
    public final String f15386m;

    /* renamed from: p */
    public static final C6193a f15373p = new C6193a(null);

    /* renamed from: o */
    public static volatile ArrayMap<String, C6192e> f15372o = new ArrayMap<>();

    /* renamed from: h.h.a.e$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/e$a.class */
    public static final class C6193a {
        public C6193a() {
        }

        public /* synthetic */ C6193a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C6192e m23592a(String str) {
            C6192e eVar;
            C15149k.m377b(str, "adUnitName");
            synchronized (C6192e.f15372o) {
                C6192e eVar2 = (C6192e) C6192e.f15372o.get(str);
                if (eVar2 != null) {
                    eVar = eVar2;
                } else {
                    C6192e eVar3 = new C6192e(str, null);
                    C6192e.f15372o.put(str, eVar3);
                    eVar = eVar3;
                }
            }
            return eVar;
        }
    }

    /* renamed from: h.h.a.e$b */
    /* loaded from: classes2-dex2jar.jar:h/h/a/e$b.class */
    public static final class C6194b extends AbstractC15150l implements AbstractC15107a<Map<EnumC6184a, C6260a>> {

        /* renamed from: a */
        public static final C6194b f15387a = new C6194b();

        public C6194b() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Map<EnumC6184a, C6260a> invoke() {
            return new LinkedHashMap();
        }
    }

    /* renamed from: h.h.a.e$c */
    /* loaded from: classes2-dex2jar.jar:h/h/a/e$c.class */
    public static final class C6195c implements C6187d.AbstractC6189b {
        public C6195c() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
            if (r5 != null) goto L_0x001d;
         */
        @Override // p081h.p160h.p161a.C6187d.AbstractC6189b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo23586a(p081h.p160h.p161a.p169o.C6262a.EnumC6266d r5, long r6) {
            /*
                r4 = this;
                r0 = r4
                h.h.a.e r0 = p081h.p160h.p161a.C6192e.this
                r8 = r0
                r0 = r5
                if (r0 == 0) goto L_0x0016
                r0 = r5
                java.lang.String r0 = r0.m23447a()
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x0016
                goto L_0x001d
            L_0x0016:
                h.h.a.o.a$e r0 = p081h.p160h.p161a.p169o.C6262a.EnumC6267e.AD_MOPUB_SDK_INIT_SUCCEEDED
                java.lang.String r0 = r0.m23446a()
                r5 = r0
            L_0x001d:
                r0 = r8
                r1 = r5
                p081h.p160h.p161a.C6192e.m23610a(r0, r1)
                r0 = r4
                h.h.a.e r0 = p081h.p160h.p161a.C6192e.this
                r1 = r6
                p081h.p160h.p161a.C6192e.m23614a(r0, r1)
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r5 = r0
                r0 = r5
                java.lang.String r1 = "[onInitializationFinished] AdUnit: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r4
                h.h.a.e r1 = p081h.p160h.p161a.C6192e.this
                java.lang.String r1 = p081h.p160h.p161a.C6192e.m23615a(r1)
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                java.lang.String r1 = ", MoPub SDK init status: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r4
                h.h.a.e r1 = p081h.p160h.p161a.C6192e.this
                java.lang.String r1 = r1.m23605b()
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                java.lang.String r1 = ", MoPub SDK init duration: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                java.lang.String r0 = r0.toString()
                r0 = r4
                h.h.a.e r0 = p081h.p160h.p161a.C6192e.this
                java.lang.String r0 = p081h.p160h.p161a.C6192e.m23615a(r0)
                r5 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r1.<init>()
                r8 = r0
                r0 = r8
                r1 = r4
                h.h.a.e r1 = p081h.p160h.p161a.C6192e.this
                java.lang.String r1 = r1.m23605b()
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                java.lang.String r1 = " [Duration] : "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = "WCAdManage"
                r1 = r5
                r2 = r8
                java.lang.String r2 = r2.toString()
                p081h.p160h.p161a.p165k.C6219a.m23541b(r0, r1, r2)
                r0 = r4
                h.h.a.e r0 = p081h.p160h.p161a.C6192e.this
                boolean r0 = r0.m23596f()
                if (r0 == 0) goto L_0x00b5
                r0 = r4
                h.h.a.e r0 = p081h.p160h.p161a.C6192e.this
                r1 = 0
                p081h.p160h.p161a.C6192e.m23613a(r0, r1)
            L_0x00b5:
                r0 = r4
                h.h.a.e r0 = p081h.p160h.p161a.C6192e.this
                r1 = 0
                p081h.p160h.p161a.C6192e.m23609a(r0, r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p160h.p161a.C6192e.C6195c.mo23586a(h.h.a.o.a$d, long):void");
        }
    }

    /* renamed from: h.h.a.e$d */
    /* loaded from: classes2-dex2jar.jar:h/h/a/e$d.class */
    public static final class C6196d implements AbstractC6257a {
        public C6196d() {
        }

        @Override // p081h.p160h.p161a.p167m.AbstractC6257a
        /* renamed from: a */
        public void mo23476a(EnumC6184a aVar) {
            C15149k.m377b(aVar, "adSource");
            C6219a.m23547a("WCAdManage", C6192e.this.f15386m, C6192e.this.f15378e, aVar, EnumC6185b.FETCH_START, null, 32, null);
        }

        @Override // p081h.p160h.p161a.p167m.AbstractC6257a
        /* renamed from: a */
        public void mo23475a(EnumC6184a aVar, AbstractC6207d dVar) {
            C15149k.m377b(aVar, "adSource");
            C6219a.m23547a("WCAdManage", C6192e.this.f15386m, C6192e.this.f15378e, aVar, EnumC6185b.FETCH_SUCCESS, null, 32, null);
            if (!(aVar == EnumC6184a.BANNER && C6192e.this.f15377d == null)) {
                C6214a.m23565a(C6192e.this.f15386m, dVar);
            }
            AbstractC6252c cVar = C6192e.this.f15375b;
            if (cVar != null) {
                cVar.m23481h();
            }
            C6192e.this.f15375b = null;
            C6192e.this.m23616a(EnumC6186c.REQUEST_END);
        }

        @Override // p081h.p160h.p161a.p167m.AbstractC6257a
        /* renamed from: a */
        public void mo23474a(EnumC6184a aVar, String str) {
            C15149k.m377b(aVar, "adSource");
            C6219a.m23548a("WCAdManage", C6192e.this.f15386m, C6192e.this.f15378e, aVar, EnumC6185b.FETCH_FAIL, str);
            C6192e.this.f15381h = str;
            AbstractC6252c cVar = C6192e.this.f15375b;
            if (cVar != null) {
                cVar.m23481h();
            }
            C6192e.this.f15375b = null;
            C6192e.this.m23604b(aVar);
        }

        @Override // p081h.p160h.p161a.p167m.AbstractC6257a
        /* renamed from: b */
        public void mo23473b(EnumC6184a aVar) {
            C15149k.m377b(aVar, "adSource");
            C6219a.m23547a("WCAdManage", C6192e.this.f15386m, C6192e.this.f15378e, aVar, EnumC6185b.FETCH_SKIP, null, 32, null);
            AbstractC6252c cVar = C6192e.this.f15375b;
            if (cVar != null) {
                cVar.m23481h();
            }
            C6192e.this.f15375b = null;
            C6192e.this.m23604b(aVar);
        }
    }

    /* renamed from: h.h.a.e$e */
    /* loaded from: classes2-dex2jar.jar:h/h/a/e$e.class */
    public static final class C6197e extends AbstractC15150l implements AbstractC15107a<HashSet<EnumC6184a>> {

        /* renamed from: a */
        public static final C6197e f15390a = new C6197e();

        public C6197e() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final HashSet<EnumC6184a> invoke() {
            return new HashSet<>();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C6192e.class), "mAdSourceNeedRequestParamList", "getMAdSourceNeedRequestParamList()Ljava/util/Set;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C6192e.class), "adFetchLogMap", "getAdFetchLogMap()Ljava/util/Map;");
        C15131a0.m412a(sVar2);
        f15371n = new AbstractC14906i[]{sVar, sVar2};
    }

    public C6192e(String str) {
        this.f15386m = str;
        this.f15374a = C14975g.m662a(C6197e.f15390a);
        this.f15382i = C14975g.m662a(C6194b.f15387a);
        this.f15383j = -1L;
        this.f15384k = new C6195c();
        this.f15385l = new C6196d();
    }

    public /* synthetic */ C6192e(String str, C15145g gVar) {
        this(str);
    }

    /* renamed from: a */
    public static final C6192e m23607a(String str) {
        return f15373p.m23592a(str);
    }

    /* renamed from: a */
    public final C6192e m23617a(EnumC6184a aVar, boolean z) {
        C15149k.m377b(aVar, "adSource");
        if (z) {
            m23602c().add(aVar);
        } else if (m23602c().contains(aVar)) {
            m23602c().remove(aVar);
        }
        return this;
    }

    /* renamed from: a */
    public final C6192e m23608a(AbstractC6258b bVar) {
        this.f15376c = bVar;
        return this;
    }

    /* renamed from: a */
    public final C6192e m23606a(boolean z) {
        this.f15378e = z;
        return this;
    }

    /* renamed from: a */
    public final Map<EnumC6184a, C6260a> m23620a() {
        AbstractC14974f fVar = this.f15382i;
        AbstractC14906i iVar = f15371n[1];
        return (Map) fVar.getValue();
    }

    @MainThread
    /* renamed from: a */
    public final void m23619a(Context context) {
        if (!this.f15380g && !this.f15379f) {
            this.f15377d = context;
            m23620a().clear();
            m23616a(EnumC6186c.REQUEST_START);
            if (!C6268a.m23445a()) {
                this.f15381h = C6262a.EnumC6266d.ERROR_NO_NEED_REQUEST.m23447a();
                m23594h();
                return;
            }
            Networking.useHttps(true);
            MoPubLog.setLogLevel(C6219a.m23538e() ? MoPubLog.LogLevel.DEBUG : MoPubLog.LogLevel.INFO);
            MoPub.setLocationAwareness(MoPub.LocationAwareness.DISABLED);
            if (C6187d.f15364g.m23621b()) {
                this.f15381h = C6262a.EnumC6267e.AD_MOPUB_SDK_INIT_SUCCEEDED.m23446a();
                String str = this.f15386m;
                C6219a.m23541b("WCAdManage", str, this.f15381h + " [Duration] : -1L");
                m23604b((EnumC6184a) null);
                return;
            }
            Context context2 = this.f15377d;
            if (context2 != null) {
                this.f15379f = true;
                this.f15381h = C6262a.EnumC6267e.AD_MOPUB_SDK_INITIALIZING.m23446a();
                C6187d.f15364g.m23622a().m23630a(this.f15384k);
                C6187d.f15364g.m23622a().m23631a(context2);
                return;
            }
            this.f15381h = C6262a.EnumC6266d.ERROR_CONTEXT_INVALID.m23447a();
            m23594h();
        }
    }

    /* renamed from: a */
    public final void m23616a(EnumC6186c cVar) {
        C6219a.m23545a("WCAdManage", this.f15386m, this.f15378e, cVar, null, 16, null);
        this.f15380g = cVar == EnumC6186c.REQUEST_START;
        AbstractC6258b bVar = this.f15376c;
        if (bVar != null) {
            int i = C6198f.f15393c[cVar.ordinal()];
            if (i == 1) {
                bVar.mo5003b(this.f15386m);
            } else if (i == 2) {
                bVar.mo5004a(this.f15386m);
            }
        }
    }

    /* renamed from: a */
    public final boolean m23618a(EnumC6184a aVar) {
        return m23602c().contains(aVar);
    }

    /* renamed from: b */
    public final String m23605b() {
        return this.f15381h;
    }

    /* renamed from: b */
    public final void m23604b(EnumC6184a aVar) {
        if (aVar != null) {
            int i = C6198f.f15391a[aVar.ordinal()];
            if (i == 1) {
                m23601c(EnumC6184a.NATIVE);
                return;
            } else if (i == 2) {
                m23601c(EnumC6184a.BANNER);
                return;
            } else if (i == 3) {
                m23616a(EnumC6186c.REQUEST_END);
                return;
            }
        }
        m23601c(EnumC6184a.AOTTER_TREK);
    }

    /* renamed from: c */
    public final Set<EnumC6184a> m23602c() {
        AbstractC14974f fVar = this.f15374a;
        AbstractC14906i iVar = f15371n[0];
        return (Set) fVar.getValue();
    }

    /* renamed from: c */
    public final void m23601c(EnumC6184a aVar) {
        AbstractC6252c cVar;
        int i = C6198f.f15392b[aVar.ordinal()];
        if (i == 1) {
            cVar = new C6246a(this.f15377d, this.f15386m);
        } else if (i == 2) {
            cVar = new C6254d(this.f15377d, this.f15386m);
        } else if (i == 3) {
            cVar = new C6250b(this.f15377d, this.f15386m);
        } else {
            throw new C14976h();
        }
        this.f15375b = cVar;
        AbstractC6252c cVar2 = this.f15375b;
        if (cVar2 != null) {
            cVar2.m23491a(this.f15385l);
            cVar2.m23488a(this.f15378e);
            if (!m23618a(aVar)) {
                cVar2.m23483f();
                return;
            }
            C6260a aVar2 = new C6260a(cVar2.m23487b(), cVar2.m23485d());
            m23620a().put(aVar, aVar2);
            cVar2.m23490a(aVar2);
            cVar2.m23482g();
            cVar2.m23480i();
            return;
        }
        m23616a(EnumC6186c.REQUEST_END);
    }

    /* renamed from: d */
    public final long m23599d() {
        return this.f15383j;
    }

    /* renamed from: e */
    public final boolean m23597e() {
        return this.f15380g;
    }

    /* renamed from: f */
    public final boolean m23596f() {
        return this.f15379f;
    }

    /* renamed from: g */
    public final void m23595g() {
        C6187d.f15364g.m23622a().m23625b(this.f15384k);
        this.f15379f = false;
        this.f15383j = -1L;
    }

    /* renamed from: h */
    public final void m23594h() {
        this.f15377d = null;
        this.f15376c = null;
        AbstractC6252c cVar = this.f15375b;
        if (cVar != null) {
            cVar.mo23479j();
        }
        this.f15375b = null;
        m23595g();
        m23616a(EnumC6186c.REQUEST_STOP);
    }
}
