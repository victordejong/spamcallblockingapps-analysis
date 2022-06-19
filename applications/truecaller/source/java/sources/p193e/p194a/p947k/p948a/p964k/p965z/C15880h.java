package p193e.p194a.p947k.p948a.p964k.p965z;

import android.net.Uri;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.upstream.RawResourceDataSource;
import com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour;
import com.truecaller.videocallerid.utils.analytics.VideoCallerIdAnalyticsUtilImpl;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import p193e.p1577m.p1578a.p1596c.AbstractC24196c0;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24701h;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p948a.p964k.AbstractC15825d;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15864a;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import p193e.p194a.p947k.p969c.AbstractC16044q;
import p193e.p194a.p947k.p969c.AbstractC16077t;
import p193e.p194a.p947k.p969c.C15986g;
import p193e.p194a.p947k.p981q.AbstractC16262b;
import p193e.p194a.p947k.p981q.AbstractC16268e;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.w2.i;
import q3.a.x2.a1;
import q3.a.x2.e1;
import q3.a.x2.g;
import q3.a.x2.g1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import q3.a.x2.z0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.k.a.k.z.h */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h.class */
public final class C15880h implements AbstractC15875c {

    /* renamed from: a */
    public final a1<AbstractC15868b> f44772a = k1.a(AbstractC15868b.C15871c.f44762a);

    /* renamed from: b */
    public final z0<VideoCallerIdAnalyticsUtilImpl.VideoCallerIdNotShownReason> f44773b = g1.a(0, 0, (i) null, 7);

    /* renamed from: c */
    public AbstractC15864a f44774c = AbstractC15864a.C15866b.f44758a;

    /* renamed from: d */
    public String f44775d;

    /* renamed from: e */
    public p1 f44776e;

    /* renamed from: f */
    public p1 f44777f;

    /* renamed from: g */
    public C15986g f44778g;

    /* renamed from: h */
    public final f f44779h;

    /* renamed from: i */
    public final AbstractC16044q f44780i;

    /* renamed from: j */
    public final AbstractC15825d f44781j;

    /* renamed from: k */
    public final AbstractC16268e f44782k;

    /* renamed from: l */
    public final Provider<Integer> f44783l;

    /* renamed from: e.a.k.a.k.z.h$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$a.class */
    public static final class C15881a implements g<AbstractC16077t> {

        /* renamed from: b */
        public final /* synthetic */ p f44785b;

        @e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl$listenPlayerEvents$$inlined$collect$1", f = "VideoPlayingManager.kt", l = {133, 143}, m = "emit")
        /* renamed from: e.a.k.a.k.z.h$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$a$a.class */
        public static final class C15882a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f44786d;

            /* renamed from: e */
            public int f44787e;

            /* renamed from: g */
            public Object f44789g;

            /* renamed from: h */
            public Object f44790h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C15882a(d dVar) {
                super(dVar);
                C15881a.this = r4;
            }

            /* renamed from: s */
            public final Object m18191s(Object obj) {
                this.f44786d = obj;
                this.f44787e |= Integer.MIN_VALUE;
                return C15881a.this.m18192a(null, this);
            }
        }

