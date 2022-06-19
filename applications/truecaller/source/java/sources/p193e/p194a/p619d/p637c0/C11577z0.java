package p193e.p194a.p619d.p637c0;

import com.truecaller.log.AssertionUtil;
import com.truecaller.voip.api.VoipBatchIdsDto;
import com.truecaller.voip.api.VoipBatchIdsRequestDto;
import com.truecaller.voip.api.VoipIdDto;
import com.truecaller.voip.api.VoipNumberDto;
import com.truecaller.voip.p189db.VoipIdCache;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p619d.p637c0.p638a2.AbstractC11369a;
import p193e.p194a.p619d.p651p.AbstractC11744a;
import p193e.p194a.p619d.p655t.AbstractC11796a;
import q3.a.i0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
import x3.b;
/* renamed from: e.a.d.c0.z0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/z0.class */
public final class C11577z0 implements AbstractC11556y0 {

    /* renamed from: a */
    public final f f33952a;

    /* renamed from: b */
    public final a<AbstractC8432l> f33953b;

    /* renamed from: c */
    public final a<AbstractC11744a> f33954c;

    /* renamed from: d */
    public final a<AbstractC11796a> f33955d;

    /* renamed from: e */
    public final AbstractC19222c f33956e;

    /* renamed from: f */
    public final a<AbstractC11409g1> f33957f;

    /* renamed from: g */
    public final a<AbstractC11369a> f33958g;

    /* renamed from: e.a.d.c0.z0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z0$a.class */
    public static final class C11578a extends m implements l<AbstractC11796a, s> {

        /* renamed from: b */
        public final /* synthetic */ VoipIdCache f33959b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11578a(VoipIdCache voipIdCache) {
            super(1);
            this.f33959b = voipIdCache;
        }

        /* renamed from: d */
        public Object m24445d(Object obj) {
            AbstractC11796a abstractC11796a = (AbstractC11796a) obj;
            s1.z.c.l.e(abstractC11796a, "$receiver");
            abstractC11796a.mo23986i(this.f33959b);
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.util.VoipIdProviderImpl$clearVoipIdCaches$2", f = "VoipIdProvider.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.z0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z0$b.class */
    public static final class C11579b extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11579b(d dVar) {
            super(2, dVar);
            C11577z0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24444i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C11579b(dVar);
        }

        /* renamed from: k */
        public final Object m24443k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            C11577z0 c11577z0 = C11577z0.this;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            ((AbstractC11796a) c11577z0.f33955d.get()).mo23992c();
            return sVar;
        }

        /* renamed from: s */
        public final Object m24442s(Object obj) {
            C25225a.m3932a3(obj);
            ((AbstractC11796a) C11577z0.this.f33955d.get()).mo23992c();
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.util.VoipIdProviderImpl$idFromNumber$2", f = "VoipIdProvider.kt", l = {125}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.z0$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z0$c.class */
    public static final class C11580c extends i implements p<i0, d<? super String>, Object> {

        /* renamed from: e */
        public int f33961e;

        /* renamed from: g */
        public final /* synthetic */ String f33963g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11580c(String str, d dVar) {
            super(2, dVar);
            C11577z0.this = r5;
            this.f33963g = str;
        }

        /* renamed from: i */
        public final d<s> m24441i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C11580c(this.f33963g, dVar);
        }

        /* renamed from: k */
        public final Object m24440k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C11580c(this.f33963g, dVar).m24439s(s.a);
        }

        /* renamed from: s */
        public final Object m24439s(Object obj) {
            String str;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f33961e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC11369a abstractC11369a = (AbstractC11369a) C11577z0.this.f33958g.get();
                String str2 = this.f33963g;
                this.f33961e = 1;
                Object mo24770e = abstractC11369a.mo24770e(str2, this);
                obj = mo24770e;
                if (mo24770e == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC8371e abstractC8371e = (AbstractC8371e) obj;
            C11577z0 c11577z0 = C11577z0.this;
            String str3 = this.f33963g;
            Object obj2 = c11577z0.f33955d.get();
            s1.z.c.l.d(obj2, "voipDao.get()");
            VoipIdCache voipIdCache = (VoipIdCache) C19291g.m13578W0((AbstractC11796a) obj2, new C11390c1(str3));
            String str4 = null;
            VoipIdCache m24447i = voipIdCache != null ? c11577z0.m24447i(voipIdCache, null, true) : null;
            if (m24447i != null) {
                m24447i.getVoipId();
                str = m24447i.getVoipId();
            } else {
                VoipIdDto voipIdDto = (VoipIdDto) c11577z0.m24448h(((AbstractC11744a) c11577z0.f33954c.get()).m24066f(abstractC8371e, C19286f.m13695I(str3)));
                String str5 = "Fetched voip id is " + voipIdDto;
                str = voipIdDto != null ? c11577z0.m24449g(voipIdDto, str3).getVoipId() : null;
            }
            if (str != null) {
                if (abstractC8371e instanceof AbstractC8371e.C8373b) {
                    ((AbstractC11369a) C11577z0.this.f33958g.get()).mo24774a(str);
                }
                str4 = str;
            }
            return str4;
        }
    }

