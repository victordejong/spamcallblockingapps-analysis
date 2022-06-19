package p193e.p194a.p717f.p734z.p735m0;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.appsflyer.AppsFlyerProperties;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.callbubbles.CallBubbleUIEvent;
import com.truecaller.incallui.callui.incoming.IncomingCallUIEvent;
import com.truecaller.incallui.callui.ongoing.OngoingCallUIEvent;
import com.truecaller.incallui.service.CallState;
import com.truecaller.incallui.service.ServiceUIEvent;
import com.truecaller.incallui.utils.analytics.events.AnalyticsContext;
import com.truecaller.incallui.utils.analytics.events.CallerType;
import com.truecaller.incallui.utils.analytics.events.FullScreenPictureEvent;
import com.truecaller.incallui.utils.notification.NotificationUIEvent;
import e.m.d.y.n;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17672o;
import p193e.p194a.p1050l5.p1051a.C17807x1;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p372b0.p373a.p391x.C8349a;
import p193e.p194a.p717f.p718a.C13642g;
import p193e.p194a.p717f.p731w.AbstractC13734c;
import p193e.p194a.p717f.p731w.AbstractC13738f;
import p193e.p194a.p717f.p733y.AbstractC13762c;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import q3.a.w2.h;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.f.z.m0.b */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/m0/b.class */
public final class C13832b implements AbstractC13831a, i0 {

    /* renamed from: a */
    public boolean f40127a;

    /* renamed from: b */
    public final f f40128b;

    /* renamed from: c */
    public final AbstractC19462a f40129c;

    /* renamed from: d */
    public final AbstractC13734c f40130d;

    /* renamed from: e */
    public final AbstractC13762c f40131e;

    /* renamed from: f */
    public final AbstractC19854f<AbstractC19463a0> f40132f;

    @e(c = "com.truecaller.incallui.utils.analytics.InCallUIAnalyticsImpl", f = "InCallUIAnalyticsImpl.kt", l = {262}, m = "getCallerTypeFromCompletedSearch")
    /* renamed from: e.a.f.z.m0.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/z/m0/b$a.class */
    public static final class C13833a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f40133d;

        /* renamed from: e */
        public int f40134e;

        /* renamed from: g */
        public Object f40136g;

        /* renamed from: h */
        public Object f40137h;

        /* renamed from: i */
        public Object f40138i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13833a(d dVar) {
            super(dVar);
            C13832b.this = r4;
        }

