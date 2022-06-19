package p193e.p194a.p619d.p637c0.p640x1;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.telecom.CallAudioState;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import com.truecaller.voip.C4781R;
import io.agora.rtc.RtcEngine;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.p1131r0.C19263a;
import p193e.p194a.p1129p5.p1131r0.C19264b;
import p193e.p194a.p1129p5.p1131r0.C19267c;
import p193e.p194a.p1129p5.p1131r0.C19270d;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a;
import p193e.p194a.p619d.p652q.AbstractC11776v;
import p193e.p194a.p619d.p663x.AbstractC12216l;
import p193e.p194a.p619d.p663x.C12195d;
import p193e.p194a.p619d.p663x.p664q.AbstractC12236h;
import q3.a.i0;
import q3.a.j0;
import q3.a.o;
import q3.a.p1;
import q3.a.u1;
import q3.a.w2.v;
import q3.a.w2.x;
import q3.a.x2.a1;
import q3.a.x2.k1;
import q3.a.x2.u0;
import s1.g;
import s1.h;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.c0.x1.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f.class */
public final class C11523f implements AbstractC11522e, i0 {

    /* renamed from: a */
    public final g f33816a;

    /* renamed from: b */
    public final C11550i f33817b;

    /* renamed from: c */
    public MediaPlayer f33818c;

    /* renamed from: d */
    public AbstractC11521d f33819d;

    /* renamed from: e */
    public a<s> f33820e;

    /* renamed from: f */
    public p1 f33821f;

    /* renamed from: g */
    public final f f33822g;

    /* renamed from: h */
    public final f f33823h;

    /* renamed from: i */
    public final f f33824i;

    /* renamed from: j */
    public final Context f33825j;

    /* renamed from: k */
    public final AbstractC19230g f33826k;

    /* renamed from: l */
    public final AbstractC11776v f33827l;

    /* renamed from: m */
    public final AbstractC19223c0 f33828m;

    /* renamed from: e.a.d.c0.x1.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$a.class */
    public static final class C11524a extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11524a() {
            super(0);
            C11523f.this = r4;
        }

