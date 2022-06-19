package p193e.p194a.p947k.p948a.p959g;

import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.data.OutgoingVideoDetails;
import com.truecaller.videocallerid.data.PredefinedVideoResult;
import com.truecaller.videocallerid.data.VideoDetails;
import com.truecaller.videocallerid.p187ui.preview.PreviewModes;
import com.truecaller.videocallerid.p187ui.recording.RecordInputEvent;
import com.truecaller.videocallerid.p187ui.recording.RecordingScreenModes;
import com.truecaller.videocallerid.p187ui.recording.customisation_option.VideoCustomisationOption;
import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import com.truecaller.videocallerid.utils.analytics.OnboardingStep;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p416j.AbstractC8480b;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p947k.AbstractC16116j;
import p193e.p194a.p947k.p969c.AbstractC15991h;
import p193e.p194a.p947k.p969c.AbstractC16031n0;
import p193e.p194a.p947k.p969c.AbstractC16043p1;
import p193e.p194a.p947k.p969c.AbstractC16067r0;
import p193e.p194a.p947k.p969c.AbstractC16076s1;
import p193e.p194a.p947k.p969c.p970h2.AbstractC15997d;
import p193e.p194a.p947k.p971l.AbstractC16121c;
import p193e.p194a.p947k.p973n.p977g.AbstractC16223e;
import p193e.p194a.p947k.p973n.p978h.AbstractC16234a;
import q3.a.b3.c;
import q3.a.i0;
import q3.a.j0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
/* renamed from: e.a.k.a.g.y */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y.class */
public final class C15757y extends AbstractC20576b<AbstractC15756x> implements AbstractC15755w, i0 {

    /* renamed from: e */
    public final g f44401e;

    /* renamed from: g */
    public final i0 f44403g;

    /* renamed from: h */
    public final AbstractC8541a f44404h;

    /* renamed from: i */
    public final AbstractC8438a f44405i;

    /* renamed from: j */
    public final AbstractC8480b f44406j;

    /* renamed from: k */
    public final AbstractC19219a0 f44407k;

    /* renamed from: l */
    public final AbstractC16223e f44408l;

    /* renamed from: m */
    public final AbstractC16076s1 f44409m;

    /* renamed from: n */
    public final AbstractC16116j f44410n;

    /* renamed from: o */
    public final AbstractC16067r0 f44411o;

    /* renamed from: p */
    public final AbstractC16234a f44412p;

    /* renamed from: q */
    public final AbstractC16031n0 f44413q;

    /* renamed from: r */
    public final AbstractC15997d f44414r;

    /* renamed from: s */
    public final AbstractC16043p1 f44415s;

    /* renamed from: b */
    public final c f44398b = q3.a.b3.g.a(false, 1);

    /* renamed from: c */
    public EnumC15740m0 f44399c = EnumC15740m0.ReadyToRecord;

    /* renamed from: d */
    public RecordInputEvent.InputMode f44400d = RecordInputEvent.InputMode.None;

    /* renamed from: f */
    public boolean f44402f = true;

    /* renamed from: e.a.k.a.g.y$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$a.class */
    public static final class C15758a extends m implements a<AbstractC15991h> {

        /* renamed from: b */
        public final /* synthetic */ Provider f44416b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15758a(Provider provider) {
            super(0);
            this.f44416b = provider;
        }

        public Object invoke() {
            return (AbstractC15991h) this.f44416b.get();
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {731}, m = "getCountryName")
    /* renamed from: e.a.k.a.g.y$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$b.class */
    public static final class C15759b extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44417d;

