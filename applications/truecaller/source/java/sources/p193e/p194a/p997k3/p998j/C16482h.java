package p193e.p194a.p997k3.p998j;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p997k3.AbstractC16451d;
import p193e.p194a.p997k3.C16449c;
import p193e.p194a.p997k3.C16457g;
import p193e.p194a.p997k3.p998j.AbstractC16480g;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.k3.j.h */
/* loaded from: classes8-dex2jar.jar:e/a/k3/j/h.class */
public final class C16482h implements AbstractC16480g {

    /* renamed from: a */
    public final ContentResolver f46339a;

    /* renamed from: b */
    public final AbstractC8621z f46340b;

    /* renamed from: c */
    public final C16461b f46341c;

    /* renamed from: d */
    public final f f46342d;

    /* renamed from: e */
    public final f f46343e;

    /* renamed from: f */
    public final AbstractC16451d f46344f;

    @e(c = "com.truecaller.data.access.LocalContactSearcherImpl$proceedWithResult$2", f = "LocalContactSearcher.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k3.j.h$a */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/h$a.class */
    public static final class C16483a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public final /* synthetic */ AbstractC16480g.AbstractC16481a f46345e;

        /* renamed from: f */
        public final /* synthetic */ List f46346f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16483a(AbstractC16480g.AbstractC16481a abstractC16481a, List list, d dVar) {
            super(2, dVar);
            this.f46345e = abstractC16481a;
            this.f46346f = list;
        }

        /* renamed from: i */
        public final d<s> m17342i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16483a(this.f46345e, this.f46346f, dVar);
        }