    @e(c = "com.truecaller.voip.util.VoipIdProviderImpl$idsFromNumbers$2", f = "VoipIdProvider.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.z0$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z0$d.class */
    public static final class C11581d extends i implements p<i0, d<? super HashMap<String, String>>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Set f33965f;

        /* renamed from: e.a.d.c0.z0$d$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z0$d$a.class */
        public static final class C11582a extends m implements l<AbstractC11796a, List<? extends VoipIdCache>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11582a() {
                super(1);
                C11581d.this = r4;
            }

            /* renamed from: d */
            public Object m24435d(Object obj) {
                AbstractC11796a abstractC11796a = (AbstractC11796a) obj;
                s1.z.c.l.e(abstractC11796a, "$receiver");
                return abstractC11796a.mo23990e(C11581d.this.f33965f);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11581d(Set set, d dVar) {
            super(2, dVar);
            C11577z0.this = r5;
            this.f33965f = set;
        }

        /* renamed from: i */
        public final d<s> m24438i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C11581d(this.f33965f, dVar);
        }

        /* renamed from: k */
        public final Object m24437k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C11581d(this.f33965f, dVar).m24436s(s.a);
        }

        /* renamed from: s */
        public final Object m24436s(Object obj) {
            ArrayList<VoipIdCache> arrayList;
            Map<String, String> map;
            C25225a.m3932a3(obj);
            String str = "Fetching voip ids for numbers:" + this.f33965f;
            Object obj2 = C11577z0.this.f33955d.get();
            s1.z.c.l.d(obj2, "voipDao.get()");
            List list = (List) C19291g.m13578W0((AbstractC11796a) obj2, new C11582a());
            if (list != null) {
                ArrayList arrayList2 = new ArrayList();
                Iterator it = list.iterator();
                while (true) {
                    arrayList = arrayList2;
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (Boolean.valueOf(C11577z0.m24446j(C11577z0.this, (VoipIdCache) next, null, false, 3) != null).booleanValue()) {
                        arrayList2.add(next);
                    }
                }
            } else {
                arrayList = null;
            }
            ArrayList arrayList3 = new ArrayList();
            if (arrayList == null || arrayList.isEmpty()) {
                arrayList3.addAll(this.f33965f);
            } else if (arrayList.size() == this.f33965f.size()) {
                String str2 = "Returning cached voip ids:" + arrayList;
                HashMap hashMap = new HashMap(arrayList.size());
                for (VoipIdCache voipIdCache : arrayList) {
                    hashMap.put(voipIdCache.getNumber(), voipIdCache.getVoipId());
                }
                return hashMap;
            } else {
                ArrayList arrayList4 = new ArrayList(C25225a.m4004J(arrayList, 10));
                for (VoipIdCache voipIdCache2 : arrayList) {
                    arrayList4.add(voipIdCache2.getNumber());
                }
                Set set = this.f33965f;
                ArrayList arrayList5 = new ArrayList();
                for (Object obj3 : set) {
                    if (!Boolean.valueOf(arrayList4.contains((String) obj3)).booleanValue()) {
                        arrayList5.add(obj3);
                    }
                }
                arrayList3.addAll(arrayList5);
            }
            C11577z0 c11577z0 = C11577z0.this;
            Set<String> d1 = s1.u.i.d1(arrayList3);
            AbstractC11744a abstractC11744a = (AbstractC11744a) c11577z0.f33954c.get();
            ArrayList arrayList6 = new ArrayList(C25225a.m4004J(d1, 10));
            for (String str3 : d1) {
                arrayList6.add(Long.valueOf(C19286f.m13657v(str3)));
            }
            VoipBatchIdsDto voipBatchIdsDto = (VoipBatchIdsDto) c11577z0.m24448h(abstractC11744a.m24068d(new VoipBatchIdsRequestDto(arrayList6)));
            String str4 = "Fetched voip ids are " + voipBatchIdsDto;
            if (voipBatchIdsDto != null) {
                Map<String, String> ids = voipBatchIdsDto.getIds();
                if (ids != null) {
                    ArrayList arrayList7 = new ArrayList(ids.size());
                    for (Map.Entry<String, String> entry : ids.entrySet()) {
                        arrayList7.add(new VoipIdCache(entry.getValue(), C19286f.m13653z(entry.getKey()), voipBatchIdsDto.getExpiryEpochSeconds()));
                    }
                    Object obj4 = c11577z0.f33955d.get();
                    s1.z.c.l.d(obj4, "voipDao.get()");
                    C19291g.m13578W0((AbstractC11796a) obj4, new C11382b1(arrayList7));
                }
                map = voipBatchIdsDto.getIds();
            } else {
                map = null;
            }
            boolean z = true;
            if (arrayList != null) {
                z = arrayList.isEmpty();
            }
            if (z) {
                HashMap hashMap2 = null;
                if (map != null) {
                    hashMap2 = C11577z0.m24450f(C11577z0.this, map);
                }
                return hashMap2;
            }
            HashMap hashMap3 = new HashMap(this.f33965f.size());
            if (map != null) {
                hashMap3.putAll(C11577z0.m24450f(C11577z0.this, map));
            }
            for (VoipIdCache voipIdCache3 : arrayList) {
                hashMap3.put(voipIdCache3.getNumber(), voipIdCache3.getVoipId());
            }
            return hashMap3;
        }
    }

