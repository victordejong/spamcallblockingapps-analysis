package p193e.p194a.p947k.p969c;

import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.AbstractC16116j;
import p193e.p194a.p947k.C16117k;
import p193e.p194a.p947k.p969c.AbstractC16039p;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.k.c.b2 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/b2.class */
public final class C15958b2 implements AbstractC15951a2, i0 {

    /* renamed from: a */
    public final AbstractC16067r0 f44977a;

    /* renamed from: b */
    public final AbstractC15992h0 f44978b;

    /* renamed from: c */
    public final AbstractC16021k1 f44979c;

    /* renamed from: d */
    public final AbstractC16090u0 f44980d;

    /* renamed from: e */
    public final AbstractC16116j f44981e;

    /* renamed from: f */
    public final f f44982f;

    @e(c = "com.truecaller.videocallerid.utils.VideoIdUpdatesReceiverImpl$handleVideoUpdatesNotification$1", f = "VideoIdUpdatesReceiver.kt", l = {39}, m = "invokeSuspend")
    /* renamed from: e.a.k.c.b2$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/b2$a.class */
    public static final class C15959a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f44983e;

        /* renamed from: g */
        public final /* synthetic */ String f44985g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15959a(String str, d dVar) {
            super(2, dVar);
            C15958b2.this = r5;
            this.f44985g = str;
        }

        /* renamed from: i */
        public final d<s> m18097i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15959a(this.f44985g, dVar);
        }

        /* renamed from: k */
        public final Object m18096k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15959a(this.f44985g, dVar).m18095s(s.a);
        }

        /* renamed from: s */
        public final Object m18095s(Object obj) {
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f44983e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                String str = this.f44985g;
                if (!(str == null || str.length() == 0) && C15958b2.this.f44977a.isAvailable() && !C15958b2.this.f44978b.mo18008a()) {
                    AbstractC16021k1 abstractC16021k1 = C15958b2.this.f44979c;
                    String str2 = this.f44985g;
                    this.f44983e = 1;
                    C16032n1 c16032n1 = (C16032n1) abstractC16021k1;
                    Objects.requireNonNull(c16032n1);
                    Object a4 = s1.a.a.a.v0.f.d.a4(c16032n1.f45199o, new C16038o1(new C16026l1(c16032n1, str2, null), null), this);
                    obj = a4;
                    if (a4 == aVar) {
                        return aVar;
                    }
                }
                return sVar;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C16092v c16092v = (C16092v) obj;
            if (c16092v != null) {
                if (!((C16117k) C15958b2.this.f44981e).m17807d(c16092v.f45333b)) {
                    return sVar;
                }
                C15958b2.this.f44980d.mo17908a(new AbstractC16039p.C16041b(c16092v.f45334c.f16003a, EnumC26841q.UNMETERED));
            }
            return sVar;
        }
    }

    @Inject
    public C15958b2(AbstractC16067r0 abstractC16067r0, AbstractC15992h0 abstractC15992h0, AbstractC16021k1 abstractC16021k1, AbstractC16090u0 abstractC16090u0, AbstractC16116j abstractC16116j, @Named("IO") f fVar) {
        l.e(abstractC16067r0, "availability");
        l.e(abstractC15992h0, "receiveVideoSettingsManager");
        l.e(abstractC16021k1, "videoCallerIdStubManager");
        l.e(abstractC16090u0, "downloadWorkerLauncher");
        l.e(abstractC16116j, "videoCallerIdSupport");
        l.e(fVar, "coroutineContext");
        this.f44977a = abstractC16067r0;
        this.f44978b = abstractC15992h0;
        this.f44979c = abstractC16021k1;
        this.f44980d = abstractC16090u0;
        this.f44981e = abstractC16116j;
        this.f44982f = fVar;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15951a2
    /* renamed from: a */
    public void mo18098a(String str) {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C15959a(str, null), 3, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f44982f;
    }
}
