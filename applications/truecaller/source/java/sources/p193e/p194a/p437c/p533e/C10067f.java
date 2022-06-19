package p193e.p194a.p437c.p533e;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p525b0.C9711b;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p437c.p580r.p589j.AbstractC10605i;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import p193e.p194a.p437c.p580r.p589j.AbstractC10627r;
import p193e.p194a.p437c.p580r.p589j.C10606j;
import p193e.p194a.p437c.p580r.p589j.C10635s;
import q3.a.e1;
import q3.a.g1;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.k;
import s1.s;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.e.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/e/f.class */
public final class C10067f implements AbstractC10066e, i0 {

    /* renamed from: b */
    public final e1 f29944b;

    /* renamed from: g */
    public final AbstractC10060c f29949g;

    /* renamed from: a */
    public final y f29943a = d.n((p1) null, 1);

    /* renamed from: c */
    public final Map<Long, AbstractC10605i> f29945c = new LinkedHashMap();

    /* renamed from: d */
    public final Map<Long, C10606j> f29946d = new LinkedHashMap();

    /* renamed from: e */
    public String f29947e = "";

    /* renamed from: f */
    public String f29948f = "others_tab";

    @e(c = "com.truecaller.insights.analytics.SmartCardAnalyticsManagerImpl$addActionDataToItemMap$1", f = "SmartCardAnalyticsManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.e.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/e/f$a.class */
    public static final class C10068a extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ AbstractC10605i f29951f;

        /* renamed from: g */
        public final /* synthetic */ long f29952g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10068a(AbstractC10605i abstractC10605i, long j, s1.w.d dVar) {
            super(2, dVar);
            C10067f.this = r5;
            this.f29951f = abstractC10605i;
            this.f29952g = j;
        }

        /* renamed from: i */
        public final s1.w.d<s> m26726i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10068a(this.f29951f, this.f29952g, dVar);
        }

