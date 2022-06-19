package p193e.p194a.p619d.p643d.p650c;

import android.os.Trace;
import com.truecaller.calling.contacts_list.data.SortedContactsRepository;
import com.truecaller.data.entity.Contact;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p1727n3.p1807k.p1816e.C26516h;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import q3.a.n0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
import s1.z.c.y;
@e(c = "com.truecaller.voip.contacts.data.VoipContactsDataProviderImpl$fetchVoipContacts$2", f = "VoipContactsDataProvider.kt", l = {47, 47, 65}, m = "invokeSuspend")
/* renamed from: e.a.d.d.c.d */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/c/d.class */
public final class C11700d extends i implements p<i0, d<? super List<? extends C11694a>>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f34334e;

    /* renamed from: f */
    public int f34335f;

    /* renamed from: g */
    public final /* synthetic */ C11696c f34336g;

    /* renamed from: h */
    public final /* synthetic */ boolean f34337h;

    /* renamed from: i */
    public final /* synthetic */ Set f34338i;

    /* renamed from: j */
    public final /* synthetic */ boolean f34339j;

    /* renamed from: k */
    public final /* synthetic */ boolean f34340k;

    @e(c = "com.truecaller.voip.contacts.data.VoipContactsDataProviderImpl$fetchVoipContacts$2$1", f = "VoipContactsDataProvider.kt", l = {66, 74}, m = "invokeSuspend")
    /* renamed from: e.a.d.d.c.d$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/c/d$a.class */
    public static final class C11701a extends i implements p<i0, d<? super List<? extends C11694a>>, Object> {

        /* renamed from: e */
        public Object f34341e;

        /* renamed from: f */
        public Object f34342f;

        /* renamed from: g */
        public int f34343g;

        /* renamed from: i */
        public final /* synthetic */ c0 f34345i;

        /* renamed from: j */
        public final /* synthetic */ y f34346j;

        /* renamed from: k */
        public final /* synthetic */ c0 f34347k;

        /* renamed from: l */
        public final /* synthetic */ c0 f34348l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11701a(c0 c0Var, y yVar, c0 c0Var2, c0 c0Var3, d dVar) {
            super(2, dVar);
            C11700d.this = r5;
            this.f34345i = c0Var;
            this.f34346j = yVar;
            this.f34347k = c0Var2;
            this.f34348l = c0Var3;
        }

        /* renamed from: i */
        public final d<s> m24206i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11701a(this.f34345i, this.f34346j, this.f34347k, this.f34348l, dVar);
        }

        /* renamed from: k */
        public final Object m24205k(Object obj, Object obj2) {
            return m24206i(obj, (d) obj2).m24204s(s.a);
        }

        /* renamed from: s */
        public final Object m24204s(Object obj) {
            List list;
            C11696c c11696c;
            C11696c c11696c2;
            a aVar = a.a;
            int i = this.f34343g;
            if (i == 0) {
                C25225a.m3932a3(obj);
                c11696c2 = C11700d.this.f34336g;
                this.f34341e = c11696c2;
                this.f34343g = 1;
                Object s = ((n0) this.f34345i.a).s(this);
                obj = s;
                if (s == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c11696c = (C11696c) this.f34342f;
                list = (List) this.f34341e;
                C25225a.m3932a3(obj);
                C11700d c11700d = C11700d.this;
                List m24219a = C11696c.m24219a(c11696c, (List) obj, false, c11700d.f34339j, this.f34346j.a, (HashSet) this.f34347k.a, c11700d.f34340k);
                Method method = C26516h.f74306b;
                Trace.endSection();
                return s1.u.i.l0(list, m24219a);
            } else {
                c11696c2 = (C11696c) this.f34341e;
                C25225a.m3932a3(obj);
            }
            C11700d c11700d2 = C11700d.this;
            list = C11696c.m24219a(c11696c2, (List) obj, true, c11700d2.f34339j, this.f34346j.a, (HashSet) this.f34347k.a, c11700d2.f34340k);
            c11696c = C11700d.this.f34336g;
            this.f34341e = list;
            this.f34342f = c11696c;
            this.f34343g = 2;
            obj = ((n0) this.f34348l.a).s(this);
            if (obj == aVar) {
                return aVar;
            }
            C11700d c11700d3 = C11700d.this;
            List m24219a2 = C11696c.m24219a(c11696c, (List) obj, false, c11700d3.f34339j, this.f34346j.a, (HashSet) this.f34347k.a, c11700d3.f34340k);
            Method method2 = C26516h.f74306b;
            Trace.endSection();
            return s1.u.i.l0(list, m24219a2);
        }
    }

    @e(c = "com.truecaller.voip.contacts.data.VoipContactsDataProviderImpl$fetchVoipContacts$2$identifiedContacts$1", f = "VoipContactsDataProvider.kt", l = {58}, m = "invokeSuspend")
    /* renamed from: e.a.d.d.c.d$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/c/d$b.class */
    public static final class C11702b extends i implements p<i0, d<? super List<? extends Contact>>, Object> {

        /* renamed from: e */
        public int f34349e;

        /* renamed from: g */
        public final /* synthetic */ Set f34351g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11702b(Set set, d dVar) {
            super(2, dVar);
            C11700d.this = r5;
            this.f34351g = set;
        }

        /* renamed from: i */
        public final d<s> m24203i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11702b(this.f34351g, dVar);
        }

        /* renamed from: k */
        public final Object m24202k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11702b(this.f34351g, dVar).m24201s(s.a);
        }

        /* renamed from: s */
        public final Object m24201s(Object obj) {
            a aVar = a.a;
            int i = this.f34349e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                SortedContactsRepository sortedContactsRepository = C11700d.this.f34336g.f34322d;
                Set<String> d1 = s1.u.i.d1(this.f34351g);
                this.f34349e = 1;
                Object m35751b = sortedContactsRepository.m35751b(d1, false, this);
                obj = m35751b;
                if (m35751b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.voip.contacts.data.VoipContactsDataProviderImpl$fetchVoipContacts$2$phonebookContacts$1", f = "VoipContactsDataProvider.kt", l = {53}, m = "invokeSuspend")
    /* renamed from: e.a.d.d.c.d$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/c/d$c.class */
    public static final class C11703c extends i implements p<i0, d<? super List<? extends Contact>>, Object> {

        /* renamed from: e */
        public int f34352e;

        /* renamed from: g */
        public final /* synthetic */ Set f34354g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11703c(Set set, d dVar) {
            super(2, dVar);
            C11700d.this = r5;
            this.f34354g = set;
        }

        /* renamed from: i */
        public final d<s> m24200i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11703c(this.f34354g, dVar);
        }

        /* renamed from: k */
        public final Object m24199k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11703c(this.f34354g, dVar).m24198s(s.a);
        }

        /* renamed from: s */
        public final Object m24198s(Object obj) {
            a aVar = a.a;
            int i = this.f34352e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                SortedContactsRepository sortedContactsRepository = C11700d.this.f34336g.f34322d;
                Set<String> d1 = s1.u.i.d1(this.f34354g);
                this.f34352e = 1;
                Object m35751b = sortedContactsRepository.m35751b(d1, true, this);
                obj = m35751b;
                if (m35751b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11700d(C11696c c11696c, boolean z, Set set, boolean z2, boolean z3, d dVar) {
        super(2, dVar);
        this.f34336g = c11696c;
        this.f34337h = z;
        this.f34338i = set;
        this.f34339j = z2;
        this.f34340k = z3;
    }

    /* renamed from: i */
    public final d<s> m24209i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11700d c11700d = new C11700d(this.f34336g, this.f34337h, this.f34338i, this.f34339j, this.f34340k, dVar);
        c11700d.f34334e = obj;
        return c11700d;
    }

    /* renamed from: k */
    public final Object m24208k(Object obj, Object obj2) {
        return m24209i(obj, (d) obj2).m24207s(s.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01b8  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m24207s(java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p643d.p650c.C11700d.m24207s(java.lang.Object):java.lang.Object");
    }
}
