package p193e.p194a.p619d.p637c0;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.api.services.presence.p139v1.models.Voip;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import com.truecaller.voip.VoipCallHistory;
import com.truecaller.voip.VoipCallOptions;
import com.truecaller.voip.VoipGroupPushNotification;
import com.truecaller.voip.VoipPushNotification;
import com.truecaller.voip.contacts.p188ui.VoipContactsActivity;
import com.truecaller.voip.contacts.p188ui.VoipContactsScreenParams;
import com.truecaller.voip.p189db.VoipAvailability;
import com.truecaller.voip.p189db.VoipDatabase;
import com.truecaller.voip.p192ui.calldetails.VoipGroupCallDetailsActivity;
import com.truecaller.voip.util.VoipAnalyticsFailedCallAction;
import com.truecaller.voip.util.VoipSearchDirection;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1049l4.C17409e;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p406e.C8415b;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p619d.p653r.AbstractC11782a;
import p193e.p194a.p619d.p653r.C11784c;
import p193e.p194a.p619d.p655t.AbstractC11796a;
import p193e.p194a.p619d.p655t.C11802c;
import p193e.p194a.p804h.p835s0.c$a;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import q3.a.i0;
import q3.a.j0;
import s1.f0.q;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
import s1.z.c.y;
/* renamed from: e.a.d.c0.t1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/t1.class */
public final class C11481t1 implements AbstractC11476s1, i0 {

    /* renamed from: a */
    public final f f33701a;

    /* renamed from: b */
    public final f f33702b;

    /* renamed from: c */
    public final Context f33703c;

    /* renamed from: d */
    public final AbstractC11705f f33704d;

    /* renamed from: e */
    public final C11802c f33705e;

    /* renamed from: f */
    public final AbstractC19321u f33706f;

    /* renamed from: g */
    public final AbstractC8621z f33707g;

    /* renamed from: h */
    public final AbstractC11405f0 f33708h;

    /* renamed from: i */
    public final AbstractC19854f<AbstractC17348c> f33709i;

    /* renamed from: j */
    public final AbstractC8432l f33710j;

    /* renamed from: k */
    public final AbstractC11782a f33711k;

    @e(c = "com.truecaller.voip.util.VoipUtilImpl$getVoipCapableNumbers$1", f = "VoipUtilImpl.kt", l = {193}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.t1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/t1$a.class */
    public static final class C11482a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f33712e;

        /* renamed from: g */
        public final /* synthetic */ List f33714g;

        /* renamed from: h */
        public final /* synthetic */ AbstractC11393d1 f33715h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11482a(List list, AbstractC11393d1 abstractC11393d1, d dVar) {
            super(2, dVar);
            C11481t1.this = r5;
            this.f33714g = list;
            this.f33715h = abstractC11393d1;
        }

        /* renamed from: i */
        public final d<s> m24609i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11482a(this.f33714g, this.f33715h, dVar);
        }

