package p131c.p161d.p282e.p315q.p328q0;

import android.text.TextUtils;
import com.google.android.gms.tasks.Task;
import com.google.firebase.inappmessaging.CommonTypesProto$TriggeringCondition;
import com.google.firebase.inappmessaging.MessagesProto$Content;
import com.google.firebase.inappmessaging.model.MessageType;
import com.google.internal.firebase.inappmessaging.p495v1.CampaignProto$ThickContent;
import p131c.p161d.p282e.p315q.p328q0.p332t3.AbstractC5814a;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5872m;
import p131c.p161d.p282e.p315q.p333r0.C5867k;
import p131c.p161d.p282e.p315q.p333r0.C5877o;
import p131c.p161d.p282e.p335s.AbstractC5898g;
import p131c.p161d.p362g.p363a.p364a.p365a.p366g.C6254b;
import p131c.p161d.p362g.p363a.p364a.p365a.p366g.C6267i;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9835j;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.AbstractC9850t;
import p530d.p541c.p542a0.AbstractC9644g;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p570z.AbstractC9864a;
import p611j.p612a.AbstractC10432b;
/* renamed from: c.d.e.q.q0.i2 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/i2.class */
public class C5678i2 {

    /* renamed from: a */
    public final AbstractC9864a<String> f18782a;

    /* renamed from: b */
    public final AbstractC9864a<String> f18783b;

    /* renamed from: c */
    public final C5686k f18784c;

    /* renamed from: d */
    public final AbstractC5814a f18785d;

    /* renamed from: e */
    public final C5650d f18786e;

    /* renamed from: f */
    public final C5705n3 f18787f;

    /* renamed from: g */
    public final C5825w0 f18788g;

    /* renamed from: h */
    public final C5695l3 f18789h;

    /* renamed from: i */
    public final AbstractC5872m f18790i;

    /* renamed from: j */
    public final C5644c f18791j;

    /* renamed from: k */
    public final C5729r3 f18792k;

    /* renamed from: l */
    public final C5639b f18793l;

    /* renamed from: m */
    public final AbstractC5898g f18794m;

    /* renamed from: n */
    public final C5701n f18795n;

