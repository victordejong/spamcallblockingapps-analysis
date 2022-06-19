package p193e.p194a.p947k.p969c;

import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.Contact;
import com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour;
import com.truecaller.videocallerid.utils.analytics.VideoPlayerContext;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p947k.AbstractC16116j;
import p193e.p194a.p947k.C16117k;
import p193e.p194a.p947k.p948a.p964k.AbstractC15816a;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import p193e.p194a.p947k.p969c.AbstractC15952b;
import q3.a.i0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.k.c.d2 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/d2.class */
public final class C15968d2 implements AbstractC15964c2 {

    /* renamed from: a */
    public final f f44999a;

    /* renamed from: b */
    public final AbstractC15992h0 f45000b;

    /* renamed from: c */
    public final AbstractC16116j f45001c;

    /* renamed from: d */
    public final AbstractC15960c f45002d;

    /* renamed from: e */
    public final AbstractC15955b0 f45003e;

    /* renamed from: f */
    public final AbstractC8621z f45004f;

    /* renamed from: g */
    public final AbstractC19222c f45005g;

    @e(c = "com.truecaller.videocallerid.utils.VideoPlayerConfigProviderImpl", f = "VideoPlayerConfigProvider.kt", l = {163}, m = "getFullVideoAvatarConfig")
    /* renamed from: e.a.k.c.d2$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/d2$a.class */
    public static final class C15969a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45006d;

        /* renamed from: e */
        public int f45007e;

        /* renamed from: g */
        public Object f45009g;

        /* renamed from: h */
        public Object f45010h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15969a(d dVar) {
            super(dVar);
            C15968d2.this = r4;
        }