        /* renamed from: s */
        public final Object m21026s(Object obj) {
            this.f40133d = obj;
            this.f40134e |= Integer.MIN_VALUE;
            return C13832b.this.m21028l(this);
        }
    }

    @e(c = "com.truecaller.incallui.utils.analytics.InCallUIAnalyticsImpl$listenBubbleUIEvents$1", f = "InCallUIAnalyticsImpl.kt", l = {230}, m = "invokeSuspend")
    /* renamed from: e.a.f.z.m0.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/z/m0/b$b.class */
    public static final class C13834b extends i implements p<CallBubbleUIEvent, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f40139e;

        /* renamed from: f */
        public Object f40140f;

        /* renamed from: g */
        public int f40141g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13834b(d dVar) {
            super(2, dVar);
            C13832b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m21025i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C13834b c13834b = new C13834b(dVar);
            c13834b.f40139e = obj;
            return c13834b;
        }

        /* renamed from: k */
        public final Object m21024k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C13834b c13834b = new C13834b(dVar);
            c13834b.f40139e = obj;
            return c13834b.m21023s(s.a);
        }

        /* renamed from: s */
        public final Object m21023s(Object obj) {
            Object obj2;
            C19597a.C19598a c19598a;
            String str;
            a aVar = a.a;
            int i = this.f40141g;
            if (i == 0) {
                C25225a.m3932a3(obj);
                int ordinal = ((CallBubbleUIEvent) this.f40139e).ordinal();
                if (ordinal != 0) {
                    if (ordinal == 1) {
                        n.B0(ViewActionEvent.C2856a.m35927k(ViewActionEvent.f9985d, ViewActionEvent.InCallUiAction.BUBBLE, AnalyticsContext.INCALLUI_BUBBLE.getValue(), null, 4), C13832b.this.f40129c);
                    }
                    return s.a;
                }
                C19597a.C19598a c19598a2 = C19597a.f54465d;
                String value = AnalyticsContext.INCALLUI_BUBBLE.getValue();
                C13832b c13832b = C13832b.this;
                this.f40139e = c19598a2;
                this.f40140f = value;
                this.f40141g = 1;
                obj2 = c13832b.m21028l(this);
                if (obj2 == aVar) {
                    return aVar;
                }
                str = value;
                c19598a = c19598a2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                str = (String) this.f40140f;
                c19598a = (C19597a.C19598a) this.f40139e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            n.B0(C19597a.C19598a.m13112a(c19598a, str, null, ((CallerType) obj2).getValue(), null, 10), C13832b.this.f40129c);
            return s.a;
        }
    }

    @e(c = "com.truecaller.incallui.utils.analytics.InCallUIAnalyticsImpl$listenCallStates$1", f = "InCallUIAnalyticsImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.f.z.m0.b$c */
    /* loaded from: classes10-dex2jar.jar:e/a/f/z/m0/b$c.class */
    public static final class C13835c extends i implements p<CallState, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f40143e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13835c(d dVar) {
            super(2, dVar);
            C13832b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m21022i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C13835c c13835c = new C13835c(dVar);
            c13835c.f40143e = obj;
            return c13835c;
        }

        /* renamed from: k */
        public final Object m21021k(Object obj, Object obj2) {
            AbstractC13738f abstractC13738f;
            CallerType callerType;
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C13832b c13832b = C13832b.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            if (((CallState) obj) == CallState.STATE_DISCONNECTED && (abstractC13738f = (AbstractC13738f) C19291g.m13593R0(c13832b.f40130d.mo21236a())) != null) {
                if (abstractC13738f instanceof AbstractC13738f.C13741c) {
                    callerType = CallerType.SEARCHING;
                } else if (abstractC13738f instanceof AbstractC13738f.C13739a) {
                    callerType = CallerType.UNKNOWN;
                } else if (!(abstractC13738f instanceof AbstractC13738f.C13740b)) {
                    throw new s1.i();
                } else {
                    callerType = c13832b.m21027m(((AbstractC13738f.C13740b) abstractC13738f).f39794a);
                }
                AbstractC19462a abstractC19462a = c13832b.f40129c;
                l.e(callerType, "type");
                String value = callerType.getValue();
                l.e(value, "type");
                C22128a.m8711G0("CallFinished", null, C22128a.m8667T("Type", value), null, "AnalyticsEvent.Builder(N…       }\n        .build()", abstractC19462a);
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m21020s(Object obj) {
            CallerType callerType;
            C25225a.m3932a3(obj);
            if (((CallState) this.f40143e) == CallState.STATE_DISCONNECTED) {
                C13832b c13832b = C13832b.this;
                AbstractC13738f abstractC13738f = (AbstractC13738f) C19291g.m13593R0(c13832b.f40130d.mo21236a());
                if (abstractC13738f != null) {
                    if (abstractC13738f instanceof AbstractC13738f.C13741c) {
                        callerType = CallerType.SEARCHING;
                    } else if (abstractC13738f instanceof AbstractC13738f.C13739a) {
                        callerType = CallerType.UNKNOWN;
                    } else if (!(abstractC13738f instanceof AbstractC13738f.C13740b)) {
                        throw new s1.i();
                    } else {
                        callerType = c13832b.m21027m(((AbstractC13738f.C13740b) abstractC13738f).f39794a);
                    }
                    AbstractC19462a abstractC19462a = c13832b.f40129c;
                    l.e(callerType, "type");
                    String value = callerType.getValue();
                    l.e(value, "type");
                    C22128a.m8711G0("CallFinished", null, C22128a.m8667T("Type", value), null, "AnalyticsEvent.Builder(N…       }\n        .build()", abstractC19462a);
                }
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.incallui.utils.analytics.InCallUIAnalyticsImpl$listenIncomingCallUIEvents$1", f = "InCallUIAnalyticsImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.f.z.m0.b$d */
    /* loaded from: classes10-dex2jar.jar:e/a/f/z/m0/b$d.class */
    public static final class C13836d extends i implements p<IncomingCallUIEvent, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f40145e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13836d(d dVar) {
            super(2, dVar);
            C13832b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m21019i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C13836d c13836d = new C13836d(dVar);
            c13836d.f40145e = obj;
            return c13836d;
        }

        /* renamed from: k */
        public final Object m21018k(Object obj, Object obj2) {
            ViewActionEvent.InCallUiAction inCallUiAction;
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C13832b c13832b = C13832b.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            Objects.requireNonNull(c13832b);
            int ordinal = ((IncomingCallUIEvent) obj).ordinal();
            if (ordinal == 0) {
                inCallUiAction = ViewActionEvent.InCallUiAction.ACCEPT;
            } else if (ordinal == 1) {
                inCallUiAction = ViewActionEvent.InCallUiAction.REJECT;
            } else if (ordinal != 2) {
                throw new s1.i();
            } else {
                inCallUiAction = ViewActionEvent.InCallUiAction.REJECT_WITH_MESSAGE;
            }
            n.B0(ViewActionEvent.C2856a.m35927k(ViewActionEvent.f9985d, inCallUiAction, AnalyticsContext.INCALLUI.getValue(), null, 4), c13832b.f40129c);
            return sVar;
        }

        /* renamed from: s */
        public final Object m21017s(Object obj) {
            ViewActionEvent.InCallUiAction inCallUiAction;
            C25225a.m3932a3(obj);
            IncomingCallUIEvent incomingCallUIEvent = (IncomingCallUIEvent) this.f40145e;
            C13832b c13832b = C13832b.this;
            Objects.requireNonNull(c13832b);
            int ordinal = incomingCallUIEvent.ordinal();
            if (ordinal == 0) {
                inCallUiAction = ViewActionEvent.InCallUiAction.ACCEPT;
            } else if (ordinal == 1) {
                inCallUiAction = ViewActionEvent.InCallUiAction.REJECT;
            } else if (ordinal != 2) {
                throw new s1.i();
            } else {
                inCallUiAction = ViewActionEvent.InCallUiAction.REJECT_WITH_MESSAGE;
            }
            n.B0(ViewActionEvent.C2856a.m35927k(ViewActionEvent.f9985d, inCallUiAction, AnalyticsContext.INCALLUI.getValue(), null, 4), c13832b.f40129c);
            return s.a;
        }
    }

    @e(c = "com.truecaller.incallui.utils.analytics.InCallUIAnalyticsImpl$listenOngoingCallUIEvents$1", f = "InCallUIAnalyticsImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.f.z.m0.b$e */
    /* loaded from: classes10-dex2jar.jar:e/a/f/z/m0/b$e.class */
    public static final class C13837e extends i implements p<OngoingCallUIEvent, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f40147e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13837e(d dVar) {
            super(2, dVar);
            C13832b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m21016i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C13837e c13837e = new C13837e(dVar);
            c13837e.f40147e = obj;
            return c13837e;
        }

        /* renamed from: k */
        public final Object m21015k(Object obj, Object obj2) {
            ViewActionEvent.InCallUiAction inCallUiAction;
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C13832b c13832b = C13832b.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            Objects.requireNonNull(c13832b);
            switch (((OngoingCallUIEvent) obj).ordinal()) {
                case 0:
                    inCallUiAction = ViewActionEvent.InCallUiAction.MUTE;
                    break;
                case 1:
                    inCallUiAction = ViewActionEvent.InCallUiAction.UNMUTE;
                    break;
                case 2:
                    inCallUiAction = ViewActionEvent.InCallUiAction.OPEN_KEYPAD;
                    break;
                case 3:
                    inCallUiAction = ViewActionEvent.InCallUiAction.HOLD;
                    break;
                case 4:
                    inCallUiAction = ViewActionEvent.InCallUiAction.UNHOLD;
                    break;
                case 5:
                    inCallUiAction = ViewActionEvent.InCallUiAction.HANG_UP;
                    break;
                case 6:
                    inCallUiAction = ViewActionEvent.InCallUiAction.ADD_CALL;
                    break;
                case 7:
                    inCallUiAction = ViewActionEvent.InCallUiAction.AUDIO_ROUTE;
                    break;
                case 8:
                    inCallUiAction = ViewActionEvent.InCallUiAction.MERGE;
                    break;
                case 9:
                    inCallUiAction = ViewActionEvent.InCallUiAction.SWAP;
                    break;
                case 10:
                    inCallUiAction = ViewActionEvent.InCallUiAction.VOIP;
                    break;
                default:
                    throw new s1.i();
            }
            n.B0(ViewActionEvent.C2856a.m35927k(ViewActionEvent.f9985d, inCallUiAction, AnalyticsContext.INCALLUI.getValue(), null, 4), c13832b.f40129c);
            return sVar;
        }

        /* renamed from: s */
        public final Object m21014s(Object obj) {
            ViewActionEvent.InCallUiAction inCallUiAction;
            C25225a.m3932a3(obj);
            OngoingCallUIEvent ongoingCallUIEvent = (OngoingCallUIEvent) this.f40147e;
            C13832b c13832b = C13832b.this;
            Objects.requireNonNull(c13832b);
            switch (ongoingCallUIEvent.ordinal()) {
                case 0:
                    inCallUiAction = ViewActionEvent.InCallUiAction.MUTE;
                    break;
                case 1:
                    inCallUiAction = ViewActionEvent.InCallUiAction.UNMUTE;
                    break;
                case 2:
                    inCallUiAction = ViewActionEvent.InCallUiAction.OPEN_KEYPAD;
                    break;
                case 3:
                    inCallUiAction = ViewActionEvent.InCallUiAction.HOLD;
                    break;
                case 4:
                    inCallUiAction = ViewActionEvent.InCallUiAction.UNHOLD;
                    break;
                case 5:
                    inCallUiAction = ViewActionEvent.InCallUiAction.HANG_UP;
                    break;
                case 6:
                    inCallUiAction = ViewActionEvent.InCallUiAction.ADD_CALL;
                    break;
                case 7:
                    inCallUiAction = ViewActionEvent.InCallUiAction.AUDIO_ROUTE;
                    break;
                case 8:
                    inCallUiAction = ViewActionEvent.InCallUiAction.MERGE;
                    break;
                case 9:
                    inCallUiAction = ViewActionEvent.InCallUiAction.SWAP;
                    break;
                case 10:
                    inCallUiAction = ViewActionEvent.InCallUiAction.VOIP;
                    break;
                default:
                    throw new s1.i();
            }
            n.B0(ViewActionEvent.C2856a.m35927k(ViewActionEvent.f9985d, inCallUiAction, AnalyticsContext.INCALLUI.getValue(), null, 4), c13832b.f40129c);
            return s.a;
        }
    }

    @e(c = "com.truecaller.incallui.utils.analytics.InCallUIAnalyticsImpl$listenServiceUIEvents$1", f = "InCallUIAnalyticsImpl.kt", l = {262}, m = "invokeSuspend")
    /* renamed from: e.a.f.z.m0.b$f */
    /* loaded from: classes10-dex2jar.jar:e/a/f/z/m0/b$f.class */
    public static final class C13838f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f40149e;

        /* renamed from: f */
        public Object f40150f;

        /* renamed from: g */
        public Object f40151g;

        /* renamed from: h */
        public Object f40152h;

        /* renamed from: i */
        public int f40153i;

        /* renamed from: k */
        public final /* synthetic */ h f40155k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13838f(h hVar, d dVar) {
            super(2, dVar);
            C13832b.this = r5;
            this.f40155k = hVar;
        }

        /* renamed from: i */
        public final d<s> m21013i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13838f(this.f40155k, dVar);
        }

        /* renamed from: k */
        public final Object m21012k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C13838f(this.f40155k, dVar).m21011s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x0119  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x011b  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x013d A[Catch: all -> 0x023f, TryCatch #1 {all -> 0x023f, blocks: (B:31:0x0133, B:33:0x013d, B:35:0x0153, B:36:0x0175, B:38:0x01a8, B:40:0x01b4, B:47:0x01d1, B:48:0x01da, B:50:0x01dd, B:51:0x01ea, B:53:0x01f8, B:56:0x0214), top: B:70:0x0133 }] */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0214 A[Catch: all -> 0x023f, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x023f, blocks: (B:31:0x0133, B:33:0x013d, B:35:0x0153, B:36:0x0175, B:38:0x01a8, B:40:0x01b4, B:47:0x01d1, B:48:0x01da, B:50:0x01dd, B:51:0x01ea, B:53:0x01f8, B:56:0x0214), top: B:70:0x0133 }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x011b -> B:70:0x0133). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m21011s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 605
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p734z.p735m0.C13832b.C13838f.m21011s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C13832b(@Named("IO") f fVar, AbstractC19462a abstractC19462a, AbstractC13734c abstractC13734c, AbstractC13762c abstractC13762c, AbstractC19854f<AbstractC19463a0> abstractC19854f) {
        l.e(fVar, "asyncContext");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC13734c, "callerInfoRepository");
        l.e(abstractC13762c, "callManager");
        l.e(abstractC19854f, "eventsTracker");
        this.f40128b = fVar;
        this.f40129c = abstractC19462a;
        this.f40130d = abstractC13734c;
        this.f40131e = abstractC13762c;
        this.f40132f = abstractC19854f;
    }

    /* renamed from: k */
    public static final n0 m21029k(C13832b c13832b, AnalyticsContext analyticsContext) {
        Objects.requireNonNull(c13832b);
        return s1.a.a.a.v0.f.d.H(c13832b, (f) null, (j0) null, new C13839c(c13832b, analyticsContext, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p717f.p734z.p735m0.AbstractC13831a
    /* renamed from: a */
    public void mo21039a() {
        if (this.f40127a) {
            return;
        }
        this.f40127a = true;
        C19291g.m13599P0(this, this.f40131e.mo21199h(), new C13835c(null));
    }

    @Override // p193e.p194a.p717f.p734z.p735m0.AbstractC13831a
    /* renamed from: b */
    public void mo21038b(CallState callState) {
        l.e(callState, "callState");
        n.B0(ViewActionEvent.C2856a.m35927k(ViewActionEvent.f9985d, ViewActionEvent.InCallUiAction.INCALLUI_CALL, null, callState.name(), 2), this.f40129c);
    }

    @Override // p193e.p194a.p717f.p734z.p735m0.AbstractC13831a
    /* renamed from: c */
    public void mo21037c(long j) {
        Schema schema = C17807x1.f50633e;
        C17807x1.C17809b c17809b = new C17807x1.C17809b(null);
        String value = AnalyticsContext.INCALLUI.getValue();
        c17809b.validate(c17809b.fields()[2], value);
        c17809b.f50641a = value;
        c17809b.fieldSetFlags()[2] = true;
        c17809b.validate(c17809b.fields()[3], Long.valueOf(j));
        c17809b.f50642b = j;
        c17809b.fieldSetFlags()[3] = true;
        this.f40132f.mo11854a().mo13111a(c17809b.build());
    }

    @Override // p193e.p194a.p717f.p734z.p735m0.AbstractC13831a
    /* renamed from: d */
    public void mo21036d(h<ServiceUIEvent> hVar) {
        l.e(hVar, AppsFlyerProperties.CHANNEL);
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C13838f(hVar, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p717f.p734z.p735m0.AbstractC13831a
    /* renamed from: e */
    public void mo21035e(h<CallBubbleUIEvent> hVar) {
        l.e(hVar, AppsFlyerProperties.CHANNEL);
        C19291g.m13599P0(this, hVar, new C13834b(null));
    }

    @Override // p193e.p194a.p717f.p734z.p735m0.AbstractC13831a
    /* renamed from: f */
    public void mo21034f(h<IncomingCallUIEvent> hVar) {
        l.e(hVar, AppsFlyerProperties.CHANNEL);
        C19291g.m13599P0(this, hVar, new C13836d(null));
    }

    @Override // p193e.p194a.p717f.p734z.p735m0.AbstractC13831a
    /* renamed from: g */
    public void mo21033g(C8349a c8349a) {
        l.e(c8349a, AnalyticsConstants.PROPERTIES);
        String name = ViewActionEvent.InCallUiAction.FULL_SCREEN_PROFILE_PICTURE.name();
        l.e(c8349a, "$this$toMap");
        HashMap hashMap = new HashMap();
        String eventName = FullScreenPictureEvent.DENSITY.getEventName();
        int i = c8349a.f25680a;
        hashMap.put(eventName, i < 320 ? "low" : i < 480 ? "medium" : "high");
        l.e(name, "viewId");
        n.B0(new C19597a(name, null, hashMap != null ? s1.u.i.b1(hashMap) : new LinkedHashMap()), this.f40129c);
    }

    public f getCoroutineContext() {
        return this.f40128b;
    }

    @Override // p193e.p194a.p717f.p734z.p735m0.AbstractC13831a
    /* renamed from: h */
    public void mo21032h(h<OngoingCallUIEvent> hVar) {
        l.e(hVar, AppsFlyerProperties.CHANNEL);
        C19291g.m13599P0(this, hVar, new C13837e(null));
    }

    @Override // p193e.p194a.p717f.p734z.p735m0.AbstractC13831a
    /* renamed from: i */
    public void mo21031i(NotificationUIEvent notificationUIEvent) {
        ViewActionEvent.InCallUiAction inCallUiAction;
        l.e(notificationUIEvent, "uiEvent");
        AnalyticsContext analyticsContext = AnalyticsContext.NOTIFICATION;
        switch (notificationUIEvent.ordinal()) {
            case 0:
                inCallUiAction = ViewActionEvent.InCallUiAction.NOTIFICATION;
                break;
            case 1:
                inCallUiAction = ViewActionEvent.InCallUiAction.ANSWER;
                break;
            case 2:
                inCallUiAction = ViewActionEvent.InCallUiAction.DECLINE;
                break;
            case 3:
                inCallUiAction = ViewActionEvent.InCallUiAction.HANG_UP;
                break;
            case 4:
                inCallUiAction = ViewActionEvent.InCallUiAction.MUTE;
                break;
            case 5:
                inCallUiAction = ViewActionEvent.InCallUiAction.UNMUTE;
                break;
            case 6:
                inCallUiAction = ViewActionEvent.InCallUiAction.SPEAKER_ON;
                break;
            case 7:
                inCallUiAction = ViewActionEvent.InCallUiAction.SPEAKER_OFF;
                break;
            default:
                throw new s1.i();
        }
        n.B0(ViewActionEvent.C2856a.m35927k(ViewActionEvent.f9985d, inCallUiAction, analyticsContext.getValue(), null, 4), this.f40129c);
    }

    @Override // p193e.p194a.p717f.p734z.p735m0.AbstractC13831a
    /* renamed from: j */
    public void mo21030j(C13642g c13642g, String str) {
        CharSequence charSequence;
        l.e(c13642g, "callerInfo");
        l.e(str, AnalyticsConstants.CONTEXT);
        if (!c13642g.f39526p) {
            if (c13642g.f39531u && !c13642g.f39521k) {
                charSequence = "cred";
            } else if (c13642g.f39528r && !c13642g.f39521k) {
                charSequence = RemoteMessageConst.Notification.PRIORITY;
            } else if (!c13642g.f39530t) {
                return;
            } else {
                charSequence = "verified_business";
            }
            C17672o.C17674b m15873a = C17672o.m15873a();
            m15873a.m15871b(charSequence);
            m15873a.m15870c(str);
            m15873a.m15869d(c13642g.f39515e);
            this.f40132f.mo11854a().mo13111a(m15873a.build());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x015e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ea -> B:34:0x00f0). Please submit an issue!!! */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21028l(s1.w.d<? super com.truecaller.incallui.utils.analytics.events.CallerType> r6) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p734z.p735m0.C13832b.m21028l(s1.w.d):java.lang.Object");
    }

    /* renamed from: m */
    public final CallerType m21027m(C13642g c13642g) {
        return (c13642g.f39521k || c13642g.f39524n != null) ? CallerType.SPAM : c13642g.f39528r ? CallerType.PRIORITY : C17891a1.C17902k.m15557y0(c13642g) ? CallerType.GOLD : C17891a1.C17902k.m15683E0(c13642g) ? CallerType.PREMIUM : c13642g.f39526p ? CallerType.PHONEBOOK : c13642g.f39525o ? CallerType.UNKNOWN : CallerType.IDENTIFIED;
    }
}
