package p193e.p194a.p717f.p733y;

import android.os.Bundle;
import android.telecom.Call;
import android.telecom.DisconnectCause;
import android.telecom.PhoneAccount;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.telephony.TelephonyManager;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.incallui.service.CallState;
import com.truecaller.incallui.service.CallType;
import com.truecaller.incallui.utils.BlockAction;
import com.truecaller.incallui.utils.InCallUISearchDirection;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p717f.AbstractC13719m;
import p193e.p194a.p717f.p718a.C13642g;
import p193e.p194a.p717f.p731w.AbstractC13734c;
import p193e.p194a.p717f.p733y.AbstractC13754a;
import p193e.p194a.p717f.p734z.C13811d0;
import p193e.p194a.p717f.p734z.C13815e0;
import q3.a.i0;
import q3.a.j0;
import q3.a.w2.h;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.f.y.e */
/* loaded from: classes10-dex2jar.jar:e/a/f/y/e.class */
public final class C13764e implements AbstractC13762c, i0 {

    /* renamed from: a */
    public boolean f39904a;

    /* renamed from: c */
    public C13794x f39906c;

    /* renamed from: i */
    public final AbstractC13734c f39912i;

    /* renamed from: j */
    public final AbstractC13719m f39913j;

    /* renamed from: k */
    public final AbstractC19222c f39914k;

    /* renamed from: l */
    public final C13815e0 f39915l;

    /* renamed from: m */
    public final CallRecordingManager f39916m;

    /* renamed from: n */
    public final f f39917n;

    /* renamed from: b */
    public Map<String, AbstractC13761b> f39905b = new LinkedHashMap();

    /* renamed from: d */
    public final List<C13794x> f39907d = new ArrayList();

    /* renamed from: e */
    public final h<List<C13794x>> f39908e = d.d(-1);

    /* renamed from: f */
    public final h<CallState> f39909f = d.d(-1);

    /* renamed from: g */
    public final h<List<C13768f>> f39910g = d.d(-1);

    /* renamed from: h */
    public final C13765a f39911h = new C13765a();