        /* renamed from: s */
        public final Object m18072s(Object obj) {
            this.f45006d = obj;
            this.f45007e |= Integer.MIN_VALUE;
            return C15968d2.this.mo18078i(null, null, null, null, false, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.VideoPlayerConfigProviderImpl", f = "VideoPlayerConfigProvider.kt", l = {183, 188, 192}, m = "getIncomingVideoDetails")
    /* renamed from: e.a.k.c.d2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/d2$b.class */
    public static final class C15970b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45011d;

        /* renamed from: e */
        public int f45012e;

        /* renamed from: g */
        public Object f45014g;

        /* renamed from: h */
        public Object f45015h;

        /* renamed from: i */
        public boolean f45016i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15970b(d dVar) {
            super(dVar);
            C15968d2.this = r4;
        }

        /* renamed from: s */
        public final Object m18071s(Object obj) {
            this.f45011d = obj;
            this.f45012e |= Integer.MIN_VALUE;
            return C15968d2.this.m18074m(false, null, false, false, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.VideoPlayerConfigProviderImpl", f = "VideoPlayerConfigProvider.kt", l = {131}, m = "getVideoAvatarConfig")
    /* renamed from: e.a.k.c.d2$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/d2$c.class */
    public static final class C15971c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45017d;

        /* renamed from: e */
        public int f45018e;

        /* renamed from: g */
        public Object f45020g;

        /* renamed from: h */
        public Object f45021h;

        /* renamed from: i */
        public Object f45022i;

        /* renamed from: j */
        public Object f45023j;

        /* renamed from: k */
        public Object f45024k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15971c(d dVar) {
            super(dVar);
            C15968d2.this = r4;
        }

        /* renamed from: s */
        public final Object m18070s(Object obj) {
            this.f45017d = obj;
            this.f45018e |= Integer.MIN_VALUE;
            return C15968d2.this.mo18081f(null, null, null, null, false, false, null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.VideoPlayerConfigProviderImpl$shouldShowFullVideoCallerId$2", f = "VideoPlayerConfigProvider.kt", l = {207}, m = "invokeSuspend")
    /* renamed from: e.a.k.c.d2$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/d2$d.class */
    public static final class C15972d extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f45025e;

        /* renamed from: g */
        public final /* synthetic */ String f45027g;

        /* renamed from: h */
        public final /* synthetic */ boolean f45028h;

        /* renamed from: i */
        public final /* synthetic */ boolean f45029i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15972d(String str, boolean z, boolean z2, d dVar) {
            super(2, dVar);
            C15968d2.this = r5;
            this.f45027g = str;
            this.f45028h = z;
            this.f45029i = z2;
        }

        /* renamed from: i */
        public final d<s> m18069i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15972d(this.f45027g, this.f45028h, this.f45029i, dVar);
        }

        /* renamed from: k */
        public final Object m18068k(Object obj, Object obj2) {
            return m18069i(obj, (d) obj2).m18067s(s.a);
        }

        /* renamed from: s */
        public final Object m18067s(Object obj) {
            a aVar = a.a;
            int i = this.f45025e;
            boolean z = true;
            if (i == 0) {
                C25225a.m3932a3(obj);
                String mo28181j = C15968d2.this.f45004f.mo28181j(this.f45027g);
                C15968d2 c15968d2 = C15968d2.this;
                boolean z2 = this.f45028h;
                boolean z3 = this.f45029i;
                this.f45025e = 1;
                Object m18073n = C15968d2.m18073n(c15968d2, z2, mo28181j, z3, false, this, 8);
                obj = m18073n;
                if (m18073n == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (obj == null) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.VideoPlayerConfigProviderImpl$shouldShowFullVideoCallerId$4", f = "VideoPlayerConfigProvider.kt", l = {216}, m = "invokeSuspend")
    /* renamed from: e.a.k.c.d2$e */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/d2$e.class */
    public static final class C15973e extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f45030e;

        /* renamed from: g */
        public final /* synthetic */ String f45032g;

        /* renamed from: h */
        public final /* synthetic */ boolean f45033h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15973e(String str, boolean z, d dVar) {
            super(2, dVar);
            C15968d2.this = r5;
            this.f45032g = str;
            this.f45033h = z;
        }

        /* renamed from: i */
        public final d<s> m18066i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15973e(this.f45032g, this.f45033h, dVar);
        }

        /* renamed from: k */
        public final Object m18065k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15973e(this.f45032g, this.f45033h, dVar).m18064s(s.a);
        }

        /* renamed from: s */
        public final Object m18064s(Object obj) {
            a aVar = a.a;
            int i = this.f45030e;
            boolean z = true;
            if (i == 0) {
                C25225a.m3932a3(obj);
                String mo28181j = C15968d2.this.f45004f.mo28181j(this.f45032g);
                if (mo28181j == null) {
                    return Boolean.FALSE;
                }
                boolean m17807d = ((C16117k) C15968d2.this.f45001c).m17807d(mo28181j);
                C15968d2 c15968d2 = C15968d2.this;
                boolean z2 = this.f45033h;
                this.f45030e = 1;
                Object m18073n = C15968d2.m18073n(c15968d2, m17807d, mo28181j, z2, false, this, 8);
                obj = m18073n;
                if (m18073n == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (obj == null) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    @Inject
    public C15968d2(@Named("IO") f fVar, AbstractC15992h0 abstractC15992h0, AbstractC16116j abstractC16116j, AbstractC15960c abstractC15960c, AbstractC15955b0 abstractC15955b0, AbstractC8621z abstractC8621z, AbstractC19222c abstractC19222c) {
        l.e(fVar, "ioContext");
        l.e(abstractC15992h0, "receiveVideoSettingsManager");
        l.e(abstractC16116j, "videoCallerIdSupport");
        l.e(abstractC15960c, "businessVideoPlayerConfigProvider");
        l.e(abstractC15955b0, "incomingVideoProvider");
        l.e(abstractC8621z, "numberHelper");
        l.e(abstractC19222c, "clock");
        this.f44999a = fVar;
        this.f45000b = abstractC15992h0;
        this.f45001c = abstractC16116j;
        this.f45002d = abstractC15960c;
        this.f45003e = abstractC15955b0;
        this.f45004f = abstractC8621z;
        this.f45005g = abstractC19222c;
    }

    /* renamed from: n */
    public static /* synthetic */ Object m18073n(C15968d2 c15968d2, boolean z, String str, boolean z2, boolean z3, d dVar, int i) {
        if ((i & 8) != 0) {
            z3 = true;
        }
        return c15968d2.m18074m(z, str, z2, z3, dVar);
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15964c2
    /* renamed from: a */
    public AbstractC15836l mo18086a(Contact contact, String str) {
        C15982f c15982f = (C15982f) this.f45002d;
        Objects.requireNonNull(c15982f);
        AbstractC15836l.C15839c c15839c = null;
        if (contact != null) {
            if (!c15982f.m18047d(contact)) {
                c15839c = null;
            } else {
                String m18049b = c15982f.m18049b(contact);
                c15839c = null;
                if (m18049b != null) {
                    c15839c = new AbstractC15836l.C15839c(new PlayingBehaviour.C4745a(99.9f), m18049b, contact.getTcId(), true, str, null, 32);
                }
            }
        }
        return c15839c;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15964c2
    /* renamed from: b */
    public AbstractC15836l mo18085b(Contact contact, String str) {
        C15982f c15982f = (C15982f) this.f45002d;
        Objects.requireNonNull(c15982f);
        AbstractC15836l.C15839c c15839c = null;
        if (contact != null) {
            if (!c15982f.m18047d(contact)) {
                c15839c = null;
            } else {
                String m18050a = c15982f.m18050a(contact);
                c15839c = null;
                if (m18050a != null) {
                    c15839c = new AbstractC15836l.C15839c(new PlayingBehaviour.C4747c(new PlayingBehaviour.Fallback(PlayingBehaviour.Fallback.Partly.WAIT_FOR_BUFFER, PlayingBehaviour.Fallback.LessThanPartly.WAIT_FOR_BUFFER)), m18050a, contact.getTcId(), true, (String) s1.u.i.D(C17891a1.C17902k.m15636X(contact)), null, 32);
                }
            }
        }
        return c15839c;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15964c2
    /* renamed from: c */
    public Object mo18084c(Contact contact, String str, VideoPlayerContext videoPlayerContext, d<? super AbstractC15816a> dVar) {
        AbstractC15816a.C15819c c15819c = null;
        if (contact != null) {
            C15982f c15982f = (C15982f) this.f45002d;
            Objects.requireNonNull(c15982f);
            l.e(contact, AnalyticsConstants.CONTACT);
            l.e(videoPlayerContext, "playerContext");
            if (!c15982f.m18047d(contact)) {
                c15819c = null;
            } else {
                String m18049b = c15982f.m18049b(contact);
                c15819c = null;
                if (m18049b != null) {
                    c15819c = new AbstractC15816a.C15819c(((C16117k) c15982f.f45058c).m17810a(contact, new C15974e(str)), m18049b, new PlayingBehaviour.C4745a(99.9f), true, contact.getTcId(), str, null, 64);
                }
            }
        }
        return c15819c;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15964c2
    /* renamed from: d */
    public Object mo18083d(Contact contact, d<? super Boolean> dVar) {
        return Boolean.valueOf(((C15982f) this.f45002d).m18048c(contact));
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15964c2
    /* renamed from: e */
    public String mo18082e(Contact contact) {
        C15982f c15982f = (C15982f) this.f45002d;
        Objects.requireNonNull(c15982f);
        String str = null;
        if (contact != null) {
            if (!c15982f.m18047d(contact)) {
                str = null;
            } else {
                str = c15982f.m18049b(contact);
                if (str == null) {
                    str = null;
                    if (((C20592g) c15982f.f45056a.get()).m11002C().isEnabled()) {
                        str = c15982f.m18050a(contact);
                    }
                }
            }
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0132  */
    @Override // p193e.p194a.p947k.p969c.AbstractC15964c2
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo18081f(com.truecaller.data.entity.Contact r12, java.lang.String r13, com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour r14, com.truecaller.videocallerid.utils.analytics.VideoPlayerContext r15, boolean r16, boolean r17, s1.z.b.l<? super com.truecaller.common.p156ui.avatar.AvatarXConfig, com.truecaller.common.p156ui.avatar.AvatarXConfig> r18, s1.w.d<? super p193e.p194a.p947k.p948a.p964k.AbstractC15816a> r19) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C15968d2.mo18081f(com.truecaller.data.entity.Contact, java.lang.String, com.truecaller.videocallerid.ui.videoplayer.playing.PlayingBehaviour, com.truecaller.videocallerid.utils.analytics.VideoPlayerContext, boolean, boolean, s1.z.b.l, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15964c2
    /* renamed from: g */
    public AbstractC15952b mo18080g(Contact contact, String str, boolean z) {
        C15982f c15982f = (C15982f) this.f45002d;
        AbstractC15952b.C15953a c15953a = null;
        if (((C20592g) c15982f.f45056a.get()).m11002C().isEnabled()) {
            c15953a = null;
            if (contact != null) {
                c15953a = null;
                if (c15982f.m18047d(contact)) {
                    if (c15982f.m18048c(contact)) {
                        c15953a = null;
                    } else {
                        String m18050a = c15982f.m18050a(contact);
                        c15953a = null;
                        if (m18050a != null) {
                            PlayingBehaviour.Fallback fallback = new PlayingBehaviour.Fallback(PlayingBehaviour.Fallback.Partly.WAIT_FOR_BUFFER, PlayingBehaviour.Fallback.LessThanPartly.WAIT_FOR_BUFFER);
                            if (z) {
                                c15953a = new AbstractC15952b.C15953a(new AbstractC15816a.C15819c(((C16117k) c15982f.f45058c).m17810a(contact, new C15965d(str)), m18050a, new PlayingBehaviour.C4745a(99.9f), true, contact.getTcId(), (String) s1.u.i.D(C17891a1.C17902k.m15636X(contact)), null, 64));
                            } else {
                                c15953a = new AbstractC15952b.C15954b(new AbstractC15836l.C15839c(new PlayingBehaviour.C4747c(fallback), m18050a, contact.getTcId(), true, (String) s1.u.i.D(C17891a1.C17902k.m15636X(contact)), null, 32));
                            }
                        }
                    }
                }
            }
        }
        return c15953a;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15964c2
    /* renamed from: h */
    public Object mo18079h(String str, boolean z, d<? super Boolean> dVar) {
        return r.p(str) ? Boolean.FALSE : s1.a.a.a.v0.f.d.a4(this.f44999a, new C15973e(str, z, null), dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    @Override // p193e.p194a.p947k.p969c.AbstractC15964c2
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo18078i(com.truecaller.data.entity.Contact r14, java.lang.String r15, com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour r16, com.truecaller.videocallerid.utils.analytics.VideoPlayerContext r17, boolean r18, s1.w.d<? super p193e.p194a.p947k.p948a.p964k.AbstractC15836l> r19) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C15968d2.mo18078i(com.truecaller.data.entity.Contact, java.lang.String, com.truecaller.videocallerid.ui.videoplayer.playing.PlayingBehaviour, com.truecaller.videocallerid.utils.analytics.VideoPlayerContext, boolean, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15964c2
    /* renamed from: j */
    public AbstractC15836l mo18077j(Contact contact, String str) {
        String m18049b;
        l.e(contact, AnalyticsConstants.CONTACT);
        C15982f c15982f = (C15982f) this.f45002d;
        Objects.requireNonNull(c15982f);
        AbstractC15836l.C15839c c15839c = null;
        if (c15982f.m18047d(contact) && (m18049b = c15982f.m18049b(contact)) != null) {
            c15839c = new AbstractC15836l.C15839c(new PlayingBehaviour.C4747c(new PlayingBehaviour.Fallback(PlayingBehaviour.Fallback.Partly.WAIT_FOR_BUFFER, PlayingBehaviour.Fallback.LessThanPartly.PLAY_PARTLY_ONCE_THEN_BUFFER)), m18049b, contact.getTcId(), true, str, null, 32);
        }
        return c15839c;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15964c2
    /* renamed from: k */
    public Object mo18076k(boolean z, String str, boolean z2, d<? super Boolean> dVar) {
        return ((str == null || r.p(str)) || !z) ? Boolean.FALSE : s1.a.a.a.v0.f.d.a4(this.f44999a, new C15972d(str, z, z2, null), dVar);
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15964c2
    /* renamed from: l */
    public AbstractC15816a.C15817a mo18075l(Contact contact, s1.z.b.l<? super AvatarXConfig, AvatarXConfig> lVar) {
        l.e(lVar, "avatarXConfigModifier");
        return new AbstractC15816a.C15817a(((C16117k) this.f45001c).m17810a(contact, lVar));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0192  */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18074m(boolean r6, java.lang.String r7, boolean r8, boolean r9, s1.w.d<? super p193e.p194a.p947k.p971l.C16120b> r10) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C15968d2.m18074m(boolean, java.lang.String, boolean, boolean, s1.w.d):java.lang.Object");
    }
}