        public C15881a(p pVar) {
            C15880h.this = r4;
            this.f44785b = pVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00cc  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m18192a(java.lang.Object r6, s1.w.d r7) {
            /*
                Method dump skipped, instructions count: 436
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.p965z.C15880h.C15881a.m18192a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl", f = "VideoPlayingManager.kt", l = {413, 423}, m = "maybeResumePlaying")
    /* renamed from: e.a.k.a.k.z.h$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$b.class */
    public static final class C15883b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44791d;

        /* renamed from: e */
        public int f44792e;

        /* renamed from: g */
        public Object f44794g;

        /* renamed from: h */
        public Object f44795h;

        /* renamed from: i */
        public Object f44796i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15883b(d dVar) {
            super(dVar);
            C15880h.this = r4;
        }

        /* renamed from: s */
        public final Object m18190s(Object obj) {
            this.f44791d = obj;
            this.f44792e |= Integer.MIN_VALUE;
            return C15880h.this.m18206j(null, null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl$muteAudio$1", f = "VideoPlayingManager.kt", l = {377}, m = "invokeSuspend")
    /* renamed from: e.a.k.a.k.z.h$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$c.class */
    public static final class C15884c extends s1.w.k.a.i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f44797e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15884c(d dVar) {
            super(2, dVar);
            C15880h.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18189i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15884c(dVar);
        }

        /* renamed from: k */
        public final Object m18188k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15884c(dVar).m18187s(s.a);
        }

        /* renamed from: s */
        public final Object m18187s(Object obj) {
            a aVar = a.a;
            int i = this.f44797e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15825d abstractC15825d = C15880h.this.f44781j;
                this.f44797e = 1;
                Object mo18269b = abstractC15825d.mo18269b(this);
                obj = mo18269b;
                if (mo18269b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC24196c0 abstractC24196c0 = (AbstractC24196c0) obj;
            if (abstractC24196c0 != null) {
                Objects.requireNonNull(C15880h.this);
                if (abstractC24196c0 instanceof SimpleExoPlayer) {
                    ((SimpleExoPlayer) abstractC24196c0).setVolume(0.0f);
                }
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl", f = "VideoPlayingManager.kt", l = {255}, m = "playFirstFrameAndWaitTillFullyDownloaded")
    /* renamed from: e.a.k.a.k.z.h$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$d.class */
    public static final class C15885d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44799d;

        /* renamed from: e */
        public int f44800e;

        /* renamed from: g */
        public Object f44802g;

        /* renamed from: h */
        public Object f44803h;

        /* renamed from: i */
        public Object f44804i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15885d(d dVar) {
            super(dVar);
            C15880h.this = r4;
        }

        /* renamed from: s */
        public final Object m18186s(Object obj) {
            this.f44799d = obj;
            this.f44800e |= Integer.MIN_VALUE;
            return C15880h.this.m18205k(null, null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl$playFirstFrameAndWaitTillFullyDownloaded$2", f = "VideoPlayingManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k.a.k.z.h$e */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$e.class */
    public static final class C15886e extends s1.w.k.a.i implements p<AbstractC16262b, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f44805e;

        /* renamed from: g */
        public final /* synthetic */ AbstractC24196c0 f44807g;

        /* renamed from: h */
        public final /* synthetic */ String f44808h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15886e(AbstractC24196c0 abstractC24196c0, String str, d dVar) {
            super(2, dVar);
            C15880h.this = r5;
            this.f44807g = abstractC24196c0;
            this.f44808h = str;
        }

        /* renamed from: i */
        public final d<s> m18185i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C15886e c15886e = new C15886e(this.f44807g, this.f44808h, dVar);
            c15886e.f44805e = obj;
            return c15886e;
        }

        /* renamed from: k */
        public final Object m18184k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C15880h c15880h = C15880h.this;
            AbstractC24196c0 abstractC24196c0 = this.f44807g;
            String str = this.f44808h;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            AbstractC16262b abstractC16262b = (AbstractC16262b) obj;
            if (abstractC16262b instanceof AbstractC16262b.C16263a) {
                abstractC24196c0.setPlayWhenReady(true);
                abstractC24196c0.setRepeatMode(2);
                c15880h.f44772a.setValue(new AbstractC15868b.C15873e((int) ((AbstractC16262b.C16263a) abstractC16262b).f45815a));
            } else if (!(abstractC16262b instanceof AbstractC16262b.C16264b) && (abstractC16262b instanceof AbstractC16262b.C16265c)) {
                c15880h.m18204l(abstractC24196c0, str);
                c15880h.f44772a.setValue(AbstractC15868b.C15869a.f44760a);
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m18183s(Object obj) {
            C25225a.m3932a3(obj);
            AbstractC16262b abstractC16262b = (AbstractC16262b) this.f44805e;
            if (abstractC16262b instanceof AbstractC16262b.C16263a) {
                AbstractC24196c0 abstractC24196c0 = this.f44807g;
                abstractC24196c0.setPlayWhenReady(true);
                abstractC24196c0.setRepeatMode(2);
                C15880h.this.f44772a.setValue(new AbstractC15868b.C15873e((int) ((AbstractC16262b.C16263a) abstractC16262b).f45815a));
            } else if (!(abstractC16262b instanceof AbstractC16262b.C16264b) && (abstractC16262b instanceof AbstractC16262b.C16265c)) {
                C15880h.this.m18204l(this.f44807g, this.f44808h);
                C15880h.this.f44772a.setValue(AbstractC15868b.C15869a.f44760a);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl", f = "VideoPlayingManager.kt", l = {299, 300}, m = "playImmediately")
    /* renamed from: e.a.k.a.k.z.h$f */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$f.class */
    public static final class C15887f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44809d;

        /* renamed from: e */
        public int f44810e;

        /* renamed from: g */
        public Object f44812g;

        /* renamed from: h */
        public Object f44813h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15887f(d dVar) {
            super(dVar);
            C15880h.this = r4;
        }

        /* renamed from: s */
        public final Object m18182s(Object obj) {
            this.f44809d = obj;
            this.f44810e |= Integer.MIN_VALUE;
            return C15880h.this.m18203m(null, null, false, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl", f = "VideoPlayingManager.kt", l = {287, 288}, m = "playOnlyFirstFrame")
    /* renamed from: e.a.k.a.k.z.h$g */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$g.class */
    public static final class C15888g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44814d;

        /* renamed from: e */
        public int f44815e;

        /* renamed from: g */
        public Object f44817g;

        /* renamed from: h */
        public Object f44818h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15888g(d dVar) {
            super(dVar);
            C15880h.this = r4;
        }

        /* renamed from: s */
        public final Object m18181s(Object obj) {
            this.f44814d = obj;
            this.f44815e |= Integer.MIN_VALUE;
            return C15880h.this.m18202n(null, null, false, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl", f = "VideoPlayingManager.kt", l = {293, 294}, m = "playWithBuffering")
    /* renamed from: e.a.k.a.k.z.h$h */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$h.class */
    public static final class C15889h extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44819d;

        /* renamed from: e */
        public int f44820e;

        /* renamed from: g */
        public Object f44822g;

        /* renamed from: h */
        public Object f44823h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15889h(d dVar) {
            super(dVar);
            C15880h.this = r4;
        }

        /* renamed from: s */
        public final Object m18180s(Object obj) {
            this.f44819d = obj;
            this.f44820e |= Integer.MIN_VALUE;
            return C15880h.this.m18201o(null, null, false, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl", f = "VideoPlayingManager.kt", l = {245, 246, 248, 250}, m = "playWithLessThanPartlyCache")
    /* renamed from: e.a.k.a.k.z.h$i */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$i.class */
    public static final class C15890i extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44824d;

        /* renamed from: e */
        public int f44825e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15890i(d dVar) {
            super(dVar);
            C15880h.this = r4;
        }

        /* renamed from: s */
        public final Object m18179s(Object obj) {
            this.f44824d = obj;
            this.f44825e |= Integer.MIN_VALUE;
            return C15880h.this.m18200p(null, null, null, null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl", f = "VideoPlayingManager.kt", l = {305, 306}, m = "playWithLoopPartly")
    /* renamed from: e.a.k.a.k.z.h$j */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$j.class */
    public static final class C15891j extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44827d;

        /* renamed from: e */
        public int f44828e;

        /* renamed from: g */
        public Object f44830g;

        /* renamed from: h */
        public Object f44831h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15891j(d dVar) {
            super(dVar);
            C15880h.this = r4;
        }

        /* renamed from: s */
        public final Object m18178s(Object obj) {
            this.f44827d = obj;
            this.f44828e |= Integer.MIN_VALUE;
            return C15880h.this.m18198q(null, null, false, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl$playWithLoopPartly$2", f = "VideoPlayingManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k.a.k.z.h$k */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$k.class */
    public static final class C15892k extends s1.w.k.a.i implements p<AbstractC16077t, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f44832e;

        /* renamed from: f */
        public final /* synthetic */ AbstractC24196c0 f44833f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15892k(AbstractC24196c0 abstractC24196c0, d dVar) {
            super(2, dVar);
            this.f44833f = abstractC24196c0;
        }

        /* renamed from: i */
        public final d<s> m18177i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C15892k c15892k = new C15892k(this.f44833f, dVar);
            c15892k.f44832e = obj;
            return c15892k;
        }

        /* renamed from: k */
        public final Object m18176k(Object obj, Object obj2) {
            boolean z;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            AbstractC24196c0 abstractC24196c0 = this.f44833f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            if (((AbstractC16077t) obj) instanceof AbstractC16077t.C16078a) {
                abstractC24196c0.seekTo(0L);
                z = false;
            } else {
                z = true;
            }
            return Boolean.valueOf(z);
        }

        /* renamed from: s */
        public final Object m18175s(Object obj) {
            boolean z;
            C25225a.m3932a3(obj);
            if (((AbstractC16077t) this.f44832e) instanceof AbstractC16077t.C16078a) {
                this.f44833f.seekTo(0L);
                z = false;
            } else {
                z = true;
            }
            return Boolean.valueOf(z);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl", f = "VideoPlayingManager.kt", l = {233, 234, 235, 237, 239}, m = "playWithPartlyCache")
    /* renamed from: e.a.k.a.k.z.h$l */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$l.class */
    public static final class C15893l extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44834d;

        /* renamed from: e */
        public int f44835e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15893l(d dVar) {
            super(dVar);
            C15880h.this = r4;
        }

        /* renamed from: s */
        public final Object m18174s(Object obj) {
            this.f44834d = obj;
            this.f44835e |= Integer.MIN_VALUE;
            return C15880h.this.m18197r(null, null, null, null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl", f = "VideoPlayingManager.kt", l = {184}, m = "setAudioStateValue")
    /* renamed from: e.a.k.a.k.z.h$m */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$m.class */
    public static final class C15894m extends c {

        /* renamed from: d */
        public /* synthetic */ Object f44837d;

        /* renamed from: e */
        public int f44838e;

        /* renamed from: g */
        public Object f44840g;

        /* renamed from: h */
        public Object f44841h;

        /* renamed from: i */
        public boolean f44842i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15894m(d dVar) {
            super(dVar);
            C15880h.this = r4;
        }

        /* renamed from: s */
        public final Object m18173s(Object obj) {
            this.f44837d = obj;
            this.f44838e |= Integer.MIN_VALUE;
            return C15880h.this.m18194u(null, false, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl$stop$1", f = "VideoPlayingManager.kt", l = {145}, m = "invokeSuspend")
    /* renamed from: e.a.k.a.k.z.h$n */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$n.class */
    public static final class C15895n extends s1.w.k.a.i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f44843e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15895n(d dVar) {
            super(2, dVar);
            C15880h.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18172i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15895n(dVar);
        }

        /* renamed from: k */
        public final Object m18171k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15895n(dVar).m18170s(s.a);
        }

        /* renamed from: s */
        public final Object m18170s(Object obj) {
            a aVar = a.a;
            int i = this.f44843e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15825d abstractC15825d = C15880h.this.f44781j;
                this.f44843e = 1;
                Object mo18269b = abstractC15825d.mo18269b(this);
                obj = mo18269b;
                if (mo18269b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC24196c0 abstractC24196c0 = (AbstractC24196c0) obj;
            if (abstractC24196c0 != null) {
                abstractC24196c0.stop();
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.videoplayer.playing.VideoPlayingManagerImpl$unMuteAudio$1", f = "VideoPlayingManager.kt", l = {382}, m = "invokeSuspend")
    /* renamed from: e.a.k.a.k.z.h$o */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/k/z/h$o.class */
    public static final class C15896o extends s1.w.k.a.i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f44845e;

        /* renamed from: g */
        public final /* synthetic */ float f44847g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15896o(float f, d dVar) {
            super(2, dVar);
            C15880h.this = r5;
            this.f44847g = f;
        }

        /* renamed from: i */
        public final d<s> m18169i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15896o(this.f44847g, dVar);
        }

        /* renamed from: k */
        public final Object m18168k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15896o(this.f44847g, dVar).m18167s(s.a);
        }

        /* renamed from: s */
        public final Object m18167s(Object obj) {
            a aVar = a.a;
            int i = this.f44845e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15825d abstractC15825d = C15880h.this.f44781j;
                this.f44845e = 1;
                Object mo18269b = abstractC15825d.mo18269b(this);
                obj = mo18269b;
                if (mo18269b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC24196c0 abstractC24196c0 = (AbstractC24196c0) obj;
            if (abstractC24196c0 instanceof SimpleExoPlayer) {
                ((SimpleExoPlayer) abstractC24196c0).setVolume(this.f44847g);
            }
            return s.a;
        }
    }

    @Inject
    public C15880h(@Named("UI") f fVar, AbstractC16044q abstractC16044q, AbstractC15825d abstractC15825d, AbstractC16268e abstractC16268e, Provider<Integer> provider) {
        l.e(fVar, "uiContext");
        l.e(abstractC16044q, "exoplayerUtil");
        l.e(abstractC15825d, "exoplayerProvider");
        l.e(abstractC16268e, "videoCallerIdDownloadManager");
        l.e(provider, "minPartlyCachePercentage");
        this.f44779h = fVar;
        this.f44780i = abstractC16044q;
        this.f44781j = abstractC15825d;
        this.f44782k = abstractC16268e;
        this.f44783l = provider;
    }

    /* renamed from: i */
    public static /* synthetic */ Object m18207i(C15880h c15880h, AbstractC24196c0 abstractC24196c0, p pVar, d dVar, int i) {
        p<? super AbstractC16077t, ? super d<? super Boolean>, ? extends Object> pVar2 = null;
        if ((i & 1) != 0) {
            pVar2 = new C15897i(null);
        }
        return c15880h.m18208h(abstractC24196c0, pVar2, dVar);
    }

    @Override // p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15875c
    /* renamed from: Y */
    public AbstractC15864a mo18216Y() {
        return this.f44774c;
    }

    @Override // p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15875c
    /* renamed from: a */
    public void mo18215a(i0 i0Var) {
        l.e(i0Var, "scope");
        s1.a.a.a.v0.f.d.w2(i0Var, (f) null, (j0) null, new C15884c(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15875c
    /* renamed from: b */
    public e1 mo18214b() {
        return this.f44773b;
    }

    @Override // p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15875c
    /* renamed from: c */
    public void mo18213c(i0 i0Var, Uri uri, RawResourceDataSource rawResourceDataSource, PlayingBehaviour playingBehaviour) {
        l.e(i0Var, "scope");
        l.e(uri, "uri");
        l.e(rawResourceDataSource, "rawDataSource");
        l.e(playingBehaviour, "behaviour");
        p1 p1Var = this.f44776e;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f44776e = s1.a.a.a.v0.f.d.w2(i0Var, this.f44779h, (j0) null, new C15900l(this, playingBehaviour, uri, rawResourceDataSource, null), 2, (Object) null);
        this.f44775d = uri.toString();
    }

    @Override // p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15875c
    /* renamed from: d */
    public void mo18212d(i0 i0Var, Uri uri, C24701h c24701h, PlayingBehaviour playingBehaviour) {
        l.e(i0Var, "scope");
        l.e(uri, "uri");
        l.e(c24701h, "contentDataSource");
        l.e(playingBehaviour, "behaviour");
        p1 p1Var = this.f44776e;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f44776e = s1.a.a.a.v0.f.d.w2(i0Var, this.f44779h, (j0) null, new C15901m(this, playingBehaviour, uri, c24701h, null), 2, (Object) null);
        this.f44775d = uri.toString();
    }

    @Override // p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15875c
    /* renamed from: e */
    public void mo18211e(i0 i0Var) {
        l.e(i0Var, "scope");
        s1.a.a.a.v0.f.d.w2(i0Var, (f) null, (j0) null, new C15895n(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15875c
    /* renamed from: f */
    public void mo18210f(i0 i0Var, String str, Long l, PlayingBehaviour playingBehaviour) {
        l.e(i0Var, "scope");
        l.e(str, "url");
        l.e(playingBehaviour, "behaviour");
        p1 p1Var = this.f44776e;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f44776e = s1.a.a.a.v0.f.d.w2(i0Var, this.f44779h, (j0) null, new C15899k(this, playingBehaviour, str, i0Var, l, null), 2, (Object) null);
        this.f44775d = str;
    }

    @Override // p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15875c
    /* renamed from: g */
    public void mo18209g(i0 i0Var, float f) {
        l.e(i0Var, "scope");
        s1.a.a.a.v0.f.d.w2(i0Var, (f) null, (j0) null, new C15896o(f, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15875c
    public String getUrl() {
        return this.f44775d;
    }

    /* renamed from: h */
    public final /* synthetic */ Object m18208h(AbstractC24196c0 abstractC24196c0, p<? super AbstractC16077t, ? super d<? super Boolean>, ? extends Object> pVar, d<? super s> dVar) {
        Object c = this.f44780i.mo17956g(abstractC24196c0).c(new C15881a(pVar), dVar);
        return c == a.a ? c : s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d8  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18206j(p193e.p1577m.p1578a.p1596c.AbstractC24196c0 r6, java.lang.String r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.p965z.C15880h.m18206j(e.m.a.c.c0, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00dd  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18205k(q3.a.i0 r11, java.lang.String r12, s1.w.d<? super s1.s> r13) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.p965z.C15880h.m18205k(q3.a.i0, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* renamed from: l */
    public final void m18204l(AbstractC24196c0 abstractC24196c0, String str) {
        AbstractC24531p abstractC24531p = (AbstractC24531p) m18195t(new C15904o(this, str));
        if (abstractC24531p != null) {
            abstractC24196c0.prepare(abstractC24531p);
        }
        abstractC24196c0.setRepeatMode(0);
        abstractC24196c0.setPlayWhenReady(false);
        abstractC24196c0.seekTo(0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e9  */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18203m(p193e.p1577m.p1578a.p1596c.AbstractC24196c0 r7, p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p r8, boolean r9, s1.w.d<? super s1.s> r10) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.p965z.C15880h.m18203m(e.m.a.c.c0, e.m.a.c.l1.p, boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00da  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m18202n(p193e.p1577m.p1578a.p1596c.AbstractC24196c0 r7, java.lang.String r8, boolean r9, s1.w.d<? super s1.s> r10) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.p965z.C15880h.m18202n(e.m.a.c.c0, java.lang.String, boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00da  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m18201o(p193e.p1577m.p1578a.p1596c.AbstractC24196c0 r7, java.lang.String r8, boolean r9, s1.w.d<? super s1.s> r10) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.p965z.C15880h.m18201o(e.m.a.c.c0, java.lang.String, boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0085  */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18200p(p193e.p1577m.p1578a.p1596c.AbstractC24196c0 r9, q3.a.i0 r10, java.lang.String r11, com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour r12, s1.w.d<? super s1.s> r13) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.p965z.C15880h.m18200p(e.m.a.c.c0, q3.a.i0, java.lang.String, com.truecaller.videocallerid.ui.videoplayer.playing.PlayingBehaviour, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15875c
    /* renamed from: p1 */
    public i1 mo18199p1() {
        return this.f44772a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e5  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m18198q(p193e.p1577m.p1578a.p1596c.AbstractC24196c0 r6, java.lang.String r7, boolean r8, s1.w.d<? super s1.s> r9) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.p965z.C15880h.m18198q(e.m.a.c.c0, java.lang.String, boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0086  */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18197r(p193e.p1577m.p1578a.p1596c.AbstractC24196c0 r7, q3.a.i0 r8, java.lang.String r9, com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour r10, s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.p965z.C15880h.m18197r(e.m.a.c.c0, q3.a.i0, java.lang.String, com.truecaller.videocallerid.ui.videoplayer.playing.PlayingBehaviour, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15875c
    public void release() {
        this.f44781j.release();
    }

    /* renamed from: s */
    public final void m18196s(AbstractC24196c0 abstractC24196c0, String str) {
        AbstractC24531p abstractC24531p = (AbstractC24531p) m18195t(new C15904o(this, str));
        if (abstractC24531p != null) {
            abstractC24196c0.prepare(abstractC24531p);
        }
        abstractC24196c0.setRepeatMode(2);
        abstractC24196c0.setPlayWhenReady(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: t */
    public final <T> T m18195t(s1.z.b.a<? extends T> aVar) {
        T t;
        try {
            t = aVar.invoke();
        } catch (Exception e) {
            t = null;
        }
        return t;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ee  */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18194u(p193e.p1577m.p1578a.p1596c.AbstractC24196c0 r6, boolean r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p964k.p965z.C15880h.m18194u(e.m.a.c.c0, boolean, s1.w.d):java.lang.Object");
    }

    /* renamed from: v */
    public final Object m18193v(AbstractC24196c0 abstractC24196c0, d<? super s> dVar) {
        abstractC24196c0.stop();
        this.f44772a.setValue(AbstractC15868b.C15872d.f44763a);
        Object a = this.f44773b.a(VideoCallerIdAnalyticsUtilImpl.VideoCallerIdNotShownReason.CACHE, dVar);
        return a == a.a ? a : s.a;
    }
}