    /* renamed from: e.a.f.y.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/y/e$a.class */
    public static final class C13765a extends Call.Callback {
        public C13765a() {
            C13764e.this = r4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [e.a.f.y.a$e, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r0v149 */
        /* JADX WARN: Type inference failed for: r0v159, types: [e.a.f.y.a$d] */
        /* JADX WARN: Type inference failed for: r0v162, types: [e.a.f.y.a$f] */
        /* JADX WARN: Type inference failed for: r0v165, types: [e.a.f.y.a$b] */
        /* JADX WARN: Type inference failed for: r0v174, types: [e.a.f.y.a$a] */
        /* JADX WARN: Type inference failed for: r0v80 */
        /* JADX WARN: Type inference failed for: r0v92, types: [long] */
        /* JADX WARN: Type inference failed for: r22v0 */
        /* JADX WARN: Type inference failed for: r22v1 */
        /* JADX WARN: Type inference failed for: r22v2 */
        /* JADX WARN: Type inference failed for: r22v3 */
        /* JADX WARN: Type inference failed for: r22v4 */
        /* JADX WARN: Type inference failed for: r22v5 */
        /* JADX WARN: Type inference failed for: r23v6, types: [java.lang.Throwable] */
        /* JADX WARN: Type inference failed for: r31v0 */
        /* JADX WARN: Type inference failed for: r31v1 */
        /* JADX WARN: Type inference failed for: r31v2 */
        /* JADX WARN: Type inference failed for: r31v3 */
        /* JADX WARN: Type inference failed for: r31v4 */
        /* JADX WARN: Type inference failed for: r6v0 */
        @Override // android.telecom.Call.Callback
        public void onCallDestroyed(Call call) {
            Call call2;
            AbstractC13754a.C13757c c13757c;
            String str;
            PhoneAccountHandle accountHandle;
            DisconnectCause disconnectCause;
            DisconnectCause disconnectCause2;
            CharSequence label;
            AbstractC13754a.C13757c c13757c2 = AbstractC13754a.C13757c.f39897a;
            ?? r0 = AbstractC13754a.C13759e.f39899a;
            super.onCallDestroyed(call);
            C13794x m21211S = C13764e.this.m21211S(call);
            if (l.a(C13764e.this.f39906c, m21211S)) {
                if (m21211S != null) {
                    Call.Details details = m21211S.f40005a.getDetails();
                    String obj = (details == null || (disconnectCause2 = details.getDisconnectCause()) == null || (label = disconnectCause2.getLabel()) == null) ? null : label.toString();
                    if ((obj == null || obj.length() == 0) != false) {
                        obj = null;
                    }
                    Call.Details details2 = m21211S.f40005a.getDetails();
                    Integer valueOf = (details2 == null || (disconnectCause = details2.getDisconnectCause()) == null) ? null : Integer.valueOf(disconnectCause.getCode());
                    c13757c = (valueOf != null && valueOf.intValue() == 7) ? AbstractC13754a.C13755a.f39895a : (valueOf != null && valueOf.intValue() == 6) ? r0 : (valueOf != null && valueOf.intValue() == 5) ? c13757c2 : (valueOf != null && valueOf.intValue() == 1) ? new AbstractC13754a.C13756b(obj) : (valueOf != null && valueOf.intValue() == 8) ? new AbstractC13754a.C13760f(obj) : AbstractC13754a.C13758d.f39898a;
                } else {
                    c13757c = null;
                }
                for (Map.Entry<String, AbstractC13761b> entry : C13764e.this.f39905b.entrySet()) {
                    entry.getValue().mo9803zj(c13757c);
                }
                C13764e.this.f39909f.offer(CallState.STATE_DISCONNECTED);
                if (m21211S != null) {
                    C13764e c13764e = C13764e.this;
                    Objects.requireNonNull(c13764e);
                    if (m21211S.f40011g && !c13764e.mo21193n() && !(c13757c instanceof AbstractC13754a.C13760f) && !(c13757c instanceof AbstractC13754a.C13756b)) {
                        Call.Details details3 = m21211S.f40005a.getDetails();
                        if (details3 == null || (accountHandle = details3.getAccountHandle()) == null) {
                            str = null;
                        } else {
                            C13815e0 c13815e0 = c13764e.f39915l;
                            Objects.requireNonNull(c13815e0);
                            l.e(accountHandle, "phoneAccountHandle");
                            if (c13815e0.f40076b.mo21740h()) {
                                Object systemService = c13815e0.f40075a.getSystemService("telecom");
                                Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.telecom.TelecomManager");
                                TelecomManager telecomManager = (TelecomManager) systemService;
                                Object systemService2 = c13815e0.f40075a.getSystemService(AnalyticsConstants.PHONE);
                                Objects.requireNonNull(systemService2, "null cannot be cast to non-null type android.telephony.TelephonyManager");
                                try {
                                    Object invoke = TelephonyManager.class.getMethod("getSubIdForPhoneAccount", PhoneAccount.class).invoke((TelephonyManager) systemService2, telecomManager.getPhoneAccount(accountHandle));
                                    if (invoke == null) {
                                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                                    }
                                    str = String.valueOf(((Integer) invoke).intValue());
                                } catch (IllegalAccessException | InvocationTargetException e) {
                                }
                            }
                            str = "-1";
                        }
                        String m15623c0 = C17891a1.C17902k.m15623c0(m21211S);
                        if (m15623c0 != null) {
                            long j = m21211S.f40007c;
                            Call.Details details4 = m21211S.f40005a.getDetails();
                            ?? r31 = false;
                            if (details4 != null) {
                                Long valueOf2 = Long.valueOf(details4.getConnectTimeMillis());
                                ?? r22 = false;
                                if (valueOf2.longValue() > 0) {
                                    r22 = true;
                                }
                                if (r22 == false) {
                                    valueOf2 = null;
                                }
                                r31 = false;
                                if (valueOf2 != null) {
                                    valueOf2.longValue();
                                    Long m21216N = c13764e.m21216N(m21211S.f40005a);
                                    Long l = null;
                                    if (m21216N != null) {
                                        l = Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(c13764e.f39914k.mo13819c() - m21216N.longValue()));
                                    }
                                    r31 = false;
                                    if (l != null) {
                                        r31 = l.longValue();
                                    }
                                }
                            }
                            CallType callType = l.a(c13757c, c13757c2) ? CallType.MISSED : m21211S.f40006b;
                            for (Map.Entry<String, AbstractC13761b> entry2 : c13764e.f39905b.entrySet()) {
                                entry2.getValue().mo9807Z7(new C13811d0(m15623c0, callType, j, r31 == true ? 1L : 0L, str, l.a(c13757c, (Object) r0), m21211S.f40010f, m21211S.f40008d, m21211S.f40009e));
                            }
                        }
                    }
                }
            }
            if (m21211S == null || (call2 = m21211S.f40005a) == null) {
                return;
            }
            call2.unregisterCallback(this);
        }

        @Override // android.telecom.Call.Callback
        public void onChildrenChanged(Call call, List<Call> list) {
            super.onChildrenChanged(call, list);
            C13764e c13764e = C13764e.this;
            c13764e.m21210T(c13764e.m21211S(call));
            C13764e.this.m21207W(list);
        }

        @Override // android.telecom.Call.Callback
        public void onParentChanged(Call call, Call call2) {
            super.onParentChanged(call, call2);
            C13794x m21211S = C13764e.this.m21211S(call);
            if (m21211S == null || m21211S.f40005a.getParent() != null) {
                return;
            }
            C13764e.this.m21210T(m21211S);
        }

        @Override // android.telecom.Call.Callback
        public void onPostDialWait(Call call, String str) {
            super.onPostDialWait(call, str);
            for (Map.Entry<String, AbstractC13761b> entry : C13764e.this.f39905b.entrySet()) {
                entry.getValue().mo9804sc(str);
            }
        }

        @Override // android.telecom.Call.Callback
        public void onStateChanged(Call call, int i) {
            CallState m15624c;
            l.e(call, "call");
            C13794x m21211S = C13764e.this.m21211S(call);
            if (m21211S == null || (m15624c = C17891a1.C17902k.m15624c(m21211S)) == null) {
                return;
            }
            C13764e.this.f39909f.offer(m15624c);
        }
    }

