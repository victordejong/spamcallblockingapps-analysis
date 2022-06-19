package p193e.p194a.p673d0;

import com.truecaller.contextcall.p159db.incomingcallcontext.IncomingCallContext;
import com.truecaller.contextcall.utils.ContextCallState;
import com.truecaller.contextcall.utils.SecondCallContext;
import com.truecaller.data.entity.CallContextMessage;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p703e3.p704e.C13353b;
import p193e.p194a.p717f.AbstractC13706b;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d0.m0 */
/* loaded from: classes6-dex2jar.jar:e/a/d0/m0.class */
public final class C12528m0 implements AbstractC12526l0, i0 {

    /* renamed from: b */
    public p1 f36623b;

    /* renamed from: d */
    public final f f36625d;

    /* renamed from: e */
    public final AbstractC18765c f36626e;

    /* renamed from: f */
    public final AbstractC13706b f36627f;

    /* renamed from: a */
    public final g f36622a = C25225a.m3978P1(C12532d.f36637b);

    /* renamed from: c */
    public final g f36624c = C25225a.m3978P1(new C12531c());

    @e(c = "com.truecaller.callerid.ContextCallCallerIdHelperImpl$handleCallEnded$1", f = "ContextCallCallerIdHelper.kt", l = {60, 64}, m = "invokeSuspend")
    /* renamed from: e.a.d0.m0$a */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/m0$a.class */
    public static final class C12529a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f36628e;

        /* renamed from: f */
        public int f36629f;

        /* renamed from: h */
        public final /* synthetic */ AbstractC12537o0 f36631h;

        /* renamed from: i */
        public final /* synthetic */ String f36632i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12529a(AbstractC12537o0 abstractC12537o0, String str, d dVar) {
            super(2, dVar);
            C12528m0.this = r5;
            this.f36631h = abstractC12537o0;
            this.f36632i = str;
        }

