package p193e.p194a.p982k0.p989n.p995e;

import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.net.Uri;
import com.truecaller.callrecording.C3624R;
import com.truecaller.callrecording.analytics.RecordingAction;
import com.truecaller.callrecording.analytics.RecordingAnalyticsSource;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p982k0.p984i.AbstractC16321a;
import p193e.p194a.p982k0.p989n.p995e.AbstractC16411c;
import p193e.p194a.p982k0.p989n.p995e.AbstractC16426i;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.a1;
import q3.a.x2.g;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k0.n.e.h */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/h.class */
public final class C16420h implements i0, AbstractC16417e {

    /* renamed from: a */
    public Long f46143a;

    /* renamed from: b */
    public p1 f46144b = d.j((p1) null, 1, (Object) null);

    /* renamed from: c */
    public p1 f46145c;

    /* renamed from: d */
    public int f46146d;

    /* renamed from: e */
    public Uri f46147e;

    /* renamed from: f */
    public p1 f46148f;

    /* renamed from: g */
    public AbstractC16410b f46149g;

    /* renamed from: h */
    public final f f46150h;

    /* renamed from: i */
    public final C20592g f46151i;

    /* renamed from: j */
    public final AbstractC16431j f46152j;

    /* renamed from: k */
    public final AbstractC16321a f46153k;

    /* renamed from: e.a.k0.n.e.h$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/h$a.class */
    public static final class C16421a extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16421a() {
            super(0);
            C16420h.this = r4;
        }

