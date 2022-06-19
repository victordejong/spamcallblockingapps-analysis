package p193e.p194a.p619d.p663x.p665r;

import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.manager.rtm.RtmMsg;
import e.m.e.k;
import io.agora.rtm.ChannelAttributeOptions;
import io.agora.rtm.ErrorInfo;
import io.agora.rtm.ResultCallback;
import io.agora.rtm.RtmChannel;
import io.agora.rtm.RtmChannelAttribute;
import io.agora.rtm.RtmChannelListener;
import io.agora.rtm.RtmChannelMember;
import io.agora.rtm.RtmClient;
import io.agora.rtm.RtmFileMessage;
import io.agora.rtm.RtmImageMessage;
import io.agora.rtm.RtmMessage;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.C11464r;
import q3.a.b3.c;
import q3.a.b3.g;
import q3.a.i0;
import q3.a.j0;
import q3.a.n;
import q3.a.o;
import q3.a.w2.h;
import q3.a.x2.i1;
import s1.a.a.a.v0.f.d;
import s1.f0.v;
import s1.s;
import s1.u.u;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.x.r.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k.class */
public final class C12264k implements i0, AbstractC12261h {

    /* renamed from: a */
    public final C11464r<Set<C12282l>> f35828a;

    /* renamed from: b */
    public final C11464r<Set<C12262i>> f35829b;

    /* renamed from: c */
    public volatile RtmChannel f35830c;

    /* renamed from: d */
    public final h<RtmMsg> f35831d = d.d(-2);

    /* renamed from: e */
    public final c f35832e = g.a(false, 1);

    /* renamed from: f */
    public final String f35833f;

    /* renamed from: g */
    public final i0 f35834g;

    /* renamed from: h */
    public final RtmClient f35835h;

    /* renamed from: i */
    public final k f35836i;

    /* renamed from: j */
    public final a<Long> f35837j;

    /* renamed from: e.a.d.x.r.k$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$a.class */
    public static final class C12265a implements ResultCallback<Void> {

        /* renamed from: a */
        public final /* synthetic */ n f35838a;

        /* renamed from: b */
        public final /* synthetic */ List f35839b;

        /* renamed from: c */
        public final /* synthetic */ Set f35840c;

        public C12265a(n nVar, C12264k c12264k, List list, ChannelAttributeOptions channelAttributeOptions, Set set) {
            this.f35838a = nVar;
            this.f35839b = list;
            this.f35840c = set;
        }

        public void onFailure(ErrorInfo errorInfo) {
            StringBuilder m8728C = C22128a.m8728C("Cannot set attribute. Error code: ");
            m8728C.append(Integer.valueOf(errorInfo.getErrorCode()));
            m8728C.append(" desc: ");
            m8728C.append(errorInfo.getErrorDescription());
            m8728C.toString();
            C19291g.m13560d(this.f35838a, Boolean.FALSE);
        }

        public void onSuccess(Object obj) {
            Void r0 = (Void) obj;
            StringBuilder m8728C = C22128a.m8728C("Attributes are set. Attributes: ");
            m8728C.append(this.f35840c);
            m8728C.toString();
            C19291g.m13560d(this.f35838a, Boolean.TRUE);
        }
    }

    @e(c = "com.truecaller.voip.manager.rtm.RtmChannelImpl", f = "RtmChannel.kt", l = {444, 140}, m = "addAttributes")
    /* renamed from: e.a.d.x.r.k$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$b.class */
    public static final class C12266b extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f35841d;

        /* renamed from: e */
        public int f35842e;

        /* renamed from: g */
        public Object f35844g;

        /* renamed from: h */
        public Object f35845h;

        /* renamed from: i */
        public Object f35846i;

        /* renamed from: j */
        public Object f35847j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12266b(s1.w.d dVar) {
            super(dVar);
            C12264k.this = r4;
        }

