package p193e.p194a.p437c.p606w.p607o0;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.pdo.ParsedDataObject;
import e.m.e.k;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p523a0.AbstractC9678z;
import p193e.p194a.p437c.p523a0.C9615b0;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10011a;
import p193e.p194a.p437c.p531c0.C10019f;
import p193e.p194a.p437c.p552i.p554b.AbstractC10276a;
import p193e.p194a.p437c.p580r.p587h.AbstractC10542b;
import p193e.p194a.p437c.p580r.p587h.C10552g;
import p193e.p194a.p437c.p580r.p589j.C10611l;
import p193e.p194a.p437c.p580r.p589j.C10638v;
import p193e.p194a.p437c.p580r.p589j.C10639w;
import p193e.p194a.p437c.p580r.p589j.C10640x;
import p193e.p194a.p437c.p580r.p589j.C10641y;
import s1.f0.r;
import s1.u.i;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.w.o0.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/c.class */
public final class C10811c implements AbstractC10810b {

    /* renamed from: a */
    public final k f32093a = new k();

    /* renamed from: b */
    public final C10019f<List<C9615b0>> f32094b = new C10019f<>();

    /* renamed from: c */
    public final C10019f<Map<String, List<C10611l>>> f32095c = new C10019f<>();

    /* renamed from: d */
    public final C10019f<ArrayList<String>> f32096d = new C10019f<>();

    /* renamed from: e */
    public final Map<String, List<C10611l>> f32097e;

    /* renamed from: f */
    public final C10641y f32098f;

    /* renamed from: g */
    public final C10640x f32099g;

    /* renamed from: h */
    public final AbstractC10011a f32100h;

    /* renamed from: i */
    public final AbstractC10276a f32101i;

    /* renamed from: j */
    public final AbstractC10542b f32102j;

    /* renamed from: k */
    public final AbstractC9691j f32103k;

    /* renamed from: l */
    public final AbstractC9678z f32104l;

    /* renamed from: m */
    public final AbstractC9686e f32105m;

    @e(c = "com.truecaller.insights.repository.filters.SenderFilterManagerImpl", f = "SenderFilterManager.kt", l = {265, 266}, m = "fetchSenderInfoAndUpdateCache")
    /* renamed from: e.a.c.w.o0.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/c$a.class */
    public static final class C10812a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32106d;

        /* renamed from: e */
        public int f32107e;

        /* renamed from: g */
        public Object f32109g;

        /* renamed from: h */
        public Object f32110h;

        /* renamed from: i */
        public Object f32111i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10812a(d dVar) {
            super(dVar);
            C10811c.this = r4;
        }