        /* renamed from: e */
        public int f44418e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15759b(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18345s(Object obj) {
            this.f44417d = obj;
            this.f44418e |= Integer.MIN_VALUE;
            return C15757y.this.m18376Jj(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {227, 230}, m = "getPreviousOutgoingVideo")
    /* renamed from: e.a.k.a.g.y$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$c.class */
    public static final class C15760c extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44420d;

        /* renamed from: e */
        public int f44421e;

        /* renamed from: g */
        public Object f44423g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15760c(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18344s(Object obj) {
            this.f44420d = obj;
            this.f44421e |= Integer.MIN_VALUE;
            return C15757y.this.m18373Mj(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {341}, m = "handlePredefinedVideoSelected")
    /* renamed from: e.a.k.a.g.y$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$d.class */
    public static final class C15761d extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44424d;

        /* renamed from: e */
        public int f44425e;

        /* renamed from: g */
        public Object f44427g;

        /* renamed from: h */
        public Object f44428h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15761d(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18343s(Object obj) {
            this.f44424d = obj;
            this.f44425e |= Integer.MIN_VALUE;
            return C15757y.this.m18372Nj(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {327, 333}, m = "handleSelfieSelected")
    /* renamed from: e.a.k.a.g.y$e */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$e.class */
    public static final class C15762e extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44429d;

        /* renamed from: e */
        public int f44430e;

        /* renamed from: g */
        public Object f44432g;

        /* renamed from: h */
        public Object f44433h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15762e(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18342s(Object obj) {
            this.f44429d = obj;
            this.f44430e |= Integer.MIN_VALUE;
            return C15757y.this.m18371Oj(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter$launchWithMutex$1", f = "RecordingPresenter.kt", l = {783, 736}, m = "invokeSuspend")
    /* renamed from: e.a.k.a.g.y$f */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$f.class */
    public static final class C15763f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f44434e;

        /* renamed from: f */
        public int f44435f;

        /* renamed from: h */
        public final /* synthetic */ l f44437h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15763f(l lVar, d dVar) {
            super(2, dVar);
            C15757y.this = r5;
            this.f44437h = lVar;
        }

        /* renamed from: i */
        public final d<s> m18341i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C15763f(this.f44437h, dVar);
        }

        /* renamed from: k */
        public final Object m18340k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C15763f(this.f44437h, dVar).m18339s(s.a);
        }

        /* renamed from: s */
        public final Object m18339s(Object obj) {
            c cVar;
            c cVar2;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f44435f;
            try {
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    c cVar3 = C15757y.this.f44398b;
                    this.f44434e = cVar3;
                    this.f44435f = 1;
                    cVar = cVar3;
                    if (cVar3.b((Object) null, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c cVar4 = (c) this.f44434e;
                    cVar2 = cVar4;
                    try {
                        C25225a.m3932a3(obj);
                        cVar = cVar4;
                        cVar2 = cVar;
                        s sVar = s.a;
                        cVar.c((Object) null);
                        return sVar;
                    } catch (Throwable th) {
                        cVar = cVar2;
                        th = th;
                        cVar.c((Object) null);
                        throw th;
                    }
                } else {
                    C25225a.m3932a3(obj);
                    cVar = (c) this.f44434e;
                }
                l lVar = this.f44437h;
                this.f44434e = cVar;
                this.f44435f = 2;
                if (lVar.d(this) == aVar) {
                    return aVar;
                }
                cVar2 = cVar;
                s sVar2 = s.a;
                cVar.c((Object) null);
                return sVar2;
            } catch (Throwable th2) {
                th = th2;
                cVar.c((Object) null);
                throw th;
            }
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter$loadCustomisationOptions$3$1", f = "RecordingPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k.a.g.y$g */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$g.class */
    public static final class C15764g extends i implements p<AbstractC16121c, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f44438e;

        /* renamed from: f */
        public final /* synthetic */ C15757y f44439f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15764g(d dVar, C15757y c15757y) {
            super(2, dVar);
            this.f44439f = c15757y;
        }

        /* renamed from: i */
        public final d<s> m18338i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            C15764g c15764g = new C15764g(dVar, this.f44439f);
            c15764g.f44438e = obj;
            return c15764g;
        }

        /* renamed from: k */
        public final Object m18337k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            C15757y c15757y = this.f44439f;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c15757y.m18347mk((AbstractC16121c) obj, true);
            return sVar;
        }

        /* renamed from: s */
        public final Object m18336s(Object obj) {
            C25225a.m3932a3(obj);
            this.f44439f.m18347mk((AbstractC16121c) this.f44438e, true);
            return s.a;
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {100, 108}, m = "loadCustomisationOptions")
    /* renamed from: e.a.k.a.g.y$h */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$h.class */
    public static final class C15765h extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44440d;

        /* renamed from: e */
        public int f44441e;

        /* renamed from: g */
        public Object f44443g;

        /* renamed from: h */
        public Object f44444h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15765h(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18335s(Object obj) {
            this.f44440d = obj;
            this.f44441e |= Integer.MIN_VALUE;
            return C15757y.this.m18369Qj(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {165}, m = "maybeShowMenuButton")
    /* renamed from: e.a.k.a.g.y$i */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$i.class */
    public static final class C15766i extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44445d;

        /* renamed from: e */
        public int f44446e;

        /* renamed from: g */
        public Object f44448g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15766i(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18334s(Object obj) {
            this.f44445d = obj;
            this.f44446e |= Integer.MIN_VALUE;
            return C15757y.this.m18366Tj(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {212, 218, 222}, m = "maybeShowPredefinedVideo")
    /* renamed from: e.a.k.a.g.y$j */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$j.class */
    public static final class C15767j extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44449d;

        /* renamed from: e */
        public int f44450e;

        /* renamed from: g */
        public Object f44452g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15767j(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18333s(Object obj) {
            this.f44449d = obj;
            this.f44450e |= Integer.MIN_VALUE;
            return C15757y.this.m18365Uj(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {354, 356}, m = "playCustomisationOption")
    /* renamed from: e.a.k.a.g.y$k */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$k.class */
    public static final class C15768k extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44453d;

        /* renamed from: e */
        public int f44454e;

        /* renamed from: g */
        public Object f44456g;

        /* renamed from: h */
        public Object f44457h;

        /* renamed from: i */
        public Object f44458i;

        /* renamed from: j */
        public Object f44459j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15768k(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18332s(Object obj) {
            this.f44453d = obj;
            this.f44454e |= Integer.MIN_VALUE;
            return C15757y.this.m18363Wj(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {726}, m = "setCountry")
    /* renamed from: e.a.k.a.g.y$l */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$l.class */
    public static final class C15769l extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44460d;

        /* renamed from: e */
        public int f44461e;

        /* renamed from: g */
        public Object f44463g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15769l(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18331s(Object obj) {
            this.f44460d = obj;
            this.f44461e |= Integer.MIN_VALUE;
            return C15757y.this.m18362Xj(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {618, 623}, m = "setExistingSelfieVideoThumbnail")
    /* renamed from: e.a.k.a.g.y$m */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$m.class */
    public static final class C15770m extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44464d;

        /* renamed from: e */
        public int f44465e;

        /* renamed from: g */
        public Object f44467g;

        /* renamed from: h */
        public Object f44468h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15770m(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18330s(Object obj) {
            this.f44464d = obj;
            this.f44465e |= Integer.MIN_VALUE;
            return C15757y.this.m18361Yj(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {637}, m = "setSelfieVideoThumbnail")
    /* renamed from: e.a.k.a.g.y$n */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$n.class */
    public static final class C15771n extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44469d;

        /* renamed from: e */
        public int f44470e;

        /* renamed from: g */
        public Object f44472g;

        /* renamed from: h */
        public Object f44473h;

        /* renamed from: i */
        public Object f44474i;

        /* renamed from: j */
        public boolean f44475j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15771n(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18329s(Object obj) {
            this.f44469d = obj;
            this.f44470e |= Integer.MIN_VALUE;
            return C15757y.this.m18360Zj(null, null, false, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {469, 475}, m = "setUpCameraAndSwitchReadyToRecord")
    /* renamed from: e.a.k.a.g.y$o */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$o.class */
    public static final class C15772o extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44476d;

        /* renamed from: e */
        public int f44477e;

        /* renamed from: g */
        public Object f44479g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15772o(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18328s(Object obj) {
            this.f44476d = obj;
            this.f44477e |= Integer.MIN_VALUE;
            return C15757y.this.m18359ak(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {692}, m = "setUpUserInfo")
    /* renamed from: e.a.k.a.g.y$p */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$p.class */
    public static final class C15773p extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44480d;

        /* renamed from: e */
        public int f44481e;

        /* renamed from: g */
        public Object f44483g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15773p(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18327s(Object obj) {
            this.f44480d = obj;
            this.f44481e |= Integer.MIN_VALUE;
            return C15757y.this.m18358bk(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {177, 179, 187, 192, 196, 200, 204}, m = "setupInitialRecordingMode")
    /* renamed from: e.a.k.a.g.y$q */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$q.class */
    public static final class C15774q extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44484d;

        /* renamed from: e */
        public int f44485e;

        /* renamed from: g */
        public Object f44487g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15774q(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18326s(Object obj) {
            this.f44484d = obj;
            this.f44485e |= Integer.MIN_VALUE;
            return C15757y.this.m18357ck(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {484}, m = "startRecording")
    /* renamed from: e.a.k.a.g.y$r */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$r.class */
    public static final class C15775r extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44488d;

        /* renamed from: e */
        public int f44489e;

        /* renamed from: g */
        public Object f44491g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15775r(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18325s(Object obj) {
            this.f44488d = obj;
            this.f44489e |= Integer.MIN_VALUE;
            return C15757y.this.m18356dk(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {499, 503, 506, 510}, m = "stopRecording")
    /* renamed from: e.a.k.a.g.y$s */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$s.class */
    public static final class C15776s extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44492d;

        /* renamed from: e */
        public int f44493e;

        /* renamed from: g */
        public Object f44495g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15776s(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18324s(Object obj) {
            this.f44492d = obj;
            this.f44493e |= Integer.MIN_VALUE;
            return C15757y.this.m18355ek(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {416}, m = "submitUpdates")
    /* renamed from: e.a.k.a.g.y$t */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$t.class */
    public static final class C15777t extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44496d;

        /* renamed from: e */
        public int f44497e;

        /* renamed from: g */
        public Object f44499g;

        /* renamed from: h */
        public Object f44500h;

        /* renamed from: i */
        public Object f44501i;

        /* renamed from: j */
        public Object f44502j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15777t(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18323s(Object obj) {
            this.f44496d = obj;
            this.f44497e |= Integer.MIN_VALUE;
            return C15757y.this.m18354fk(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {564}, m = "switchToAlreadyUploadedPlaybackState")
    /* renamed from: e.a.k.a.g.y$u */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$u.class */
    public static final class C15778u extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44503d;

        /* renamed from: e */
        public int f44504e;

        /* renamed from: g */
        public Object f44506g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15778u(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18322s(Object obj) {
            this.f44503d = obj;
            this.f44504e |= Integer.MIN_VALUE;
            return C15757y.this.m18353gk(null, null, false, false, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {605, 608}, m = "switchToEditState")
    /* renamed from: e.a.k.a.g.y$v */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$v.class */
    public static final class C15779v extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44507d;

        /* renamed from: e */
        public int f44508e;

        /* renamed from: g */
        public Object f44510g;

        /* renamed from: h */
        public Object f44511h;

        /* renamed from: i */
        public Object f44512i;

        /* renamed from: j */
        public Object f44513j;

        /* renamed from: k */
        public Object f44514k;

        /* renamed from: l */
        public boolean f44515l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15779v(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18321s(Object obj) {
            this.f44507d = obj;
            this.f44508e |= Integer.MIN_VALUE;
            return C15757y.this.m18352hk(null, null, false, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {583, 585}, m = "switchToPlaybackState")
    /* renamed from: e.a.k.a.g.y$w */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$w.class */
    public static final class C15780w extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44516d;

        /* renamed from: e */
        public int f44517e;

        /* renamed from: g */
        public Object f44519g;

        /* renamed from: h */
        public Object f44520h;

        /* renamed from: i */
        public Object f44521i;

        /* renamed from: j */
        public Object f44522j;

        /* renamed from: k */
        public Object f44523k;

        /* renamed from: l */
        public boolean f44524l;

        /* renamed from: m */
        public boolean f44525m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15780w(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18320s(Object obj) {
            this.f44516d = obj;
            this.f44517e |= Integer.MIN_VALUE;
            return C15757y.this.m18351ik(null, null, false, false, false, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {529}, m = "switchToReadyToRecordState")
    /* renamed from: e.a.k.a.g.y$x */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$x.class */
    public static final class C15781x extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44526d;

        /* renamed from: e */
        public int f44527e;

        /* renamed from: g */
        public Object f44529g;

        /* renamed from: h */
        public Object f44530h;

        /* renamed from: i */
        public Object f44531i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15781x(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18319s(Object obj) {
            this.f44526d = obj;
            this.f44527e |= Integer.MIN_VALUE;
            return C15757y.this.m18349kk(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.ui.recording.RecordingPresenter", f = "RecordingPresenter.kt", l = {427}, m = "updatePredefinedOutgoingVideo")
    /* renamed from: e.a.k.a.g.y$y */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/g/y$y.class */
    public static final class C15782y extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f44532d;

        /* renamed from: e */
        public int f44533e;

        /* renamed from: g */
        public Object f44535g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15782y(d dVar) {
            super(dVar);
            C15757y.this = r4;
        }

        /* renamed from: s */
        public final Object m18318s(Object obj) {
            this.f44532d = obj;
            this.f44533e |= Integer.MIN_VALUE;
            return C15757y.this.m18348lk(null, this);
        }
    }

    @Inject
    public C15757y(i0 i0Var, Provider<AbstractC15991h> provider, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, AbstractC8480b abstractC8480b, AbstractC19219a0 abstractC19219a0, AbstractC16223e abstractC16223e, AbstractC16076s1 abstractC16076s1, AbstractC16116j abstractC16116j, AbstractC16067r0 abstractC16067r0, AbstractC16234a abstractC16234a, AbstractC16031n0 abstractC16031n0, AbstractC15997d abstractC15997d, AbstractC16043p1 abstractC16043p1) {
        s1.z.c.l.e(i0Var, "coroutineScope");
        s1.z.c.l.e(provider, "cameraViewManagerProvider");
        s1.z.c.l.e(abstractC8541a, "coreSettings");
        s1.z.c.l.e(abstractC8438a, "accountSettings");
        s1.z.c.l.e(abstractC8480b, "countryRepository");
        s1.z.c.l.e(abstractC19219a0, "permissionUtil");
        s1.z.c.l.e(abstractC16223e, "outgoingVideoRepository");
        s1.z.c.l.e(abstractC16076s1, "videoFileUtil");
        s1.z.c.l.e(abstractC16116j, "support");
        s1.z.c.l.e(abstractC16067r0, "videoCallerIdAvailability");
        s1.z.c.l.e(abstractC16234a, "predefinedVideosRepository");
        s1.z.c.l.e(abstractC16031n0, "updatePredefinedOutgoingVideoManager");
        s1.z.c.l.e(abstractC15997d, "analyticsUtil");
        s1.z.c.l.e(abstractC16043p1, "videoCallerIdUpdatePromoManager");
        this.f44403g = i0Var;
        this.f44404h = abstractC8541a;
        this.f44405i = abstractC8438a;
        this.f44406j = abstractC8480b;
        this.f44407k = abstractC19219a0;
        this.f44408l = abstractC16223e;
        this.f44409m = abstractC16076s1;
        this.f44410n = abstractC16116j;
        this.f44411o = abstractC16067r0;
        this.f44412p = abstractC16234a;
        this.f44413q = abstractC16031n0;
        this.f44414r = abstractC15997d;
        this.f44415s = abstractC16043p1;
        this.f44401e = C25225a.m3978P1(new C15758a(provider));
    }

    /* renamed from: jk */
    public static /* synthetic */ Object m18350jk(C15757y c15757y, String str, String str2, boolean z, boolean z2, boolean z3, d dVar, int i) {
        if ((i & 4) != 0) {
            z = false;
        }
        return c15757y.m18351ik(null, str2, z, z2, z3, dVar);
    }

    /* renamed from: nk */
    public static void m18346nk(C15757y c15757y, boolean z, boolean z2, int i) {
        boolean z3 = false;
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        if (z) {
            AbstractC15756x abstractC15756x = (AbstractC15756x) c15757y.f57683a;
            if (abstractC15756x == null) {
                return;
            }
            abstractC15756x.mo18419Gh(false);
            abstractC15756x.mo18412Lq(false);
            return;
        }
        boolean mo18025j = c15757y.m18377Ij().mo18025j();
        AbstractC15756x abstractC15756x2 = (AbstractC15756x) c15757y.f57683a;
        boolean z4 = (abstractC15756x2 != null ? abstractC15756x2.mo18403Yl() : false) && mo18025j;
        boolean z5 = !z2 && (c15757y.m18377Ij().mo18032c() || mo18025j);
        if (c15757y.m18377Ij().mo18021n() || z4) {
            z3 = true;
        }
        AbstractC15756x abstractC15756x3 = (AbstractC15756x) c15757y.f57683a;
        if (abstractC15756x3 == null) {
            return;
        }
        abstractC15756x3.mo18419Gh(z5);
        abstractC15756x3.mo18422Db(z3);
        abstractC15756x3.mo18412Lq(z4);
    }

    /* renamed from: Hj */
    public final boolean m18378Hj() {
        if (!this.f44407k.mo13825h("android.permission.CAMERA")) {
            AbstractC15756x abstractC15756x = (AbstractC15756x) this.f57683a;
            if (abstractC15756x == null) {
                return false;
            }
            abstractC15756x.mo18397h8();
            return false;
        }
        return true;
    }

    /* renamed from: Ij */
    public final AbstractC15991h m18377Ij() {
        return (AbstractC15991h) this.f44401e.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009f  */
    /* renamed from: Jj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18376Jj(s1.w.d<? super java.lang.String> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p947k.p948a.p959g.C15757y.C15759b
            if (r0 == 0) goto L27
            r0 = r6
            e.a.k.a.g.y$b r0 = (p193e.p194a.p947k.p948a.p959g.C15757y.C15759b) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f44418e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L27
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f44418e = r1
            r0 = r7
            r6 = r0
            goto L31
        L27:
            e.a.k.a.g.y$b r0 = new e.a.k.a.g.y$b
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L31:
            r0 = r6
            java.lang.Object r0 = r0.f44417d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f44418e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5d
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L52
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L8e
        L52:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5d:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.b0.j.b r0 = r0.f44406j
            r10 = r0
            r0 = r5
            e.a.b0.e.r.a r0 = r0.f44405i
            java.lang.String r1 = "profileCountryIso"
            java.lang.String r0 = r0.getString(r1)
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f44418e = r1
            r0 = r10
            r1 = r7
            r2 = r6
            java.lang.Object r0 = r0.mo28480f(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L8e
            r0 = r9
            return r0
        L8e:
            r0 = r6
            com.truecaller.common.network.country.CountryListDto$a r0 = (com.truecaller.common.network.country.CountryListDto.C3679a) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L9f
            r0 = r6
            java.lang.String r0 = r0.f10911b
            r6 = r0
            goto La1
        L9f:
            r0 = 0
            r6 = r0
        La1:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18376Jj(s1.w.d):java.lang.Object");
    }

    /* renamed from: Kj */
    public final String m18375Kj() {
        return C19231g0.m13810G(this.f44404h.getString("profileNationalNumber"), this.f44405i.getString("profileNumber"));
    }

    /* renamed from: Lj */
    public final PreviewModes m18374Lj() {
        PreviewModes previewModes;
        AbstractC15756x abstractC15756x = (AbstractC15756x) this.f57683a;
        Integer valueOf = abstractC15756x != null ? Integer.valueOf(abstractC15756x.mo18415Iw()) : null;
        int value = RecordingScreenModes.PLAYBACK.getValue();
        if (valueOf != null && valueOf.intValue() == value) {
            previewModes = PreviewModes.UPDATE;
        } else {
            int value2 = RecordingScreenModes.RECORDING.getValue();
            if (valueOf != null && valueOf.intValue() == value2) {
                previewModes = PreviewModes.PREVIEW;
            } else {
                int value3 = RecordingScreenModes.EDIT.getValue();
                if (valueOf == null || valueOf.intValue() != value3) {
                    throw new IllegalStateException("Invalid recording screen mode");
                }
                previewModes = PreviewModes.UPDATE;
            }
        }
        return previewModes;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00bf  */
    /* renamed from: Mj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18373Mj(s1.w.d<? super p193e.p194a.p947k.p948a.p959g.C15711d> r9) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18373Mj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ef  */
    /* renamed from: Nj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18372Nj(com.truecaller.videocallerid.p187ui.recording.customisation_option.VideoCustomisationOption.PredefinedVideo r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18372Nj(com.truecaller.videocallerid.ui.recording.customisation_option.VideoCustomisationOption$PredefinedVideo, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0144  */
    /* renamed from: Oj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18371Oj(com.truecaller.videocallerid.p187ui.recording.customisation_option.VideoCustomisationOption.C4735a r9, s1.w.d<? super s1.s> r10) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18371Oj(com.truecaller.videocallerid.ui.recording.customisation_option.VideoCustomisationOption$a, s1.w.d):java.lang.Object");
    }

    /* renamed from: Pj */
    public final void m18370Pj(l<? super d<? super s>, ? extends Object> lVar) {
        s1.a.a.a.v0.f.d.w2(this, (f) null, j0.d, new C15763f(lVar, null), 1, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x03d0 A[LOOP:7: B:94:0x03c7->B:96:0x03d0, LOOP_END] */
    /* renamed from: Qj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18369Qj(s1.w.d<? super s1.s> r12) {
        /*
            Method dump skipped, instructions count: 1046
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18369Qj(s1.w.d):java.lang.Object");
    }

    /* renamed from: Rj */
    public final VideoCustomisationOption.PredefinedVideo m18368Rj(PredefinedVideoResult predefinedVideoResult, VideoCustomisationOption.PredefinedVideo.VideoState videoState) {
        return new VideoCustomisationOption.PredefinedVideo(predefinedVideoResult.getId(), predefinedVideoResult.getVideoUrl(), predefinedVideoResult.getThumbnail(), predefinedVideoResult.getSizeBytes(), predefinedVideoResult.getDurationMillis(), videoState, false, 64);
    }

    /* renamed from: Sj */
    public final OutgoingVideoDetails m18367Sj(VideoCustomisationOption.PredefinedVideo predefinedVideo) {
        String str = predefinedVideo.f16041a;
        String str2 = predefinedVideo.f16042b;
        return new OutgoingVideoDetails(str, str2, new VideoDetails(str2, predefinedVideo.f16044d, predefinedVideo.f16045e, false));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* renamed from: Tj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m18366Tj(s1.w.d<? super s1.s> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p947k.p948a.p959g.C15757y.C15766i
            if (r0 == 0) goto L27
            r0 = r6
            e.a.k.a.g.y$i r0 = (p193e.p194a.p947k.p948a.p959g.C15757y.C15766i) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f44446e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L27
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f44446e = r1
            r0 = r7
            r6 = r0
            goto L31
        L27:
            e.a.k.a.g.y$i r0 = new e.a.k.a.g.y$i
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L31:
            r0 = r6
            java.lang.Object r0 = r0.f44445d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f44446e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L63
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L58
            r0 = r6
            java.lang.Object r0 = r0.f44448g
            e.a.k.a.g.x r0 = (p193e.p194a.p947k.p948a.p959g.AbstractC15756x) r0
            r6 = r0
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L9d
        L58:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L63:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            PV r0 = r0.f57683a
            e.a.k.a.g.x r0 = (p193e.p194a.p947k.p948a.p959g.AbstractC15756x) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto Laa
            r0 = r5
            e.a.k.n.g.e r0 = r0.f44408l
            r10 = r0
            r0 = r6
            r1 = r7
            r0.f44448g = r1
            r0 = r6
            r1 = 1
            r0.f44446e = r1
            r0 = r10
            e.a.k.n.g.j r0 = (p193e.p194a.p947k.p973n.p977g.C16228j) r0
            r1 = r6
            java.lang.Object r0 = r0.m17701d(r1)
            r10 = r0
            r0 = r10
            r1 = r9
            if (r0 != r1) goto L98
            r0 = r9
            return r0
        L98:
            r0 = r7
            r6 = r0
            r0 = r10
            r7 = r0
        L9d:
            r0 = r6
            r1 = r7
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            r0.mo18418Hj(r1)
        Laa:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18366Tj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0126  */
    /* renamed from: Uj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18365Uj(s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18365Uj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004e, code lost:
        if (r0 != com.truecaller.videocallerid.p187ui.recording.RecordInputEvent.InputMode.None) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
        if (r0 != com.truecaller.videocallerid.p187ui.recording.RecordInputEvent.InputMode.None) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /* renamed from: Vj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m18364Vj(com.truecaller.videocallerid.p187ui.recording.RecordInputEvent r8) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "recordInputEvent"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            e.a.k.a.g.m0 r0 = r0.f44399c
            r9 = r0
            r0 = r9
            e.a.k.a.g.m0 r1 = p193e.p194a.p947k.p948a.p959g.EnumC15740m0.Playback
            if (r0 == r1) goto Lb4
            r0 = r9
            e.a.k.a.g.m0 r1 = p193e.p194a.p947k.p948a.p959g.EnumC15740m0.Edit
            if (r0 == r1) goto Lb4
            r0 = r8
            com.truecaller.videocallerid.ui.recording.RecordInputEvent$InputMode r0 = r0.f16037a
            int r0 = r0.ordinal()
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L54
            r0 = r10
            r1 = 1
            if (r0 == r1) goto L3e
            r0 = r10
            r1 = 2
            if (r0 != r1) goto L36
            goto L6a
        L36:
            s1.i r0 = new s1.i
            r1 = r0
            r1.<init>()
            throw r0
        L3e:
            r0 = r7
            com.truecaller.videocallerid.ui.recording.RecordInputEvent$InputMode r0 = r0.f44400d
            r9 = r0
            r0 = r9
            com.truecaller.videocallerid.ui.recording.RecordInputEvent$InputMode r1 = com.truecaller.videocallerid.p187ui.recording.RecordInputEvent.InputMode.VolumeButton
            if (r0 == r1) goto L67
            r0 = r9
            com.truecaller.videocallerid.ui.recording.RecordInputEvent$InputMode r1 = com.truecaller.videocallerid.p187ui.recording.RecordInputEvent.InputMode.None
            if (r0 != r1) goto L6a
            goto L67
        L54:
            r0 = r7
            com.truecaller.videocallerid.ui.recording.RecordInputEvent$InputMode r0 = r0.f44400d
            r9 = r0
            r0 = r9
            com.truecaller.videocallerid.ui.recording.RecordInputEvent$InputMode r1 = com.truecaller.videocallerid.p187ui.recording.RecordInputEvent.InputMode.RecordButton
            if (r0 == r1) goto L67
            r0 = r9
            com.truecaller.videocallerid.ui.recording.RecordInputEvent$InputMode r1 = com.truecaller.videocallerid.p187ui.recording.RecordInputEvent.InputMode.None
            if (r0 != r1) goto L6a
        L67:
            r0 = 1
            r11 = r0
        L6a:
            r0 = r11
            if (r0 != 0) goto L72
            goto Lb4
        L72:
            r0 = r8
            int r0 = r0.f16038b
            r11 = r0
            r0 = r11
            r1 = r8
            int r1 = r1.f16039c
            if (r0 != r1) goto L9e
            r0 = r8
            com.truecaller.videocallerid.ui.recording.RecordInputEvent$InputMode r0 = r0.f16037a
            r8 = r0
            r0 = r8
            java.lang.String r1 = "inputMode"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            e.a.k.a.g.e0 r1 = new e.a.k.a.g.e0
            r2 = r1
            r3 = r7
            r4 = r8
            r5 = 0
            r2.<init>(r3, r4, r5)
            r0.m18370Pj(r1)
            goto Lb4
        L9e:
            r0 = r11
            r1 = r8
            int r1 = r1.f16040d
            if (r0 != r1) goto Lb4
            r0 = r7
            e.a.k.a.g.f0 r1 = new e.a.k.a.g.f0
            r2 = r1
            r3 = r7
            r4 = 0
            r2.<init>(r3, r4)
            r0.m18370Pj(r1)
        Lb4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18364Vj(com.truecaller.videocallerid.ui.recording.RecordInputEvent):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0151  */
    /* renamed from: Wj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18363Wj(com.truecaller.videocallerid.p187ui.recording.customisation_option.VideoCustomisationOption.PredefinedVideo r10, s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18363Wj(com.truecaller.videocallerid.ui.recording.customisation_option.VideoCustomisationOption$PredefinedVideo, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b3, code lost:
        if (r8 != null) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c5  */
    /* renamed from: Xj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m18362Xj(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18362Xj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.k.a.g.x, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC15756x abstractC15756x) {
        AbstractC15756x abstractC15756x2 = abstractC15756x;
        s1.z.c.l.e(abstractC15756x2, "presenterView");
        this.f57683a = abstractC15756x2;
        OnboardingData mo18393k0 = abstractC15756x2.mo18393k0();
        if (mo18393k0 != null) {
            this.f44414r.mo18011i(mo18393k0, OnboardingStep.RECORDING);
        }
        this.f44415s.mo17966b();
        m18370Pj(new C15708b0(this, abstractC15756x2, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01c5  */
    /* renamed from: Yj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18361Yj(s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18361Yj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f2  */
    /* renamed from: Zj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m18360Zj(java.lang.String r7, java.lang.String r8, boolean r9, s1.w.d<? super s1.s> r10) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18360Zj(java.lang.String, java.lang.String, boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00cf  */
    /* renamed from: ak */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m18359ak(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18359ak(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c6, code lost:
        if (r24 != null) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0103  */
    /* renamed from: bk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18358bk(s1.w.d<? super s1.s> r22) {
        /*
            Method dump skipped, instructions count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18358bk(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f57683a = null;
        s1.a.a.a.v0.f.d.S(this.f44403g, (CancellationException) null, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x01bf, code lost:
        if (((p193e.p194a.p947k.p948a.p959g.AbstractC15756x) r9) == null) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x02a9, code lost:
        if (((p193e.p194a.p947k.p948a.p959g.AbstractC15756x) r9) == null) goto L97;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02c5  */
    /* renamed from: ck */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18357ck(java.lang.Integer r8, s1.w.d<? super s1.s> r9) {
        /*
            Method dump skipped, instructions count: 727
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18357ck(java.lang.Integer, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    /* renamed from: dk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18356dk(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18356dk(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0171  */
    /* renamed from: ek */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18355ek(s1.w.d<? super s1.s> r10) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18355ek(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
    /* renamed from: fk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18354fk(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18354fk(s1.w.d):java.lang.Object");
    }

    public f getCoroutineContext() {
        return this.f44403g.getCoroutineContext();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0077  */
    /* renamed from: gk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18353gk(java.lang.String r9, java.lang.String r10, boolean r11, boolean r12, s1.w.d<? super p193e.p194a.p947k.p948a.p959g.AbstractC15756x> r13) {
        /*
            r8 = this;
            r0 = r13
            boolean r0 = r0 instanceof p193e.p194a.p947k.p948a.p959g.C15757y.C15778u
            if (r0 == 0) goto L31
            r0 = r13
            e.a.k.a.g.y$u r0 = (p193e.p194a.p947k.p948a.p959g.C15757y.C15778u) r0
            r14 = r0
            r0 = r14
            int r0 = r0.f44504e
            r15 = r0
            r0 = r15
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L31
            r0 = r14
            r1 = r15
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f44504e = r1
            r0 = r14
            r13 = r0
            goto L3d
        L31:
            e.a.k.a.g.y$u r0 = new e.a.k.a.g.y$u
            r1 = r0
            r2 = r8
            r3 = r13
            r1.<init>(r3)
            r13 = r0
        L3d:
            r0 = r13
            java.lang.Object r0 = r0.f44503d
            r14 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r16 = r0
            r0 = r13
            int r0 = r0.f44504e
            r15 = r0
            r0 = r15
            if (r0 == 0) goto L77
            r0 = r15
            r1 = 1
            if (r0 != r1) goto L6c
            r0 = r13
            java.lang.Object r0 = r0.f44506g
            e.a.k.a.g.x r0 = (p193e.p194a.p947k.p948a.p959g.AbstractC15756x) r0
            r9 = r0
            r0 = r14
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto Lb8
        L6c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L77:
            r0 = r14
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            PV r0 = r0.f57683a
            e.a.k.a.g.x r0 = (p193e.p194a.p947k.p948a.p959g.AbstractC15756x) r0
            r14 = r0
            r0 = r14
            if (r0 == 0) goto Lb6
            r0 = r8
            r1 = 1
            r0.f44402f = r1
            r0 = r13
            r1 = r14
            r0.f44506g = r1
            r0 = r13
            r1 = 1
            r0.f44504e = r1
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = 1
            r4 = r11
            r5 = r12
            r6 = r13
            java.lang.Object r0 = r0.m18351ik(r1, r2, r3, r4, r5, r6)
            r1 = r16
            if (r0 != r1) goto Lb0
            r0 = r16
            return r0
        Lb0:
            r0 = r14
            r9 = r0
            goto Lb8
        Lb6:
            r0 = 0
            r9 = r0
        Lb8:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18353gk(java.lang.String, java.lang.String, boolean, boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01bb  */
    /* renamed from: hk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m18352hk(java.lang.String r7, java.lang.String r8, boolean r9, s1.w.d<? super p193e.p194a.p947k.p948a.p959g.AbstractC15756x> r10) {
        /*
            Method dump skipped, instructions count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18352hk(java.lang.String, java.lang.String, boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01cd  */
    /* renamed from: ik */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m18351ik(java.lang.String r7, java.lang.String r8, boolean r9, boolean r10, boolean r11, s1.w.d<? super p193e.p194a.p947k.p948a.p959g.AbstractC15756x> r12) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18351ik(java.lang.String, java.lang.String, boolean, boolean, boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007a  */
    /* renamed from: kk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18349kk(s1.w.d<? super p193e.p194a.p947k.p948a.p959g.AbstractC15756x> r6) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18349kk(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0069  */
    /* renamed from: lk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m18348lk(com.truecaller.videocallerid.p187ui.recording.customisation_option.VideoCustomisationOption.PredefinedVideo r6, s1.w.d<? super s1.s> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p947k.p948a.p959g.C15757y.C15782y
            if (r0 == 0) goto L2a
            r0 = r7
            e.a.k.a.g.y$y r0 = (p193e.p194a.p947k.p948a.p959g.C15757y.C15782y) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f44533e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f44533e = r1
            r0 = r8
            r7 = r0
            goto L34
        L2a:
            e.a.k.a.g.y$y r0 = new e.a.k.a.g.y$y
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L34:
            r0 = r7
            java.lang.Object r0 = r0.f44532d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f44533e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L69
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5e
            r0 = r7
            java.lang.Object r0 = r0.f44535g
            e.a.k.a.g.y r0 = (p193e.p194a.p947k.p948a.p959g.C15757y) r0
            r6 = r0
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto Lb0
        L5e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L69:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.k.c.n0 r0 = r0.f44413q
            r11 = r0
            r0 = r5
            PV r0 = r0.f57683a
            e.a.k.a.g.x r0 = (p193e.p194a.p947k.p948a.p959g.AbstractC15756x) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L89
            r0 = r8
            com.truecaller.videocallerid.utils.analytics.OnboardingData r0 = r0.mo18393k0()
            r8 = r0
            goto L8b
        L89:
            r0 = 0
            r8 = r0
        L8b:
            r0 = r5
            r1 = r6
            com.truecaller.videocallerid.data.OutgoingVideoDetails r0 = r0.m18367Sj(r1)
            r6 = r0
            r0 = r7
            r1 = r5
            r0.f44535g = r1
            r0 = r7
            r1 = 1
            r0.f44533e = r1
            r0 = r11
            e.a.k.c.o0 r0 = (p193e.p194a.p947k.p969c.C16036o0) r0
            r1 = r8
            r2 = r6
            r3 = r7
            java.lang.Object r0 = r0.m17974a(r1, r2, r3)
            r1 = r10
            if (r0 != r1) goto Lae
            r0 = r10
            return r0
        Lae:
            r0 = r5
            r6 = r0
        Lb0:
            r0 = r6
            e.a.k.c.r0 r0 = r0.f44411o
            r0.mo17925a()
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p948a.p959g.C15757y.m18348lk(com.truecaller.videocallerid.ui.recording.customisation_option.VideoCustomisationOption$PredefinedVideo, s1.w.d):java.lang.Object");
    }

    /* renamed from: mk */
    public final void m18347mk(AbstractC16121c abstractC16121c, boolean z) {
        if (abstractC16121c instanceof AbstractC16121c.C16125d) {
            AbstractC15756x abstractC15756x = (AbstractC15756x) this.f57683a;
            if (abstractC15756x == null) {
                return;
            }
            abstractC15756x.mo18392lw(m18368Rj(((AbstractC16121c.C16125d) abstractC16121c).f45437a, VideoCustomisationOption.PredefinedVideo.VideoState.Loading));
        } else if (abstractC16121c instanceof AbstractC16121c.C16122a) {
            AbstractC15756x abstractC15756x2 = (AbstractC15756x) this.f57683a;
            if (abstractC15756x2 == null) {
                return;
            }
            VideoCustomisationOption.PredefinedVideo m18368Rj = m18368Rj(((AbstractC16121c.C16122a) abstractC16121c).f45433a, VideoCustomisationOption.PredefinedVideo.VideoState.Downloaded);
            if (this.f44411o.isEnabled() && z) {
                m18368Rj.f16047g = this.f44415s.mo17967a(m18368Rj.f16041a);
            }
            abstractC15756x2.mo18392lw(m18368Rj);
        } else if (!(abstractC16121c instanceof AbstractC16121c.C16123b)) {
        } else {
            AbstractC16121c.C16123b c16123b = (AbstractC16121c.C16123b) abstractC16121c;
            int ordinal = c16123b.f45435b.ordinal();
            Integer valueOf = ordinal != 0 ? ordinal != 2 ? null : Integer.valueOf(C4718R.string.vid_predefined_video_download_failure) : Integer.valueOf(C4718R.string.StrNoInternetConnection);
            if (valueOf != null) {
                int intValue = valueOf.intValue();
                AbstractC15756x abstractC15756x3 = (AbstractC15756x) this.f57683a;
                if (abstractC15756x3 != null) {
                    abstractC15756x3.mo18401a(intValue);
                }
            }
            AbstractC15756x abstractC15756x4 = (AbstractC15756x) this.f57683a;
            if (abstractC15756x4 == null) {
                return;
            }
            abstractC15756x4.mo18392lw(m18368Rj(c16123b.f45434a, VideoCustomisationOption.PredefinedVideo.VideoState.Failed));
        }
    }
}