        /* renamed from: k */
        public final Object m24608k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11482a(this.f33714g, this.f33715h, dVar).m24607s(s.a);
        }

        /* renamed from: s */
        public final Object m24607s(Object obj) {
            a aVar = a.a;
            int i = this.f33712e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC11705f abstractC11705f = C11481t1.this.f33704d;
                List<String> list = this.f33714g;
                this.f33712e = 1;
                Object mo24185h = abstractC11705f.mo24185h(list, this);
                obj = mo24185h;
                if (mo24185h == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            this.f33715h.mo24754a((List) obj);
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.util.VoipUtilImpl$isContactVoipCapable$1", f = "VoipUtilImpl.kt", l = {265, 73}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.t1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/t1$b.class */
    public static final class C11483b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f33716e;

        /* renamed from: f */
        public Object f33717f;

        /* renamed from: g */
        public int f33718g;

        /* renamed from: i */
        public final /* synthetic */ Contact f33720i;

        /* renamed from: j */
        public final /* synthetic */ AbstractC11430l0 f33721j;

        @e(c = "com.truecaller.voip.util.VoipUtilImpl$isContactVoipCapable$1$1", f = "VoipUtilImpl.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.d.c0.t1$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/t1$b$a.class */
        public static final class C11484a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ y f33723f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11484a(y yVar, d dVar) {
                super(2, dVar);
                C11483b.this = r5;
                this.f33723f = yVar;
            }

            /* renamed from: i */
            public final d<s> m24603i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C11484a(this.f33723f, dVar);
            }

            /* renamed from: k */
            public final Object m24602k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C11483b c11483b = C11483b.this;
                y yVar = this.f33723f;
                dVar.getContext();
                s sVar = s.a;
                C25225a.m3932a3(sVar);
                c11483b.f33721j.mo10471a(yVar.a);
                return sVar;
            }

            /* renamed from: s */
            public final Object m24601s(Object obj) {
                C25225a.m3932a3(obj);
                C11483b.this.f33721j.mo10471a(this.f33723f.a);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11483b(Contact contact, AbstractC11430l0 abstractC11430l0, d dVar) {
            super(2, dVar);
            C11481t1.this = r5;
            this.f33720i = contact;
            this.f33721j = abstractC11430l0;
        }

        /* renamed from: i */
        public final d<s> m24606i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11483b(this.f33720i, this.f33721j, dVar);
        }

        /* renamed from: k */
        public final Object m24605k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11483b(this.f33720i, this.f33721j, dVar).m24604s(s.a);
        }

        /* renamed from: s */
        public final Object m24604s(Object obj) {
            Object obj2;
            y yVar;
            y yVar2;
            a aVar = a.a;
            int i = this.f33718g;
            if (i == 0) {
                C25225a.m3932a3(obj);
                y yVar3 = new y();
                C11481t1 c11481t1 = C11481t1.this;
                List<Number> m35557M = this.f33720i.m35557M();
                l.d(m35557M, "contact.numbers");
                List z = s1.u.i.z(m35557M);
                ArrayList arrayList = new ArrayList();
                Iterator it = ((ArrayList) z).iterator();
                while (it.hasNext()) {
                    String m35479e = ((Number) it.next()).m35479e();
                    if (m35479e != null) {
                        arrayList.add(m35479e);
                    }
                }
                this.f33716e = yVar3;
                this.f33717f = yVar3;
                this.f33718g = 1;
                obj2 = c11481t1.m24611m(arrayList, this);
                if (obj2 == aVar) {
                    return aVar;
                }
                yVar = yVar3;
                yVar2 = yVar3;
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                yVar2 = (y) this.f33717f;
                yVar = (y) this.f33716e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            yVar2.a = ((Boolean) obj2).booleanValue();
            f fVar = C11481t1.this.f33701a;
            C11484a c11484a = new C11484a(yVar, null);
            this.f33716e = null;
            this.f33717f = null;
            this.f33718g = 2;
            if (s1.a.a.a.v0.f.d.a4(fVar, c11484a, this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.util.VoipUtilImpl", f = "VoipUtilImpl.kt", l = {92}, m = "isContactVoipCapable")
    /* renamed from: e.a.d.c0.t1$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/t1$c.class */
    public static final class C11485c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f33724d;

        /* renamed from: e */
        public int f33725e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11485c(d dVar) {
            super(dVar);
            C11481t1.this = r4;
        }

        /* renamed from: s */
        public final Object m24600s(Object obj) {
            this.f33724d = obj;
            this.f33725e |= Integer.MIN_VALUE;
            return C11481t1.this.m24611m(null, this);
        }
    }

    @e(c = "com.truecaller.voip.util.VoipUtilImpl$isParticipantVoipCapable$1", f = "VoipUtilImpl.kt", l = {86}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.t1$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/t1$d.class */
    public static final class C11486d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f33727e;

        /* renamed from: g */
        public final /* synthetic */ Participant f33729g;

        /* renamed from: h */
        public final /* synthetic */ AbstractC11430l0 f33730h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11486d(Participant participant, AbstractC11430l0 abstractC11430l0, d dVar) {
            super(2, dVar);
            C11481t1.this = r5;
            this.f33729g = participant;
            this.f33730h = abstractC11430l0;
        }

        /* renamed from: i */
        public final d<s> m24599i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11486d(this.f33729g, this.f33730h, dVar);
        }

        /* renamed from: k */
        public final Object m24598k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11486d(this.f33729g, this.f33730h, dVar).m24597s(s.a);
        }

        /* renamed from: s */
        public final Object m24597s(Object obj) {
            a aVar = a.a;
            int i = this.f33727e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C11481t1 c11481t1 = C11481t1.this;
                List<String> m3962T1 = C25225a.m3962T1(this.f33729g.f11572e);
                this.f33727e = 1;
                Object m24611m = c11481t1.m24611m(m3962T1, this);
                obj = m24611m;
                if (m24611m == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            this.f33730h.mo10471a(((Boolean) obj).booleanValue());
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.util.VoipUtilImpl$onPresenceUpdated$1", f = "VoipUtilImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.t1$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/t1$e.class */
    public static final class C11487e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ ArrayList f33732f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11487e(ArrayList arrayList, d dVar) {
            super(2, dVar);
            C11481t1.this = r5;
            this.f33732f = arrayList;
        }

        /* renamed from: i */
        public final d<s> m24596i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11487e(this.f33732f, dVar);
        }

        /* renamed from: k */
        public final Object m24595k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11481t1 c11481t1 = C11481t1.this;
            ArrayList arrayList = this.f33732f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            C11802c c11802c = c11481t1.f33705e;
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (true) {
                VoipAvailability voipAvailability = null;
                if (!it.hasNext()) {
                    break;
                }
                C17409e c17409e = (C17409e) it.next();
                Objects.requireNonNull(c11481t1);
                Voip voip = c17409e.f48759f;
                if (voip != null) {
                    voipAvailability = new VoipAvailability(C19286f.m13695I(c17409e.f48754a), !voip.getDisabled(), voip.getVersion());
                }
                if (voipAvailability != null) {
                    arrayList2.add(voipAvailability);
                }
            }
            Objects.requireNonNull(c11802c);
            l.e(arrayList2, "availabilities");
            VoipDatabase m34335a = VoipDatabase.f16349c.m34335a(c11802c.f34693a);
            AbstractC11796a abstractC11796a = null;
            if (m34335a != null) {
                abstractC11796a = m34335a.mo34334a();
            }
            if (abstractC11796a != null) {
                abstractC11796a.mo23991d(arrayList2);
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m24594s(Object obj) {
            C25225a.m3932a3(obj);
            C11802c c11802c = C11481t1.this.f33705e;
            ArrayList arrayList = this.f33732f;
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (true) {
                VoipAvailability voipAvailability = null;
                if (!it.hasNext()) {
                    break;
                }
                C17409e c17409e = (C17409e) it.next();
                Objects.requireNonNull(C11481t1.this);
                Voip voip = c17409e.f48759f;
                if (voip != null) {
                    voipAvailability = new VoipAvailability(C19286f.m13695I(c17409e.f48754a), !voip.getDisabled(), voip.getVersion());
                }
                if (voipAvailability != null) {
                    arrayList2.add(voipAvailability);
                }
            }
            Objects.requireNonNull(c11802c);
            l.e(arrayList2, "availabilities");
            VoipDatabase m34335a = VoipDatabase.f16349c.m34335a(c11802c.f34693a);
            AbstractC11796a abstractC11796a = null;
            if (m34335a != null) {
                abstractC11796a = m34335a.mo34334a();
            }
            if (abstractC11796a != null) {
                abstractC11796a.mo23991d(arrayList2);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.util.VoipUtilImpl$startCall$1", f = "VoipUtilImpl.kt", l = {265, 125}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.t1$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/t1$f.class */
    public static final class C11488f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f33733e;

        /* renamed from: g */
        public final /* synthetic */ Contact f33735g;

        /* renamed from: h */
        public final /* synthetic */ String f33736h;

        /* renamed from: i */
        public final /* synthetic */ n3.r.a.l f33737i;

        @e(c = "com.truecaller.voip.util.VoipUtilImpl$startCall$1$1", f = "VoipUtilImpl.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.d.c0.t1$f$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/t1$f$a.class */
        public static final class C11489a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ c0 f33739f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11489a(c0 c0Var, d dVar) {
                super(2, dVar);
                C11488f.this = r5;
                this.f33739f = c0Var;
            }

            /* renamed from: i */
            public final d<s> m24590i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C11489a(this.f33739f, dVar);
            }

            /* renamed from: k */
            public final Object m24589k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C11488f c11488f = C11488f.this;
                c0 c0Var = this.f33739f;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                c$a.m19719a(e.a.h.s0.c.f, c11488f.f33737i, c11488f.f33735g, (List) c0Var.a, false, false, false, false, true, null, c11488f.f33736h, false, 1392);
                return sVar;
            }

            /* renamed from: s */
            public final Object m24588s(Object obj) {
                C25225a.m3932a3(obj);
                c$a c_a = e.a.h.s0.c.f;
                C11488f c11488f = C11488f.this;
                c$a.m19719a(c_a, c11488f.f33737i, c11488f.f33735g, (List) this.f33739f.a, false, false, false, false, true, null, c11488f.f33736h, false, 1392);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11488f(Contact contact, String str, n3.r.a.l lVar, d dVar) {
            super(2, dVar);
            C11481t1.this = r5;
            this.f33735g = contact;
            this.f33736h = str;
            this.f33737i = lVar;
        }

        /* renamed from: i */
        public final d<s> m24593i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11488f(this.f33735g, this.f33736h, this.f33737i, dVar);
        }

        /* renamed from: k */
        public final Object m24592k(Object obj, Object obj2) {
            return m24593i(obj, (d) obj2).m24591s(s.a);
        }

        /* renamed from: s */
        public final Object m24591s(Object obj) {
            boolean z;
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f33733e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC11705f abstractC11705f = C11481t1.this.f33704d;
                List<Number> m35557M = this.f33735g.m35557M();
                l.d(m35557M, "contact.numbers");
                ArrayList arrayList = new ArrayList(C25225a.m4004J(m35557M, 10));
                for (Number number : m35557M) {
                    l.d(number, "it");
                    arrayList.add(number.m35479e());
                }
                this.f33733e = 1;
                Object mo24185h = abstractC11705f.mo24185h(arrayList, this);
                obj = mo24185h;
                if (mo24185h == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return sVar;
            } else {
                C25225a.m3932a3(obj);
            }
            List<VoipAvailability> list = (List) obj;
            boolean z2 = true;
            if (list != null) {
                z2 = list.isEmpty();
            }
            if (z2) {
                C11481t1.this.m24610n(this.f33736h, this.f33735g);
                C11481t1.this.f33708h.mo24714e(this.f33736h, VoipAnalyticsFailedCallAction.CALLEE_NOT_CAPABLE);
                return sVar;
            }
            c0 c0Var = new c0();
            List<Number> m35557M2 = this.f33735g.m35557M();
            ArrayList m8670S = C22128a.m8670S(m35557M2, "contact\n                .numbers");
            for (Object obj2 : m35557M2) {
                Number number2 = (Number) obj2;
                if (!(list instanceof Collection) || !list.isEmpty()) {
                    for (VoipAvailability voipAvailability : list) {
                        String phone = voipAvailability.getPhone();
                        l.d(number2, "number");
                        String m35479e = number2.m35479e();
                        l.d(m35479e, "number.normalizedNumber");
                        if (Boolean.valueOf(l.a(phone, C19286f.m13695I(m35479e))).booleanValue()) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                if (Boolean.valueOf(z).booleanValue()) {
                    m8670S.add(obj2);
                }
            }
            HashSet hashSet = new HashSet();
            ArrayList arrayList2 = new ArrayList();
            Iterator it = m8670S.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                Number number3 = (Number) next;
                l.d(number3, "it");
                if (hashSet.add(number3.m35479e())) {
                    arrayList2.add(next);
                }
            }
            c0Var.a = arrayList2;
            f fVar = C11481t1.this.f33701a;
            C11489a c11489a = new C11489a(c0Var, null);
            this.f33733e = 2;
            if (s1.a.a.a.v0.f.d.a4(fVar, c11489a, this) == aVar) {
                return aVar;
            }
            return sVar;
        }
    }

    @Inject
    public C11481t1(@Named("UI") f fVar, @Named("IO") f fVar2, Context context, AbstractC11705f abstractC11705f, C11802c c11802c, AbstractC19321u abstractC19321u, AbstractC8621z abstractC8621z, AbstractC11405f0 abstractC11405f0, AbstractC19854f<AbstractC17348c> abstractC19854f, AbstractC8432l abstractC8432l, AbstractC11782a abstractC11782a) {
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC11705f, "voip");
        l.e(c11802c, "voipDbHelper");
        l.e(abstractC19321u, "networkUtil");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(abstractC11405f0, "voipAnalyticsUtil");
        l.e(abstractC19854f, "historyManager");
        l.e(abstractC8432l, "truecallerAccountManager");
        l.e(abstractC11782a, "voipGroupHistoryProvider");
        this.f33701a = fVar;
        this.f33702b = fVar2;
        this.f33703c = context;
        this.f33704d = abstractC11705f;
        this.f33705e = c11802c;
        this.f33706f = abstractC19321u;
        this.f33707g = abstractC8621z;
        this.f33708h = abstractC11405f0;
        this.f33709i = abstractC19854f;
        this.f33710j = abstractC8432l;
        this.f33711k = abstractC11782a;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11476s1
    /* renamed from: a */
    public boolean mo24623a(String str, String str2) {
        l.e(str, "number");
        l.e(str2, "analyticsContext");
        l.e(str, "number");
        l.e(str2, "analyticsContext");
        return mo24613k(str, str2, new VoipCallOptions(0L, 0L, 3));
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11476s1
    /* renamed from: b */
    public void mo24622b(VoipCallHistory voipCallHistory, Context context) {
        l.e(voipCallHistory, "voipCallHistory");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(voipCallHistory, "callHistoryId");
        Intent intent = new Intent(context, VoipGroupCallDetailsActivity.class);
        intent.putExtra("callHistoryID", voipCallHistory);
        context.startActivity(intent);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11476s1
    /* renamed from: c */
    public void mo24621c(Object obj, long j, boolean z) {
        l.e(obj, RemoteMessageConst.NOTIFICATION);
        InternalTruecallerNotification internalTruecallerNotification = (InternalTruecallerNotification) obj;
        String m18647d = C15571h.m18647d("qa_voip_notification_rtm_token");
        l.d(m18647d, "it");
        Long l = null;
        if (r.p(m18647d)) {
            m18647d = null;
        }
        if (m18647d == null) {
            m18647d = internalTruecallerNotification.m34847j("rtm");
        }
        String m34847j = internalTruecallerNotification.m34847j("ac");
        String m34847j2 = internalTruecallerNotification.m34847j("cid");
        String m34844o = internalTruecallerNotification.m34844o();
        String m34847j3 = internalTruecallerNotification.m34847j("rtc");
        String m34847j4 = internalTruecallerNotification.m34847j("uid");
        Integer h = m34847j4 != null ? q.h(m34847j4) : null;
        String m34847j5 = internalTruecallerNotification.m34847j("ens");
        String m34847j6 = internalTruecallerNotification.m34847j("enm");
        String m34847j7 = internalTruecallerNotification.m34847j("ch");
        String m34847j8 = internalTruecallerNotification.m34847j("cide");
        if (m34847j8 != null) {
            l = q.j(m34847j8);
        }
        this.f33704d.mo24171v(new VoipPushNotification(j, m34847j, m34847j2, m34844o, m18647d, m34847j3, h, m34847j5, m34847j6, m34847j7, l, internalTruecallerNotification.m34847j("cidh"), z));
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11476s1
    /* renamed from: d */
    public void mo24620d(Intent intent) {
        l.e(intent, "intent");
        if (!this.f33704d.isEnabled() || !intent.hasExtra("com.truecaller.datamanager.EXTRA_PRESENCE")) {
            return;
        }
        Serializable serializableExtra = intent.getSerializableExtra("com.truecaller.datamanager.EXTRA_PRESENCE");
        Objects.requireNonNull(serializableExtra, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.truecaller.presence.Presence> /* = java.util.ArrayList<com.truecaller.presence.Presence> */");
        s1.a.a.a.v0.f.d.w2(this, this.f33702b, (j0) null, new C11487e((ArrayList) serializableExtra, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11476s1
    /* renamed from: e */
    public void mo24619e(String str, boolean z) {
        l.e(str, "number");
        this.f33704d.mo24188e(str, z);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11476s1
    /* renamed from: f */
    public void mo24618f(Activity activity, long j, String str) {
        s1.u.s sVar;
        l.e(activity, "activity");
        l.e(str, "analyticsContext");
        C11784c c11784c = (C11784c) this.f33711k;
        Objects.requireNonNull(c11784c);
        s1.u.s sVar2 = s1.u.s.a;
        try {
            Cursor query = c11784c.f34610c.query(Uri.withAppendedPath(C17891a1.f50888a, "voip_history_with_aggregated_contacts_shallow"), new String[]{"voip_history_normalized_number"}, "voip_history_id = ?", new String[]{String.valueOf(j)}, "position ASC");
            sVar = sVar2;
            if (query != null) {
                s1.u.s arrayList = new ArrayList();
                while (query.moveToNext()) {
                    l.d(query, "cursor");
                    String m13628F1 = C19291g.m13628F1(query, "voip_history_normalized_number");
                    if (m13628F1 == null) {
                        m13628F1 = "";
                    }
                    arrayList.add(m13628F1);
                }
                C25225a.m4016G(query, null);
                sVar = arrayList;
            }
        } catch (SQLException e) {
            sVar = sVar2;
        }
        Set d1 = s1.u.i.d1(s1.u.i.L0(sVar, 7));
        l.e(activity, "activity");
        l.e(d1, "peersToCall");
        l.e(str, "analyticsContext");
        C8415b mo28577g = this.f33710j.mo28577g();
        String str2 = null;
        if (mo28577g != null) {
            str2 = mo28577g.f26095b;
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : d1) {
            if (!l.a((String) obj, str2)) {
                arrayList2.add(obj);
            }
        }
        VoipContactsActivity.C4794c.m34336c(VoipContactsActivity.f16301B, activity, 0, new VoipContactsScreenParams(true, null, true, s1.u.i.d1(arrayList2), str, 2, null), false, 2);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11476s1
    /* renamed from: g */
    public void mo24617g(Contact contact, AbstractC11430l0 abstractC11430l0) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(abstractC11430l0, "listener");
        if (!this.f33704d.isEnabled()) {
            abstractC11430l0.mo10471a(false);
        } else {
            s1.a.a.a.v0.f.d.w2(this, this.f33702b, (j0) null, new C11483b(contact, abstractC11430l0, null), 2, (Object) null);
        }
    }

    public f getCoroutineContext() {
        return this.f33701a;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11476s1
    /* renamed from: h */
    public boolean mo24616h(n3.r.a.l lVar, Contact contact, String str) {
        l.e(str, "analyticsContext");
        if (contact == null) {
            return false;
        }
        if (this.f33704d.mo24175r() || this.f33706f.mo13429d()) {
            s1.a.a.a.v0.f.d.w2(this, this.f33702b, (j0) null, new C11488f(contact, str, lVar, null), 2, (Object) null);
            return true;
        }
        C19291g.m13589S1(this.f33703c, 2131890295, null, 0, 6);
        m24610n(str, contact);
        this.f33708h.mo24714e(str, VoipAnalyticsFailedCallAction.OFFLINE);
        return false;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11476s1
    /* renamed from: i */
    public void mo24615i(Participant participant, AbstractC11430l0 abstractC11430l0) {
        l.e(participant, "participant");
        l.e(abstractC11430l0, "listener");
        if (!this.f33704d.isEnabled()) {
            abstractC11430l0.mo10471a(false);
        } else {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11486d(participant, abstractC11430l0, null), 3, (Object) null);
        }
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11476s1
    /* renamed from: j */
    public void mo24614j(Object obj, long j) {
        l.e(obj, RemoteMessageConst.NOTIFICATION);
        InternalTruecallerNotification internalTruecallerNotification = (InternalTruecallerNotification) obj;
        String m34847j = internalTruecallerNotification.m34847j("ch");
        String m34847j2 = internalTruecallerNotification.m34847j("cid");
        String m34847j3 = internalTruecallerNotification.m34847j("cide");
        this.f33704d.mo24169x(new VoipGroupPushNotification(j, m34847j, m34847j2, m34847j3 != null ? q.j(m34847j3) : null));
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11476s1
    /* renamed from: k */
    public boolean mo24613k(String str, String str2, VoipCallOptions voipCallOptions) {
        l.e(str, "number");
        l.e(str2, "analyticsContext");
        l.e(voipCallOptions, "callOptions");
        String mo28181j = this.f33707g.mo28181j(str);
        if (mo28181j != null) {
            str = mo28181j;
        }
        this.f33708h.mo24711h(str2, str, VoipSearchDirection.OUTGOING);
        String str3 = null;
        if (!this.f33704d.mo24175r() && !this.f33706f.mo13429d()) {
            C19291g.m13589S1(this.f33703c, 2131890295, null, 0, 6);
            this.f33708h.mo24714e(str2, VoipAnalyticsFailedCallAction.OFFLINE);
            return false;
        }
        C8415b mo28577g = this.f33710j.mo28577g();
        if (mo28577g != null) {
            str3 = mo28577g.f26095b;
        }
        if (l.a(str3, str)) {
            return false;
        }
        this.f33704d.mo24182k(str, str2, voipCallOptions);
        this.f33709i.mo11854a().mo16250B(str);
        return true;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11476s1
    /* renamed from: l */
    public void mo24612l(List<String> list, AbstractC11393d1 abstractC11393d1) {
        l.e(list, "normalizedNumbers");
        l.e(abstractC11393d1, "listener");
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11482a(list, abstractC11393d1, null), 3, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m24611m(java.util.List<java.lang.String> r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p619d.p637c0.C11481t1.C11485c
            if (r0 == 0) goto L2a
            r0 = r7
            e.a.d.c0.t1$c r0 = (p193e.p194a.p619d.p637c0.C11481t1.C11485c) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f33725e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f33725e = r1
            r0 = r8
            r7 = r0
            goto L34
        L2a:
            e.a.d.c0.t1$c r0 = new e.a.d.c0.t1$c
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L34:
            r0 = r7
            java.lang.Object r0 = r0.f33724d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f33725e
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
            goto L85
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
            e.a.d.f r0 = r0.f33704d
            r8 = r0
            r0 = r7
            r1 = 1
            r0.f33725e = r1
            r0 = r8
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.mo24185h(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r10
            if (r0 != r1) goto L85
            r0 = r10
            return r0
        L85:
            r0 = r6
            java.util.List r0 = (java.util.List) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto La0
            r0 = r6
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L9a
            goto La0
        L9a:
            r0 = 0
            r9 = r0
            goto La3
        La0:
            r0 = 1
            r9 = r0
        La3:
            r0 = r9
            r1 = 1
            r0 = r0 ^ r1
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.C11481t1.m24611m(java.util.List, s1.w.d):java.lang.Object");
    }

    /* renamed from: n */
    public final void m24610n(String str, Contact contact) {
        List<Number> m35557M = contact.m35557M();
        l.d(m35557M, "contact.numbers");
        Number number = (Number) s1.u.i.D(m35557M);
        if (number != null) {
            String m35479e = number.m35479e();
            if (m35479e == null) {
                return;
            }
            String mo28181j = this.f33707g.mo28181j(m35479e);
            if (mo28181j != null) {
                m35479e = mo28181j;
            }
            this.f33708h.mo24711h(str, m35479e, VoipSearchDirection.OUTGOING);
        }
    }
}