        /* renamed from: i */
        public final d<s> m22900i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12529a(this.f36631h, this.f36632i, dVar);
        }

        /* renamed from: k */
        public final Object m22899k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12529a(this.f36631h, this.f36632i, dVar).m22898s(s.a);
        }

        /* renamed from: s */
        public final Object m22898s(Object obj) {
            AbstractC12537o0 abstractC12537o0;
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f36629f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                abstractC12537o0 = this.f36631h;
                AbstractC18765c abstractC18765c = C12528m0.this.f36626e;
                String str = this.f36632i;
                this.f36628e = abstractC12537o0;
                this.f36629f = 1;
                Object mo14524H = abstractC18765c.mo14524H(str, this);
                obj = mo14524H;
                if (mo14524H == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return sVar;
            } else {
                abstractC12537o0 = (AbstractC12537o0) this.f36628e;
                C25225a.m3932a3(obj);
            }
            IncomingCallContext incomingCallContext = (IncomingCallContext) obj;
            abstractC12537o0.mo22888a(incomingCallContext != null ? C17891a1.C17902k.m15643T0(incomingCallContext) : null);
            if (!C12528m0.this.m22901e()) {
                return sVar;
            }
            C12528m0.this.f36626e.mo14522J();
            C12528m0.this.f36626e.mo14504u();
            C12528m0 c12528m0 = C12528m0.this;
            String str2 = this.f36632i;
            this.f36628e = null;
            this.f36629f = 2;
            c12528m0.f36626e.mo14516i().setValue((Object) null);
            s mo14500y = c12528m0.f36626e.mo14500y(str2, this);
            if (mo14500y != aVar) {
                mo14500y = sVar;
            }
            if (mo14500y == aVar) {
                return aVar;
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.callerid.ContextCallCallerIdHelperImpl$handleOngoing$1", f = "ContextCallCallerIdHelper.kt", l = {52, 53}, m = "invokeSuspend")
    /* renamed from: e.a.d0.m0$b */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/m0$b.class */
    public static final class C12530b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f36633e;

        /* renamed from: g */
        public final /* synthetic */ String f36635g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12530b(String str, d dVar) {
            super(2, dVar);
            C12528m0.this = r5;
            this.f36635g = str;
        }

        /* renamed from: i */
        public final d<s> m22897i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12530b(this.f36635g, dVar);
        }

        /* renamed from: k */
        public final Object m22896k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12530b(this.f36635g, dVar).m22895s(s.a);
        }

        /* renamed from: s */
        public final Object m22895s(Object obj) {
            a aVar = a.a;
            int i = this.f36633e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18765c abstractC18765c = C12528m0.this.f36626e;
                ContextCallState contextCallState = ContextCallState.Outgoing;
                this.f36633e = 1;
                if (abstractC18765c.mo14529C(contextCallState, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return s.a;
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC18765c abstractC18765c2 = C12528m0.this.f36626e;
            String str = this.f36635g;
            SecondCallContext.Context context = SecondCallContext.Context.POPUP_CALLER_ID;
            this.f36633e = 2;
            if (abstractC18765c2.mo14530B(str, context, this) == aVar) {
                return aVar;
            }
            return s.a;
        }
    }

    /* renamed from: e.a.d0.m0$c */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/m0$c.class */
    public static final class C12531c extends m implements s1.z.b.a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12531c() {
            super(0);
            C12528m0.this = r4;
        }

        public Object invoke() {
            return Boolean.valueOf(C12528m0.this.f36627f.mo21263f());
        }
    }

    /* renamed from: e.a.d0.m0$d */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/m0$d.class */
    public static final class C12532d extends m implements s1.z.b.a<y> {

        /* renamed from: b */
        public static final C12532d f36637b = new C12532d();

        public C12532d() {
            super(0);
        }

        public Object invoke() {
            return s1.a.a.a.v0.f.d.j((p1) null, 1, (Object) null);
        }
    }

    @Inject
    public C12528m0(@Named("IO") f fVar, AbstractC18765c abstractC18765c, AbstractC13706b abstractC13706b) {
        l.e(fVar, "ioContext");
        l.e(abstractC18765c, "contextCall");
        l.e(abstractC13706b, "inCallUi");
        this.f36625d = fVar;
        this.f36626e = abstractC18765c;
        this.f36627f = abstractC13706b;
    }

    @Override // p193e.p194a.p673d0.AbstractC12526l0
    /* renamed from: a */
    public void mo22905a(C12560v c12560v, AbstractC12574y abstractC12574y, String str, AbstractC12537o0 abstractC12537o0) {
        l.e(c12560v, "callState");
        l.e(abstractC12574y, "callerIdCallback");
        l.e(abstractC12537o0, "callback");
        if (!m22901e()) {
            return;
        }
        this.f36626e.mo14522J();
        this.f36626e.mo14506s();
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C12534n0(this, abstractC12574y, abstractC12537o0, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p673d0.AbstractC12526l0
    /* renamed from: b */
    public void mo22904b(C13353b c13353b) {
        l.e(c13353b, "result");
        CallContextMessage callContextMessage = (CallContextMessage) this.f36626e.mo14516i().getValue();
        if (callContextMessage != null) {
            AbstractC18765c abstractC18765c = this.f36626e;
            String str = c13353b.f38779c;
            if (str == null) {
                str = String.valueOf(false);
            }
            abstractC18765c.mo14517h(callContextMessage, str);
        }
    }

    @Override // p193e.p194a.p673d0.AbstractC12526l0
    /* renamed from: c */
    public void mo22903c(C12560v c12560v, String str, AbstractC12537o0 abstractC12537o0) {
        l.e(c12560v, "callState");
        l.e(abstractC12537o0, "callback");
        if (str != null) {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C12529a(abstractC12537o0, str, null), 3, (Object) null);
        }
    }

    @Override // p193e.p194a.p673d0.AbstractC12526l0
    /* renamed from: d */
    public void mo22902d(C12560v c12560v, String str) {
        l.e(c12560v, "callState");
        l.e(str, "normalizedNumber");
        if (!m22901e()) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C12530b(str, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p673d0.AbstractC12526l0
    public void destroy() {
        s1.a.a.a.v0.f.d.T((p1) this.f36622a.getValue(), (CancellationException) null, 1, (Object) null);
    }

    /* renamed from: e */
    public final boolean m22901e() {
        return this.f36626e.isSupported() && !((Boolean) this.f36624c.getValue()).booleanValue();
    }

    public f getCoroutineContext() {
        return this.f36625d.plus((p1) this.f36622a.getValue());
    }
}