        /* renamed from: k */
        public final Object m26725k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C10067f c10067f = C10067f.this;
            AbstractC10605i abstractC10605i = this.f29951f;
            long j = this.f29952g;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c10067f.f29945c.put(new Long(j), abstractC10605i);
            return sVar;
        }

        /* renamed from: s */
        public final Object m26724s(Object obj) {
            C25225a.m3932a3(obj);
            C10067f.this.f29945c.put(new Long(this.f29952g), this.f29951f);
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.analytics.SmartCardAnalyticsManagerImpl$logAllLiveEvents$1", f = "SmartCardAnalyticsManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.e.f$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/e/f$b.class */
    public static final class C10069b extends i implements p<i0, s1.w.d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10069b(s1.w.d dVar) {
            super(2, dVar);
            C10067f.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m26723i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10069b(dVar);
        }

        /* renamed from: k */
        public final Object m26722k(Object obj, Object obj2) {
            s sVar = s.a;
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C10067f c10067f = C10067f.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            Map<Long, C10606j> map = c10067f.f29946d;
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry<Long, C10606j> entry : map.entrySet()) {
                C10606j value = entry.getValue();
                value.f31619c = C22128a.m8638c();
                arrayList.add(C10067f.m26738d(c10067f, value));
            }
            c10067f.f29949g.mo26756b(C25225a.m3825w0(arrayList));
            return sVar;
        }

        /* renamed from: s */
        public final Object m26721s(Object obj) {
            C25225a.m3932a3(obj);
            Map<Long, C10606j> map = C10067f.this.f29946d;
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry<Long, C10606j> entry : map.entrySet()) {
                C10606j value = entry.getValue();
                value.f31619c = C22128a.m8638c();
                arrayList.add(C10067f.m26738d(C10067f.this, value));
            }
            C10067f.this.f29949g.mo26756b(C25225a.m3825w0(arrayList));
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.analytics.SmartCardAnalyticsManagerImpl$logViewEventsForPositions$1", f = "SmartCardAnalyticsManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.e.f$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/e/f$c.class */
    public static final class C10070c extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Set f29955f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10070c(Set set, s1.w.d dVar) {
            super(2, dVar);
            C10067f.this = r5;
            this.f29955f = set;
        }

        /* renamed from: i */
        public final s1.w.d<s> m26720i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10070c(this.f29955f, dVar);
        }

        /* renamed from: k */
        public final Object m26719k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C10070c c10070c = new C10070c(this.f29955f, dVar);
            s sVar = s.a;
            c10070c.m26718s(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m26718s(Object obj) {
            C25225a.m3932a3(obj);
            Map<Long, AbstractC10605i> map = C10067f.this.f29945c;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<Long, AbstractC10605i> entry : map.entrySet()) {
                if (Boolean.valueOf(this.f29955f.contains(new Long(entry.getKey().longValue()))).booleanValue()) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            Map<Long, AbstractC10605i> map2 = C10067f.this.f29945c;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Map.Entry<Long, AbstractC10605i> entry2 : map2.entrySet()) {
                if (Boolean.valueOf(!this.f29955f.contains(new Long(entry2.getKey().longValue()))).booleanValue()) {
                    linkedHashMap2.put(entry2.getKey(), entry2.getValue());
                }
            }
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry3 : linkedHashMap.entrySet()) {
                long longValue = ((Number) entry3.getKey()).longValue();
                AbstractC10605i abstractC10605i = (AbstractC10605i) entry3.getValue();
                if (!C10067f.this.f29946d.containsKey(new Long(longValue))) {
                    C10067f.this.f29946d.put(new Long(longValue), new C10606j(abstractC10605i, C22128a.m8638c(), 0L));
                }
            }
            for (Map.Entry entry4 : linkedHashMap2.entrySet()) {
                long longValue2 = ((Number) entry4.getKey()).longValue();
                if (C10067f.this.f29946d.containsKey(new Long(longValue2))) {
                    long m8638c = C22128a.m8638c();
                    C10606j c10606j = C10067f.this.f29946d.get(new Long(longValue2));
                    if (c10606j != null && m8638c - c10606j.f31618b > 20000) {
                        c10606j.f31619c = m8638c;
                        C10067f.this.f29946d.remove(new Long(longValue2));
                        arrayList.addAll(C10067f.m26738d(C10067f.this, c10606j));
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                C10067f.this.f29949g.mo26756b(arrayList);
            }
            return s.a;
        }
    }

    @Inject
    public C10067f(AbstractC10060c abstractC10060c) {
        l.e(abstractC10060c, "insightsAnalyticsManager");
        this.f29949g = abstractC10060c;
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        l.d(newSingleThreadExecutor, "Executors.newSingleThreadExecutor()");
        this.f29944b = new g1(newSingleThreadExecutor);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0204  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.List m26738d(p193e.p194a.p437c.p533e.C10067f r18, p193e.p194a.p437c.p580r.p589j.C10606j r19) {
        /*
            Method dump skipped, instructions count: 743
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p533e.C10067f.m26738d(e.a.c.e.f, e.a.c.r.j.j):java.util.List");
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10066e
    /* renamed from: a */
    public void mo26741a(Set<Long> set) {
        l.e(set, "idList");
        d.w2(this, getCoroutineContext(), (j0) null, new C10070c(set, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10066e
    /* renamed from: b */
    public void mo26740b() {
        this.f29945c.clear();
        this.f29946d.clear();
        this.f29947e = "";
        this.f29948f = "others_tab";
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10066e
    /* renamed from: c */
    public void mo26739c(String str, k<? extends AbstractC10627r, ? extends AbstractC10616p> kVar, boolean z) {
        l.e(str, "action");
        l.e(kVar, "category");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("smart_action", "<set-?>");
        String m26803a = C10031q.m26803a(this.f29947e, z);
        l.e(m26803a, "<set-?>");
        String str2 = this.f29948f;
        C22128a.m8703I0(str2, "<set-?>", "click", "<set-?>", str, "<set-?>");
        String m26729m = m26729m((AbstractC10627r) kVar.a, (AbstractC10616p) kVar.b);
        l.e(m26729m, "<set-?>");
        if ("smart_action".length() > 0) {
            this.f29949g.mo26757a(new C10529b(new SimpleAnalyticsModel("smart_action", m26729m, m26803a, str2, "click", str, 0L, null, false, 448, null), s1.u.i.W0(linkedHashMap)));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    /* renamed from: e */
    public final long m26737e(C10606j c10606j) {
        return c10606j.f31619c - c10606j.f31618b;
    }

    /* renamed from: f */
    public final String m26736f(AbstractC10605i abstractC10605i) {
        String str;
        if (abstractC10605i instanceof C10635s) {
            C10635s c10635s = (C10635s) abstractC10605i;
            str = m26729m(c10635s.f31678f, c10635s.f31673a);
        } else {
            str = abstractC10605i instanceof C9711b ? ((C9711b) abstractC10605i).f29339a.f31741a : "Unknown";
        }
        return str;
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10066e
    /* renamed from: g */
    public void mo26735g(k<? extends AbstractC10627r, ? extends AbstractC10616p> kVar, boolean z) {
        l.e(kVar, "category");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("share_smart_card", "<set-?>");
        String m26803a = C10031q.m26803a(this.f29947e, z);
        l.e(m26803a, "<set-?>");
        l.e("conversation_view", "<set-?>");
        l.e("click", "<set-?>");
        String m26729m = m26729m((AbstractC10627r) kVar.a, (AbstractC10616p) kVar.b);
        l.e(m26729m, "<set-?>");
        if ("share_smart_card".length() > 0) {
            this.f29949g.mo26757a(new C10529b(new SimpleAnalyticsModel("share_smart_card", m26729m, m26803a, "conversation_view", "click", "", 0L, null, false, 448, null), s1.u.i.W0(linkedHashMap)));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public f getCoroutineContext() {
        return this.f29944b.plus(this.f29943a);
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10066e
    /* renamed from: h */
    public void mo26734h() {
        d.b3(getCoroutineContext(), new C10069b(null));
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10066e
    /* renamed from: i */
    public void mo26733i(String str, String str2) {
        l.e(str, "senderAddress");
        l.e(str2, "analyticsContext");
        this.f29947e = str;
        this.f29948f = str2;
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10066e
    /* renamed from: j */
    public void mo26732j(long j, AbstractC10605i abstractC10605i) {
        l.e(abstractC10605i, "feedbackCard");
        d.w2(this, getCoroutineContext(), (j0) null, new C10068a(abstractC10605i, j, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10066e
    /* renamed from: k */
    public void mo26731k(String str, String str2, boolean z) {
        boolean z2 = true;
        LinkedHashMap linkedHashMap = null;
        String str3 = true & true ? "" : null;
        String str4 = true & true ? "" : null;
        String str5 = true & true ? "" : null;
        String str6 = true & true ? "" : null;
        String str7 = true & true ? "" : null;
        String str8 = true & true ? "" : null;
        if (true & true) {
            linkedHashMap = new LinkedHashMap();
        }
        l.e(str3, "feature");
        l.e(str4, "eventCategory");
        l.e(str5, "eventInfo");
        l.e(str6, AnalyticsConstants.CONTEXT);
        l.e(str7, "actionType");
        l.e(str8, "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("feedback_row", "<set-?>");
        String m26803a = C10031q.m26803a(str, z);
        l.e(m26803a, "<set-?>");
        if (str2 == null) {
            str2 = "";
        }
        l.e(str2, "<set-?>");
        l.e(ViewAction.VIEW, "<set-?>");
        if ("feedback_row".length() <= 0) {
            z2 = false;
        }
        if (z2) {
            this.f29949g.mo26757a(new C10529b(new SimpleAnalyticsModel("feedback_row", str4, m26803a, str2, ViewAction.VIEW, str8, 0L, null, false, 448, null), s1.u.i.W0(linkedHashMap)));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10066e
    /* renamed from: l */
    public void mo26730l(String str, String str2, String str3, boolean z) {
        l.e(str3, "actionInfo");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("feedback_row", "<set-?>");
        String m26803a = C10031q.m26803a(str, z);
        l.e(m26803a, "<set-?>");
        if (str2 == null) {
            str2 = "";
        }
        l.e(str2, "<set-?>");
        l.e("click", "<set-?>");
        l.e(str3, "<set-?>");
        if ("feedback_row".length() > 0) {
            this.f29949g.mo26757a(new C10529b(new SimpleAnalyticsModel("feedback_row", "", m26803a, str2, "click", str3, 0L, null, false, 448, null), s1.u.i.W0(linkedHashMap)));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    /* renamed from: m */
    public final String m26729m(AbstractC10627r abstractC10627r, AbstractC10616p abstractC10616p) {
        String str;
        AbstractC10627r.C10634g c10634g = AbstractC10627r.C10634g.f31672a;
        if (!l.a(abstractC10616p, AbstractC10616p.C10620d.f31657b)) {
            str = (abstractC10627r == null || !(l.a(abstractC10627r, c10634g) ^ true)) ? ((l.a(abstractC10627r, c10634g) || abstractC10627r == null) && abstractC10616p != null) ? abstractC10616p.toString() : "Unknown" : abstractC10627r.toString();
        } else if (abstractC10627r != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(abstractC10616p);
            sb.append('_');
            sb.append(abstractC10627r);
            String sb2 = sb.toString();
            Locale locale = Locale.getDefault();
            l.d(locale, "Locale.getDefault()");
            Objects.requireNonNull(sb2, "null cannot be cast to non-null type java.lang.String");
            str = sb2.toLowerCase(locale);
            l.d(str, "(this as java.lang.String).toLowerCase(locale)");
        } else {
            str = abstractC10616p.toString();
        }
        return str;
    }

    /* renamed from: n */
    public final C10529b m26728n(String str, long j, String str2, boolean z) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("smart_action", "<set-?>");
        String m26803a = C10031q.m26803a(this.f29947e, z);
        l.e(m26803a, "<set-?>");
        String str3 = this.f29948f;
        l.e(str3, "<set-?>");
        l.e(ViewAction.VIEW, "<set-?>");
        boolean z2 = true;
        Map e0 = s1.u.i.e0(new k[]{new k("view_time", String.valueOf(j))});
        l.e(e0, "<set-?>");
        l.e(str, "<set-?>");
        l.e(str2, "<set-?>");
        if ("smart_action".length() <= 0) {
            z2 = false;
        }
        if (z2) {
            return new C10529b(new SimpleAnalyticsModel("smart_action", str2, m26803a, str3, ViewAction.VIEW, str, 0L, null, false, 448, null), s1.u.i.W0(e0));
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    /* renamed from: o */
    public final String m26727o(AbstractC10605i abstractC10605i) {
        String str = "";
        if (abstractC10605i instanceof C10635s) {
            C10635s c10635s = (C10635s) abstractC10605i;
            AbstractC10616p abstractC10616p = c10635s.f31673a;
            if (abstractC10616p instanceof AbstractC10616p.C10620d) {
                AbstractC10627r abstractC10627r = c10635s.f31678f;
                str = "";
                if (abstractC10627r != null) {
                    String obj = abstractC10627r.toString();
                    str = "";
                    if (obj != null) {
                        str = obj;
                    }
                }
            } else {
                str = "";
                if (abstractC10616p instanceof AbstractC10616p.C10618b) {
                    str = l.a(c10635s.f31678f, AbstractC10627r.C10632e.f31670a) ? "recharge" : "pay_bill";
                }
            }
        }
        return str;
    }
}
