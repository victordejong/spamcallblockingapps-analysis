package p193e.p194a.p935j0;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import java.util.Calendar;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6249x;
import p193e.p194a.p437c.p438a.p479i.AbstractC9117k;
import p193e.p194a.p437c.p438a.p479i.C9109d;
import q3.a.i0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
import w3.b.a.b;
/* renamed from: e.a.j0.a */
/* loaded from: classes13-dex2jar.jar:e/a/j0/a.class */
public final class C15498a implements AbstractC15534n {

    /* renamed from: a */
    public final g f43926a = C25225a.m3978P1(new C15501c());

    /* renamed from: b */
    public final g f43927b = C25225a.m3978P1(new C15514p());

    /* renamed from: c */
    public final g f43928c = C25225a.m3978P1(new C15500b());

    /* renamed from: d */
    public final g f43929d = C25225a.m3978P1(C15499a.f43937d);

    /* renamed from: e */
    public final g f43930e = C25225a.m3978P1(C15499a.f43936c);

    /* renamed from: f */
    public final Context f43931f;

    /* renamed from: g */
    public final f f43932g;

    /* renamed from: h */
    public final AbstractC6249x f43933h;

    /* renamed from: i */
    public final AbstractC6392i0 f43934i;

    /* renamed from: j */
    public final C9109d f43935j;

    /* renamed from: e.a.j0.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/j0/a$a.class */
    public static final class C15499a extends m implements a<Long> {

        /* renamed from: c */
        public static final C15499a f43936c = new C15499a(0);

        /* renamed from: d */
        public static final C15499a f43937d = new C15499a(1);

        /* renamed from: b */
        public final /* synthetic */ int f43938b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15499a(int i) {
            super(0);
            this.f43938b = i;
        }

        public final Object invoke() {
            int i = this.f43938b;
            if (i == 0) {
                Calendar calendar = Calendar.getInstance();
                calendar.set(1, 2021);
                calendar.set(2, 11);
                calendar.set(5, 31);
                l.d(calendar, "calendar");
                return Long.valueOf(calendar.getTimeInMillis());
            } else if (i != 1) {
                throw null;
            } else {
                Calendar calendar2 = Calendar.getInstance();
                calendar2.set(1, 2021);
                calendar2.set(6, 1);
                l.d(calendar2, "calendar");
                return Long.valueOf(calendar2.getTimeInMillis());
            }
        }
    }

    /* renamed from: e.a.j0.a$b */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/a$b.class */
    public static final class C15500b extends m implements a<C15516c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15500b() {
            super(0);
            C15498a.this = r4;
        }