    @e(c = "com.truecaller.voip.util.VoipIdProviderImpl$numberFromId$2", f = "VoipIdProvider.kt", l = {191}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.z0$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z0$e.class */
    public static final class C11583e extends i implements p<i0, d<? super String>, Object> {

        /* renamed from: e */
        public int f33967e;

        /* renamed from: g */
        public final /* synthetic */ String f33969g;

        /* renamed from: e.a.d.c0.z0$e$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z0$e$a.class */
        public static final class C11584a extends m implements l<AbstractC11796a, VoipIdCache> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11584a() {
                super(1);
                C11583e.this = r4;
            }

            /* renamed from: d */
            public Object m24431d(Object obj) {
                AbstractC11796a abstractC11796a = (AbstractC11796a) obj;
                s1.z.c.l.e(abstractC11796a, "$receiver");
                return abstractC11796a.mo23993b(C11583e.this.f33969g);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11583e(String str, d dVar) {
            super(2, dVar);
            C11577z0.this = r5;
            this.f33969g = str;
        }

        /* renamed from: i */
        public final d<s> m24434i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C11583e(this.f33969g, dVar);
        }

        /* renamed from: k */
        public final Object m24433k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C11583e(this.f33969g, dVar).m24432s(s.a);
        }

        /* renamed from: s */
        public final Object m24432s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f33967e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                Object obj2 = C11577z0.this.f33955d.get();
                s1.z.c.l.d(obj2, "voipDao.get()");
                VoipIdCache voipIdCache = (VoipIdCache) C19291g.m13578W0((AbstractC11796a) obj2, new C11584a());
                VoipIdCache m24446j = voipIdCache != null ? C11577z0.m24446j(C11577z0.this, voipIdCache, null, false, 3) : null;
                if (m24446j != null) {
                    m24446j.getNumber();
                    return m24446j.getNumber();
                }
                AbstractC11369a abstractC11369a = (AbstractC11369a) C11577z0.this.f33958g.get();
                String str = this.f33969g;
                this.f33967e = 1;
                Object mo24772c = abstractC11369a.mo24772c(str, this);
                obj = mo24772c;
                if (mo24772c == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C11577z0 c11577z0 = C11577z0.this;
            VoipNumberDto voipNumberDto = (VoipNumberDto) c11577z0.m24448h(((AbstractC11744a) c11577z0.f33954c.get()).m24070b((AbstractC8371e) obj, this.f33969g));
            String str2 = "Fetched number is " + voipNumberDto;
            String str3 = null;
            if (voipNumberDto != null) {
                C11577z0 c11577z02 = C11577z0.this;
                String str4 = this.f33969g;
                Objects.requireNonNull(c11577z02);
                StringBuilder m8558w = C22128a.m8558w('+');
                m8558w.append(voipNumberDto.getPhone());
                VoipIdCache voipIdCache2 = new VoipIdCache(str4, m8558w.toString(), voipNumberDto.getExpiryEpochSeconds());
                Object obj3 = c11577z02.f33955d.get();
                s1.z.c.l.d(obj3, "voipDao.get()");
                C19291g.m13578W0((AbstractC11796a) obj3, new C11368a1(voipIdCache2));
                str3 = voipIdCache2.getNumber();
            }
            return str3;
        }
    }