    @e(c = "com.truecaller.incallui.service.CallManagerImpl$onCallRemoved$1", f = "CallManager.kt", l = {205}, m = "invokeSuspend")
    /* renamed from: e.a.f.y.e$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/y/e$b.class */
    public static final class C13766b extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f39919e;

        /* renamed from: e.a.f.y.e$b$a */
        /* loaded from: classes10-dex2jar.jar:e/a/f/y/e$b$a.class */
        public static final class C13767a extends m implements s1.z.b.l<C13794x, Boolean> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C13767a() {
                super(1);
                C13766b.this = r4;
            }

            /* JADX WARN: Code restructure failed: missing block: B:22:0x00cd, code lost:
                if (r0.f40005a.getChildren().size() < 2) goto L23;
             */
            /* renamed from: d */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m21177d(java.lang.Object r4) {
                /*
                    Method dump skipped, instructions count: 217
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p733y.C13764e.C13766b.C13767a.m21177d(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13766b(s1.w.d dVar) {
            super(2, dVar);
            C13764e.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m21180i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C13766b(dVar);
        }

        /* renamed from: k */
        public final Object m21179k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C13766b(dVar).m21178s(s.a);
        }

        /* renamed from: s */
        public final Object m21178s(Object obj) {
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f39919e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f39919e = 1;
                if (d.D0(100L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            s1.u.i.w0(C13764e.this.f39907d, new C13767a());
            C13764e c13764e = C13764e.this;
            c13764e.f39908e.offer(c13764e.f39907d);
            if (!C13764e.this.f39907d.isEmpty()) {
                C13764e c13764e2 = C13764e.this;
                if (!c13764e2.f39904a) {
                    c13764e2.m21210T(null);
                    return sVar;
                }
            }
            C13764e.this.m21208V();
            C13764e.this.f39904a = false;
            return sVar;
        }
    }

    @Inject
    public C13764e(AbstractC13734c abstractC13734c, AbstractC13719m abstractC13719m, AbstractC19222c abstractC19222c, C13815e0 c13815e0, CallRecordingManager callRecordingManager, @Named("UI") f fVar) {
        l.e(abstractC13734c, "callerInfoRepository");
        l.e(abstractC13719m, "inCallUIConfig");
        l.e(abstractC19222c, "clock");
        l.e(c13815e0, "inCallUiCallInfoHelperImpl");
        l.e(callRecordingManager, "callRecordingManager");
        l.e(fVar, "uiContext");
        this.f39912i = abstractC13734c;
        this.f39913j = abstractC13719m;
        this.f39914k = abstractC19222c;
        this.f39915l = c13815e0;
        this.f39916m = callRecordingManager;
        this.f39917n = fVar;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: A */
    public void mo21229A(boolean z) {
        if (!this.f39913j.mo21275a()) {
            mo21224F();
            return;
        }
        C13794x c13794x = this.f39906c;
        if (c13794x != null) {
            c13794x.f40011g = z;
            c13794x.f40005a.disconnect();
        }
        this.f39904a = (!mo21193n()) & this.f39907d.isEmpty();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: B */
    public void mo21228B(Call call) {
        Call call2;
        l.e(call, "call");
        C13794x c13794x = this.f39906c;
        if (c13794x != null && (call2 = c13794x.f40005a) != null) {
            call2.unregisterCallback(this.f39911h);
        }
        this.f39906c = new C13794x(call, m21215O(call.getState()), this.f39914k.mo13819c(), null, false, false, false, 104);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: C */
    public void mo21227C() {
        d.w2(this, (f) null, (j0) null, new C13766b(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: D */
    public void mo21226D() {
        if (mo21204c()) {
            C13794x c13794x = this.f39906c;
            if (c13794x == null) {
                return;
            }
            m21209U(c13794x);
            return;
        }
        C13794x m21213Q = m21213Q(1);
        if (m21213Q != null) {
            d.w2(this, (f) null, (j0) null, new C13763d(this, m21213Q, null), 3, (Object) null);
            return;
        }
        C13794x c13794x2 = this.f39906c;
        if (c13794x2 == null) {
            return;
        }
        m21209U(c13794x2);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: E */
    public h<List<C13768f>> mo21225E() {
        return this.f39910g;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: F */
    public void mo21224F() {
        m21208V();
        this.f39909f.offer(CallState.STATE_DISCONNECTED);
        this.f39908e.offer(s1.u.s.a);
        m21208V();
        this.f39912i.release();
        this.f39905b.clear();
        this.f39904a = false;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: G */
    public boolean mo21223G() {
        C13794x c13794x;
        C13794x c13794x2 = this.f39906c;
        boolean z = true;
        if (c13794x2 == null || !c13794x2.f40005a.getDetails().can(2) || (c13794x = this.f39906c) == null || !c13794x.f40005a.getDetails().can(1) || mo21193n()) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: H */
    public void mo21222H(char c) {
        Call call;
        C13794x c13794x = this.f39906c;
        if (c13794x == null || (call = c13794x.f40005a) == null) {
            return;
        }
        call.playDtmfTone(c);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: I */
    public boolean mo21221I() {
        C13794x m21217M = m21217M();
        return m21217M != null ? C17891a1.C17902k.m15566v0(m21217M) : false;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: J */
    public void mo21220J() {
        Call call;
        C13794x c13794x = this.f39906c;
        if (c13794x == null || (call = c13794x.f40005a) == null) {
            return;
        }
        call.postDialContinue(false);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: K */
    public void mo21219K(Call call, BlockAction blockAction, boolean z) {
        l.e(call, "call");
        CallType m21215O = m21215O(call.getState());
        this.f39907d.add(new C13794x(call, m21215O, this.f39914k.mo13819c(), blockAction, z & (m21215O == CallType.OUTGOING), false, false, 96));
        this.f39908e.offer(this.f39907d);
        m21210T(null);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: L */
    public void mo21218L() {
        Call call;
        C13794x c13794x = this.f39906c;
        if (c13794x == null || (call = c13794x.f40005a) == null) {
            return;
        }
        call.stopDtmfTone();
    }

    /* renamed from: M */
    public final C13794x m21217M() {
        Object obj;
        C13794x m21213Q = m21213Q(1);
        if (m21213Q == null || m21213Q.f40005a.getState() != 3) {
            Iterator<T> it = this.f39907d.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                C13794x c13794x = (C13794x) obj;
                if (c13794x.f40005a.getState() == 3 && c13794x.f40005a.getParent() == null) {
                    break;
                }
            }
            return (C13794x) obj;
        }
        return m21213Q;
    }

    /* renamed from: N */
    public final Long m21216N(Call call) {
        Call.Details details;
        if (call == null || (details = call.getDetails()) == null) {
            return null;
        }
        Long valueOf = Long.valueOf(details.getConnectTimeMillis());
        if (!(valueOf.longValue() >= 0)) {
            valueOf = null;
        }
        if (valueOf == null) {
            return null;
        }
        long longValue = valueOf.longValue();
        long mo13821a = this.f39914k.mo13821a();
        return longValue <= mo13821a ? Long.valueOf(this.f39914k.mo13819c() - (mo13821a - longValue)) : Long.valueOf(longValue);
    }

    /* renamed from: O */
    public final CallType m21215O(int i) {
        CallType callType;
        if (i != 1) {
            if (i == 2) {
                callType = CallType.INCOMING;
            } else if (i != 8 && i != 9) {
                callType = CallType.UNKNOWN;
            }
            return callType;
        }
        callType = CallType.OUTGOING;
        return callType;
    }

    /* renamed from: P */
    public final ArrayList<PhoneAccountHandle> m21214P() {
        Call call;
        Call.Details details;
        Bundle intentExtras;
        C13794x c13794x = this.f39906c;
        return (c13794x == null || (call = c13794x.f40005a) == null || (details = call.getDetails()) == null || (intentExtras = details.getIntentExtras()) == null) ? null : intentExtras.getParcelableArrayList("selectPhoneAccountAccounts");
    }

    /* renamed from: Q */
    public final C13794x m21213Q(int i) {
        Object obj;
        Iterator<T> it = this.f39907d.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((C13794x) obj).f40005a.getDetails().hasProperty(i)) {
                break;
            }
        }
        return (C13794x) obj;
    }

    /* renamed from: R */
    public final C13794x m21212R(int i) {
        Object obj;
        Iterator<T> it = this.f39907d.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((C13794x) obj).f40005a.getState() == i) {
                break;
            }
        }
        return (C13794x) obj;
    }

    /* renamed from: S */
    public final C13794x m21211S(Call call) {
        Object obj;
        Iterator<T> it = this.f39907d.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            Object next = it.next();
            if (l.a(((C13794x) next).f40005a, call)) {
                obj = next;
                break;
            }
        }
        return (C13794x) obj;
    }

    /* renamed from: T */
    public final void m21210T(C13794x c13794x) {
        Call call;
        C13794x c13794x2 = this.f39906c;
        if (c13794x2 != null && (call = c13794x2.f40005a) != null) {
            call.unregisterCallback(this.f39911h);
        }
        if (c13794x == null) {
            c13794x = m21212R(8);
            if (c13794x == null) {
                c13794x = m21212R(2);
                if (c13794x == null) {
                    c13794x = m21212R(9);
                    if (c13794x == null) {
                        c13794x = m21212R(1);
                        if (c13794x == null) {
                            c13794x = m21213Q(1);
                            if (c13794x == null || c13794x.f40005a.getState() != 4) {
                                c13794x = m21212R(4);
                                if (c13794x == null) {
                                    c13794x = m21217M();
                                    if (c13794x == null) {
                                        c13794x = m21212R(7);
                                        if (c13794x == null) {
                                            c13794x = null;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        this.f39906c = c13794x;
        if (c13794x != null) {
            CallState m15624c = C17891a1.C17902k.m15624c(c13794x);
            if (m15624c != null) {
                this.f39909f.offer(m15624c);
                if (m15624c == CallState.STATE_HOLDING && this.f39916m.mo17595b()) {
                    this.f39916m.mo17596a();
                }
            }
            c13794x.f40005a.registerCallback(this.f39911h);
            m21207W(c13794x.f40005a.getChildren());
            this.f39912i.mo21234c(C17891a1.C17902k.m15623c0(c13794x), c13794x.f40006b.ordinal() != 0 ? InCallUISearchDirection.OUTGOING : InCallUISearchDirection.INCOMING);
        }
    }

    /* renamed from: U */
    public final void m21209U(C13794x c13794x) {
        Call call;
        List<Call> conferenceableCalls = c13794x.f40005a.getConferenceableCalls();
        if (conferenceableCalls == null || (call = (Call) s1.u.i.D(conferenceableCalls)) == null) {
            return;
        }
        c13794x.f40005a.conference(call);
    }

    /* renamed from: V */
    public final void m21208V() {
        for (Map.Entry<String, AbstractC13761b> entry : this.f39905b.entrySet()) {
            entry.getValue().mo9805od();
        }
    }

    /* renamed from: W */
    public final void m21207W(List<Call> list) {
        if (list == null || list.isEmpty()) {
            this.f39910g.offer(s1.u.s.a);
            return;
        }
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (Call call : list) {
            C13794x m21211S = m21211S(call);
            String m15623c0 = m21211S != null ? C17891a1.C17902k.m15623c0(m21211S) : null;
            C13642g c13642g = null;
            if (m21211S != null) {
                String m15623c02 = C17891a1.C17902k.m15623c0(m21211S);
                c13642g = null;
                if (m15623c02 != null) {
                    c13642g = this.f39912i.mo21235b(m15623c02);
                }
            }
            boolean z = false;
            if (m21211S != null) {
                z = mo21193n() ? false : m21211S.f40005a.getDetails().can(4096);
            }
            arrayList.add(new C13768f(m15623c0, c13642g, z));
        }
        this.f39910g.offer(arrayList);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: a */
    public void mo21206a() {
        if (!this.f39913j.mo21275a()) {
            mo21224F();
            return;
        }
        C13794x c13794x = this.f39906c;
        if (c13794x != null) {
            c13794x.f40010f = true;
            c13794x.f40005a.reject(false, null);
        }
        this.f39904a = !mo21193n();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: b */
    public void mo21205b(String str, AbstractC13761b abstractC13761b) {
        l.e(str, RemoteMessageConst.Notification.TAG);
        l.e(abstractC13761b, "listener");
        this.f39905b.remove(str);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: c */
    public boolean mo21204c() {
        C13794x c13794x = this.f39906c;
        return c13794x != null ? C17891a1.C17902k.m15566v0(c13794x) : false;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: d */
    public String mo21203d() {
        C13794x m21217M = m21217M();
        return m21217M != null ? C17891a1.C17902k.m15623c0(m21217M) : null;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: e */
    public Long mo21202e() {
        C13794x m21212R = m21212R(4);
        return m21216N(m21212R != null ? m21212R.f40005a : null);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: f */
    public boolean mo21201f() {
        return mo21193n() && m21217M() != null;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: g */
    public String mo21200g() {
        C13794x c13794x = this.f39906c;
        return c13794x != null ? C17891a1.C17902k.m15623c0(c13794x) : null;
    }

    public f getCoroutineContext() {
        return this.f39917n;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: h */
    public h<CallState> mo21199h() {
        return this.f39909f;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: i */
    public void mo21198i(int i) {
        Call call;
        List<Call> children;
        Call call2;
        C13794x c13794x = this.f39906c;
        if (c13794x == null || (call = c13794x.f40005a) == null || (children = call.getChildren()) == null || (call2 = (Call) s1.u.i.G(children, i)) == null) {
            return;
        }
        call2.disconnect();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: j */
    public void mo21197j() {
        Call call;
        C13794x c13794x = this.f39906c;
        if (c13794x == null || (call = c13794x.f40005a) == null) {
            return;
        }
        call.hold();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: k */
    public void mo21196k() {
        C13794x m21217M = m21217M();
        if (m21217M != null) {
            m21217M.f40005a.unhold();
            m21210T(m21217M);
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: l */
    public h<List<C13794x>> mo21195l() {
        return this.f39908e;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: m */
    public void mo21194m() {
        C13794x c13794x = this.f39906c;
        if (l.a(c13794x != null ? Boolean.valueOf(C17891a1.C17902k.m15566v0(c13794x)) : null, Boolean.TRUE)) {
            C13794x c13794x2 = this.f39906c;
            List<Call> list = null;
            if (c13794x2 != null) {
                Call call = c13794x2.f40005a;
                list = null;
                if (call != null) {
                    list = call.getChildren();
                }
            }
            m21207W(list);
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: n */
    public boolean mo21193n() {
        Object obj;
        Iterator<T> it = this.f39907d.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (C17891a1.C17902k.m15566v0((C13794x) obj)) {
                break;
            }
        }
        boolean z = false;
        boolean z2 = false;
        if (((C13794x) obj) != null) {
            List<C13794x> list = this.f39907d;
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : list) {
                if (!C17891a1.C17902k.m15566v0((C13794x) obj2)) {
                    arrayList.add(obj2);
                }
            }
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
            Iterator it2 = arrayList.iterator();
            while (true) {
                z = z2;
                if (!it2.hasNext()) {
                    break;
                }
                if (((C13794x) it2.next()).f40005a.getParent() == null) {
                    z2 = true;
                }
                arrayList2.add(s.a);
            }
        } else if (this.f39907d.size() > 1) {
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: o */
    public boolean mo21192o() {
        return mo21193n();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: p */
    public void mo21191p(String str, AbstractC13761b abstractC13761b) {
        l.e(str, RemoteMessageConst.Notification.TAG);
        l.e(abstractC13761b, "listener");
        this.f39905b.put(str, abstractC13761b);
        if (this.f39907d.isEmpty()) {
            abstractC13761b.mo9805od();
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: q */
    public void mo21190q() {
        Call call;
        C13794x c13794x = this.f39906c;
        if (c13794x == null || (call = c13794x.f40005a) == null) {
            return;
        }
        call.answer(0);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: r */
    public void mo21189r() {
        Call call;
        C13794x c13794x = this.f39906c;
        if (c13794x == null || (call = c13794x.f40005a) == null) {
            return;
        }
        call.postDialContinue(true);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    public void release() {
        m21208V();
        this.f39912i.release();
        this.f39905b.clear();
        this.f39904a = false;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: s */
    public void mo21188s(String str) {
        Object obj;
        Call call;
        l.e(str, "accountId");
        ArrayList<PhoneAccountHandle> m21214P = m21214P();
        if (m21214P != null) {
            Iterator<T> it = m21214P.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                Object next = it.next();
                if (l.a(((PhoneAccountHandle) next).getId(), str)) {
                    obj = next;
                    break;
                }
            }
            PhoneAccountHandle phoneAccountHandle = (PhoneAccountHandle) obj;
            if (phoneAccountHandle != null) {
                C13794x c13794x = this.f39906c;
                if (c13794x == null || (call = c13794x.f40005a) == null) {
                    return;
                }
                call.phoneAccountSelected(phoneAccountHandle, false);
                return;
            }
        }
        C17891a1.C17902k.m15590n0(this, false, 1, null);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: t */
    public List<String> mo21187t() {
        List<String> list;
        ArrayList<PhoneAccountHandle> m21214P = m21214P();
        if (m21214P != null) {
            ArrayList arrayList = new ArrayList(C25225a.m4004J(m21214P, 10));
            for (PhoneAccountHandle phoneAccountHandle : m21214P) {
                arrayList.add(phoneAccountHandle.getId());
            }
            list = s1.u.i.S0(arrayList);
        } else {
            list = null;
        }
        return list;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: u */
    public void mo21186u(boolean z) {
        if (!this.f39913j.mo21275a()) {
            mo21224F();
            return;
        }
        C13794x c13794x = this.f39906c;
        if (c13794x != null) {
            c13794x.f40011g = z;
            c13794x.f40005a.reject(false, null);
        }
        this.f39904a = (!mo21193n()) & this.f39907d.isEmpty();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: v */
    public void mo21185v(int i) {
        Call call;
        List<Call> children;
        Call call2;
        C13794x c13794x = this.f39906c;
        if (c13794x == null || (call = c13794x.f40005a) == null || (children = call.getChildren()) == null || (call2 = (Call) s1.u.i.G(children, i)) == null) {
            return;
        }
        call2.splitFromConference();
        m21210T(m21211S(call2));
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: w */
    public boolean mo21184w() {
        return mo21193n();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r3 != null) goto L7;
     */
    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.truecaller.incallui.service.CallType mo21183x() {
        /*
            r2 = this;
            r0 = r2
            e.a.f.y.x r0 = r0.f39906c
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            r0 = r3
            com.truecaller.incallui.service.CallType r0 = r0.f40006b
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            goto L19
        L15:
            com.truecaller.incallui.service.CallType r0 = com.truecaller.incallui.service.CallType.UNKNOWN
            r3 = r0
        L19:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p733y.C13764e.mo21183x():com.truecaller.incallui.service.CallType");
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: y */
    public void mo21182y(String str) {
        Call call;
        l.e(str, "message");
        if (!this.f39913j.mo21275a()) {
            mo21224F();
            return;
        }
        C13794x c13794x = this.f39906c;
        if (c13794x != null && (call = c13794x.f40005a) != null) {
            call.reject(true, str);
        }
        this.f39904a = !mo21193n();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13762c
    /* renamed from: z */
    public void mo21181z() {
        Call call;
        C13794x c13794x = this.f39906c;
        if (c13794x == null || (call = c13794x.f40005a) == null) {
            return;
        }
        call.unhold();
    }
}