        public Object invoke() {
            return new C15516c(new C15518e(C15498a.m18765o(C15498a.this)), C15498a.m18762r(C15498a.this), C15498a.m18764p(C15498a.this));
        }
    }

    /* renamed from: e.a.j0.a$c */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/a$c.class */
    public static final class C15501c extends m implements a<ContentResolver> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15501c() {
            super(0);
            C15498a.this = r4;
        }

        public Object invoke() {
            return C15498a.this.f43931f.getContentResolver();
        }
    }

    @e(c = "com.truecaller.stats.StatsFetcherImpl$fetchMostFrequentCallPeriod$2", f = "StatsFetcherImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.j0.a$d */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/a$d.class */
    public static final class C15502d extends i implements p<i0, d<? super Integer>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15502d(d dVar) {
            super(2, dVar);
            C15498a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18761i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15502d(dVar);
        }

        /* renamed from: k */
        public final Object m18760k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C15498a c15498a = C15498a.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return C15498a.m18766n(c15498a).mo18724b();
        }

        /* renamed from: s */
        public final Object m18759s(Object obj) {
            C25225a.m3932a3(obj);
            return C15498a.m18766n(C15498a.this).mo18724b();
        }
    }

    @e(c = "com.truecaller.stats.StatsFetcherImpl$fetchNumberOfCallsFromOutsidePhonebook$2", f = "StatsFetcherImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.j0.a$e */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/a$e.class */
    public static final class C15503e extends i implements p<i0, d<? super Integer>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15503e(d dVar) {
            super(2, dVar);
            C15498a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18758i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15503e(dVar);
        }

        /* renamed from: k */
        public final Object m18757k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C15498a c15498a = C15498a.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            ContentResolver m18765o = C15498a.m18765o(c15498a);
            Uri m15697d = C17891a1.C17901j.m15697d();
            l.d(m15697d, "HistoryTable.getContentWithAggregatedContactUri()");
            return C19286f.m13700D(m18765o, m15697d, "COUNT()", "contact_phonebook_id IS NULL AND timestamp BETWEEN ? AND ?", new String[]{String.valueOf(C15498a.m18762r(c15498a)), String.valueOf(C15498a.m18764p(c15498a))});
        }

        /* renamed from: s */
        public final Object m18756s(Object obj) {
            C25225a.m3932a3(obj);
            ContentResolver m18765o = C15498a.m18765o(C15498a.this);
            Uri m15697d = C17891a1.C17901j.m15697d();
            l.d(m15697d, "HistoryTable.getContentWithAggregatedContactUri()");
            return C19286f.m13700D(m18765o, m15697d, "COUNT()", "contact_phonebook_id IS NULL AND timestamp BETWEEN ? AND ?", new String[]{String.valueOf(C15498a.m18762r(C15498a.this)), String.valueOf(C15498a.m18764p(C15498a.this))});
        }
    }

    @e(c = "com.truecaller.stats.StatsFetcherImpl$fetchNumberOfCallsIdentifiedByTruecaller$2", f = "StatsFetcherImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.j0.a$f */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/a$f.class */
    public static final class C15504f extends i implements p<i0, d<? super Integer>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15504f(d dVar) {
            super(2, dVar);
            C15498a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18755i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15504f(dVar);
        }

        /* renamed from: k */
        public final Object m18754k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C15498a c15498a = C15498a.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            ContentResolver m18765o = C15498a.m18765o(c15498a);
            Uri m15697d = C17891a1.C17901j.m15697d();
            l.d(m15697d, "HistoryTable.getContentWithAggregatedContactUri()");
            return C19286f.m13700D(m18765o, m15697d, "COUNT()", "contact_phonebook_id IS NULL AND contact_name IS NOT NULL AND contact_name != '' AND timestamp BETWEEN ? AND ?", new String[]{String.valueOf(C15498a.m18762r(c15498a)), String.valueOf(C15498a.m18764p(c15498a))});
        }

        /* renamed from: s */
        public final Object m18753s(Object obj) {
            C25225a.m3932a3(obj);
            ContentResolver m18765o = C15498a.m18765o(C15498a.this);
            Uri m15697d = C17891a1.C17901j.m15697d();
            l.d(m15697d, "HistoryTable.getContentWithAggregatedContactUri()");
            return C19286f.m13700D(m18765o, m15697d, "COUNT()", "contact_phonebook_id IS NULL AND contact_name IS NOT NULL AND contact_name != '' AND timestamp BETWEEN ? AND ?", new String[]{String.valueOf(C15498a.m18762r(C15498a.this)), String.valueOf(C15498a.m18764p(C15498a.this))});
        }
    }

    @e(c = "com.truecaller.stats.StatsFetcherImpl$fetchNumberOfCallsMade$2", f = "StatsFetcherImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.j0.a$g */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/a$g.class */
    public static final class C15505g extends i implements p<i0, d<? super Integer>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15505g(d dVar) {
            super(2, dVar);
            C15498a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18752i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15505g(dVar);
        }

        /* renamed from: k */
        public final Object m18751k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C15498a c15498a = C15498a.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return C15498a.m18766n(c15498a).mo18722d();
        }

        /* renamed from: s */
        public final Object m18750s(Object obj) {
            C25225a.m3932a3(obj);
            return C15498a.m18766n(C15498a.this).mo18722d();
        }
    }

    @e(c = "com.truecaller.stats.StatsFetcherImpl$fetchNumberOfCallsReceived$2", f = "StatsFetcherImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.j0.a$h */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/a$h.class */
    public static final class C15506h extends i implements p<i0, d<? super Integer>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15506h(d dVar) {
            super(2, dVar);
            C15498a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18749i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15506h(dVar);
        }

        /* renamed from: k */
        public final Object m18748k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C15498a c15498a = C15498a.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return C15498a.m18766n(c15498a).mo18725a();
        }

        /* renamed from: s */
        public final Object m18747s(Object obj) {
            C25225a.m3932a3(obj);
            return C15498a.m18766n(C15498a.this).mo18725a();
        }
    }

    @e(c = "com.truecaller.stats.StatsFetcherImpl$fetchNumberOfGIFsExchanged$2", f = "StatsFetcherImpl.kt", l = {96}, m = "invokeSuspend")
    /* renamed from: e.a.j0.a$i */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/a$i.class */
    public static final class C15507i extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: e */
        public int f43946e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15507i(d dVar) {
            super(2, dVar);
            C15498a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18746i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15507i(dVar);
        }

        /* renamed from: k */
        public final Object m18745k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15507i(dVar).m18744s(s.a);
        }

        /* renamed from: s */
        public final Object m18744s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43946e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15529j m18763q = C15498a.m18763q(C15498a.this);
                this.f43946e = 1;
                Object mo18714b = m18763q.mo18714b(this);
                obj = mo18714b;
                if (mo18714b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return new Integer(((C15528i) obj).f43986f);
        }
    }

    @e(c = "com.truecaller.stats.StatsFetcherImpl$fetchNumberOfIdentifiedSpamCalls$2", f = "StatsFetcherImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.j0.a$j */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/a$j.class */
    public static final class C15508j extends i implements p<i0, d<? super Integer>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15508j(d dVar) {
            super(2, dVar);
            C15498a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18743i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15508j(dVar);
        }

        /* renamed from: k */
        public final Object m18742k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C15498a c15498a = C15498a.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            ContentResolver m18765o = C15498a.m18765o(c15498a);
            Uri m15697d = C17891a1.C17901j.m15697d();
            l.d(m15697d, "HistoryTable.getContentWithAggregatedContactUri()");
            return C19286f.m13700D(m18765o, m15697d, "COUNT()", "contact_spam_type IS NOT NULL AND type IN (2,1,3) AND timestamp BETWEEN ? AND ?", new String[]{String.valueOf(C15498a.m18762r(c15498a)), String.valueOf(C15498a.m18764p(c15498a))});
        }

        /* renamed from: s */
        public final Object m18741s(Object obj) {
            C25225a.m3932a3(obj);
            ContentResolver m18765o = C15498a.m18765o(C15498a.this);
            Uri m15697d = C17891a1.C17901j.m15697d();
            l.d(m15697d, "HistoryTable.getContentWithAggregatedContactUri()");
            return C19286f.m13700D(m18765o, m15697d, "COUNT()", "contact_spam_type IS NOT NULL AND type IN (2,1,3) AND timestamp BETWEEN ? AND ?", new String[]{String.valueOf(C15498a.m18762r(C15498a.this)), String.valueOf(C15498a.m18764p(C15498a.this))});
        }
    }

    @e(c = "com.truecaller.stats.StatsFetcherImpl$fetchNumberOfMessagesAutomaticallyRemoved$2", f = "StatsFetcherImpl.kt", l = {116}, m = "invokeSuspend")
    /* renamed from: e.a.j0.a$k */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/a$k.class */
    public static final class C15509k extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: e */
        public int f43949e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15509k(d dVar) {
            super(2, dVar);
            C15498a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18740i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15509k(dVar);
        }

        /* renamed from: k */
        public final Object m18739k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15509k(dVar).m18738s(s.a);
        }

        /* renamed from: s */
        public final Object m18738s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43949e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15529j m18763q = C15498a.m18763q(C15498a.this);
                this.f43949e = 1;
                Object mo18714b = m18763q.mo18714b(this);
                obj = mo18714b;
                if (mo18714b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return new Integer(((C15528i) obj).f43987g);
        }
    }

    @e(c = "com.truecaller.stats.StatsFetcherImpl$fetchNumberOfMessagesMovedToSpam$2", f = "StatsFetcherImpl.kt", l = {84}, m = "invokeSuspend")
    /* renamed from: e.a.j0.a$l */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/a$l.class */
    public static final class C15510l extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: e */
        public int f43951e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15510l(d dVar) {
            super(2, dVar);
            C15498a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18737i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15510l(dVar);
        }

        /* renamed from: k */
        public final Object m18736k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15510l(dVar).m18735s(s.a);
        }

        /* renamed from: s */
        public final Object m18735s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43951e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15529j m18763q = C15498a.m18763q(C15498a.this);
                this.f43951e = 1;
                Object mo18715a = m18763q.mo18715a(this);
                obj = mo18715a;
                if (mo18715a == aVar) {
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

    @e(c = "com.truecaller.stats.StatsFetcherImpl$fetchNumberOfMessagesReceived$2", f = "StatsFetcherImpl.kt", l = {88}, m = "invokeSuspend")
    /* renamed from: e.a.j0.a$m */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/a$m.class */
    public static final class C15511m extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: e */
        public int f43953e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15511m(d dVar) {
            super(2, dVar);
            C15498a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18734i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15511m(dVar);
        }

        /* renamed from: k */
        public final Object m18733k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15511m(dVar).m18732s(s.a);
        }

        /* renamed from: s */
        public final Object m18732s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43953e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15529j m18763q = C15498a.m18763q(C15498a.this);
                this.f43953e = 1;
                Object mo18714b = m18763q.mo18714b(this);
                obj = mo18714b;
                if (mo18714b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return new Integer(((C15528i) obj).f43983c);
        }
    }

    @e(c = "com.truecaller.stats.StatsFetcherImpl$fetchNumberOfMessagesSent$2", f = "StatsFetcherImpl.kt", l = {92}, m = "invokeSuspend")
    /* renamed from: e.a.j0.a$n */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/a$n.class */
    public static final class C15512n extends i implements p<i0, d<? super Integer>, Object> {

        /* renamed from: e */
        public int f43955e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15512n(d dVar) {
            super(2, dVar);
            C15498a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18731i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15512n(dVar);
        }

        /* renamed from: k */
        public final Object m18730k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15512n(dVar).m18729s(s.a);
        }

        /* renamed from: s */
        public final Object m18729s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43955e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15529j m18763q = C15498a.m18763q(C15498a.this);
                this.f43955e = 1;
                Object mo18714b = m18763q.mo18714b(this);
                obj = mo18714b;
                if (mo18714b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return new Integer(((C15528i) obj).f43982b);
        }
    }

    @e(c = "com.truecaller.stats.StatsFetcherImpl$fetchTopContactName$2", f = "StatsFetcherImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.j0.a$o */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/a$o.class */
    public static final class C15513o extends i implements p<i0, d<? super String>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15513o(d dVar) {
            super(2, dVar);
            C15498a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18728i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15513o(dVar);
        }

        /* renamed from: k */
        public final Object m18727k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C15498a c15498a = C15498a.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            Contact mo18723c = C15498a.m18766n(c15498a).mo18723c();
            return mo18723c != null ? mo18723c.m35566G() : null;
        }

        /* renamed from: s */
        public final Object m18726s(Object obj) {
            C25225a.m3932a3(obj);
            Contact mo18723c = C15498a.m18766n(C15498a.this).mo18723c();
            return mo18723c != null ? mo18723c.m35566G() : null;
        }
    }

    /* renamed from: e.a.j0.a$p */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/a$p.class */
    public static final class C15514p extends m implements a<C15530k> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15514p() {
            super(0);
            C15498a.this = r4;
        }

        public Object invoke() {
            ContentResolver m18765o = C15498a.m18765o(C15498a.this);
            long m18762r = C15498a.m18762r(C15498a.this);
            long m18764p = C15498a.m18764p(C15498a.this);
            C15498a c15498a = C15498a.this;
            return new C15530k(m18765o, m18762r, m18764p, c15498a.f43933h, c15498a.f43934i);
        }
    }

    public C15498a(Context context, f fVar, AbstractC6249x abstractC6249x, AbstractC6392i0 abstractC6392i0, C9109d c9109d) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "async");
        l.e(abstractC6249x, "selectionProvider");
        l.e(abstractC6392i0, "settings");
        l.e(c9109d, "getSmartCardsCountUseCase");
        this.f43931f = context;
        this.f43932g = fVar;
        this.f43933h = abstractC6249x;
        this.f43934i = abstractC6392i0;
        this.f43935j = c9109d;
    }

    /* renamed from: n */
    public static final AbstractC15515b m18766n(C15498a c15498a) {
        return (AbstractC15515b) c15498a.f43928c.getValue();
    }

    /* renamed from: o */
    public static final ContentResolver m18765o(C15498a c15498a) {
        return (ContentResolver) c15498a.f43926a.getValue();
    }

    /* renamed from: p */
    public static final long m18764p(C15498a c15498a) {
        return ((Number) c15498a.f43930e.getValue()).longValue();
    }

    /* renamed from: q */
    public static final AbstractC15529j m18763q(C15498a c15498a) {
        return (AbstractC15529j) c15498a.f43927b.getValue();
    }

    /* renamed from: r */
    public static final long m18762r(C15498a c15498a) {
        return ((Number) c15498a.f43929d.getValue()).longValue();
    }

    @Override // p193e.p194a.p935j0.AbstractC15534n
    /* renamed from: a */
    public Object mo18712a(d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f43932g, new C15510l(null), dVar);
    }

    @Override // p193e.p194a.p935j0.AbstractC15534n
    /* renamed from: b */
    public Object mo18711b(d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f43932g, new C15504f(null), dVar);
    }

    @Override // p193e.p194a.p935j0.AbstractC15534n
    /* renamed from: c */
    public Object mo18710c(d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f43932g, new C15508j(null), dVar);
    }

    @Override // p193e.p194a.p935j0.AbstractC15534n
    /* renamed from: d */
    public Object mo18709d(d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f43932g, new C15511m(null), dVar);
    }

    @Override // p193e.p194a.p935j0.AbstractC15534n
    /* renamed from: e */
    public Object mo18708e(d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f43932g, new C15506h(null), dVar);
    }

    @Override // p193e.p194a.p935j0.AbstractC15534n
    /* renamed from: f */
    public Object mo18707f(d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f43932g, new C15507i(null), dVar);
    }

    @Override // p193e.p194a.p935j0.AbstractC15534n
    /* renamed from: g */
    public Object mo18706g(d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f43932g, new C15509k(null), dVar);
    }

    @Override // p193e.p194a.p935j0.AbstractC15534n
    /* renamed from: h */
    public Object mo18705h(d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f43932g, new C15503e(null), dVar);
    }

    @Override // p193e.p194a.p935j0.AbstractC15534n
    /* renamed from: i */
    public Object mo18704i(d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f43932g, new C15505g(null), dVar);
    }

    @Override // p193e.p194a.p935j0.AbstractC15534n
    /* renamed from: j */
    public Object mo18703j(d<? super Integer> dVar) {
        C9109d c9109d = this.f43935j;
        return s1.a.a.a.v0.f.d.a4(c9109d.f27793a, new AbstractC9117k.C9118a(new b(((Number) this.f43929d.getValue()).longValue()), null), dVar);
    }

    @Override // p193e.p194a.p935j0.AbstractC15534n
    /* renamed from: k */
    public Object mo18702k(d<? super String> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f43932g, new C15513o(null), dVar);
    }

    @Override // p193e.p194a.p935j0.AbstractC15534n
    /* renamed from: l */
    public Object mo18701l(d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f43932g, new C15502d(null), dVar);
    }

    @Override // p193e.p194a.p935j0.AbstractC15534n
    /* renamed from: m */
    public Object mo18700m(d<? super Integer> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f43932g, new C15512n(null), dVar);
    }
}