        public Object invoke() {
            AbstractC16410b abstractC16410b = C16420h.this.f46149g;
            if (abstractC16410b != null) {
                abstractC16410b.mo17421O4(AbstractC16411c.C16414c.f46136a);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.callrecording.ui.player.CallRecordingPlayerProvider$onStart$2", f = "CallRecordingPlayerProvider.kt", l = {168}, m = "invokeSuspend")
    /* renamed from: e.a.k0.n.e.h$b */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/h$b.class */
    public static final class C16422b extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f46155e;

        /* renamed from: e.a.k0.n.e.h$b$a */
        /* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/h$b$a.class */
        public static final class C16423a implements g<AbstractC16426i> {
            public C16423a() {
                C16422b.this = r4;
            }

            /* renamed from: a */
            public Object m17409a(Object obj, s1.w.d dVar) {
                AbstractC16410b abstractC16410b;
                AbstractC16426i abstractC16426i = (AbstractC16426i) obj;
                C16420h c16420h = C16420h.this;
                Objects.requireNonNull(c16420h);
                if (abstractC16426i instanceof AbstractC16426i.C16428b) {
                    AbstractC16410b abstractC16410b2 = c16420h.f46149g;
                    if (abstractC16410b2 != null) {
                        abstractC16410b2.mo17421O4(new AbstractC16411c.C16412a(C3624R.string.callrecording_internal_player_error));
                    }
                } else if ((abstractC16426i instanceof AbstractC16426i.C16427a) && (abstractC16410b = c16420h.f46149g) != null) {
                    abstractC16410b.mo17421O4(new AbstractC16411c.C16412a(C3624R.string.callrecording_internal_player_file_corrupted));
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16422b(s1.w.d dVar) {
            super(2, dVar);
            C16420h.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m17412i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C16422b(dVar);
        }

        /* renamed from: k */
        public final Object m17411k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C16422b(dVar).m17410s(s.a);
        }

        /* renamed from: s */
        public final Object m17410s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f46155e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                a1<AbstractC16426i> a1Var = ((C16440s) C16420h.this.f46152j).f46178b;
                C16423a c16423a = new C16423a();
                this.f46155e = 1;
                if (a1Var.c(c16423a, this) == aVar) {
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

    @e(c = "com.truecaller.callrecording.ui.player.CallRecordingPlayerProvider$play$1$1", f = "CallRecordingPlayerProvider.kt", l = {131}, m = "invokeSuspend")
    /* renamed from: e.a.k0.n.e.h$c */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/h$c.class */
    public static final class C16424c extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f46158e;

        /* renamed from: f */
        public final /* synthetic */ AbstractC16431j f46159f;

        /* renamed from: g */
        public final /* synthetic */ C16420h f46160g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16424c(AbstractC16431j abstractC16431j, s1.w.d dVar, C16420h c16420h) {
            super(2, dVar);
            this.f46159f = abstractC16431j;
            this.f46160g = c16420h;
        }

        /* renamed from: i */
        public final s1.w.d<s> m17408i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C16424c(this.f46159f, dVar, this.f46160g);
        }

        /* renamed from: k */
        public final Object m17407k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C16424c(this.f46159f, dVar, this.f46160g).m17406s(s.a);
        }

        /* renamed from: s */
        public final Object m17406s(Object obj) {
            AbstractC16410b abstractC16410b;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f46158e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC16410b abstractC16410b2 = this.f46160g.f46149g;
                if (abstractC16410b2 != null) {
                    abstractC16410b2.mo17421O4(new AbstractC16411c.C16415d(((C16440s) this.f46159f).m17395a()));
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            while (((C16440s) this.f46159f).m17394b()) {
                C16420h c16420h = this.f46160g;
                if (c16420h.f46146d > 0 && (abstractC16410b = c16420h.f46149g) != null) {
                    MediaPlayer mediaPlayer = ((C16440s) this.f46159f).f46177a;
                    abstractC16410b.mo17423C0(mediaPlayer != null ? mediaPlayer.getCurrentPosition() : 0);
                }
                this.f46158e = 1;
                if (d.D0(100L, this) == aVar) {
                    return aVar;
                }
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.callrecording.ui.player.CallRecordingPlayerProvider$seekTo$1", f = "CallRecordingPlayerProvider.kt", l = {148}, m = "invokeSuspend")
    /* renamed from: e.a.k0.n.e.h$d */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/e/h$d.class */
    public static final class C16425d extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f46161e;

        /* renamed from: g */
        public final /* synthetic */ RecordingAnalyticsSource f46163g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16425d(RecordingAnalyticsSource recordingAnalyticsSource, s1.w.d dVar) {
            super(2, dVar);
            C16420h.this = r5;
            this.f46163g = recordingAnalyticsSource;
        }

        /* renamed from: i */
        public final s1.w.d<s> m17405i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C16425d(this.f46163g, dVar);
        }

        /* renamed from: k */
        public final Object m17404k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C16425d(this.f46163g, dVar).m17403s(s.a);
        }

        /* renamed from: s */
        public final Object m17403s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f46161e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f46161e = 1;
                if (d.D0(500L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C16420h.this.f46153k.mo17531e(this.f46163g, RecordingAction.SEEK);
            return s.a;
        }
    }

    @Inject
    public C16420h(@Named("UI") f fVar, C20592g c20592g, AbstractC16431j abstractC16431j, AbstractC16321a abstractC16321a) {
        l.e(fVar, "uiCoroutineContext");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC16431j, "mediaPlayerWrapper");
        l.e(abstractC16321a, "recordingAnalytics");
        this.f46150h = fVar;
        this.f46151i = c20592g;
        this.f46152j = abstractC16431j;
        this.f46153k = abstractC16321a;
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16417e
    /* renamed from: a */
    public boolean mo17419a(long j) {
        Long l = this.f46143a;
        return l != null && l.longValue() == j;
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16417e
    /* renamed from: b */
    public void mo17418b(Uri uri, RecordingAnalyticsSource recordingAnalyticsSource) {
        l.e(recordingAnalyticsSource, "analyticsSource");
        if (uri == null) {
            AbstractC16410b abstractC16410b = this.f46149g;
            if (abstractC16410b == null) {
                return;
            }
            abstractC16410b.mo17421O4(new AbstractC16411c.C16412a(C3624R.string.callrecording_internal_player_file_corrupted));
            return;
        }
        Uri uri2 = this.f46147e;
        if (uri2 != null && uri2.equals(uri) && this.f46146d != 0) {
            if (!((C16440s) this.f46152j).m17394b()) {
                m17413g(recordingAnalyticsSource);
                return;
            }
            l.e(recordingAnalyticsSource, "analyticsSource");
            C16440s c16440s = (C16440s) this.f46152j;
            Objects.requireNonNull(c16440s);
            c16440s.m17393c(C16434m.f46170b);
            AbstractC16410b abstractC16410b2 = this.f46149g;
            if (abstractC16410b2 != null) {
                abstractC16410b2.mo17421O4(AbstractC16411c.C16414c.f46136a);
            }
            this.f46153k.mo17531e(recordingAnalyticsSource, RecordingAction.PAUSE);
            return;
        }
        l.e(uri, "uri");
        this.f46147e = uri;
        C16440s c16440s2 = (C16440s) this.f46152j;
        Objects.requireNonNull(c16440s2);
        c16440s2.m17393c(C16436o.f46172b);
        l.e(uri, "uri");
        c16440s2.m17393c(new C16438q(c16440s2, uri));
        int m17395a = c16440s2.m17395a();
        this.f46146d = m17395a;
        if (m17395a == 0) {
            return;
        }
        m17413g(recordingAnalyticsSource);
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16417e
    /* renamed from: c */
    public void mo17417c(int i, RecordingAnalyticsSource recordingAnalyticsSource) {
        l.e(recordingAnalyticsSource, "analyticsSource");
        C16440s c16440s = (C16440s) this.f46152j;
        Objects.requireNonNull(c16440s);
        c16440s.m17393c(new C16437p((c16440s.m17395a() * i) / 100));
        p1 p1Var = this.f46145c;
        if (p1Var != null) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f46145c = d.w2(this, (f) null, (j0) null, new C16425d(recordingAnalyticsSource, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16417e
    /* renamed from: d */
    public void mo17416d(long j, AbstractC16410b abstractC16410b) {
        l.e(abstractC16410b, "listener");
        if (!l.a(this.f46149g, abstractC16410b)) {
            this.f46143a = Long.valueOf(j);
            AbstractC16410b abstractC16410b2 = this.f46149g;
            if (abstractC16410b2 != null) {
                abstractC16410b2.mo17421O4(AbstractC16411c.C16413b.f46135a);
            }
            this.f46149g = abstractC16410b;
        }
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16417e
    /* renamed from: e */
    public void mo17415e() {
        AbstractC16410b abstractC16410b = this.f46149g;
        if (abstractC16410b != null) {
            abstractC16410b.mo17421O4(AbstractC16411c.C16413b.f46135a);
        }
        this.f46149g = null;
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16417e
    /* renamed from: f */
    public C16409a mo17414f() {
        boolean m17394b = ((C16440s) this.f46152j).m17394b();
        MediaPlayer mediaPlayer = ((C16440s) this.f46152j).f46177a;
        return new C16409a(m17394b, mediaPlayer != null ? mediaPlayer.getCurrentPosition() : 0);
    }

    /* renamed from: g */
    public void m17413g(RecordingAnalyticsSource recordingAnalyticsSource) {
        l.e(recordingAnalyticsSource, "analyticsSource");
        AbstractC16431j abstractC16431j = this.f46152j;
        C16440s c16440s = (C16440s) abstractC16431j;
        Objects.requireNonNull(c16440s);
        c16440s.m17393c(C16439r.f46176b);
        p1 p1Var = this.f46148f;
        if (p1Var != null) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f46148f = d.w2(this, (f) null, (j0) null, new C16424c(abstractC16431j, null, this), 3, (Object) null);
        this.f46153k.mo17531e(recordingAnalyticsSource, RecordingAction.PLAY_INTERNAL);
    }

    public f getCoroutineContext() {
        return this.f46150h.plus(this.f46144b);
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16417e
    public boolean isEnabled() {
        C20592g c20592g = this.f46151i;
        return c20592g.f57705B1.m10941a(c20592g, C20592g.f57695p6[131]).isEnabled();
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16417e
    public void onStart() {
        C20592g c20592g = this.f46151i;
        if (c20592g.f57705B1.m10941a(c20592g, C20592g.f57695p6[131]).isEnabled()) {
            this.f46144b = d.j((p1) null, 1, (Object) null);
            C16440s c16440s = (C16440s) this.f46152j;
            Objects.requireNonNull(c16440s);
            MediaPlayer mediaPlayer = new MediaPlayer();
            mediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(2).setUsage(1).build());
            c16440s.f46177a = mediaPlayer;
            AbstractC16431j abstractC16431j = this.f46152j;
            C16421a c16421a = new C16421a();
            C16440s c16440s2 = (C16440s) abstractC16431j;
            Objects.requireNonNull(c16440s2);
            l.e(c16421a, "action");
            c16440s2.m17393c(new C16433l(c16421a));
            d.w2(this, (f) null, (j0) null, new C16422b(null), 3, (Object) null);
        }
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16417e
    public void onStop() {
        this.f46147e = null;
        d.T(this.f46144b, (CancellationException) null, 1, (Object) null);
        AbstractC16410b abstractC16410b = this.f46149g;
        if (abstractC16410b != null) {
            abstractC16410b.mo17421O4(AbstractC16411c.C16413b.f46135a);
        }
        this.f46149g = null;
        C16440s c16440s = (C16440s) this.f46152j;
        Objects.requireNonNull(c16440s);
        c16440s.m17393c(C16436o.f46172b);
        C16440s c16440s2 = (C16440s) this.f46152j;
        Objects.requireNonNull(c16440s2);
        c16440s2.m17393c(C16435n.f46171b);
        c16440s2.f46177a = null;
    }
}