        public Object invoke() {
            a<s> aVar = C11523f.this.f33820e;
            if (aVar != null) {
                s sVar = (s) aVar.invoke();
            }
            return s.a;
        }
    }

    /* renamed from: e.a.d.c0.x1.f$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$b.class */
    public final class C11525b implements AbstractC11521d {

        /* renamed from: a */
        public final AudioFocusRequest f33830a;

        /* renamed from: b */
        public final /* synthetic */ C11523f f33831b;

        public C11525b(C11523f c11523f, AudioFocusRequest audioFocusRequest) {
            l.e(audioFocusRequest, "request");
            this.f33831b = c11523f;
            this.f33830a = audioFocusRequest;
        }

        @Override // p193e.p194a.p619d.p637c0.p640x1.AbstractC11521d
        /* renamed from: a */
        public void mo24539a() {
            this.f33831b.m24545m().abandonAudioFocusRequest(this.f33830a);
        }
    }

    /* renamed from: e.a.d.c0.x1.f$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$c.class */
    public final class C11526c implements AbstractC11521d {

        /* renamed from: a */
        public final AudioManager.OnAudioFocusChangeListener f33832a;

        /* renamed from: b */
        public final /* synthetic */ C11523f f33833b;

        public C11526c(C11523f c11523f, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
            l.e(onAudioFocusChangeListener, "listener");
            this.f33833b = c11523f;
            this.f33832a = onAudioFocusChangeListener;
        }

        @Override // p193e.p194a.p619d.p637c0.p640x1.AbstractC11521d
        /* renamed from: a */
        public void mo24539a() {
            this.f33833b.m24545m().abandonAudioFocus(this.f33832a);
        }
    }

    @e(c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl$audioStatesFlow$1", f = "VoipAudioUtil.kt", l = {330}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.x1.f$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$d.class */
    public static final class C11527d extends i implements p<x<? super C11519b>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f33834e;

        /* renamed from: f */
        public int f33835f;

        @e(c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl$audioStatesFlow$1$1", f = "VoipAudioUtil.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.d.c0.x1.f$d$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$d$a.class */
        public static final class C11528a extends i implements p<C19270d, d<? super s>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f33837e;

            /* renamed from: f */
            public final /* synthetic */ c0 f33838f;

            /* renamed from: g */
            public final /* synthetic */ s1.z.b.l f33839g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11528a(c0 c0Var, s1.z.b.l lVar, d dVar) {
                super(2, dVar);
                this.f33838f = c0Var;
                this.f33839g = lVar;
            }

            /* renamed from: i */
            public final d<s> m24535i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C11528a c11528a = new C11528a(this.f33838f, this.f33839g, dVar);
                c11528a.f33837e = obj;
                return c11528a;
            }

            /* renamed from: k */
            public final Object m24534k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                c0 c0Var = this.f33838f;
                s1.z.b.l lVar = this.f33839g;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                C19270d c19270d = (C19270d) obj;
                C11519b c11519b = (C11519b) c0Var.a;
                if (c11519b != null && !c11519b.f33812b.isEmpty()) {
                    C19263a c19263a = c19270d.f53664a;
                    lVar.d(c11519b.m24558a(c19263a != null ? new AbstractC11514a.C11515a(c19263a) : c11519b.f33811a, c19270d.f53665b));
                }
                return sVar;
            }

            /* renamed from: s */
            public final Object m24533s(Object obj) {
                s sVar = s.a;
                C25225a.m3932a3(obj);
                C19270d c19270d = (C19270d) this.f33837e;
                C11519b c11519b = (C11519b) this.f33838f.a;
                if (c11519b != null) {
                    if (c11519b.f33812b.isEmpty()) {
                        return sVar;
                    }
                    C19263a c19263a = c19270d.f53664a;
                    this.f33839g.d(c11519b.m24558a(c19263a != null ? new AbstractC11514a.C11515a(c19263a) : c11519b.f33811a, c19270d.f53665b));
                }
                return sVar;
            }
        }

        /* renamed from: e.a.d.c0.x1.f$d$b */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$d$b.class */
        public static final class C11529b extends m implements a<s> {

            /* renamed from: c */
            public final /* synthetic */ s1.z.b.l f33841c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11529b(s1.z.b.l lVar) {
                super(0);
                C11527d.this = r4;
                this.f33841c = lVar;
            }

            public Object invoke() {
                this.f33841c.d(C11523f.m24547k(C11523f.this));
                return s.a;
            }
        }

        /* renamed from: e.a.d.c0.x1.f$d$c */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$d$c.class */
        public static final class C11530c extends m implements a<s> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11530c() {
                super(0);
                C11527d.this = r4;
            }

            public Object invoke() {
                C11523f.this.f33827l.mo24012a(null);
                C11523f.this.f33820e = null;
                return s.a;
            }
        }

        /* renamed from: e.a.d.c0.x1.f$d$d */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$d$d.class */
        public static final class C11531d extends m implements s1.z.b.l<C11519b, s> {

            /* renamed from: b */
            public final /* synthetic */ x f33843b;

            /* renamed from: c */
            public final /* synthetic */ c0 f33844c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11531d(x xVar, c0 c0Var) {
                super(1);
                this.f33843b = xVar;
                this.f33844c = c0Var;
            }

            /* renamed from: d */
            public Object m24532d(Object obj) {
                C11519b c11519b = (C11519b) obj;
                l.e(c11519b, "audioState");
                if (!l.a((C11519b) this.f33844c.a, c11519b)) {
                    String str = "Sending new audio state: " + c11519b;
                    C19291g.m13534l1(this.f33843b, c11519b);
                    this.f33844c.a = c11519b;
                }
                return s.a;
            }
        }

        /* renamed from: e.a.d.c0.x1.f$d$e */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$d$e.class */
        public static final class C11532e extends m implements s1.z.b.l<CallAudioState, s> {

            /* renamed from: c */
            public final /* synthetic */ s1.z.b.l f33846c;

            /* renamed from: d */
            public final /* synthetic */ a1 f33847d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11532e(s1.z.b.l lVar, a1 a1Var) {
                super(1);
                C11527d.this = r4;
                this.f33846c = lVar;
                this.f33847d = a1Var;
            }

            /* renamed from: d */
            public Object m24531d(Object obj) {
                AbstractC11514a.C11517c c11517c;
                CallAudioState callAudioState = (CallAudioState) obj;
                l.e(callAudioState, "state");
                String str = "New audio state is received: " + callAudioState;
                C19270d m13724b = ((C19264b) C11523f.this.f33816a.getValue()).m13724b();
                int route = callAudioState.getRoute();
                if (route == 1) {
                    c11517c = AbstractC11514a.C11516b.f33808a;
                } else if (route != 2) {
                    c11517c = route != 4 ? route != 8 ? null : AbstractC11514a.C11517c.f33809a : AbstractC11514a.C11518d.f33810a;
                } else {
                    C19263a c19263a = m13724b.f53664a;
                    if (c19263a != null) {
                        c11517c = new AbstractC11514a.C11515a(c19263a);
                    } else {
                        String mo13768b = C11523f.this.f33828m.mo13768b(C4781R.string.voip_button_bluetooth, new Object[0]);
                        l.d(mo13768b, "resourceProvider.getStri…ng.voip_button_bluetooth)");
                        c11517c = new AbstractC11514a.C11515a(new C19263a(mo13768b, ""));
                    }
                }
                if (c11517c != null) {
                    this.f33846c.d(new C11519b(c11517c, m13724b.f53665b));
                    this.f33847d.setValue(callAudioState);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11527d(d dVar) {
            super(2, dVar);
            C11523f.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24538i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11527d c11527d = new C11527d(dVar);
            c11527d.f33834e = obj;
            return c11527d;
        }

        /* renamed from: k */
        public final Object m24537k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11527d c11527d = new C11527d(dVar);
            c11527d.f33834e = obj;
            return c11527d.m24536s(s.a);
        }

        /* renamed from: s */
        public final Object m24536s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f33835f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                x xVar = (x) this.f33834e;
                c0 c0Var = new c0();
                c0Var.a = null;
                C11531d c11531d = new C11531d(xVar, c0Var);
                a1 a = k1.a((Object) null);
                if (C11523f.this.f33827l.mo24012a(new C11532e(c11531d, a))) {
                    C19264b c19264b = (C19264b) C11523f.this.f33816a.getValue();
                    Objects.requireNonNull(c19264b);
                    l.e(a, "systemAudioState");
                    s1.a.a.a.v0.f.d.x2(new u0(s1.a.a.a.v0.f.d.P(new C19267c(c19264b, a, null)), new C11528a(c0Var, c11531d, null)), xVar);
                } else {
                    C11523f.this.f33820e = new C11529b(c11531d);
                    c11531d.m24532d(C11523f.m24547k(C11523f.this));
                }
                C11530c c11530c = new C11530c();
                this.f33835f = 1;
                if (v.a(xVar, c11530c, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    /* renamed from: e.a.d.c0.x1.f$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$e.class */
    public static final class C11533e extends m implements a<C19264b> {

        /* renamed from: c */
        public final /* synthetic */ AbstractC19219a0 f33849c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11533e(AbstractC19219a0 abstractC19219a0) {
            super(0);
            C11523f.this = r4;
            this.f33849c = abstractC19219a0;
        }

        public Object invoke() {
            return new C19264b(C11523f.this.f33825j, C4781R.string.voip_button_bluetooth, this.f33849c);
        }
    }

    @e(c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl$changeAudioRoute$3", f = "VoipAudioUtil.kt", l = {238, 245, 248}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.x1.f$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$f.class */
    public static final class C11534f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f33850e;

        /* renamed from: g */
        public final /* synthetic */ AbstractC11514a f33852g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11534f(AbstractC11514a abstractC11514a, d dVar) {
            super(2, dVar);
            C11523f.this = r5;
            this.f33852g = abstractC11514a;
        }

        /* renamed from: i */
        public final d<s> m24530i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11534f(this.f33852g, dVar);
        }

        /* renamed from: k */
        public final Object m24529k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11534f(this.f33852g, dVar).m24528s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:43:0x0110  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m24528s(java.lang.Object r5) {
            /*
                Method dump skipped, instructions count: 284
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p640x1.C11523f.C11534f.m24528s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.d.c0.x1.f$g */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$g.class */
    public static final class C11535g extends m implements s1.z.b.l<Throwable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11535g() {
            super(1);
            C11523f.this = r4;
        }

        /* renamed from: d */
        public Object m24527d(Object obj) {
            Throwable th = (Throwable) obj;
            C11523f.this.f33821f = null;
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl$changeAudioRouteAsync$1", f = "VoipAudioUtil.kt", l = {209}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.x1.f$h */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$h.class */
    public static final class C11536h extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f33854e;

        /* renamed from: g */
        public final /* synthetic */ AbstractC11514a f33856g;

        /* renamed from: h */
        public final /* synthetic */ AbstractC12216l f33857h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11536h(AbstractC11514a abstractC11514a, AbstractC12216l abstractC12216l, d dVar) {
            super(2, dVar);
            C11523f.this = r5;
            this.f33856g = abstractC11514a;
            this.f33857h = abstractC12216l;
        }

        /* renamed from: i */
        public final d<s> m24526i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11536h(this.f33856g, this.f33857h, dVar);
        }

        /* renamed from: k */
        public final Object m24525k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11536h(this.f33856g, this.f33857h, dVar).m24524s(s.a);
        }

        /* renamed from: s */
        public final Object m24524s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f33854e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                if (l.a(this.f33856g, AbstractC11514a.C11517c.f33809a)) {
                    RtcEngine m23470b = ((C12195d) this.f33857h).m23470b();
                    if (m23470b != null) {
                        m23470b.setEnableSpeakerphone(true);
                    }
                } else {
                    RtcEngine m23470b2 = ((C12195d) this.f33857h).m23470b();
                    if (m23470b2 != null) {
                        m23470b2.setEnableSpeakerphone(false);
                    }
                }
                C11523f c11523f = C11523f.this;
                AbstractC11514a abstractC11514a = this.f33856g;
                this.f33854e = 1;
                if (c11523f.m24546l(abstractC11514a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl$exit$2", f = "VoipAudioUtil.kt", l = {344}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.x1.f$i */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$i.class */
    public static final class C11537i extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f33858e;

        @e(c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl$exit$2$2", f = "VoipAudioUtil.kt", l = {346}, m = "invokeSuspend")
        /* renamed from: e.a.d.c0.x1.f$i$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$i$a.class */
        public static final class C11538a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public int f33860e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11538a(d dVar) {
                super(2, dVar);
                C11537i.this = r5;
            }

            /* renamed from: i */
            public final d<s> m24520i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C11538a(dVar);
            }

            /* renamed from: k */
            public final Object m24519k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C11538a(dVar).m24518s(s.a);
            }

            /* renamed from: s */
            public final Object m24518s(Object obj) {
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f33860e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    C11523f.this.m24545m().setMode(0);
                    C11523f c11523f = C11523f.this;
                    this.f33860e = 1;
                    if (c11523f.m24540r(this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11537i(d dVar) {
            super(2, dVar);
            C11523f.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24523i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11537i(dVar);
        }

        /* renamed from: k */
        public final Object m24522k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11537i(dVar).m24521s(s.a);
        }

        /* renamed from: s */
        public final Object m24521s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f33858e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C11523f.this.mo24555c();
                MediaPlayer mediaPlayer = C11523f.this.f33818c;
                if (mediaPlayer != null) {
                    mediaPlayer.release();
                }
                C11523f c11523f = C11523f.this;
                c11523f.f33818c = null;
                C11550i c11550i = c11523f.f33817b;
                if (c11550i.f33884c) {
                    c11550i.f33887f.unregisterReceiver(c11550i);
                    c11550i.f33884c = false;
                    s1.a.a.a.v0.f.d.T(c11550i.f33885d, (CancellationException) null, 1, (Object) null);
                }
                f fVar = C11523f.this.f33824i;
                C11538a c11538a = new C11538a(null);
                this.f33858e = 1;
                if (s1.a.a.a.v0.f.d.a4(fVar, c11538a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C11523f.this.m24545m().setSpeakerphoneOn(false);
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl$exitAsync$1", f = "VoipAudioUtil.kt", l = {353}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.x1.f$j */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$j.class */
    public static final class C11539j extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f33862e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11539j(d dVar) {
            super(2, dVar);
            C11523f.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24517i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11539j(dVar);
        }

        /* renamed from: k */
        public final Object m24516k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11539j(dVar).m24515s(s.a);
        }

        /* renamed from: s */
        public final Object m24515s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f33862e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C11523f c11523f = C11523f.this;
                this.f33862e = 1;
                if (c11523f.mo24556b(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    /* renamed from: e.a.d.c0.x1.f$k */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$k.class */
    public static final class C11540k extends m implements s1.z.b.l<Throwable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11540k() {
            super(1);
            C11523f.this = r4;
        }

        /* renamed from: d */
        public Object m24514d(Object obj) {
            Throwable th = (Throwable) obj;
            s1.a.a.a.v0.f.d.R(C11523f.this.f33822g, (CancellationException) null, 1, (Object) null);
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl$requestVoiceAudioFocusScoped$2", f = "VoipAudioUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.x1.f$l */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$l.class */
    public static final class C11541l extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ i0 f33866f;

        @e(c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl$requestVoiceAudioFocusScoped$2$1", f = "VoipAudioUtil.kt", l = {526}, m = "invokeSuspend")
        /* renamed from: e.a.d.c0.x1.f$l$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$l$a.class */
        public static final class C11542a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public Object f33867e;

            /* renamed from: f */
            public int f33868f;

            public C11542a(d dVar) {
                super(2, dVar);
            }

            /* renamed from: i */
            public final d<s> m24510i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C11542a(dVar);
            }

            /* renamed from: k */
            public final Object m24509k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C11542a(dVar).m24508s(s.a);
            }

            /* renamed from: s */
            public final Object m24508s(Object obj) {
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f33868f;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    this.f33867e = this;
                    this.f33868f = 1;
                    o oVar = new o(C25225a.m3844s1(this), 1);
                    oVar.z();
                    Object y = oVar.y();
                    if (y == aVar) {
                        l.e(this, "frame");
                    }
                    if (y == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C11542a c11542a = (C11542a) this.f33867e;
                    C25225a.m3932a3(obj);
                }
                return s.a;
            }
        }

        /* renamed from: e.a.d.c0.x1.f$l$b */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$l$b.class */
        public static final class C11543b extends m implements s1.z.b.l<Throwable, s> {

            /* renamed from: b */
            public final /* synthetic */ AbstractC11521d f33869b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11543b(AbstractC11521d abstractC11521d) {
                super(1);
                this.f33869b = abstractC11521d;
            }

            /* renamed from: d */
            public Object m24507d(Object obj) {
                Throwable th = (Throwable) obj;
                this.f33869b.mo24539a();
                return s.a;
            }
        }

        /* renamed from: e.a.d.c0.x1.f$l$c */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$l$c.class */
        public static final class C11544c implements AudioManager.OnAudioFocusChangeListener {

            /* renamed from: a */
            public static final C11544c f33870a = new C11544c();

            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public final void onAudioFocusChange(int i) {
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11541l(i0 i0Var, d dVar) {
            super(2, dVar);
            C11523f.this = r5;
            this.f33866f = i0Var;
        }

        /* renamed from: i */
        public final d<s> m24513i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11541l(this.f33866f, dVar);
        }

        /* renamed from: k */
        public final Object m24512k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11523f c11523f = C11523f.this;
            i0 i0Var = this.f33866f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            AbstractC11521d m24543o = c11523f.m24543o(EnumC11520c.VOICE, C11544c.f33870a);
            s1.a.a.a.v0.f.d.w2(i0Var, c11523f.f33823h, (j0) null, new C11542a(null), 2, (Object) null).n0(false, true, new C11543b(m24543o));
            return sVar;
        }

        /* renamed from: s */
        public final Object m24511s(Object obj) {
            C25225a.m3932a3(obj);
            AbstractC11521d m24543o = C11523f.this.m24543o(EnumC11520c.VOICE, C11544c.f33870a);
            s1.a.a.a.v0.f.d.w2(this.f33866f, C11523f.this.f33823h, (j0) null, new C11542a(null), 2, (Object) null).n0(false, true, new C11543b(m24543o));
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl$setAudioModeInCommunication$2", f = "VoipAudioUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.x1.f$m */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$m.class */
    public static final class C11545m extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11545m(d dVar) {
            super(2, dVar);
            C11523f.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24506i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11545m(dVar);
        }

        /* renamed from: k */
        public final Object m24505k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11523f c11523f = C11523f.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            if (!c11523f.f33827l.mo24003j()) {
                c11523f.m24545m().setMode(3);
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m24504s(Object obj) {
            s sVar = s.a;
            C25225a.m3932a3(obj);
            if (C11523f.this.f33827l.mo24003j()) {
                return sVar;
            }
            C11523f.this.m24545m().setMode(3);
            return sVar;
        }
    }

    @e(c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl", f = "VoipAudioUtil.kt", l = {373}, m = "startBluetoothSco")
    /* renamed from: e.a.d.c0.x1.f$n */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$n.class */
    public static final class C11546n extends c {

        /* renamed from: d */
        public /* synthetic */ Object f33872d;

        /* renamed from: e */
        public int f33873e;

        /* renamed from: g */
        public Object f33875g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11546n(d dVar) {
            super(dVar);
            C11523f.this = r4;
        }

        /* renamed from: s */
        public final Object m24503s(Object obj) {
            this.f33872d = obj;
            this.f33873e |= Integer.MIN_VALUE;
            return C11523f.this.m24542p(this);
        }
    }

    @e(c = "com.truecaller.voip.util.audio.VoipAudioUtilImpl", f = "VoipAudioUtil.kt", l = {385}, m = "stopBluetoothSco")
    /* renamed from: e.a.d.c0.x1.f$o */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/f$o.class */
    public static final class C11547o extends c {

        /* renamed from: d */
        public /* synthetic */ Object f33876d;

        /* renamed from: e */
        public int f33877e;

        /* renamed from: g */
        public Object f33879g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11547o(d dVar) {
            super(dVar);
            C11523f.this = r4;
        }

        /* renamed from: s */
        public final Object m24502s(Object obj) {
            this.f33876d = obj;
            this.f33877e |= Integer.MIN_VALUE;
            return C11523f.this.m24540r(this);
        }
    }

    @Inject
    public C11523f(@Named("UI") f fVar, @Named("IO") f fVar2, Context context, AbstractC19230g abstractC19230g, AbstractC11776v abstractC11776v, AbstractC19223c0 abstractC19223c0, AbstractC19219a0 abstractC19219a0) {
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC11776v, "voipCallConnectionManager");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC19219a0, "permissionUtil");
        this.f33823h = fVar;
        this.f33824i = fVar2;
        this.f33825j = context;
        this.f33826k = abstractC19230g;
        this.f33827l = abstractC11776v;
        this.f33828m = abstractC19223c0;
        this.f33816a = C25225a.m3982O1(h.c, new C11533e(abstractC19219a0));
        C11550i c11550i = new C11550i(fVar, context);
        if (!c11550i.f33884c) {
            c11550i.f33887f.registerReceiver(c11550i, new IntentFilter("android.intent.action.HEADSET_PLUG"));
            c11550i.f33884c = true;
            c11550i.m24501a();
        }
        c11550i.f33883b = new C11524a();
        this.f33817b = c11550i;
        this.f33822g = fVar.plus(s1.a.a.a.v0.f.d.j((p1) null, 1, (Object) null));
    }

    /* renamed from: k */
    public static final C11519b m24547k(C11523f c11523f) {
        C19270d m13724b = ((C19264b) c11523f.f33816a.getValue()).m13724b();
        C19263a c19263a = m13724b.f53664a;
        return new C11519b(c11523f.m24545m().isSpeakerphoneOn() ? AbstractC11514a.C11517c.f33809a : c19263a != null ? new AbstractC11514a.C11515a(c19263a) : c11523f.f33817b.f33882a ? AbstractC11514a.C11518d.f33810a : AbstractC11514a.C11516b.f33808a, m13724b.f53665b);
    }

    @Override // p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e
    /* renamed from: a */
    public void mo24557a() {
        MediaPlayer mediaPlayer = this.f33818c;
        if (mediaPlayer == null) {
            try {
                mediaPlayer = new MediaPlayer();
                mediaPlayer.setAudioAttributes(m24544n());
                mediaPlayer.setLooping(true);
                Context context = this.f33825j;
                Uri parse = Uri.parse("android.resource://" + this.f33826k.getPackageName() + C11549h.f33881a);
                l.d(parse, "Uri.parse(\"android.resou…geName()}$VOIP_TONE_URI\")");
                mediaPlayer.setDataSource(context, parse);
                mediaPlayer.prepare();
            } catch (Exception e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                mediaPlayer = null;
            }
            this.f33818c = mediaPlayer;
        }
        if (mediaPlayer != null) {
            if (this.f33819d == null) {
                this.f33819d = m24543o(EnumC11520c.RING, new C11548g(this));
            }
            m24541q(mediaPlayer);
        }
    }

    @Override // p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e
    /* renamed from: b */
    public Object mo24556b(d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f33823h, new C11537i(null), dVar);
        return a4 == s1.w.j.a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e
    /* renamed from: c */
    public void mo24555c() {
        MediaPlayer mediaPlayer = this.f33818c;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.stop();
            } catch (IllegalStateException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
            }
            AbstractC11521d abstractC11521d = this.f33819d;
            if (abstractC11521d != null) {
                abstractC11521d.mo24539a();
            }
            this.f33819d = null;
        }
    }

    @Override // p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e
    /* renamed from: d */
    public Object mo24554d(AbstractC11514a abstractC11514a, AbstractC12236h abstractC12236h, d<? super s> dVar) {
        if (l.a(abstractC11514a, AbstractC11514a.C11517c.f33809a)) {
            abstractC12236h.mo23395g(true);
        } else {
            abstractC12236h.mo23395g(false);
        }
        Object m24546l = m24546l(abstractC11514a, dVar);
        return m24546l == s1.w.j.a.a ? m24546l : s.a;
    }

    @Override // p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e
    /* renamed from: e */
    public Object mo24553e(i0 i0Var, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f33823h, new C11541l(i0Var, null), dVar);
        return a4 == s1.w.j.a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e
    /* renamed from: f */
    public void mo24552f() {
        m24545m().setSpeakerphoneOn(false);
    }

    @Override // p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e
    /* renamed from: g */
    public void mo24551g() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11539j(null), 3, (Object) null).n0(false, true, new C11540k());
    }

    public f getCoroutineContext() {
        return this.f33822g;
    }

    @Override // p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e
    /* renamed from: h */
    public q3.a.x2.f<C11519b> mo24550h() {
        return s1.a.a.a.v0.f.d.P(new C11527d(null));
    }

    @Override // p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e
    /* renamed from: i */
    public Object mo24549i(d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f33824i, new C11545m(null), dVar);
        return a4 == s1.w.j.a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e
    /* renamed from: j */
    public void mo24548j(AbstractC11514a abstractC11514a, AbstractC12216l abstractC12216l) {
        l.e(abstractC11514a, "route");
        l.e(abstractC12216l, "voipManager");
        p1 p1Var = this.f33821f;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        u1 w2 = s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11536h(abstractC11514a, abstractC12216l, null), 3, (Object) null);
        w2.n0(false, true, new C11535g());
        this.f33821f = w2;
    }

    /* renamed from: l */
    public final /* synthetic */ Object m24546l(AbstractC11514a abstractC11514a, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f33823h, new C11534f(abstractC11514a, null), dVar);
        return a4 == s1.w.j.a.a ? a4 : s.a;
    }

    /* renamed from: m */
    public final AudioManager m24545m() {
        return C19291g.m13630F(this.f33825j);
    }

    /* renamed from: n */
    public final AudioAttributes m24544n() {
        return new AudioAttributes.Builder().setContentType(2).setUsage(6).build();
    }

    /* renamed from: o */
    public final AbstractC11521d m24543o(EnumC11520c enumC11520c, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        C11525b c11525b;
        AudioAttributes audioAttributes;
        int i = 2;
        if (Build.VERSION.SDK_INT >= 26) {
            int ordinal = enumC11520c.ordinal();
            if (ordinal == 0) {
                audioAttributes = m24544n();
            } else if (ordinal != 1) {
                throw new s1.i();
            } else {
                audioAttributes = new AudioAttributes.Builder().setContentType(1).setUsage(2).build();
            }
            AudioFocusRequest build = new AudioFocusRequest.Builder(4).setOnAudioFocusChangeListener(onAudioFocusChangeListener).setAudioAttributes(audioAttributes).build();
            m24545m().requestAudioFocus(build);
            l.d(build, "focusRequest");
            c11525b = new C11525b(this, build);
        } else {
            int ordinal2 = enumC11520c.ordinal();
            if (ordinal2 != 0) {
                if (ordinal2 != 1) {
                    throw new s1.i();
                }
                i = 0;
            }
            m24545m().requestAudioFocus(onAudioFocusChangeListener, i, 4);
            c11525b = new C11526c(this, onAudioFocusChangeListener);
        }
        return c11525b;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|(2:10|(1:12)(2:13|14))(2:15|(2:17|18)(1:19))|25|20|23|24))|7|8|(0)(0)|25|20|23|24) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0093, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0094, code lost:
        com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m24542p(s1.w.d<? super s1.s> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p619d.p637c0.p640x1.C11523f.C11546n
            if (r0 == 0) goto L27
            r0 = r6
            e.a.d.c0.x1.f$n r0 = (p193e.p194a.p619d.p637c0.p640x1.C11523f.C11546n) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f33873e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L27
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f33873e = r1
            r0 = r7
            r6 = r0
            goto L31
        L27:
            e.a.d.c0.x1.f$n r0 = new e.a.d.c0.x1.f$n
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L31:
            r0 = r6
            java.lang.Object r0 = r0.f33872d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f33873e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L63
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L58
            r0 = r6
            java.lang.Object r0 = r0.f33875g
            e.a.d.c0.x1.f r0 = (p193e.p194a.p619d.p637c0.p640x1.C11523f) r0
            r6 = r0
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L82
        L58:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L63:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            r1 = r5
            r0.f33875g = r1
            r0 = r6
            r1 = 1
            r0.f33873e = r1
            r0 = 300(0x12c, double:1.48E-321)
            r1 = r6
            java.lang.Object r0 = s1.a.a.a.v0.f.d.D0(r0, r1)
            r1 = r9
            if (r0 != r1) goto L80
            r0 = r9
            return r0
        L80:
            r0 = r5
            r6 = r0
        L82:
            r0 = r6
            android.media.AudioManager r0 = r0.m24545m()     // Catch: java.lang.Exception -> L93
            r6 = r0
            r0 = r6
            r1 = 1
            r0.setBluetoothScoOn(r1)     // Catch: java.lang.Exception -> L93
            r0 = r6
            r0.startBluetoothSco()     // Catch: java.lang.Exception -> L93
            goto L98
        L93:
            r6 = move-exception
            r0 = r6
            com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)
        L98:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p640x1.C11523f.m24542p(s1.w.d):java.lang.Object");
    }

    /* renamed from: q */
    public final s m24541q(MediaPlayer mediaPlayer) {
        s sVar;
        s sVar2 = s.a;
        if (mediaPlayer != null) {
            try {
                if (!(!mediaPlayer.isPlaying())) {
                    mediaPlayer = null;
                }
            } catch (IllegalStateException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                sVar = sVar2;
            }
            if (mediaPlayer != null) {
                mediaPlayer.start();
                sVar = sVar2;
                return sVar;
            }
        }
        sVar = null;
        return sVar;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|(2:10|(1:12)(2:13|14))(2:15|(2:17|18)(1:19))|25|20|23|24))|7|8|(0)(0)|25|20|23|24) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0097, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0098, code lost:
        com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m24540r(s1.w.d<? super s1.s> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p619d.p637c0.p640x1.C11523f.C11547o
            if (r0 == 0) goto L27
            r0 = r6
            e.a.d.c0.x1.f$o r0 = (p193e.p194a.p619d.p637c0.p640x1.C11523f.C11547o) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f33877e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L27
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f33877e = r1
            r0 = r7
            r6 = r0
            goto L31
        L27:
            e.a.d.c0.x1.f$o r0 = new e.a.d.c0.x1.f$o
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L31:
            r0 = r6
            java.lang.Object r0 = r0.f33876d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f33877e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L63
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L58
            r0 = r6
            java.lang.Object r0 = r0.f33879g
            e.a.d.c0.x1.f r0 = (p193e.p194a.p619d.p637c0.p640x1.C11523f) r0
            r6 = r0
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L82
        L58:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L63:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            r1 = r5
            r0.f33879g = r1
            r0 = r6
            r1 = 1
            r0.f33877e = r1
            r0 = 300(0x12c, double:1.48E-321)
            r1 = r6
            java.lang.Object r0 = s1.a.a.a.v0.f.d.D0(r0, r1)
            r1 = r9
            if (r0 != r1) goto L80
            r0 = r9
            return r0
        L80:
            r0 = r5
            r6 = r0
        L82:
            r0 = r6
            android.media.AudioManager r0 = r0.m24545m()     // Catch: java.lang.Exception -> L97
            r6 = r0
            r0 = r6
            r1 = 0
            r0.setBluetoothScoOn(r1)     // Catch: java.lang.Exception -> L97
            r0 = r6
            r0.stopBluetoothSco()     // Catch: java.lang.Exception -> L97
            r0 = r6
            r0.stopBluetoothSco()     // Catch: java.lang.Exception -> L97
            goto L9c
        L97:
            r6 = move-exception
            r0 = r6
            com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)
        L9c:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p640x1.C11523f.m24540r(s1.w.d):java.lang.Object");
    }
}
