package p193e.p194a.p619d;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.conversation.ConversationMode;
import com.truecaller.notifications.MissedCallsNotificationActionReceiver;
import com.truecaller.notifications.support.NotificationTrampolineActivity;
import com.truecaller.presence.AvailabilityTrigger;
import com.truecaller.service.WidgetListProvider;
import com.truecaller.voip.VoipUserBadge;
import com.truecaller.voip.contacts.p188ui.VoipContactsActivity;
import com.truecaller.voip.contacts.p188ui.VoipContactsScreenParams;
import com.truecaller.voip.util.VoipAnalyticsContext;
import com.truecaller.voip.util.VoipSearchDirection;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.AbstractC17419h;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1275v.p1309p.C20940n;
import p193e.p194a.p1342w4.AbstractC21204d;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import p193e.p194a.p291a3.AbstractC7419a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p619d.p627b0.AbstractC11162b;
import p193e.p194a.p619d.p627b0.C11166c;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p619d.p637c0.C11406f1;
import p193e.p194a.p619d.p637c0.C11426k1;
import p193e.p194a.p619d.p637c0.C11431l1;
import p193e.p194a.p619d.p637c0.C11502v0;
import p193e.p194a.p619d.p637c0.C11508w0;
import p193e.p194a.p619d.p637c0.p641y1.AbstractC11567d;
import p193e.p194a.p619d.p643d.p644a.C11664b;
import p193e.p194a.p619d.p653r.AbstractC11782a;
import p193e.p194a.p619d.p653r.C11783b;
import p193e.p194a.p619d.p653r.C11784c;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p751f4.p762g.AbstractC14028r;
import p193e.p194a.p751f4.p762g.C14022p;
import p193e.p194a.p751f4.p762g.C14030t;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p997k3.p998j.C16461b;
import p193e.p194a.p997k3.p998j.C16463d;
import q3.a.h1;
import q3.a.i0;
import q3.a.j;
import q3.a.j0;
import s1.k;
import s1.s;
import s1.u.u;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.m */
/* loaded from: classes15-dex2jar.jar:e/a/d/m.class */
public final class C11731m implements AbstractC11421j1 {

    /* renamed from: a */
    public final f f34457a;

    /* renamed from: b */
    public final f f34458b;

    /* renamed from: c */
    public final Context f34459c;

    /* renamed from: d */
    public final a<AbstractC14028r> f34460d;

    /* renamed from: e */
    public final a<AbstractC14835j> f34461e;

    /* renamed from: f */
    public final a<AbstractC19854f<AbstractC17419h>> f34462f;

    /* renamed from: g */
    public final a<AbstractC8621z> f34463g;

    /* renamed from: h */
    public final a<AbstractC5854d> f34464h;

    /* renamed from: i */
    public final a<AbstractC13497p> f34465i;

    /* renamed from: j */
    public final a<AbstractC6248w> f34466j;

    /* renamed from: k */
    public final a<AbstractC6708t> f34467k;

    /* renamed from: l */
    public final a<AbstractC19854f<AbstractC17348c>> f34468l;

    /* renamed from: m */
    public final AbstractC7419a f34469m;

    /* renamed from: n */
    public final C16461b f34470n;

    /* renamed from: o */
    public final a<AbstractC21204d> f34471o;

    /* renamed from: p */
    public final AbstractC11782a f34472p;

    /* renamed from: q */
    public final AbstractC19022f0 f34473q;

    /* renamed from: r */
    public final a<AbstractC17405c> f34474r;

    /* renamed from: s */
    public final InitiateCallHelper f34475s;

    /* renamed from: t */
    public final a<AbstractC11476s1> f34476t;

    /* renamed from: u */
    public final AbstractC19222c f34477u;

    @e(c = "com.truecaller.voip.VoipSupportImpl$fetchCachedContact$2", f = "VoipSupportImpl.kt", l = {210}, m = "invokeSuspend")
    /* renamed from: e.a.d.m$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/m$a.class */
    public static final class C11732a extends i implements p<i0, d<? super C11406f1>, Object> {

        /* renamed from: e */
        public int f34478e;

        /* renamed from: g */
        public final /* synthetic */ String f34480g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11732a(String str, d dVar) {
            super(2, dVar);
            C11731m.this = r5;
            this.f34480g = str;
        }

