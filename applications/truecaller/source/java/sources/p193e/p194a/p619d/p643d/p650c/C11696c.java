package p193e.p194a.p619d.p643d.p650c;

import com.truecaller.calling.contacts_list.data.SortedContactsRepository;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p804h.p806b.p818w0.AbstractC14630d;
import p193e.p194a.p804h.p806b.p818w0.C14629c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.d.d.c.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/c/c.class */
public final class C11696c implements AbstractC11695b {

    /* renamed from: a */
    public final f f34319a;

    /* renamed from: b */
    public final f f34320b;

    /* renamed from: c */
    public final AbstractC11705f f34321c;

    /* renamed from: d */
    public final SortedContactsRepository f34322d;

    /* renamed from: e */
    public final AbstractC14630d f34323e;

    @e(c = "com.truecaller.voip.contacts.data.VoipContactsDataProviderImpl", f = "VoipContactsDataProvider.kt", l = {169, 173}, m = "fetchSuggestedContacts")
    /* renamed from: e.a.d.d.c.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/c/c$a.class */
    public static final class C11697a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f34324d;

        /* renamed from: e */
        public int f34325e;

        /* renamed from: g */
        public Object f34327g;

        /* renamed from: h */
        public Object f34328h;

        /* renamed from: i */
        public Object f34329i;

        /* renamed from: j */
        public Object f34330j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11697a(d dVar) {
            super(dVar);
            C11696c.this = r4;
        }

        /* renamed from: s */
        public final Object m24216s(Object obj) {
            this.f34324d = obj;
            this.f34325e |= Integer.MIN_VALUE;
            return C11696c.this.m24217c(null, this);
        }
    }

    @e(c = "com.truecaller.voip.contacts.data.VoipContactsDataProviderImpl$fetchSuggestedContacts$contacts$1", f = "VoipContactsDataProvider.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.d.c.c$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/c/c$b.class */
    public static final class C11698b extends i implements p<i0, d<? super List<? extends C11694a>>, Object> {

        /* renamed from: e */
        public final /* synthetic */ c0 f34331e;

        /* renamed from: f */
        public final /* synthetic */ List f34332f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11698b(c0 c0Var, List list, d dVar) {
            super(2, dVar);
            this.f34331e = c0Var;
            this.f34332f = list;
        }

        /* renamed from: i */
        public final d<s> m24215i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11698b(this.f34331e, this.f34332f, dVar);
        }

        /* renamed from: k */
        public final Object m24214k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11698b(this.f34331e, this.f34332f, dVar).m24213s(s.a);
        }

        /* renamed from: s */
        public final Object m24213s(Object obj) {
            ArrayList arrayList;
            C25225a.m3932a3(obj);
            if (!((List) this.f34331e.a).isEmpty()) {
                List<C14629c> list = (List) this.f34331e.a;
                ArrayList arrayList2 = new ArrayList();
                for (C14629c c14629c : list) {
                    Contact contact = c14629c.f42110b;
                    Long id = contact != null ? contact.getId() : null;
                    if (id != null) {
                        arrayList2.add(id);
                    }
                }
                HashSet Q0 = s1.u.i.Q0(arrayList2);
                List list2 = this.f34332f;
                ArrayList arrayList3 = new ArrayList();
                Iterator it = list2.iterator();
                while (true) {
                    arrayList = arrayList3;
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    C11694a c11694a = (C11694a) next;
                    if (Boolean.valueOf(c11694a.f34316e && s1.u.i.l(Q0, c11694a.f34312a.getId())).booleanValue()) {
                        arrayList3.add(next);
                    }
                }
            } else {
                arrayList = s1.u.s.a;
            }
            return arrayList;
        }
    }

    @e(c = "com.truecaller.voip.contacts.data.VoipContactsDataProviderImpl$fetchSuggestedContacts$suggestedContacts$1", f = "VoipContactsDataProvider.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.d.c.c$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/c/c$c.class */
    public static final class C11699c extends i implements p<i0, d<? super List<? extends C14629c>>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11699c(d dVar) {
            super(2, dVar);
            C11696c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24212i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11699c(dVar);
        }

        /* renamed from: k */
        public final Object m24211k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11696c c11696c = C11696c.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c11696c.f34323e.m19850d(10);
        }

        /* renamed from: s */
        public final Object m24210s(Object obj) {
            C25225a.m3932a3(obj);
            return C11696c.this.f34323e.m19850d(10);
        }
    }

    @Inject
    public C11696c(@Named("IO") f fVar, @Named("CPU") f fVar2, AbstractC11705f abstractC11705f, SortedContactsRepository sortedContactsRepository, AbstractC14630d abstractC14630d) {
        l.e(fVar, "asyncContextIo");
        l.e(fVar2, "asyncContextComputation");
        l.e(abstractC11705f, "voip");
        l.e(sortedContactsRepository, "sortedContactsRepository");
        l.e(abstractC14630d, "suggestedContactsManager");
        this.f34319a = fVar;
        this.f34320b = fVar2;
        this.f34321c = abstractC11705f;
        this.f34322d = sortedContactsRepository;
        this.f34323e = abstractC14630d;
    }

    /* renamed from: a */
    public static final List m24219a(C11696c c11696c, List list, boolean z, boolean z2, boolean z3, HashSet hashSet, boolean z4) {
        Objects.requireNonNull(c11696c);
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Contact contact = (Contact) it.next();
            if (contact.m35557M().size() <= 1 || !z2) {
                List<Number> m35557M = contact.m35557M();
                l.d(m35557M, "contact.numbers");
                Object B = s1.u.i.B(m35557M);
                l.d(B, "contact.numbers.first()");
                arrayList.add(c11696c.m24218b(contact, (Number) B, false, z3, hashSet, z, z4));
            } else {
                List<Number> m35557M2 = contact.m35557M();
                l.d(m35557M2, "contact.numbers");
                for (Number number : m35557M2) {
                    l.d(number, "number");
                    arrayList.add(c11696c.m24218b(contact, number, true, z3, hashSet, z, z4));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public final C11694a m24218b(Contact contact, Number number, boolean z, boolean z2, HashSet<String> hashSet, boolean z3, boolean z4) {
        boolean z5;
        boolean z6;
        if (!z2 || !(!hashSet.isEmpty()) || !hashSet.contains(number.m35479e())) {
            z6 = false;
            z5 = true;
        } else {
            z6 = false;
            if (z4) {
                hashSet.remove(number.m35479e());
                z6 = true;
            }
            z5 = z6;
        }
        String m35566G = contact.m35566G();
        if (m35566G == null) {
            m35566G = contact.m35489x();
        }
        l.d(m35566G, "contact.name ?: contact.displayNameOrNumber");
        return new C11694a(contact, number, m35566G, z6, z5, z, z3);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0145  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m24217c(java.util.List<p193e.p194a.p619d.p643d.p650c.C11694a> r7, s1.w.d<? super java.util.List<p193e.p194a.p619d.p643d.p650c.C11694a>> r8) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p643d.p650c.C11696c.m24217c(java.util.List, s1.w.d):java.lang.Object");
    }
}