        /* renamed from: s */
        public final Object m25593s(Object obj) {
            this.f32106d = obj;
            this.f32107e |= Integer.MIN_VALUE;
            return C10811c.this.m25596j(null, this);
        }
    }

    @e(c = "com.truecaller.insights.repository.filters.SenderFilterManagerImpl", f = "SenderFilterManager.kt", l = {262}, m = "getSenderInfoList")
    /* renamed from: e.a.c.w.o0.c$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/c$b.class */
    public static final class C10813b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32112d;

        /* renamed from: e */
        public int f32113e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10813b(d dVar) {
            super(dVar);
            C10811c.this = r4;
        }

        /* renamed from: s */
        public final Object m25592s(Object obj) {
            this.f32112d = obj;
            this.f32113e |= Integer.MIN_VALUE;
            return C10811c.this.m25594l(null, this);
        }
    }

    @e(c = "com.truecaller.insights.repository.filters.SenderFilterManagerImpl", f = "SenderFilterManager.kt", l = {172}, m = "getUserPreferenceForSender")
    /* renamed from: e.a.c.w.o0.c$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/c$c.class */
    public static final class C10814c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32115d;

        /* renamed from: e */
        public int f32116e;

        /* renamed from: g */
        public Object f32118g;

        /* renamed from: h */
        public Object f32119h;

        /* renamed from: i */
        public Object f32120i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10814c(d dVar) {
            super(dVar);
            C10811c.this = r4;
        }

        /* renamed from: s */
        public final Object m25591s(Object obj) {
            this.f32115d = obj;
            this.f32116e |= Integer.MIN_VALUE;
            return C10811c.this.mo25599g(null, null, null, this);
        }
    }

    @e(c = "com.truecaller.insights.repository.filters.SenderFilterManagerImpl", f = "SenderFilterManager.kt", l = {270}, m = "isGrmAllowedForSender")
    /* renamed from: e.a.c.w.o0.c$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/c$d.class */
    public static final class C10815d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32121d;

        /* renamed from: e */
        public int f32122e;

        /* renamed from: g */
        public Object f32124g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10815d(d dVar) {
            super(dVar);
            C10811c.this = r4;
        }

        /* renamed from: s */
        public final Object m25590s(Object obj) {
            this.f32121d = obj;
            this.f32122e |= Integer.MIN_VALUE;
            return C10811c.this.mo25603c(null, null, this);
        }
    }

    @e(c = "com.truecaller.insights.repository.filters.SenderFilterManagerImpl", f = "SenderFilterManager.kt", l = {258}, m = "isSenderBlacklistedForAllGrm")
    /* renamed from: e.a.c.w.o0.c$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/c$e.class */
    public static final class C10816e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32125d;

        /* renamed from: e */
        public int f32126e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10816e(d dVar) {
            super(dVar);
            C10811c.this = r4;
        }

        /* renamed from: s */
        public final Object m25589s(Object obj) {
            this.f32125d = obj;
            this.f32126e |= Integer.MIN_VALUE;
            return C10811c.this.mo25604b(null, this);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(43:2|118|3|4|116|5|14|(4:17|(2:19|123)(1:124)|20|15)|122|21|114|22|23|24|27|112|28|29|30|33|(4:35|(1:40)(1:39)|41|(5:43|63|(4:66|(4:127|70|(6:73|(7:75|(1:77)|78|(1:80)|81|(1:83)(1:84)|85)|86|(10:89|(1:91)|92|(1:97)(1:96)|98|(1:100)(2:101|(1:103))|104|(1:134)(2:106|133)|107|87)|132|71)|131)|128|64)|126|108))|44|120|45|46|47|48|49|50|51|52|53|54|55|56|57|58|62|63|(1:64)|126|108|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0404, code lost:
        r12 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x024a, code lost:
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x024b, code lost:
        r0.f29852b.mo26891a(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0257, code lost:
        throw r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0275  */
    @javax.inject.Inject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C10811c(p193e.p194a.p437c.p531c0.AbstractC10011a r10, p193e.p194a.p437c.p552i.p554b.AbstractC10276a r11, p193e.p194a.p437c.p580r.p587h.AbstractC10542b r12, p193e.p194a.p437c.p524b.AbstractC9691j r13, p193e.p194a.p437c.p523a0.AbstractC9678z r14, p193e.p194a.p437c.p524b.AbstractC9686e r15) {
        /*
            Method dump skipped, instructions count: 1034
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.p607o0.C10811c.<init>(e.a.c.c0.a, e.a.c.i.b.a, e.a.c.r.h.b, e.a.c.b.j, e.a.c.a0.z, e.a.c.b.e):void");
    }

    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10810b
    /* renamed from: a */
    public Object mo25605a(String str, d<? super Boolean> dVar) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        if (!this.f32103k.mo27287H()) {
            List<String> m25756a = this.f32099g.m25756a();
            ArrayList<List> arrayList = new ArrayList();
            for (String str2 : m25756a) {
                Map<String, List<C10611l>> map = this.f32097e;
                List<C10611l> list = map != null ? map.get(str2) : null;
                if (list != null) {
                    arrayList.add(list);
                }
            }
            if (!arrayList.isEmpty()) {
                for (List<C10611l> list2 : arrayList) {
                    if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                        for (C10611l c10611l : list2) {
                            if (Boolean.valueOf(l.a(c10611l.m25766b(), str)).booleanValue()) {
                                z2 = true;
                                break;
                            }
                        }
                    }
                    z2 = false;
                    if (Boolean.valueOf(z2).booleanValue()) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            z3 = str.hashCode() == 1009862158 && str.equals("GRM_OTP") && this.f32103k.mo27282M() && z;
        }
        return Boolean.valueOf(z3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x014c, code lost:
        if (r9 == false) goto L56;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f2  */
    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10810b
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo25604b(java.lang.String r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.p607o0.C10811c.mo25604b(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0122  */
    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10810b
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo25603c(java.lang.String r6, java.lang.String r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 424
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.p607o0.C10811c.mo25603c(java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10810b
    /* renamed from: d */
    public List<C10611l> mo25602d(String str) {
        List<C10611l> list;
        List<C10611l> list2;
        Collection<List<C10611l>> values;
        l.e(str, "senderId");
        C10019f<Map<String, List<C10611l>>> c10019f = this.f32095c;
        if (c10019f.get("*") == null) {
            Map<String, List<C10611l>> map = c10019f.get(str);
            list = (map == null || (values = map.values()) == null) ? null : C25225a.m3825w0(i.S0(values));
        } else {
            LinkedHashMap linkedHashMap = c10019f.get(str);
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
            }
            Map b1 = i.b1(linkedHashMap);
            Map<String, List<C10611l>> map2 = this.f32097e;
            if (map2 != null && (list2 = map2.get("GRM_OTP")) != null) {
                List list3 = (List) b1.put("GRM_OTP", list2);
            }
            list = C25225a.m3825w0(i.S0(((LinkedHashMap) b1).values()));
        }
        return list;
    }

    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10810b
    /* renamed from: e */
    public boolean mo25601e(ParsedDataObject parsedDataObject) {
        l.e(parsedDataObject, "pdo");
        List<C10611l> mo25600f = mo25600f();
        ArrayList<C10611l> arrayList = new ArrayList();
        for (Object obj : mo25600f) {
            if (l.a(((C10611l) obj).m25766b(), C10552g.m25785a(parsedDataObject.getD()))) {
                arrayList.add(obj);
            }
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return false;
        }
        ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
        for (C10611l c10611l : arrayList) {
            arrayList2.add(c10611l.m25767a());
        }
        return mo25597i(arrayList2, parsedDataObject);
    }

    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10810b
    /* renamed from: f */
    public List<C10611l> mo25600f() {
        List<String> m25755a = this.f32098f.m25755a();
        ArrayList arrayList = new ArrayList();
        for (String str : m25755a) {
            Map<String, List<C10611l>> map = this.f32097e;
            List<C10611l> list = map != null ? map.get(str) : null;
            if (list != null) {
                arrayList.add(list);
            }
        }
        return C25225a.m3825w0(arrayList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x017e, code lost:
        if (r14 == false) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x015d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x018f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x019c A[EDGE_INSN: B:69:0x019c->B:49:0x019c ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00d8 A[SYNTHETIC] */
    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10810b
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo25599g(java.lang.String r6, java.lang.String r7, com.truecaller.insights.source.ModelType r8, s1.w.d<? super com.truecaller.insights.source.SmartSMSFeatureStatus> r9) {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.p607o0.C10811c.mo25599g(java.lang.String, java.lang.String, com.truecaller.insights.source.ModelType, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10810b
    /* renamed from: h */
    public void mo25598h(String str) {
        l.e(str, AnalyticsConstants.SENDER);
        this.f32094b.remove(str);
    }

    @Override // p193e.p194a.p437c.p606w.p607o0.AbstractC10810b
    /* renamed from: i */
    public boolean mo25597i(List<C10639w> list, ParsedDataObject parsedDataObject) {
        Boolean bool = Boolean.FALSE;
        Boolean bool2 = Boolean.TRUE;
        l.e(list, "filter");
        l.e(parsedDataObject, "pdo");
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : list) {
            if (i < 0) {
                i.N0();
                throw null;
            }
            C10639w c10639w = (C10639w) obj;
            arrayList.add(bool2);
            List<C10638v> m25757c = c10639w.m25757c();
            if (m25757c != null) {
                for (C10638v c10638v : m25757c) {
                    if (!c10638v.m25760b().contains(this.f32102j.mo25788e(parsedDataObject, c10638v.m25761a()))) {
                        arrayList.set(i, bool);
                        break;
                    }
                }
            }
            List<String> m25758b = c10639w.m25758b();
            if (m25758b != null) {
                Iterator<T> it = m25758b.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (r.p(this.f32102j.mo25788e(parsedDataObject, (String) it.next()))) {
                            arrayList.set(i, bool);
                            break;
                        }
                    }
                }
            }
            i++;
        }
        return arrayList.contains(bool2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0128  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m25596j(java.lang.String r9, s1.w.d<? super java.util.List<p193e.p194a.p437c.p523a0.C9615b0>> r10) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.p607o0.C10811c.m25596j(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x005d, code lost:
        if (r9 != null) goto L30;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.insights.source.SmartSMSFeatureStatus m25595k(java.util.List<p193e.p194a.p437c.p523a0.C9615b0> r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.p607o0.C10811c.m25595k(java.util.List, boolean):com.truecaller.insights.source.SmartSMSFeatureStatus");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m25594l(java.lang.String r6, s1.w.d<? super java.util.List<p193e.p194a.p437c.p523a0.C9615b0>> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p437c.p606w.p607o0.C10811c.C10813b
            if (r0 == 0) goto L2a
            r0 = r7
            e.a.c.w.o0.c$b r0 = (p193e.p194a.p437c.p606w.p607o0.C10811c.C10813b) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f32113e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f32113e = r1
            r0 = r8
            r7 = r0
            goto L34
        L2a:
            e.a.c.w.o0.c$b r0 = new e.a.c.w.o0.c$b
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L34:
            r0 = r7
            java.lang.Object r0 = r0.f32112d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f32113e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L63
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L58
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r6 = r0
            goto L93
        L58:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L63:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.c.c0.f<java.util.List<e.a.c.a0.b0>> r0 = r0.f32094b
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            java.util.List r0 = (java.util.List) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L7c
            r0 = r8
            r6 = r0
            goto L98
        L7c:
            r0 = r7
            r1 = 1
            r0.f32113e = r1
            r0 = r5
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.m25596j(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r10
            if (r0 != r1) goto L93
            r0 = r10
            return r0
        L93:
            r0 = r6
            java.util.List r0 = (java.util.List) r0
            r6 = r0
        L98:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.p607o0.C10811c.m25594l(java.lang.String, s1.w.d):java.lang.Object");
    }
}
