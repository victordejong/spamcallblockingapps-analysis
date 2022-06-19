package p193e.p194a.p437c.p533e;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.models.smartcards.CardFeedBackType;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import p193e.p194a.p437c.p580r.p589j.AbstractC10597h;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import p193e.p194a.p437c.p610y.C10872f;
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
/* renamed from: e.a.c.e.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/e/b.class */
public final class C10055b implements AbstractC10054a, i0 {

    /* renamed from: b */
    public final e1 f29911b;

    /* renamed from: g */
    public final AbstractC10060c f29916g;

    /* renamed from: a */
    public final y f29910a = d.n((p1) null, 1);

    /* renamed from: c */
    public final Map<Long, C10872f> f29912c = new LinkedHashMap();

    /* renamed from: d */
    public final Map<Long, C10056a> f29913d = new LinkedHashMap();

    /* renamed from: e */
    public String f29914e = "";

    /* renamed from: f */
    public String f29915f = "others_tab";

    /* renamed from: e.a.c.e.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/e/b$a.class */
    public static final class C10056a {

        /* renamed from: a */
        public final C10872f f29917a;

        /* renamed from: b */
        public final long f29918b;

        /* renamed from: c */
        public long f29919c;

        public C10056a(C10872f c10872f, long j, long j2) {
            l.e(c10872f, "infoCardUiModel");
            this.f29917a = c10872f;
            this.f29918b = j;
            this.f29919c = j2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10056a)) {
                    return false;
                }
                C10056a c10056a = (C10056a) obj;
                return l.a(this.f29917a, c10056a.f29917a) && this.f29918b == c10056a.f29918b && this.f29919c == c10056a.f29919c;
            }
            return true;
        }

        public int hashCode() {
            C10872f c10872f = this.f29917a;
            return ((((c10872f != null ? c10872f.hashCode() : 0) * 31) + C4876d.m34274a(this.f29918b)) * 31) + C4876d.m34274a(this.f29919c);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("InfoCardUiModelWithInfo(infoCardUiModel=");
            m8728C.append(this.f29917a);
            m8728C.append(", startTimeStamp=");
            m8728C.append(this.f29918b);
            m8728C.append(", endTimeStamp=");
            return C22128a.m8693K2(m8728C, this.f29919c, ")");
        }
    }

    @e(c = "com.truecaller.insights.analytics.InfoCardAnalyticsManagerRevampImpl$addInfoCardToItemMap$1", f = "InfoCardAnalyticsManagerRevamp.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.e.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/e/b$b.class */
    public static final class C10057b extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ C10872f f29921f;

        /* renamed from: g */
        public final /* synthetic */ long f29922g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10057b(C10872f c10872f, long j, s1.w.d dVar) {
            super(2, dVar);
            C10055b.this = r5;
            this.f29921f = c10872f;
            this.f29922g = j;
        }

        /* renamed from: i */
        public final s1.w.d<s> m26766i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10057b(this.f29921f, this.f29922g, dVar);
        }

        /* renamed from: k */
        public final Object m26765k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C10055b c10055b = C10055b.this;
            C10872f c10872f = this.f29921f;
            long j = this.f29922g;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c10055b.f29912c.put(new Long(j), c10872f);
            return sVar;
        }

        /* renamed from: s */
        public final Object m26764s(Object obj) {
            C25225a.m3932a3(obj);
            C10055b.this.f29912c.put(new Long(this.f29922g), this.f29921f);
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.analytics.InfoCardAnalyticsManagerRevampImpl$logAllLiveEvents$1", f = "InfoCardAnalyticsManagerRevamp.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.e.b$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/e/b$c.class */
    public static final class C10058c extends i implements p<i0, s1.w.d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10058c(s1.w.d dVar) {
            super(2, dVar);
            C10055b.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m26763i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10058c(dVar);
        }

        /* renamed from: k */
        public final Object m26762k(Object obj, Object obj2) {
            s sVar = s.a;
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C10055b c10055b = C10055b.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            Map<Long, C10056a> map = c10055b.f29913d;
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry<Long, C10056a> entry : map.entrySet()) {
                C10056a value = entry.getValue();
                value.f29919c = C22128a.m8638c();
                arrayList.add(C10055b.m26771d(c10055b, value));
            }
            c10055b.f29916g.mo26756b(arrayList);
            return sVar;
        }

        /* renamed from: s */
        public final Object m26761s(Object obj) {
            C25225a.m3932a3(obj);
            Map<Long, C10056a> map = C10055b.this.f29913d;
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry<Long, C10056a> entry : map.entrySet()) {
                C10056a value = entry.getValue();
                value.f29919c = C22128a.m8638c();
                arrayList.add(C10055b.m26771d(C10055b.this, value));
            }
            C10055b.this.f29916g.mo26756b(arrayList);
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.analytics.InfoCardAnalyticsManagerRevampImpl$logViewEventsForPositions$1", f = "InfoCardAnalyticsManagerRevamp.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.e.b$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/e/b$d.class */
    public static final class C10059d extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Set f29925f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10059d(Set set, s1.w.d dVar) {
            super(2, dVar);
            C10055b.this = r5;
            this.f29925f = set;
        }

        /* renamed from: i */
        public final s1.w.d<s> m26760i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C10059d(this.f29925f, dVar);
        }

        /* renamed from: k */
        public final Object m26759k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C10059d c10059d = new C10059d(this.f29925f, dVar);
            s sVar = s.a;
            c10059d.m26758s(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m26758s(Object obj) {
            C25225a.m3932a3(obj);
            Map<Long, C10872f> map = C10055b.this.f29912c;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<Long, C10872f> entry : map.entrySet()) {
                if (Boolean.valueOf(this.f29925f.contains(new Long(entry.getKey().longValue()))).booleanValue()) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            Map<Long, C10872f> map2 = C10055b.this.f29912c;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Map.Entry<Long, C10872f> entry2 : map2.entrySet()) {
                if (Boolean.valueOf(!this.f29925f.contains(new Long(entry2.getKey().longValue()))).booleanValue()) {
                    linkedHashMap2.put(entry2.getKey(), entry2.getValue());
                }
            }
            ArrayList arrayList = new ArrayList();
            for (Map.Entry entry3 : linkedHashMap.entrySet()) {
                long longValue = ((Number) entry3.getKey()).longValue();
                C10872f c10872f = (C10872f) entry3.getValue();
                if (!C10055b.this.f29913d.containsKey(new Long(longValue))) {
                    C10055b.this.f29913d.put(new Long(longValue), new C10056a(c10872f, C22128a.m8638c(), 0L));
                }
            }
            for (Map.Entry entry4 : linkedHashMap2.entrySet()) {
                long longValue2 = ((Number) entry4.getKey()).longValue();
                if (C10055b.this.f29913d.containsKey(new Long(longValue2))) {
                    long m8638c = C22128a.m8638c();
                    C10056a c10056a = C10055b.this.f29913d.get(new Long(longValue2));
                    if (c10056a != null && m8638c - c10056a.f29918b > 20000) {
                        c10056a.f29919c = m8638c;
                        C10055b.this.f29913d.remove(new Long(longValue2));
                        arrayList.add(C10055b.m26771d(C10055b.this, c10056a));
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                C10055b.this.f29916g.mo26756b(arrayList);
            }
            return s.a;
        }
    }

    @Inject
    public C10055b(AbstractC10060c abstractC10060c) {
        l.e(abstractC10060c, "insightsAnalyticsManager");
        this.f29916g = abstractC10060c;
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        l.d(newSingleThreadExecutor, "Executors.newSingleThreadExecutor()");
        this.f29911b = new g1(newSingleThreadExecutor);
    }

    /* renamed from: d */
    public static final C10529b m26771d(C10055b c10055b, C10056a c10056a) {
        Objects.requireNonNull(c10055b);
        C10872f c10872f = c10056a.f29917a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        String str = c10872f.f32289h instanceof AbstractC10616p.C10625i ? "updates_tag" : "info_card";
        l.e(str, "<set-?>");
        String str2 = c10872f.f32284c.f32333n;
        l.e(str2, "<set-?>");
        String m26803a = C10031q.m26803a(c10055b.f29914e, c10872f.f32284c.f32332m);
        l.e(m26803a, "<set-?>");
        AbstractC10597h abstractC10597h = c10872f.f32286e;
        String str3 = (abstractC10597h != null ? abstractC10597h.f31607a : null) == CardFeedBackType.EDIT_TAG_FEEDBACK ? "edit_tag" : c10055b.f29915f;
        l.e(str3, "<set-?>");
        l.e(ViewAction.VIEW, "<set-?>");
        boolean z = true;
        Map e0 = s1.u.i.e0(new k[]{new k("view_time", String.valueOf(c10056a.f29919c - c10056a.f29918b))});
        l.e(e0, "<set-?>");
        String str4 = c10872f.f32284c.f32329j.isEmpty() ? "without_button" : "with_button";
        l.e(str4, "<set-?>");
        if (str.length() <= 0) {
            z = false;
        }
        if (z) {
            return new C10529b(new SimpleAnalyticsModel(str, str2, m26803a, str3, ViewAction.VIEW, str4, 0L, null, false, 448, null), s1.u.i.W0(e0));
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10054a
    /* renamed from: a */
    public void mo26774a(Set<Long> set) {
        l.e(set, "idList");
        d.w2(this, getCoroutineContext(), (j0) null, new C10059d(set, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10054a
    /* renamed from: b */
    public void mo26773b() {
        this.f29912c.clear();
        this.f29913d.clear();
        this.f29914e = "";
        this.f29915f = "others_tab";
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10054a
    /* renamed from: c */
    public void mo26772c(String str, String str2, boolean z) {
        l.e(str, "action");
        l.e(str2, "analyticsCategory");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("smart_action", "<set-?>");
        String m26803a = C10031q.m26803a(this.f29914e, z);
        l.e(m26803a, "<set-?>");
        String str3 = this.f29915f;
        l.e(str3, "<set-?>");
        l.e("click", "<set-?>");
        l.e(str, "<set-?>");
        l.e(str2, "<set-?>");
        if ("smart_action".length() > 0) {
            this.f29916g.mo26757a(new C10529b(new SimpleAnalyticsModel("smart_action", str2, m26803a, str3, "click", str, 0L, null, false, 448, null), s1.u.i.W0(linkedHashMap)));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10054a
    /* renamed from: g */
    public void mo26770g(String str, boolean z) {
        l.e(str, "analyticsCategory");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("share_smart_card", "<set-?>");
        String m26803a = C10031q.m26803a(this.f29914e, z);
        l.e(m26803a, "<set-?>");
        l.e("conversation_view", "<set-?>");
        l.e("click", "<set-?>");
        l.e(str, "<set-?>");
        if ("share_smart_card".length() > 0) {
            this.f29916g.mo26757a(new C10529b(new SimpleAnalyticsModel("share_smart_card", str, m26803a, "conversation_view", "click", "", 0L, null, false, 448, null), s1.u.i.W0(linkedHashMap)));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public f getCoroutineContext() {
        return this.f29911b.plus(this.f29910a);
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10054a
    /* renamed from: h */
    public void mo26769h() {
        d.b3(getCoroutineContext(), new C10058c(null));
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10054a
    /* renamed from: i */
    public void mo26768i(String str, String str2) {
        l.e(str, "senderAddress");
        l.e(str2, "analyticsContext");
        this.f29914e = str;
        this.f29915f = str2;
    }

    @Override // p193e.p194a.p437c.p533e.AbstractC10054a
    /* renamed from: j */
    public void mo26767j(long j, C10872f c10872f) {
        l.e(c10872f, "infoCardUiModel");
        d.w2(this, getCoroutineContext(), (j0) null, new C10057b(c10872f, j, null), 2, (Object) null);
    }
}