    /* renamed from: c.d.e.q.q0.i2$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/i2$a.class */
    public static /* synthetic */ class C5679a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18796a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[MessagesProto$Content.MessageDetailsCase.values().length];
            f18796a = iArr;
            try {
                iArr[MessagesProto$Content.MessageDetailsCase.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18796a[MessagesProto$Content.MessageDetailsCase.IMAGE_ONLY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18796a[MessagesProto$Content.MessageDetailsCase.MODAL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18796a[MessagesProto$Content.MessageDetailsCase.CARD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public C5678i2(AbstractC9864a<String> aVar, AbstractC9864a<String> aVar2, C5686k kVar, AbstractC5814a aVar3, C5650d dVar, C5644c cVar, C5705n3 n3Var, C5825w0 w0Var, C5695l3 l3Var, AbstractC5872m mVar, C5729r3 r3Var, AbstractC5898g gVar, C5701n nVar, C5639b bVar) {
        this.f18782a = aVar;
        this.f18783b = aVar2;
        this.f18784c = kVar;
        this.f18785d = aVar3;
        this.f18786e = dVar;
        this.f18791j = cVar;
        this.f18787f = n3Var;
        this.f18788g = w0Var;
        this.f18789h = l3Var;
        this.f18790i = mVar;
        this.f18792k = r3Var;
        this.f18795n = nVar;
        this.f18794m = gVar;
        this.f18793l = bVar;
    }

    /* renamed from: a */
    public static /* synthetic */ CampaignProto$ThickContent m23274a(CampaignProto$ThickContent campaignProto$ThickContent, Boolean bool) throws Exception {
        return campaignProto$ThickContent;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC9833i m23287a(C5678i2 i2Var, CampaignProto$ThickContent campaignProto$ThickContent) throws Exception {
        return campaignProto$ThickContent.m7091y() ? AbstractC9833i.m1887b(campaignProto$ThickContent) : i2Var.f18788g.m22953a(campaignProto$ThickContent).m1848a(C5818u1.m22972a()).m1845a(AbstractC9850t.m1844a(false)).m1843b(C5822v1.m22965a(campaignProto$ThickContent)).m1846a(C5826w1.m22949a()).m1883d(C5830x1.m22943a(campaignProto$ThickContent));
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC9833i m23286a(C5678i2 i2Var, AbstractC9833i iVar, C6254b bVar) throws Exception {
        if (!i2Var.f18795n.m23187a()) {
            C5694l2.m23214c("Automatic data collection is disabled, not attempting campaign fetch from service.");
            return AbstractC9833i.m1887b(m23265b());
        }
        AbstractC9833i b = iVar.m1899a(C5698m1.m23191a()).m1883d(C5703n1.m23182a(i2Var, bVar)).m1889b((AbstractC9838m) AbstractC9833i.m1887b(m23265b())).m1891b(C5708o1.m23176a()).m1891b(C5713p1.m23170a(i2Var));
        C5644c cVar = i2Var.f18791j;
        cVar.getClass();
        AbstractC9833i b2 = b.m1891b(C5718q1.m23160a(cVar));
        C5729r3 r3Var = i2Var.f18792k;
        r3Var.getClass();
        return b2.m1891b(C5726r1.m23132a(r3Var)).m1903a(C5738s1.m23107a()).m1897a((AbstractC9838m) AbstractC9833i.m1880f());
    }

    /* renamed from: a */
    public static <T> AbstractC9833i<T> m23279a(Task<T> task) {
        return AbstractC9833i.m1898a(C5833y0.m22941a(task));
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC9833i m23276a(CampaignProto$ThickContent campaignProto$ThickContent) throws Exception {
        int i = C5679a.f18796a[campaignProto$ThickContent.m7094v().m7313y().ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            return AbstractC9833i.m1887b(campaignProto$ThickContent);
        }
        C5694l2.m23216a("Filtering non-displayable message");
        return AbstractC9833i.m1880f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static /* synthetic */ AbstractC10432b m23285a(C5678i2 i2Var, String str) throws Exception {
        AbstractC9833i<C6267i> a = i2Var.f18784c.m23235a().m1891b(C5641b1.m23350a()).m1903a(C5647c1.m23342a()).m1897a(AbstractC9833i.m1880f());
        AbstractC9644g a2 = C5652d1.m23333a(i2Var);
        AbstractC9645h<? super C6267i, ? extends AbstractC9838m<? extends R>> a3 = C5672h1.m23296a(i2Var, str, C5657e1.m23329a(i2Var), C5662f1.m23324a(i2Var, str), C5667g1.m23319a());
        AbstractC9833i<C6254b> a4 = i2Var.f18788g.m22952b().m1903a(C5683j1.m23239a()).m1894a((AbstractC9833i<C6254b>) C6254b.m21738y()).m1897a(AbstractC9833i.m1887b(C6254b.m21738y()));
        AbstractC9645h<? super C6254b, ? extends AbstractC9838m<? extends R>> a5 = C5693l1.m23217a(i2Var, AbstractC9833i.m1896a(m23279a(i2Var.f18794m.getId()), m23279a(i2Var.f18794m.mo22783a(false)), C5688k1.m23225a()).m1895a(i2Var.f18787f.m23180a()));
        if (i2Var.m23269a(str)) {
            C5694l2.m23214c(String.format("Forcing fetch from service rather than cache. Test Device: %s | App Fresh Install: %s", Boolean.valueOf(i2Var.f18792k.m23127b()), Boolean.valueOf(i2Var.f18792k.m23130a())));
            return a4.m1901a(a5).m1901a((AbstractC9645h<? super R, ? extends AbstractC9838m<? extends R>>) a3).m1884d();
        }
        C5694l2.m23216a("Attempting to fetch campaigns using cache");
        return a.m1889b(a4.m1901a(a5).m1891b(a2)).m1901a(a3).m1884d();
    }

    /* renamed from: a */
    public static /* synthetic */ void m23278a(Task task, AbstractC9835j jVar) throws Exception {
        task.mo8613a(C5838z0.m22923a(jVar));
        task.mo8614a(C5634a1.m23365a(jVar));
    }

    /* renamed from: a */
    public static /* synthetic */ void m23272a(AbstractC9835j jVar, Exception exc) {
        jVar.onError(exc);
        jVar.onComplete();
    }

    /* renamed from: a */
    public static /* synthetic */ void m23271a(AbstractC9835j jVar, Object obj) {
        jVar.onSuccess(obj);
        jVar.onComplete();
    }

    /* renamed from: a */
    public static boolean m23281a(AbstractC5814a aVar, CampaignProto$ThickContent campaignProto$ThickContent) {
        boolean z;
        long j;
        long j2;
        if (campaignProto$ThickContent.m7090z().equals(CampaignProto$ThickContent.PayloadCase.VANILLA_PAYLOAD)) {
            j2 = campaignProto$ThickContent.m7097D().m21756y();
            j = campaignProto$ThickContent.m7097D().m21759v();
        } else {
            z = false;
            if (campaignProto$ThickContent.m7090z().equals(CampaignProto$ThickContent.PayloadCase.EXPERIMENTAL_PAYLOAD)) {
                j2 = campaignProto$ThickContent.m7092x().m21762y();
                j = campaignProto$ThickContent.m7092x().m21765v();
            }
            return z;
        }
        long a = aVar.mo22976a();
        z = false;
        if (a > j2) {
            z = false;
            if (a < j) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m23277a(CommonTypesProto$TriggeringCondition commonTypesProto$TriggeringCondition, String str) {
        return commonTypesProto$TriggeringCondition.m7333v().m23684v().equals(str);
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m23270a(Boolean bool) throws Exception {
        return !bool.booleanValue();
    }

    /* renamed from: b */
    public static int m23258b(CampaignProto$ThickContent campaignProto$ThickContent, CampaignProto$ThickContent campaignProto$ThickContent2) {
        if (campaignProto$ThickContent.m7091y() && !campaignProto$ThickContent2.m7091y()) {
            return -1;
        }
        if (!campaignProto$ThickContent2.m7091y() || campaignProto$ThickContent.m7091y()) {
            return Integer.compare(campaignProto$ThickContent.m7099A().m23664v(), campaignProto$ThickContent2.m7099A().m23664v());
        }
        return 1;
    }

    /* renamed from: b */
    public static C6267i m23265b() {
        C6267i.C6269b z = C6267i.m21701z();
        z.m21700a(1L);
        return z.mo6937a();
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m23263b(C5678i2 i2Var, CampaignProto$ThickContent campaignProto$ThickContent) throws Exception {
        return i2Var.f18792k.m23127b() || m23281a(i2Var.f18785d, campaignProto$ThickContent);
    }

    /* renamed from: b */
    public static boolean m23261b(AbstractC5689k2 k2Var) {
        return !TextUtils.isEmpty(k2Var.mo23224a()) && !TextUtils.isEmpty(k2Var.mo23222b().mo22781a());
    }

    /* renamed from: b */
    public static boolean m23259b(CommonTypesProto$TriggeringCondition commonTypesProto$TriggeringCondition, String str) {
        return commonTypesProto$TriggeringCondition.m7332w().toString().equals(str);
    }

    /* renamed from: b */
    public static boolean m23255b(String str) {
        return str.equals("ON_FOREGROUND");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m23254b(java.lang.String r6, com.google.internal.firebase.inappmessaging.p495v1.CampaignProto$ThickContent r7) {
        /*
            r0 = r6
            boolean r0 = m23255b(r0)
            if (r0 == 0) goto L_0x0010
            r0 = r7
            boolean r0 = r0.m7091y()
            if (r0 == 0) goto L_0x0010
            r0 = 1
            return r0
        L_0x0010:
            r0 = r7
            java.util.List r0 = r0.m7098C()
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L_0x001a:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0050
            r0 = r7
            java.lang.Object r0 = r0.next()
            com.google.firebase.inappmessaging.CommonTypesProto$TriggeringCondition r0 = (com.google.firebase.inappmessaging.CommonTypesProto$TriggeringCondition) r0
            r8 = r0
            r0 = r8
            r1 = r6
            boolean r0 = m23259b(r0, r1)
            if (r0 != 0) goto L_0x003d
            r0 = r8
            r1 = r6
            boolean r0 = m23277a(r0, r1)
            if (r0 == 0) goto L_0x001a
        L_0x003d:
            java.lang.String r0 = "The event %s is contained in the list of triggers"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            r4 = r6
            r2[r3] = r4
            java.lang.String r0 = java.lang.String.format(r0, r1)
            p131c.p161d.p282e.p315q.p328q0.C5694l2.m23216a(r0)
            r0 = 1
            return r0
        L_0x0050:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p282e.p315q.p328q0.C5678i2.m23254b(java.lang.String, com.google.internal.firebase.inappmessaging.v1.CampaignProto$ThickContent):boolean");
    }

    /* renamed from: c */
    public static /* synthetic */ CampaignProto$ThickContent m23251c(CampaignProto$ThickContent campaignProto$ThickContent, Boolean bool) throws Exception {
        return campaignProto$ThickContent;
    }

    /* renamed from: c */
    public static /* synthetic */ boolean m23250c(Boolean bool) throws Exception {
        return !bool.booleanValue();
    }

    /* renamed from: d */
    public static void m23246d(CampaignProto$ThickContent campaignProto$ThickContent, Boolean bool) {
        if (campaignProto$ThickContent.m7090z().equals(CampaignProto$ThickContent.PayloadCase.VANILLA_PAYLOAD)) {
            C5694l2.m23214c(String.format("Already impressed campaign %s ? : %s", campaignProto$ThickContent.m7097D().m21757x(), bool));
        } else if (campaignProto$ThickContent.m7090z().equals(CampaignProto$ThickContent.PayloadCase.EXPERIMENTAL_PAYLOAD)) {
            C5694l2.m23214c(String.format("Already impressed experiment %s ? : %s", campaignProto$ThickContent.m7092x().m21763x(), bool));
        }
    }

    /* renamed from: a */
    public AbstractC9814e<C5877o> m23290a() {
        return AbstractC9814e.m1962a(this.f18782a, this.f18791j.m23348a(), this.f18783b).m1974a(C5677i1.m23291a()).m1964a(this.f18787f.m23180a()).m1971a(C5812t1.m22978a(this)).m1964a(this.f18787f.m23179b());
    }

    /* renamed from: a */
    public final AbstractC9833i<C5877o> m23273a(CampaignProto$ThickContent campaignProto$ThickContent, String str) {
        String str2;
        String str3;
        if (campaignProto$ThickContent.m7090z().equals(CampaignProto$ThickContent.PayloadCase.VANILLA_PAYLOAD)) {
            str3 = campaignProto$ThickContent.m7097D().m21758w();
            str2 = campaignProto$ThickContent.m7097D().m21757x();
        } else if (!campaignProto$ThickContent.m7090z().equals(CampaignProto$ThickContent.PayloadCase.EXPERIMENTAL_PAYLOAD)) {
            return AbstractC9833i.m1880f();
        } else {
            String w = campaignProto$ThickContent.m7092x().m21764w();
            String x = campaignProto$ThickContent.m7092x().m21763x();
            str3 = w;
            str2 = x;
            if (!campaignProto$ThickContent.m7091y()) {
                this.f18793l.m23352a(campaignProto$ThickContent.m7092x().m21761z());
                str2 = x;
                str3 = w;
            }
        }
        AbstractC5863i a = C5867k.m22842a(campaignProto$ThickContent.m7094v(), str3, str2, campaignProto$ThickContent.m7091y(), campaignProto$ThickContent.m7093w());
        return a.m22862c().equals(MessageType.UNSUPPORTED) ? AbstractC9833i.m1880f() : AbstractC9833i.m1887b(new C5877o(a, str));
    }

    /* renamed from: a */
    public final AbstractC9833i<CampaignProto$ThickContent> m23268a(String str, CampaignProto$ThickContent campaignProto$ThickContent) {
        return (campaignProto$ThickContent.m7091y() || !m23255b(str)) ? AbstractC9833i.m1887b(campaignProto$ThickContent) : this.f18789h.m23198b(this.f18790i).m1843b(C5642b2.m23349a()).m1845a(AbstractC9850t.m1844a(false)).m1846a(C5648c2.m23341a()).m1883d(C5653d2.m23332a(campaignProto$ThickContent));
    }

    /* renamed from: a */
    public final AbstractC9833i<C5877o> m23267a(String str, AbstractC9645h<CampaignProto$ThickContent, AbstractC9833i<CampaignProto$ThickContent>> hVar, AbstractC9645h<CampaignProto$ThickContent, AbstractC9833i<CampaignProto$ThickContent>> hVar2, AbstractC9645h<CampaignProto$ThickContent, AbstractC9833i<CampaignProto$ThickContent>> hVar3, C6267i iVar) {
        return AbstractC9814e.m1961a((Iterable) iVar.m21704w()).m1967a(C5658e2.m23328a(this)).m1967a(C5663f2.m23323a(str)).m1951c(hVar).m1951c(hVar2).m1951c(hVar3).m1959a(C5668g2.m23318a()).m1978a().m1901a(C5673h2.m23295a(this, str));
    }

    /* renamed from: a */
    public final boolean m23269a(String str) {
        return this.f18792k.m23130a() ? m23255b(str) : this.f18792k.m23127b();
    }
}