    @e(c = "com.truecaller.voip.util.VoipIdProviderImpl$ownId$2", f = "VoipIdProvider.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.z0$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z0$f.class */
    public static final class C11585f extends i implements p<i0, d<? super String>, Object> {

        /* renamed from: e.a.d.c0.z0$f$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z0$f$a.class */
        public static final class C11586a extends m implements l<AbstractC11796a, VoipIdCache> {

            /* renamed from: b */
            public final /* synthetic */ String f33972b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11586a(String str) {
                super(1);
                this.f33972b = str;
            }

            /* renamed from: d */
            public Object m24427d(Object obj) {
                AbstractC11796a abstractC11796a = (AbstractC11796a) obj;
                s1.z.c.l.e(abstractC11796a, "$receiver");
                return abstractC11796a.mo23984k(this.f33972b);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11585f(d dVar) {
            super(2, dVar);
            C11577z0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24430i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C11585f(dVar);
        }

        /* renamed from: k */
        public final Object m24429k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C11585f(dVar).m24428s(s.a);
        }

        /* renamed from: s */
        public final Object m24428s(Object obj) {
            C25225a.m3932a3(obj);
            String mo28570n = ((AbstractC8432l) C11577z0.this.f33953b.get()).mo28570n();
            if (mo28570n == null || !Boolean.valueOf(r.y(mo28570n, "+", false, 2)).booleanValue()) {
                mo28570n = null;
            }
            String str = null;
            if (mo28570n != null) {
                Object obj2 = C11577z0.this.f33955d.get();
                s1.z.c.l.d(obj2, "voipDao.get()");
                VoipIdCache voipIdCache = (VoipIdCache) C19291g.m13578W0((AbstractC11796a) obj2, new C11586a(mo28570n));
                if (voipIdCache != null) {
                    Long l = new Long(((AbstractC11409g1) C11577z0.this.f33957f.get()).getLong("qaOwnIdExpirationEpochSeconds", -1L));
                    if (!Boolean.valueOf(l.longValue() > 0).booleanValue()) {
                        l = null;
                    }
                    if (C11577z0.this.m24447i(voipIdCache, l, false) != null) {
                        voipIdCache.getVoipId();
                        return voipIdCache.getVoipId();
                    }
                    voipIdCache.getVoipId();
                    C11577z0 c11577z0 = C11577z0.this;
                    VoipIdDto voipIdDto = (VoipIdDto) c11577z0.m24448h(((AbstractC11744a) c11577z0.f33954c.get()).m24066f(AbstractC8371e.C8372a.f25732a, C19286f.m13695I(mo28570n)));
                    String str2 = null;
                    if (voipIdDto != null) {
                        str2 = C11577z0.this.m24449g(voipIdDto, mo28570n).getVoipId();
                    }
                    return str2;
                }
                C11577z0 c11577z02 = C11577z0.this;
                VoipIdDto voipIdDto2 = (VoipIdDto) c11577z02.m24448h(((AbstractC11744a) c11577z02.f33954c.get()).m24065g());
                String str3 = "Fetched own voip id is " + voipIdDto2;
                str = null;
                if (voipIdDto2 != null) {
                    str = C11577z0.this.m24449g(voipIdDto2, mo28570n).getVoipId();
                }
            }
            return str;
        }
    }

    /* renamed from: e.a.d.c0.z0$g */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z0$g.class */
    public static final class C11587g extends m implements l<AbstractC11796a, s> {

        /* renamed from: b */
        public final /* synthetic */ VoipIdCache f33973b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11587g(VoipIdCache voipIdCache) {
            super(1);
            this.f33973b = voipIdCache;
        }

        /* renamed from: d */
        public Object m24426d(Object obj) {
            AbstractC11796a abstractC11796a = (AbstractC11796a) obj;
            s1.z.c.l.e(abstractC11796a, "$receiver");
            abstractC11796a.mo23985j(this.f33973b);
            return s.a;
        }
    }

    @Inject
    public C11577z0(@Named("IO") f fVar, a<AbstractC8432l> aVar, a<AbstractC11744a> aVar2, a<AbstractC11796a> aVar3, AbstractC19222c abstractC19222c, a<AbstractC11409g1> aVar4, a<AbstractC11369a> aVar5) {
        s1.z.c.l.e(fVar, "asyncContext");
        s1.z.c.l.e(aVar, "accountManager");
        s1.z.c.l.e(aVar2, "voipRestApi");
        s1.z.c.l.e(aVar3, "voipDao");
        s1.z.c.l.e(abstractC19222c, "clock");
        s1.z.c.l.e(aVar4, "voipSettings");
        s1.z.c.l.e(aVar5, "targetDomainResolver");
        this.f33952a = fVar;
        this.f33953b = aVar;
        this.f33954c = aVar2;
        this.f33955d = aVar3;
        this.f33956e = abstractC19222c;
        this.f33957f = aVar4;
        this.f33958g = aVar5;
    }

    /* renamed from: f */
    public static final HashMap m24450f(C11577z0 c11577z0, Map map) {
        Objects.requireNonNull(c11577z0);
        HashMap hashMap = new HashMap(map.size());
        for (Map.Entry entry : map.entrySet()) {
            hashMap.put(C19286f.m13653z((String) entry.getKey()), entry.getValue());
        }
        return hashMap;
    }

    /* renamed from: j */
    public static /* synthetic */ VoipIdCache m24446j(C11577z0 c11577z0, VoipIdCache voipIdCache, Long l, boolean z, int i) {
        if ((i & 2) != 0) {
            z = true;
        }
        return c11577z0.m24447i(voipIdCache, null, z);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11556y0
    /* renamed from: a */
    public Object mo24455a(Set<String> set, d<? super Map<String, String>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f33952a, new C11581d(set, null), dVar);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11556y0
    /* renamed from: b */
    public Object mo24454b(String str, d<? super String> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f33952a, new C11580c(str, null), dVar);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11556y0
    /* renamed from: c */
    public Object mo24453c(String str, d<? super String> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f33952a, new C11583e(str, null), dVar);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11556y0
    /* renamed from: d */
    public Object mo24452d(d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f33952a, new C11579b(null), dVar);
        return a4 == s1.w.j.a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11556y0
    /* renamed from: e */
    public Object mo24451e(d<? super String> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f33952a, new C11585f(null), dVar);
    }

    /* renamed from: g */
    public final VoipIdCache m24449g(VoipIdDto voipIdDto, String str) {
        VoipIdCache voipIdCache = new VoipIdCache(voipIdDto.getId(), str, voipIdDto.getExpiryEpochSeconds());
        Object obj = this.f33955d.get();
        s1.z.c.l.d(obj, "voipDao.get()");
        C19291g.m13578W0((AbstractC11796a) obj, new C11578a(voipIdCache));
        return voipIdCache;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    public final <T> T m24448h(b<T> bVar) {
        T t;
        try {
            t = bVar.execute().b;
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            t = null;
        }
        return t;
    }

    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* renamed from: i */
    public final VoipIdCache m24447i(VoipIdCache voipIdCache, Long l, boolean z) {
        voipIdCache.getExpiryEpochSeconds();
        char longValue = l != null ? l.longValue() : voipIdCache.getExpiryEpochSeconds();
        VoipIdCache voipIdCache2 = voipIdCache;
        if (TimeUnit.MILLISECONDS.toSeconds(this.f33956e.mo13819c()) >= longValue) {
            String str = "Voip id cache is expired. Cache:" + voipIdCache + ". Delete cache: " + z;
            if (z) {
                Object obj = this.f33955d.get();
                s1.z.c.l.d(obj, "voipDao.get()");
                C19291g.m13578W0((AbstractC11796a) obj, new C11587g(voipIdCache));
            }
            voipIdCache2 = null;
        }
        return voipIdCache2;
    }
}