        /* renamed from: i */
        public final d<s> m24091i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11732a(this.f34480g, dVar);
        }

        /* renamed from: k */
        public final Object m24090k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11732a(this.f34480g, dVar).m24089s(s.a);
        }

        /* renamed from: s */
        public final Object m24089s(Object obj) {
            Contact contact;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f34478e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                obj = null;
                try {
                    contact = C11731m.this.f34470n.m17364h(this.f34480g);
                } catch (SQLiteException e) {
                    contact = null;
                }
                if (contact != null) {
                    l.d(contact, "try {\n            aggreg…: return@withContext null");
                    C11731m c11731m = C11731m.this;
                    String str = this.f34480g;
                    this.f34478e = 1;
                    Object m24119J = c11731m.m24119J(contact, str, this);
                    obj = m24119J;
                    if (m24119J == aVar) {
                        return aVar;
                    }
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.voip.VoipSupportImpl$fetchContactFromCache$2", f = "VoipSupportImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.m$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/m$b.class */
    public static final class C11733b extends i implements p<i0, d<? super C11426k1>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f34482f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11733b(String str, d dVar) {
            super(2, dVar);
            C11731m.this = r5;
            this.f34482f = str;
        }

        /* renamed from: i */
        public final d<s> m24088i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11733b(this.f34482f, dVar);
        }

        /* renamed from: k */
        public final Object m24087k(Object obj, Object obj2) {
            C11426k1 c11426k1;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11731m c11731m = C11731m.this;
            String str = this.f34482f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            Contact m17364h = c11731m.f34470n.m17364h(str);
            if (m17364h != null) {
                l.d(m17364h, "aggregatedContactDao.get…: return@withContext null");
                c11426k1 = c11731m.m24118K(m17364h, ((AbstractC21204d) c11731m.f34471o.get()).mo10138b(m17364h));
            } else {
                c11426k1 = null;
            }
            return c11426k1;
        }

        /* renamed from: s */
        public final Object m24086s(Object obj) {
            C25225a.m3932a3(obj);
            Contact m17364h = C11731m.this.f34470n.m17364h(this.f34482f);
            if (m17364h != null) {
                l.d(m17364h, "aggregatedContactDao.get…: return@withContext null");
                return C11731m.this.m24118K(m17364h, ((AbstractC21204d) C11731m.this.f34471o.get()).mo10138b(m17364h));
            }
            return null;
        }
    }

    @e(c = "com.truecaller.voip.VoipSupportImpl$fetchFilterInfo$2", f = "VoipSupportImpl.kt", l = {128}, m = "invokeSuspend")
    /* renamed from: e.a.d.m$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/m$c.class */
    public static final class C11734c extends i implements p<i0, d<? super C11431l1>, Object> {

        /* renamed from: e */
        public int f34483e;

        /* renamed from: g */
        public final /* synthetic */ String f34485g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11734c(String str, d dVar) {
            super(2, dVar);
            C11731m.this = r5;
            this.f34485g = str;
        }

        /* renamed from: i */
        public final d<s> m24085i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11734c(this.f34485g, dVar);
        }

        /* renamed from: k */
        public final Object m24084k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11734c(this.f34485g, dVar).m24083s(s.a);
        }

        /* renamed from: s */
        public final Object m24083s(Object obj) {
            boolean z;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f34483e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC7419a abstractC7419a = C11731m.this.f34469m;
                String str = this.f34485g;
                this.f34483e = 1;
                Object mo29661e = abstractC7419a.mo29661e(str, str, false, this);
                obj = mo29661e;
                if (mo29661e == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Collection collection = (Collection) obj;
            if (collection == null) {
                collection = s1.u.s.a;
            }
            Iterator it = collection.iterator();
            int i2 = 0;
            boolean z2 = false;
            while (true) {
                z = false;
                if (!it.hasNext()) {
                    break;
                }
                FilterMatch filterMatch = (FilterMatch) it.next();
                if (filterMatch != null) {
                    if (filterMatch.m35812b()) {
                        int i3 = filterMatch.f10457f;
                        if (i3 > i2) {
                            i2 = i3;
                        }
                    } else if (filterMatch.m35813a()) {
                        z2 = true;
                    } else if (filterMatch.m35811c()) {
                        z = true;
                        break;
                    }
                }
            }
            return new C11431l1(i2, z2, z);
        }
    }

    /* renamed from: e.a.d.m$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/m$d.class */
    public static final class C11735d extends m implements s1.z.b.a<Boolean> {

        /* renamed from: c */
        public final /* synthetic */ List f34487c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11735d(List list) {
            super(0);
            C11731m.this = r4;
            this.f34487c = list;
        }

        public Object invoke() {
            boolean z = false;
            for (Number number : this.f34487c) {
                String m13563c = C19291g.m13563c(number);
                if (!TextUtils.isEmpty(m13563c)) {
                    Iterator<FilterMatch> it = ((AbstractC14835j) C11731m.this.f34461e.get()).mo19586j(number.m35473l(), m13563c, true).iterator();
                    boolean z2 = z;
                    while (true) {
                        z = z2;
                        if (it.hasNext()) {
                            if (it.next().m35813a()) {
                                z2 = true;
                            }
                        }
                    }
                }
            }
            return Boolean.valueOf(z);
        }
    }

    @e(c = "com.truecaller.voip.VoipSupportImpl$searchCaller$2", f = "VoipSupportImpl.kt", l = {191, 194, 200}, m = "invokeSuspend")
    /* renamed from: e.a.d.m$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/m$e.class */
    public static final class C11736e extends i implements p<i0, d<? super C11406f1>, Object> {

        /* renamed from: e */
        public Object f34488e;

        /* renamed from: f */
        public Object f34489f;

        /* renamed from: g */
        public int f34490g;

        /* renamed from: i */
        public final /* synthetic */ String f34492i;

        /* renamed from: j */
        public final /* synthetic */ VoipSearchDirection f34493j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11736e(String str, VoipSearchDirection voipSearchDirection, d dVar) {
            super(2, dVar);
            C11731m.this = r5;
            this.f34492i = str;
            this.f34493j = voipSearchDirection;
        }

        /* renamed from: i */
        public final d<s> m24082i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11736e(this.f34492i, this.f34493j, dVar);
        }

        /* renamed from: k */
        public final Object m24081k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11736e(this.f34492i, this.f34493j, dVar).m24080s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x0122  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x012d  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0147  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m24080s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 382
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.C11731m.C11736e.m24080s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.d.m$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/m$f.class */
    public static final class C11737f extends m implements s1.z.b.a<Contact> {

        /* renamed from: c */
        public final /* synthetic */ boolean f34495c;

        /* renamed from: d */
        public final /* synthetic */ String f34496d;

        /* renamed from: e */
        public final /* synthetic */ VoipSearchDirection f34497e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11737f(boolean z, String str, VoipSearchDirection voipSearchDirection) {
            super(0);
            C11731m.this = r4;
            this.f34495c = z;
            this.f34496d = str;
            this.f34497e = voipSearchDirection;
        }

        public Object invoke() {
            Contact contact;
            try {
                AbstractC14028r abstractC14028r = (AbstractC14028r) C11731m.this.f34460d.get();
                UUID randomUUID = UUID.randomUUID();
                l.d(randomUUID, "UUID.randomUUID()");
                C14022p mo20839b = abstractC14028r.mo20839b(randomUUID, "voip");
                mo20839b.f40557g = this.f34495c;
                mo20839b.f40566p = this.f34496d;
                mo20839b.m20844d();
                mo20839b.f40565o = VoipSearchDirection.INCOMING == this.f34497e ? 2 : 1;
                C14030t mo20821a = mo20839b.mo20821a();
                contact = null;
                if (mo20821a != null) {
                    contact = mo20821a.m20837a();
                }
            } catch (IOException e) {
                contact = null;
            }
            return contact;
        }
    }

    @e(c = "com.truecaller.voip.VoipSupportImpl$searchNumbers$2", f = "VoipSupportImpl.kt", l = {169, 177}, m = "invokeSuspend")
    /* renamed from: e.a.d.m$g */
    /* loaded from: classes15-dex2jar.jar:e/a/d/m$g.class */
    public static final class C11738g extends i implements p<i0, d<? super Map<String, ? extends C11426k1>>, Object> {

        /* renamed from: e */
        public Object f34498e;

        /* renamed from: f */
        public int f34499f;

        /* renamed from: h */
        public final /* synthetic */ Set f34501h;

        /* renamed from: i */
        public final /* synthetic */ VoipSearchDirection f34502i;

        /* renamed from: e.a.d.m$g$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/m$g$a.class */
        public static final class C11739a extends m implements s1.z.b.l<Contact, List<? extends k<? extends String, ? extends C11426k1>>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11739a() {
                super(1);
                C11738g.this = r4;
            }

            /* renamed from: d */
            public Object m24076d(Object obj) {
                Contact contact = (Contact) obj;
                l.e(contact, AnalyticsConstants.CONTACT);
                C11426k1 m24118K = C11731m.this.m24118K(contact, false);
                Set<String> set = m24118K.f33566b;
                ArrayList arrayList = new ArrayList(C25225a.m4004J(set, 10));
                for (String str : set) {
                    arrayList.add(new k(str, m24118K));
                }
                return arrayList;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11738g(Set set, VoipSearchDirection voipSearchDirection, d dVar) {
            super(2, dVar);
            C11731m.this = r5;
            this.f34501h = set;
            this.f34502i = voipSearchDirection;
        }

        /* renamed from: i */
        public final d<s> m24079i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11738g(this.f34501h, this.f34502i, dVar);
        }

        /* renamed from: k */
        public final Object m24078k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11738g(this.f34501h, this.f34502i, dVar).m24077s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x00d2  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0129  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m24077s(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 432
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.C11731m.C11738g.m24077s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.voip.VoipSupportImpl$sendMessage$1", f = "VoipSupportImpl.kt", l = {234}, m = "invokeSuspend")
    /* renamed from: e.a.d.m$h */
    /* loaded from: classes15-dex2jar.jar:e/a/d/m$h.class */
    public static final class C11740h extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f34504e;

        /* renamed from: g */
        public final /* synthetic */ Participant[] f34506g;

        /* renamed from: h */
        public final /* synthetic */ Integer f34507h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11740h(Participant[] participantArr, Integer num, d dVar) {
            super(2, dVar);
            C11731m.this = r5;
            this.f34506g = participantArr;
            this.f34507h = num;
        }

        /* renamed from: i */
        public final d<s> m24075i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11740h(this.f34506g, this.f34507h, dVar);
        }

        /* renamed from: k */
        public final Object m24074k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11740h(this.f34506g, this.f34507h, dVar).m24073s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x00c8, code lost:
            if (r10 != null) goto L22;
         */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m24073s(java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 366
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.C11731m.C11740h.m24073s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.voip.VoipSupportImpl", f = "VoipSupportImpl.kt", l = {451, 452}, m = "toVoipSearchResult")
    /* renamed from: e.a.d.m$i */
    /* loaded from: classes15-dex2jar.jar:e/a/d/m$i.class */
    public static final class C11741i extends c {

        /* renamed from: d */
        public /* synthetic */ Object f34508d;

        /* renamed from: e */
        public int f34509e;

        /* renamed from: g */
        public Object f34511g;

        /* renamed from: h */
        public Object f34512h;

        /* renamed from: i */
        public Object f34513i;

        /* renamed from: j */
        public Object f34514j;

        /* renamed from: k */
        public Object f34515k;

        /* renamed from: l */
        public Object f34516l;

        /* renamed from: m */
        public Object f34517m;

        /* renamed from: n */
        public boolean f34518n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11741i(d dVar) {
            super(dVar);
            C11731m.this = r4;
        }

        /* renamed from: s */
        public final Object m24072s(Object obj) {
            this.f34508d = obj;
            this.f34509e |= Integer.MIN_VALUE;
            return C11731m.this.m24119J(null, null, this);
        }
    }

    @Inject
    public C11731m(@Named("IO") f fVar, @Named("UI") f fVar2, Context context, a<AbstractC14028r> aVar, a<AbstractC14835j> aVar2, a<AbstractC19854f<AbstractC17419h>> aVar3, a<AbstractC8621z> aVar4, a<AbstractC5854d> aVar5, a<AbstractC13497p> aVar6, a<AbstractC6248w> aVar7, a<AbstractC6708t> aVar8, a<AbstractC19854f<AbstractC17348c>> aVar9, AbstractC7419a abstractC7419a, C16461b c16461b, a<AbstractC21204d> aVar10, AbstractC11782a abstractC11782a, AbstractC19022f0 abstractC19022f0, a<AbstractC17405c> aVar11, InitiateCallHelper initiateCallHelper, a<AbstractC11476s1> aVar12, AbstractC19222c abstractC19222c) {
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(aVar, "searchManager");
        l.e(aVar2, "filterManager");
        l.e(aVar3, "presenceManager");
        l.e(aVar4, "phoneNumberHelper");
        l.e(aVar5, "draftSender");
        l.e(aVar6, "multiSimManager");
        l.e(aVar7, "readMessageStorage");
        l.e(aVar8, "transportManager");
        l.e(aVar9, "historyManager");
        l.e(abstractC7419a, "blockManager");
        l.e(c16461b, "aggregatedContactDao");
        l.e(aVar10, "stalenessHelper");
        l.e(abstractC11782a, "voipGroupHistoryRepository");
        l.e(abstractC19022f0, "deviceManager");
        l.e(aVar11, "availabilityManager");
        l.e(initiateCallHelper, "initiateCallHelper");
        l.e(aVar12, "voipUtil");
        l.e(abstractC19222c, "clock");
        this.f34457a = fVar;
        this.f34458b = fVar2;
        this.f34459c = context;
        this.f34460d = aVar;
        this.f34461e = aVar2;
        this.f34462f = aVar3;
        this.f34463g = aVar4;
        this.f34464h = aVar5;
        this.f34465i = aVar6;
        this.f34466j = aVar7;
        this.f34467k = aVar8;
        this.f34468l = aVar9;
        this.f34469m = abstractC7419a;
        this.f34470n = c16461b;
        this.f34471o = aVar10;
        this.f34472p = abstractC11782a;
        this.f34473q = abstractC19022f0;
        this.f34474r = aVar11;
        this.f34475s = initiateCallHelper;
        this.f34476t = aVar12;
        this.f34477u = abstractC19222c;
    }

    /* renamed from: G */
    public static final boolean m24122G(C11731m c11731m, Contact contact) {
        Objects.requireNonNull(c11731m);
        return (contact == null || !contact.m35501q0() || contact.f11523r == 0) ? false : true;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: A */
    public String mo24128A() {
        return "ARG_RESULT_NUMBERS";
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: B */
    public Object mo24127B(List<? extends Number> list, d<? super Boolean> dVar) {
        return j.a(this.f34457a, new C11735d(list), dVar);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: C */
    public void mo24126C(boolean z) {
        ((AbstractC17419h) ((AbstractC19854f) this.f34462f.get()).mo11854a()).mo16128d(AvailabilityTrigger.USER_ACTION, z);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: D */
    public void mo24125D(String str, String str2) {
        l.e(str, "number");
        l.e("contactCallHistory", "analyticsContext");
        this.f34475s.m35744b(new InitiateCallHelper.CallOptions(str, "contactCallHistory", str2, null, false, false, null, false, InitiateCallHelper.CallContextOption.ShowOnBoarded.a));
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: E */
    public Object mo24124E(String str, VoipSearchDirection voipSearchDirection, d<? super C11406f1> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f34457a, new C11736e(str, voipSearchDirection, null), dVar);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: F */
    public void mo24123F(C11508w0 c11508w0) {
        l.e(c11508w0, "event");
        HistoryEvent historyEvent = new HistoryEvent(c11508w0.f33791a);
        l.e(c11508w0, "$this$getHistoryEventType");
        historyEvent.f11550q = C19291g.m13577W1(c11508w0.f33792b);
        l.e(c11508w0, "$this$getHistoryEventAction");
        historyEvent.f11551r = c11508w0.f33792b.ordinal() != 3 ? 0 : 1;
        historyEvent.f11552s = "com.truecaller.voip.manager.VOIP";
        historyEvent.f11542i = TimeUnit.MILLISECONDS.toSeconds(c11508w0.f33793c);
        Long l = c11508w0.f33794d;
        if (l != null) {
            historyEvent.f11541h = l.longValue();
        }
        ((AbstractC17348c) ((AbstractC19854f) this.f34468l.get()).mo11854a()).mo16234n(historyEvent);
        WidgetListProvider.m34742b(this.f34459c);
    }

    /* renamed from: H */
    public final void m24121H(Context context, Participant[] participantArr, String str) {
        Intent intent = new Intent(context, ConversationActivity.class);
        intent.putExtra(AnalyticsConstants.MODE, ConversationMode.IM);
        if (participantArr != null) {
            intent.putExtra("participants", participantArr);
        }
        if (str != null) {
            Intent intent2 = new Intent();
            intent2.putExtra("android.intent.extra.TEXT", str);
            intent.putExtra("send_intent", intent2);
        }
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    /* renamed from: I */
    public final /* synthetic */ Object m24120I(String str, VoipSearchDirection voipSearchDirection, boolean z, d<? super Contact> dVar) {
        return j.a(this.f34457a, new C11737f(z, str, voipSearchDirection), dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0233  */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m24119J(com.truecaller.data.entity.Contact r15, java.lang.String r16, s1.w.d<? super p193e.p194a.p619d.p637c0.C11406f1> r17) {
        /*
            Method dump skipped, instructions count: 625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.C11731m.m24119J(com.truecaller.data.entity.Contact, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* renamed from: K */
    public final C11426k1 m24118K(Contact contact, boolean z) {
        VoipUserBadge voipUserBadge = new VoipUserBadge(contact.m35574A0(), contact.m35494u0(), contact.m35499r0(), contact.m35492v0(), contact.m35506m0(), contact.m35565G0());
        String tcId = contact.getTcId();
        List<Number> m35557M = contact.m35557M();
        ArrayList m8670S = C22128a.m8670S(m35557M, "numbers");
        for (Number number : m35557M) {
            l.d(number, "it");
            String m35479e = number.m35479e();
            l.d(m35479e, "normalizedNumber");
            String m13653z = C19286f.m13653z(m35479e);
            if (m13653z != null) {
                m8670S.add(m13653z);
            }
        }
        Set d1 = s1.u.i.d1(m8670S);
        Long m35548R = contact.m35548R();
        String m35489x = contact.m35489x();
        l.d(m35489x, "displayNameOrNumber");
        Uri m22592B = C12864a2.m22592B(contact, false);
        return new C11426k1(tcId, d1, m35548R, m35489x, m22592B != null ? m22592B.toString() : null, contact.m35495t0(), contact.m35570C0(), voipUserBadge, contact.m35574A0() ? contact.m35533a0() : 0, z);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: a */
    public void mo24117a(String str, String str2) {
        l.e(str, "number");
        l.e(str2, "analyticsContext");
        ((AbstractC11476s1) this.f34476t.get()).mo24623a(str, str2);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: b */
    public void mo24116b(String str) {
        l.e(str, "number");
        Object[] array = C25225a.m3962T1(Participant.m35458a(str, (AbstractC8621z) this.f34463g.get(), ((AbstractC8621z) this.f34463g.get()).mo28189b())).toArray(new Participant[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Participant[] participantArr = (Participant[]) array;
        Intent intent = new Intent(this.f34459c, ConversationActivity.class);
        intent.putExtra("participants", participantArr);
        intent.putExtra("launch_source", "incallui");
        intent.setFlags(335544320);
        this.f34459c.startActivity(intent);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: c */
    public Object mo24115c(long j, d<? super Set<C11166c>> dVar) {
        Set set;
        C11784c c11784c = (C11784c) this.f34472p;
        Objects.requireNonNull(c11784c);
        Set set2 = u.a;
        try {
            Cursor query = c11784c.f34610c.query(Uri.withAppendedPath(C17891a1.f50888a, "voip_history_with_aggregated_contacts_shallow"), null, "voip_history_id = ?", new String[]{String.valueOf(j)}, "position ASC");
            set = set2;
            if (query != null) {
                l.d(query, "cursor");
                C16463d c16463d = new C16463d(query);
                l.e(query, "cursor");
                l.e(c16463d, "contactReader");
                int columnIndex = query.getColumnIndex("voip_history_id");
                int columnIndex2 = query.getColumnIndex("voip_history_normalized_number");
                int columnIndex3 = query.getColumnIndex(UpdateKey.STATUS);
                int columnIndex4 = query.getColumnIndex("position");
                ArrayList arrayList = new ArrayList();
                while (query.moveToNext()) {
                    l.e(query, "cursor");
                    Contact m17354g = c16463d.m17354g(query);
                    long j2 = query.getLong(columnIndex);
                    String string = query.getString(columnIndex2);
                    l.d(string, "cursor.getString(normalizedNumberIdx)");
                    arrayList.add(new C11166c(m17354g, j2, string, query.getInt(columnIndex3), query.getInt(columnIndex4)));
                }
                C25225a.m4016G(query, null);
                set = s1.u.i.d1(arrayList);
            }
        } catch (SQLException e) {
            set = set2;
        }
        return set;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: d */
    public void mo24114d(AbstractC11162b.C11164b c11164b) {
        Intent m10486b;
        l.e(c11164b, "voipContactSearched");
        C20940n c20940n = C20940n.f58889a;
        Context context = this.f34459c;
        String str = c11164b.f33005a;
        String str2 = c11164b.f33008d;
        String str3 = c11164b.f33007c;
        m10486b = c20940n.m10486b(context, str, str2, str3, str3, null, SourceType.VoipGroupCallHistory, true, true, 29, null, null, null);
        m10486b.addFlags(268435456);
        this.f34459c.startActivity(m10486b);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: e */
    public void mo24113e(String str, Integer num) {
        l.e(str, "number");
        Object[] array = C25225a.m3962T1(Participant.m35458a(str, (AbstractC8621z) this.f34463g.get(), ((AbstractC8621z) this.f34463g.get()).mo28189b())).toArray(new Participant[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Participant[] participantArr = (Participant[]) array;
        if (num == null) {
            m24121H(this.f34459c, participantArr, null);
        } else {
            s1.a.a.a.v0.f.d.w2(h1.a, this.f34458b, (j0) null, new C11740h(participantArr, num, null), 2, (Object) null);
        }
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: f */
    public void mo24112f(Fragment fragment, int i, Set<String> set) {
        l.e(fragment, "fragment");
        l.e(set, "peersInTheCall");
        VoipContactsScreenParams voipContactsScreenParams = new VoipContactsScreenParams(true, null, false, set, null, 18, null);
        VoipContactsActivity.C4794c c4794c = VoipContactsActivity.f16301B;
        l.e(fragment, "fragment");
        l.e(voipContactsScreenParams, "params");
        Context requireContext = fragment.requireContext();
        l.d(requireContext, "fragment.requireContext()");
        fragment.startActivityForResult(c4794c.m34337b(requireContext, voipContactsScreenParams, true), i);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: g */
    public Object mo24111g(String str, d<? super C11406f1> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f34457a, new C11732a(str, null), dVar);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: h */
    public Intent mo24110h(Context context, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "number");
        NotificationTrampolineActivity.C4317a c4317a = NotificationTrampolineActivity.f14119j;
        String value = VoipAnalyticsContext.MISSED_CALL_NOTIFICATION.getValue();
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "number");
        l.e(value, "analyticsContext");
        Intent putExtra = new Intent(context, NotificationTrampolineActivity.class).putExtra("notification-name", "com.truecaller.intent.action.VOIP_CALL").putExtra("number", str).putExtra("analytics-context", value);
        l.d(putExtra, "Intent(context, Notifica…ONTEXT, analyticsContext)");
        return putExtra;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: i */
    public Intent mo24109i(Context context, List<String> list) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(list, "numbers");
        return VoipContactsActivity.f16301B.m34338a(context, s1.u.i.d1(list), false, VoipAnalyticsContext.MISSED_CALL_NOTIFICATION.getValue());
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: j */
    public void mo24108j(C11502v0 c11502v0) {
        l.e(c11502v0, "event");
        C11784c c11784c = (C11784c) this.f34472p;
        Objects.requireNonNull(c11784c);
        l.e(c11502v0, "event");
        s1.a.a.a.v0.f.d.w2(h1.a, c11784c.f34608a, (j0) null, new C11783b(c11784c, c11502v0, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: k */
    public Object mo24107k(String str, d<? super C11431l1> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f34457a, new C11734c(str, null), dVar);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: l */
    public AbstractC11567d mo24106l() {
        Object obj = this.f34474r.get();
        l.d(obj, "availabilityManager.get()");
        return new C11664b((AbstractC17405c) obj, this.f34477u);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: m */
    public PendingIntent mo24105m() {
        return MissedCallsNotificationActionReceiver.m34852b(this.f34459c);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: n */
    public boolean mo24104n(String str) {
        l.e(str, "number");
        return C8574c0.m28354e(str);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: o */
    public PendingIntent mo24103o(long j) {
        Intent putExtra = new Intent(this.f34459c, MissedCallsNotificationActionReceiver.class).setAction("com.truecaller.CLEAR_MISSED_CALLS").putExtra("lastTimestamp", j);
        if (j != 0) {
            putExtra.putExtra("lastTimestamp", j);
        }
        PendingIntent broadcast = PendingIntent.getBroadcast(this.f34459c, C2752R.C2754id.req_code_missed_call_notification_dismiss, putExtra, 201326592);
        l.d(broadcast, "Intent(context, MissedCa…          )\n            }");
        return broadcast;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: p */
    public void mo24102p(Set<String> set) {
        l.e(set, "numbers");
        ((AbstractC17419h) ((AbstractC19854f) this.f34462f.get()).mo11854a()).mo16127e(set).mo11828g();
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: q */
    public boolean mo24101q() {
        Boolean mo11831c = ((AbstractC17419h) ((AbstractC19854f) this.f34462f.get()).mo11854a()).mo16131a().mo11831c();
        return mo11831c != null ? mo11831c.booleanValue() : false;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: r */
    public void mo24100r(Activity activity) {
        l.e(activity, "activity");
        C27062a.m968b(activity).m966d(new Intent("com.truecaller.voip.contacts.ui.VoipContactsActivity#CLOSE"));
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: s */
    public Intent mo24099s(Context context, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "number");
        NotificationTrampolineActivity.C4317a c4317a = NotificationTrampolineActivity.f14119j;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "number");
        Intent putExtra = new Intent(context, NotificationTrampolineActivity.class).putExtra("notification-name", "com.truecaller.intent.action.VOIP_CALL_LEGACY").putExtra("number", str);
        l.d(putExtra, "Intent(context, Notifica…tra(EXTRA_NUMBER, number)");
        return putExtra;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r1v0 */
    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: t */
    public Uri mo24098t(Long l, String str) {
        return this.f34473q.mo14235k((l != null ? l.longValue() : false) == true ? 1L : 0L, str, true);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: u */
    public Object mo24097u(Set<String> set, VoipSearchDirection voipSearchDirection, d<? super Map<String, C11426k1>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f34457a, new C11738g(set, voipSearchDirection, null), dVar);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: v */
    public Intent mo24096v(Context context, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "number");
        Object[] array = C25225a.m3962T1(Participant.m35458a(str, (AbstractC8621z) this.f34463g.get(), ((AbstractC8621z) this.f34463g.get()).mo28189b())).toArray(new Participant[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Participant[] participantArr = (Participant[]) array;
        Intent intent = new Intent(context, ConversationActivity.class);
        intent.putExtra(AnalyticsConstants.MODE, ConversationMode.IM);
        intent.putExtra("participants", participantArr);
        return intent;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: w */
    public void mo24095w(List<String> list, String str) {
        l.e(list, "peersInTheCall");
        l.e(str, "analyticsContext");
        Intent m34338a = VoipContactsActivity.f16301B.m34338a(this.f34459c, s1.u.i.d1(list), false, str);
        m34338a.setFlags(268435456);
        this.f34459c.startActivity(m34338a);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: x */
    public void mo24094x(Activity activity, int i, Set<String> set) {
        l.e(activity, "activity");
        l.e(set, "peersInTheCall");
        VoipContactsScreenParams voipContactsScreenParams = new VoipContactsScreenParams(true, null, false, set, null, 18, null);
        VoipContactsActivity.C4794c c4794c = VoipContactsActivity.f16301B;
        l.e(activity, "activity");
        l.e(voipContactsScreenParams, "params");
        activity.startActivityForResult(c4794c.m34337b(activity, voipContactsScreenParams, true), i);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: y */
    public void mo24093y(boolean z) {
        if (z) {
            ((AbstractC17405c) this.f34474r.get()).mo9925I1();
        } else {
            ((AbstractC17405c) this.f34474r.get()).mo9924Y();
        }
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11421j1
    /* renamed from: z */
    public Object mo24092z(String str, d<? super C11426k1> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f34457a, new C11733b(str, null), dVar);
    }
}