        /* renamed from: k */
        public final Object m17341k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            AbstractC16480g.AbstractC16481a abstractC16481a = this.f46345e;
            List<? extends k<? extends Contact, String>> list = this.f46346f;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            abstractC16481a.mo10060i9(list);
            return sVar;
        }

        /* renamed from: s */
        public final Object m17340s(Object obj) {
            C25225a.m3932a3(obj);
            this.f46345e.mo10060i9(this.f46346f);
            return s.a;
        }
    }

    @e(c = "com.truecaller.data.access.LocalContactSearcherImpl$search$1", f = "LocalContactSearcher.kt", l = {69, 72, 75}, m = "invokeSuspend")
    /* renamed from: e.a.k3.j.h$b */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/j/h$b.class */
    public static final class C16484b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f46347e;

        /* renamed from: g */
        public final /* synthetic */ String f46349g;

        /* renamed from: h */
        public final /* synthetic */ Integer f46350h;

        /* renamed from: i */
        public final /* synthetic */ CancellationSignal f46351i;

        /* renamed from: j */
        public final /* synthetic */ AbstractC16480g.AbstractC16481a f46352j;

        @e(c = "com.truecaller.data.access.LocalContactSearcherImpl$search$1$1", f = "LocalContactSearcher.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.k3.j.h$b$a */
        /* loaded from: classes8-dex2jar.jar:e/a/k3/j/h$b$a.class */
        public static final class C16485a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ Throwable f46354f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C16485a(Throwable th, d dVar) {
                super(2, dVar);
                C16484b.this = r5;
                this.f46354f = th;
            }

            /* renamed from: i */
            public final d<s> m17336i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C16485a(this.f46354f, dVar);
            }

            /* renamed from: k */
            public final Object m17335k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C16484b c16484b = C16484b.this;
                Throwable th = this.f46354f;
                dVar.getContext();
                s sVar = s.a;
                C25225a.m3932a3(sVar);
                c16484b.f46352j.mo10070W0(th);
                return sVar;
            }

            /* renamed from: s */
            public final Object m17334s(Object obj) {
                C25225a.m3932a3(obj);
                C16484b.this.f46352j.mo10070W0(this.f46354f);
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16484b(String str, Integer num, CancellationSignal cancellationSignal, AbstractC16480g.AbstractC16481a abstractC16481a, d dVar) {
            super(2, dVar);
            C16482h.this = r5;
            this.f46349g = str;
            this.f46350h = num;
            this.f46351i = cancellationSignal;
            this.f46352j = abstractC16481a;
        }

        /* renamed from: i */
        public final d<s> m17339i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16484b(this.f46349g, this.f46350h, this.f46351i, this.f46352j, dVar);
        }

        /* renamed from: k */
        public final Object m17338k(Object obj, Object obj2) {
            return m17339i(obj, (d) obj2).m17337s(s.a);
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: s */
        public final Object m17337s(Object obj) {
            ArrayList arrayList;
            ArrayList arrayList2 = s1.u.s.a;
            a aVar = a.a;
            int i = this.f46347e;
            try {
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    Uri m15710a = C17891a1.C17892a.m15710a(this.f46349g);
                    Integer num = this.f46350h;
                    if (num != null) {
                        int intValue = num.intValue();
                        Uri.Builder buildUpon = m15710a.buildUpon();
                        Uri build = buildUpon.appendQueryParameter("limit", "0, " + intValue).build();
                        if (build != null) {
                            m15710a = build;
                        }
                    }
                    C16449c mo10130a = C16482h.this.f46344f.mo10130a();
                    Cursor query = C16482h.this.f46339a.query(m15710a, null, null, null, null, this.f46351i);
                    if (query != null) {
                        l.d(query, "it");
                        C16457g c16457g = new C16457g(query, mo10130a);
                        try {
                            ArrayList arrayList3 = new ArrayList();
                            while (c16457g.moveToNext()) {
                                Contact m17378b = c16457g.m17378b();
                                arrayList3.add(m17378b != null ? new k(m17378b, c16457g.m17377d()) : null);
                            }
                            C25225a.m4016G(c16457g, null);
                            List z = s1.u.i.z(arrayList3);
                            ArrayList arrayList4 = new ArrayList();
                            Iterator it = ((ArrayList) z).iterator();
                            while (true) {
                                arrayList = arrayList4;
                                if (!it.hasNext()) {
                                    break;
                                }
                                Object next = it.next();
                                if (Boolean.valueOf(((Contact) ((k) next).a).m35495t0()).booleanValue()) {
                                    arrayList4.add(next);
                                }
                            }
                        } finally {
                            try {
                                throw th;
                            } catch (Throwable th) {
                            }
                        }
                    } else {
                        arrayList = arrayList2;
                    }
                    C16482h c16482h = C16482h.this;
                    AbstractC16480g.AbstractC16481a abstractC16481a = this.f46352j;
                    this.f46347e = 1;
                    if (c16482h.m17343d(arrayList, abstractC16481a, this) == aVar) {
                        return aVar;
                    }
                } else if (i == 1) {
                    C25225a.m3932a3(obj);
                } else if (i != 2 && i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
            } catch (OperationCanceledException e) {
                C16482h c16482h2 = C16482h.this;
                AbstractC16480g.AbstractC16481a abstractC16481a2 = this.f46352j;
                this.f46347e = 2;
                if (c16482h2.m17343d(arrayList2, abstractC16481a2, this) == aVar) {
                    return aVar;
                }
            } catch (Throwable th2) {
                AssertionUtil.reportThrowableButNeverCrash(th2);
                f fVar = C16482h.this.f46342d;
                C16485a c16485a = new C16485a(th2, null);
                this.f46347e = 3;
                if (s1.a.a.a.v0.f.d.a4(fVar, c16485a, this) == aVar) {
                    return aVar;
                }
            }
            return s.a;
        }
    }

    public C16482h(ContentResolver contentResolver, AbstractC8621z abstractC8621z, C16461b c16461b, f fVar, f fVar2, AbstractC16451d abstractC16451d) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC8621z, "phoneNumberHelper");
        l.e(c16461b, "aggregatedContactDao");
        l.e(fVar, "uiCoroutineContext");
        l.e(fVar2, "asyncCoroutineContext");
        l.e(abstractC16451d, "extraInfoReaderProvider");
        this.f46339a = contentResolver;
        this.f46340b = abstractC8621z;
        this.f46341c = c16461b;
        this.f46342d = fVar;
        this.f46343e = fVar2;
        this.f46344f = abstractC16451d;
    }

    @Override // p193e.p194a.p997k3.p998j.AbstractC16480g
    /* renamed from: a */
    public CancellationSignal mo17346a(String str, Integer num, AbstractC16480g.AbstractC16481a abstractC16481a) {
        l.e(str, "filter");
        l.e(abstractC16481a, "callback");
        CancellationSignal cancellationSignal = new CancellationSignal();
        s1.a.a.a.v0.f.d.w2(h1.a, this.f46343e, (j0) null, new C16484b(str, num, cancellationSignal, abstractC16481a, null), 2, (Object) null);
        return cancellationSignal;
    }

    @Override // p193e.p194a.p997k3.p998j.AbstractC16480g
    /* renamed from: b */
    public List<k<Contact, String>> mo17345b(String str, Integer num) {
        List<k<Contact, String>> list = s1.u.s.a;
        l.e(str, "filter");
        try {
            Uri m15710a = C17891a1.C17892a.m15710a(str);
            if (num != null) {
                int intValue = num.intValue();
                Uri build = m15710a.buildUpon().appendQueryParameter("limit", "0, " + intValue).build();
                if (build != null) {
                    m15710a = build;
                }
            }
            C16449c mo10130a = this.f46344f.mo10130a();
            Cursor query = this.f46339a.query(m15710a, null, null, null, null);
            List<k<Contact, String>> list2 = list;
            if (query != null) {
                l.d(query, "it");
                C16457g c16457g = new C16457g(query, mo10130a);
                ArrayList arrayList = new ArrayList();
                while (true) {
                    k kVar = null;
                    if (!c16457g.moveToNext()) {
                        break;
                    }
                    Contact m17378b = c16457g.m17378b();
                    if (m17378b != null) {
                        kVar = new k(m17378b, c16457g.m17377d());
                    }
                    arrayList.add(kVar);
                }
                C25225a.m4016G(c16457g, null);
                list2 = s1.u.i.z(arrayList);
            }
            return list2;
        } catch (Throwable th) {
            AssertionUtil.reportThrowableButNeverCrash(th);
            return list;
        }
    }

    @Override // p193e.p194a.p997k3.p998j.AbstractC16480g
    /* renamed from: c */
    public k<Contact, Number> mo17344c(String str) {
        Number number;
        Number number2;
        l.e(str, "numberString");
        String mo28181j = this.f46340b.mo28181j(str);
        if (mo28181j != null) {
            str = mo28181j;
        }
        Contact m17364h = this.f46341c.m17364h(str);
        Number number3 = null;
        if (m17364h != null) {
            List<Number> m35557M = m17364h.m35557M();
            number3 = null;
            if (m35557M != null) {
                Iterator<T> it = m35557M.iterator();
                do {
                    number = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    number = it.next();
                    number2 = (Number) number;
                    l.d(number2, "it");
                } while (!l.a(number2.m35479e(), str));
                number3 = number;
            }
        }
        return new k<>(m17364h, number3);
    }

    /* renamed from: d */
    public final /* synthetic */ Object m17343d(List<? extends k<? extends Contact, String>> list, AbstractC16480g.AbstractC16481a abstractC16481a, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f46342d, new C16483a(abstractC16481a, list, null), dVar);
        return a4 == a.a ? a4 : s.a;
    }
}