        /* renamed from: s */
        public final Object m23344s(Object obj) {
            this.f35841d = obj;
            this.f35842e |= Integer.MIN_VALUE;
            return C12264k.this.mo23346n(null, this);
        }
    }

    /* renamed from: e.a.d.x.r.k$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$c.class */
    public static final class C12267c implements ResultCallback<Void> {

        /* renamed from: a */
        public final /* synthetic */ n f35848a;

        /* renamed from: b */
        public final /* synthetic */ Set f35849b;

        public C12267c(n nVar, C12264k c12264k, Set set) {
            this.f35848a = nVar;
            this.f35849b = set;
        }

        public void onFailure(ErrorInfo errorInfo) {
            StringBuilder m8728C = C22128a.m8728C("Cannot delete attribute. Error code: ");
            m8728C.append(Integer.valueOf(errorInfo.getErrorCode()));
            m8728C.append(" desc: ");
            m8728C.append(errorInfo.getErrorDescription());
            m8728C.toString();
            C19291g.m13560d(this.f35848a, Boolean.FALSE);
        }

        public void onSuccess(Object obj) {
            Void r0 = (Void) obj;
            StringBuilder m8728C = C22128a.m8728C("Attribute are deleted. Keys: ");
            m8728C.append(this.f35849b);
            m8728C.toString();
            C19291g.m13560d(this.f35848a, Boolean.TRUE);
        }
    }

    @e(c = "com.truecaller.voip.manager.rtm.RtmChannelImpl", f = "RtmChannel.kt", l = {455, 169}, m = "deleteAttributes")
    /* renamed from: e.a.d.x.r.k$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$d.class */
    public static final class C12268d extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f35850d;

        /* renamed from: e */
        public int f35851e;

        /* renamed from: g */
        public Object f35853g;

        /* renamed from: h */
        public Object f35854h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12268d(s1.w.d dVar) {
            super(dVar);
            C12264k.this = r4;
        }

        /* renamed from: s */
        public final Object m23343s(Object obj) {
            this.f35850d = obj;
            this.f35851e |= Integer.MIN_VALUE;
            return C12264k.this.mo23348l(null, this);
        }
    }

    @e(c = "com.truecaller.voip.manager.rtm.RtmChannelImpl", f = "RtmChannel.kt", l = {423, 76, 74, 75}, m = "join")
    /* renamed from: e.a.d.x.r.k$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$e.class */
    public static final class C12269e extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f35855d;

        /* renamed from: e */
        public int f35856e;

        /* renamed from: g */
        public Object f35858g;

        /* renamed from: h */
        public Object f35859h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12269e(s1.w.d dVar) {
            super(dVar);
            C12264k.this = r4;
        }

        /* renamed from: s */
        public final Object m23342s(Object obj) {
            this.f35855d = obj;
            this.f35856e |= Integer.MIN_VALUE;
            return C12264k.this.mo23349k(this);
        }
    }

    /* renamed from: e.a.d.x.r.k$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$f.class */
    public static final class C12270f implements RtmChannelListener {

        @e(c = "com.truecaller.voip.manager.rtm.RtmChannelImpl$joinChannel$2$channel$1$onAttributesUpdated$1", f = "RtmChannel.kt", l = {424}, m = "invokeSuspend")
        /* renamed from: e.a.d.x.r.k$f$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$f$a.class */
        public static final class C12271a extends i implements p<i0, s1.w.d<? super s>, Object> {

            /* renamed from: e */
            public Object f35861e;

            /* renamed from: f */
            public Object f35862f;

            /* renamed from: g */
            public int f35863g;

            /* renamed from: i */
            public final /* synthetic */ Set f35865i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12271a(Set set, s1.w.d dVar) {
                super(2, dVar);
                C12270f.this = r5;
                this.f35865i = set;
            }

            /* renamed from: i */
            public final s1.w.d<s> m23341i(Object obj, s1.w.d<?> dVar) {
                l.e(dVar, "completion");
                return new C12271a(this.f35865i, dVar);
            }

            /* renamed from: k */
            public final Object m23340k(Object obj, Object obj2) {
                s1.w.d dVar = (s1.w.d) obj2;
                l.e(dVar, "completion");
                return new C12271a(this.f35865i, dVar).m23339s(s.a);
            }

            /* renamed from: s */
            public final Object m23339s(Object obj) {
                C11464r<Set<C12262i>> c11464r;
                c cVar;
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f35863g;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    c11464r = C12264k.this.f35829b;
                    cVar = c11464r.f33655b;
                    this.f35861e = c11464r;
                    this.f35862f = cVar;
                    this.f35863g = 1;
                    if (cVar.b((Object) null, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    c cVar2 = (c) this.f35862f;
                    c11464r = (C11464r) this.f35861e;
                    C25225a.m3932a3(obj);
                    cVar = cVar2;
                }
                try {
                    c11464r.mo24640h().mo24639a(this.f35865i);
                    s sVar = s.a;
                    cVar.c((Object) null);
                    return sVar;
                } catch (Throwable th) {
                    cVar.c((Object) null);
                    throw th;
                }
            }
        }

        @e(c = "com.truecaller.voip.manager.rtm.RtmChannelImpl$joinChannel$2$channel$1$onMessageReceived$1", f = "RtmChannel.kt", l = {203}, m = "invokeSuspend")
        /* renamed from: e.a.d.x.r.k$f$b */
        /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$f$b.class */
        public static final class C12272b extends i implements p<i0, s1.w.d<? super s>, Object> {

            /* renamed from: e */
            public int f35866e;

            /* renamed from: g */
            public final /* synthetic */ RtmMessage f35868g;

            /* renamed from: h */
            public final /* synthetic */ RtmChannelMember f35869h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12272b(RtmMessage rtmMessage, RtmChannelMember rtmChannelMember, s1.w.d dVar) {
                super(2, dVar);
                C12270f.this = r5;
                this.f35868g = rtmMessage;
                this.f35869h = rtmChannelMember;
            }

            /* renamed from: i */
            public final s1.w.d<s> m23338i(Object obj, s1.w.d<?> dVar) {
                l.e(dVar, "completion");
                return new C12272b(this.f35868g, this.f35869h, dVar);
            }

            /* renamed from: k */
            public final Object m23337k(Object obj, Object obj2) {
                s1.w.d dVar = (s1.w.d) obj2;
                l.e(dVar, "completion");
                return new C12272b(this.f35868g, this.f35869h, dVar).m23336s(s.a);
            }

            /* renamed from: s */
            public final Object m23336s(Object obj) {
                RtmMsg rtmMsg;
                s sVar = s.a;
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f35866e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    C12264k c12264k = C12264k.this;
                    RtmMessage rtmMessage = this.f35868g;
                    RtmChannelMember rtmChannelMember = this.f35869h;
                    Objects.requireNonNull(c12264k);
                    try {
                        rtmMsg = (RtmMsg) c12264k.f35836i.f(rtmMessage.getText(), RtmMsg.class);
                        String userId = rtmChannelMember.getUserId();
                        l.d(userId, "member.userId");
                        rtmMsg.setSenderId(userId);
                    } catch (Exception e) {
                        rtmMsg = null;
                    }
                    if (rtmMsg != null) {
                        h<RtmMsg> hVar = C12264k.this.f35831d;
                        this.f35866e = 1;
                        if (hVar.v(rtmMsg, this) == aVar) {
                            return aVar;
                        }
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                return sVar;
            }
        }

        @e(c = "com.truecaller.voip.manager.rtm.RtmChannelImpl$joinChannel$2$channel$1$onMemberJoined$1", f = "RtmChannel.kt", l = {424}, m = "invokeSuspend")
        /* renamed from: e.a.d.x.r.k$f$c */
        /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$f$c.class */
        public static final class C12273c extends i implements p<i0, s1.w.d<? super s>, Object> {

            /* renamed from: e */
            public Object f35870e;

            /* renamed from: f */
            public Object f35871f;

            /* renamed from: g */
            public int f35872g;

            /* renamed from: i */
            public final /* synthetic */ C12282l f35874i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12273c(C12282l c12282l, s1.w.d dVar) {
                super(2, dVar);
                C12270f.this = r5;
                this.f35874i = c12282l;
            }

            /* renamed from: i */
            public final s1.w.d<s> m23335i(Object obj, s1.w.d<?> dVar) {
                l.e(dVar, "completion");
                return new C12273c(this.f35874i, dVar);
            }

            /* renamed from: k */
            public final Object m23334k(Object obj, Object obj2) {
                s1.w.d dVar = (s1.w.d) obj2;
                l.e(dVar, "completion");
                return new C12273c(this.f35874i, dVar).m23333s(s.a);
            }

            /* renamed from: s */
            public final Object m23333s(Object obj) {
                C11464r<Set<C12282l>> c11464r;
                c cVar;
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f35872g;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    c11464r = C12264k.this.f35828a;
                    cVar = c11464r.f33655b;
                    this.f35870e = c11464r;
                    this.f35871f = cVar;
                    this.f35872g = 1;
                    if (cVar.b((Object) null, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    c cVar2 = (c) this.f35871f;
                    c11464r = (C11464r) this.f35870e;
                    C25225a.m3932a3(obj);
                    cVar = cVar2;
                }
                try {
                    c11464r.mo24640h().mo24639a(s1.u.i.r0(C12264k.this.f35828a.getValue(), this.f35874i));
                    s sVar = s.a;
                    cVar.c((Object) null);
                    return sVar;
                } catch (Throwable th) {
                    cVar.c((Object) null);
                    throw th;
                }
            }
        }

        @e(c = "com.truecaller.voip.manager.rtm.RtmChannelImpl$joinChannel$2$channel$1$onMemberLeft$1", f = "RtmChannel.kt", l = {424}, m = "invokeSuspend")
        /* renamed from: e.a.d.x.r.k$f$d */
        /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$f$d.class */
        public static final class C12274d extends i implements p<i0, s1.w.d<? super s>, Object> {

            /* renamed from: e */
            public Object f35875e;

            /* renamed from: f */
            public Object f35876f;

            /* renamed from: g */
            public int f35877g;

            /* renamed from: i */
            public final /* synthetic */ C12282l f35879i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12274d(C12282l c12282l, s1.w.d dVar) {
                super(2, dVar);
                C12270f.this = r5;
                this.f35879i = c12282l;
            }

            /* renamed from: i */
            public final s1.w.d<s> m23332i(Object obj, s1.w.d<?> dVar) {
                l.e(dVar, "completion");
                return new C12274d(this.f35879i, dVar);
            }

            /* renamed from: k */
            public final Object m23331k(Object obj, Object obj2) {
                s1.w.d dVar = (s1.w.d) obj2;
                l.e(dVar, "completion");
                return new C12274d(this.f35879i, dVar).m23330s(s.a);
            }

            /* renamed from: s */
            public final Object m23330s(Object obj) {
                C11464r<Set<C12282l>> c11464r;
                c cVar;
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f35877g;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    c11464r = C12264k.this.f35828a;
                    cVar = c11464r.f33655b;
                    this.f35875e = c11464r;
                    this.f35876f = cVar;
                    this.f35877g = 1;
                    if (cVar.b((Object) null, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    c cVar2 = (c) this.f35876f;
                    c11464r = (C11464r) this.f35875e;
                    C25225a.m3932a3(obj);
                    cVar = cVar2;
                }
                try {
                    c11464r.mo24640h().mo24639a(s1.u.i.c0(C12264k.this.f35828a.getValue(), this.f35879i));
                    s sVar = s.a;
                    cVar.c((Object) null);
                    return sVar;
                } catch (Throwable th) {
                    cVar.c((Object) null);
                    throw th;
                }
            }
        }

        public C12270f() {
            C12264k.this = r4;
        }

        public void onAttributesUpdated(List<RtmChannelAttribute> list) {
            String str = "Attribute update event " + list;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (RtmChannelAttribute rtmChannelAttribute : list) {
                arrayList.add(C12264k.m23353b(C12264k.this, rtmChannelAttribute));
            }
            d.w2(C12264k.this.f35834g, (f) null, j0.d, new C12271a(s1.u.i.d1(arrayList), null), 1, (Object) null);
        }

        public void onFileMessageReceived(RtmFileMessage rtmFileMessage, RtmChannelMember rtmChannelMember) {
        }

        public void onImageMessageReceived(RtmImageMessage rtmImageMessage, RtmChannelMember rtmChannelMember) {
        }

        public void onMemberCountUpdated(int i) {
        }

        public void onMemberJoined(RtmChannelMember rtmChannelMember) {
            String str = "Member joined " + rtmChannelMember;
            String userId = rtmChannelMember.getUserId();
            l.d(userId, "agoraMember.userId");
            d.w2(C12264k.this.f35834g, (f) null, j0.d, new C12273c(new C12282l(v.g0(userId).toString()), null), 1, (Object) null);
        }

        public void onMemberLeft(RtmChannelMember rtmChannelMember) {
            String str = "Member left " + rtmChannelMember;
            String userId = rtmChannelMember.getUserId();
            l.d(userId, "agoraMember.userId");
            d.w2(C12264k.this.f35834g, (f) null, j0.d, new C12274d(new C12282l(userId), null), 1, (Object) null);
        }

        public void onMessageReceived(RtmMessage rtmMessage, RtmChannelMember rtmChannelMember) {
            String str = "Message is received " + rtmMessage + " from member " + rtmChannelMember;
            if (rtmMessage != null) {
                d.w2(C12264k.this.f35834g, (f) null, (j0) null, new C12272b(rtmMessage, rtmChannelMember, null), 3, (Object) null);
            }
        }
    }

    /* renamed from: e.a.d.x.r.k$g */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$g.class */
    public static final class C12275g implements ResultCallback<Void> {

        /* renamed from: a */
        public final /* synthetic */ RtmChannel f35880a;

        /* renamed from: b */
        public final /* synthetic */ n f35881b;

        /* renamed from: c */
        public final /* synthetic */ C12264k f35882c;

        public C12275g(RtmChannel rtmChannel, n nVar, C12264k c12264k) {
            this.f35880a = rtmChannel;
            this.f35881b = nVar;
            this.f35882c = c12264k;
        }

        public void onFailure(ErrorInfo errorInfo) {
            StringBuilder m8728C = C22128a.m8728C("Cannot join rtm channel: ");
            m8728C.append(this.f35882c.f35833f);
            m8728C.append(", error code: ");
            m8728C.append(Integer.valueOf(errorInfo.getErrorCode()));
            m8728C.append(" desc: ");
            m8728C.append(errorInfo.getErrorDescription());
            m8728C.toString();
            this.f35882c.f35830c = null;
            C19291g.m13560d(this.f35881b, Boolean.FALSE);
        }

        public void onSuccess(Object obj) {
            Void r0 = (Void) obj;
            C12264k c12264k = this.f35882c;
            String str = c12264k.f35833f;
            c12264k.f35830c = this.f35880a;
            C19291g.m13560d(this.f35881b, Boolean.TRUE);
        }
    }

    /* renamed from: e.a.d.x.r.k$h */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$h.class */
    public static final class C12276h implements ResultCallback<Void> {

        /* renamed from: a */
        public final /* synthetic */ n f35883a;

        /* renamed from: b */
        public final /* synthetic */ C12264k f35884b;

        /* renamed from: c */
        public final /* synthetic */ s1.w.d f35885c;

        public C12276h(n nVar, C12264k c12264k, s1.w.d dVar) {
            this.f35883a = nVar;
            this.f35884b = c12264k;
            this.f35885c = dVar;
        }

        public void onFailure(ErrorInfo errorInfo) {
            StringBuilder m8728C = C22128a.m8728C("Cannot leave rtm channel: ");
            m8728C.append(this.f35884b.f35833f);
            m8728C.append(", error code: ");
            m8728C.append(Integer.valueOf(errorInfo.getErrorCode()));
            m8728C.append(" desc: ");
            m8728C.append(errorInfo.getErrorDescription());
            m8728C.toString();
            C19291g.m13560d(this.f35883a, Boolean.FALSE);
        }

        public void onSuccess(Object obj) {
            Void r0 = (Void) obj;
            C12264k c12264k = this.f35884b;
            String str = c12264k.f35833f;
            c12264k.f35830c = null;
            C19291g.m13560d(this.f35883a, Boolean.TRUE);
        }
    }

    @e(c = "com.truecaller.voip.manager.rtm.RtmChannelImpl", f = "RtmChannel.kt", l = {486, 489}, m = "leave")
    /* renamed from: e.a.d.x.r.k$i */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$i.class */
    public static final class C12277i extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f35886d;

        /* renamed from: e */
        public int f35887e;

        /* renamed from: g */
        public Object f35889g;

        /* renamed from: h */
        public Object f35890h;

        /* renamed from: i */
        public Object f35891i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12277i(s1.w.d dVar) {
            super(dVar);
            C12264k.this = r4;
        }

        /* renamed from: s */
        public final Object m23329s(Object obj) {
            this.f35886d = obj;
            this.f35887e |= Integer.MIN_VALUE;
            return C12264k.this.mo23347m(this);
        }
    }

    /* renamed from: e.a.d.x.r.k$j */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$j.class */
    public static final class C12278j implements ResultCallback<List<? extends RtmChannelAttribute>> {

        /* renamed from: a */
        public final /* synthetic */ n f35892a;

        /* renamed from: b */
        public final /* synthetic */ C12264k f35893b;

        /* renamed from: c */
        public final /* synthetic */ s1.w.d f35894c;

        public C12278j(n nVar, C12264k c12264k, s1.w.d dVar) {
            this.f35892a = nVar;
            this.f35893b = c12264k;
            this.f35894c = dVar;
        }

        public void onFailure(ErrorInfo errorInfo) {
            StringBuilder m8728C = C22128a.m8728C("Cannot fetch attributes, error code: ");
            m8728C.append(Integer.valueOf(errorInfo.getErrorCode()));
            m8728C.append(" desc: ");
            m8728C.append(errorInfo.getErrorDescription());
            m8728C.toString();
            C19291g.m13560d(this.f35892a, null);
        }

        public void onSuccess(Object obj) {
            u uVar;
            List<RtmChannelAttribute> list = (List) obj;
            String str = "Fetched attributes, " + list;
            if (list != null) {
                ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
                for (RtmChannelAttribute rtmChannelAttribute : list) {
                    arrayList.add(C12264k.m23353b(this.f35893b, rtmChannelAttribute));
                }
                uVar = s1.u.i.d1(arrayList);
            } else {
                uVar = u.a;
            }
            C19291g.m13560d(this.f35892a, uVar);
        }
    }

    @e(c = "com.truecaller.voip.manager.rtm.RtmChannelImpl", f = "RtmChannel.kt", l = {508, 512}, m = "updateAttributes")
    /* renamed from: e.a.d.x.r.k$k */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$k.class */
    public static final class C12279k extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f35895d;

        /* renamed from: e */
        public int f35896e;

        /* renamed from: g */
        public Object f35898g;

        /* renamed from: h */
        public Object f35899h;

        /* renamed from: i */
        public Object f35900i;

        /* renamed from: j */
        public Object f35901j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12279k(s1.w.d dVar) {
            super(dVar);
            C12264k.this = r4;
        }

        /* renamed from: s */
        public final Object m23328s(Object obj) {
            this.f35895d = obj;
            this.f35896e |= Integer.MIN_VALUE;
            return C12264k.this.m23351d(this);
        }
    }

    @e(c = "com.truecaller.voip.manager.rtm.RtmChannelImpl", f = "RtmChannel.kt", l = {531, 535}, m = "updateMembers")
    /* renamed from: e.a.d.x.r.k$l */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$l.class */
    public static final class C12280l extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f35902d;

        /* renamed from: e */
        public int f35903e;

        /* renamed from: g */
        public Object f35905g;

        /* renamed from: h */
        public Object f35906h;

        /* renamed from: i */
        public Object f35907i;

        /* renamed from: j */
        public Object f35908j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12280l(s1.w.d dVar) {
            super(dVar);
            C12264k.this = r4;
        }

        /* renamed from: s */
        public final Object m23327s(Object obj) {
            this.f35902d = obj;
            this.f35903e |= Integer.MIN_VALUE;
            return C12264k.this.m23350e(this);
        }
    }

    /* renamed from: e.a.d.x.r.k$m */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/k$m.class */
    public static final class C12281m implements ResultCallback<List<? extends RtmChannelMember>> {

        /* renamed from: a */
        public final /* synthetic */ n f35909a;

        public C12281m(n nVar) {
            this.f35909a = nVar;
        }

        public void onFailure(ErrorInfo errorInfo) {
            StringBuilder m8728C = C22128a.m8728C("Cannot fetch members, error code: ");
            m8728C.append(Integer.valueOf(errorInfo.getErrorCode()));
            m8728C.append(" desc: ");
            m8728C.append(errorInfo.getErrorDescription());
            m8728C.toString();
            C19291g.m13560d(this.f35909a, null);
        }

        public void onSuccess(Object obj) {
            u uVar;
            List<RtmChannelMember> list = (List) obj;
            String str = "Fetched members, " + list;
            if (list != null) {
                ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
                for (RtmChannelMember rtmChannelMember : list) {
                    String userId = rtmChannelMember.getUserId();
                    l.d(userId, "it.userId");
                    arrayList.add(new C12282l(userId));
                }
                uVar = s1.u.i.d1(arrayList);
            } else {
                uVar = u.a;
            }
            C19291g.m13560d(this.f35909a, uVar);
        }
    }

    public C12264k(String str, i0 i0Var, RtmClient rtmClient, k kVar, a<Long> aVar) {
        l.e(str, "id");
        l.e(i0Var, "coroutineScope");
        l.e(rtmClient, "rtmClient");
        l.e(kVar, "gson");
        l.e(aVar, "timeProvider");
        this.f35833f = str;
        this.f35834g = i0Var;
        this.f35835h = rtmClient;
        this.f35836i = kVar;
        this.f35837j = aVar;
        u uVar = u.a;
        this.f35828a = new C11464r<>(uVar);
        this.f35829b = new C11464r<>(uVar);
    }

    /* renamed from: b */
    public static final C12262i m23353b(C12264k c12264k, RtmChannelAttribute rtmChannelAttribute) {
        Objects.requireNonNull(c12264k);
        String key = rtmChannelAttribute.getKey();
        l.d(key, AnalyticsConstants.KEY);
        String value = rtmChannelAttribute.getValue();
        l.d(value, "value");
        String lastUpdateUserId = rtmChannelAttribute.getLastUpdateUserId();
        l.d(lastUpdateUserId, "lastUpdateUserId");
        return new C12262i(key, value, lastUpdateUserId, Math.min(((Number) c12264k.f35837j.invoke()).longValue(), rtmChannelAttribute.getLastUpdateTs()));
    }

    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12261h
    /* renamed from: a */
    public i1 mo23354a() {
        return this.f35829b;
    }

    /* renamed from: c */
    public final Object m23352c(s1.w.d<? super Boolean> dVar) {
        o oVar = new o(C25225a.m3844s1(dVar), 1);
        oVar.z();
        RtmChannel createChannel = this.f35835h.createChannel(this.f35833f, new C12270f());
        if (createChannel == null) {
            Boolean bool = Boolean.FALSE;
            if (oVar.b()) {
                oVar.c(bool);
            }
        } else {
            createChannel.join(new C12275g(createChannel, oVar, this));
        }
        Object y = oVar.y();
        if (y == s1.w.j.a.a) {
            l.e(dVar, "frame");
        }
        return y;
    }

    /* JADX WARN: Not initialized variable reg: 12, insn: 0x01fd: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r12 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:89:0x01fd */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01ec  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23351d(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p665r.C12264k.m23351d(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0102 A[Catch: all -> 0x01d6, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x01d6, blocks: (B:25:0x00ef, B:27:0x0102, B:30:0x0152), top: B:65:0x00ef }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01cd  */
    /* JADX WARN: Type inference failed for: r0v98, types: [e.a.d.c0.d0] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23350e(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p665r.C12264k.m23350e(s1.w.d):java.lang.Object");
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof C12264k)) {
            return false;
        }
        return l.a(this.f35833f, ((C12264k) obj).f35833f);
    }

    public f getCoroutineContext() {
        return this.f35834g.getCoroutineContext();
    }

    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12261h
    public String getId() {
        return this.f35833f;
    }

    public int hashCode() {
        return this.f35833f.hashCode();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01fb  */
    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12261h
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo23349k(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p665r.C12264k.mo23349k(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x01e8, code lost:
        if (((java.lang.Boolean) r14).booleanValue() == false) goto L42;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01c1  */
    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12261h
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo23348l(java.util.Set<java.lang.String> r11, s1.w.d<? super java.lang.Boolean> r12) {
        /*
            Method dump skipped, instructions count: 503
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p665r.C12264k.mo23348l(java.util.Set, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00f7 A[Catch: all -> 0x015a, TryCatch #0 {all -> 0x015a, blocks: (B:26:0x00c6, B:28:0x00f7, B:30:0x0104, B:31:0x010e, B:33:0x011a, B:35:0x0132, B:38:0x013e), top: B:50:0x00c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x010e A[Catch: all -> 0x015a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x015a, blocks: (B:26:0x00c6, B:28:0x00f7, B:30:0x0104, B:31:0x010e, B:33:0x011a, B:35:0x0132, B:38:0x013e), top: B:50:0x00c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x013e A[Catch: all -> 0x015a, TRY_ENTER, TryCatch #0 {all -> 0x015a, blocks: (B:26:0x00c6, B:28:0x00f7, B:30:0x0104, B:31:0x010e, B:33:0x011a, B:35:0x0132, B:38:0x013e), top: B:50:0x00c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x014e  */
    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12261h
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo23347m(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p665r.C12264k.mo23347m(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0213  */
    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12261h
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo23346n(java.util.Set<p193e.p194a.p619d.p663x.p665r.C12263j> r13, s1.w.d<? super java.lang.Boolean> r14) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p665r.C12264k.mo23346n(java.util.Set, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12261h
    /* renamed from: o */
    public i1 mo23345o() {
        return this.f35828a;
    }
}
