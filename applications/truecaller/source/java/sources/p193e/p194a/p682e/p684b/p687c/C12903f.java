package p193e.p194a.p682e.p684b.p687c;

import android.content.Intent;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.log.AssertionUtil;
import com.truecaller.p183ui.settings.sound.SoundSettingsEvent;
import e.m.d.y.n;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC19056l1;
import p193e.p194a.p1114o5.C19063n1;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p678d4.AbstractC12603e;
import p193e.p194a.p682e.p684b.AbstractC12919g;
import p193e.p194a.p849h4.AbstractC14913g;
import p193e.p194a.p849h4.AbstractC14920n;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.m;
/* renamed from: e.a.e.b.c.f */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/c/f.class */
public final class C12903f extends AbstractC20574a<AbstractC12902e> implements AbstractC12901d {

    /* renamed from: d */
    public final f f37487d;

    /* renamed from: e */
    public final f f37488e;

    /* renamed from: f */
    public final AbstractC12919g f37489f;

    /* renamed from: g */
    public final AbstractC19230g f37490g;

    /* renamed from: h */
    public final AbstractC19219a0 f37491h;

    /* renamed from: i */
    public final C12900c f37492i;

    /* renamed from: j */
    public final AbstractC19223c0 f37493j;

    /* renamed from: k */
    public final AbstractC19056l1 f37494k;

    /* renamed from: l */
    public final AbstractC19462a f37495l;

    /* renamed from: m */
    public final AbstractC14913g f37496m;

    /* renamed from: n */
    public final AbstractC6392i0 f37497n;

    /* renamed from: o */
    public final AbstractC14920n f37498o;

    /* renamed from: p */
    public final AbstractC21631b f37499p;

    /* renamed from: q */
    public final AbstractC8541a f37500q;

    /* renamed from: r */
    public final AbstractC12597c f37501r;

    /* renamed from: s */
    public final C20592g f37502s;

    /* renamed from: e.a.e.b.c.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/c/f$a.class */
    public static final class C12904a extends m implements l<Uri, Uri> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12904a() {
            super(1);
            C12903f.this = r4;
        }

        /* renamed from: d */
        public Object m22442d(Object obj) {
            Uri uri = (Uri) obj;
            s1.z.c.l.e(uri, "ringtoneUri");
            if (!C12903f.this.f37499p.mo9312f()) {
                C12903f.this.f37499p.mo9315c(uri.toString());
            }
            Uri mo9314d = C12903f.this.f37499p.mo9314d();
            if (!s1.z.c.l.a(C12903f.this.f37494k.mo14183c(), mo9314d)) {
                uri = mo9314d;
            }
            return uri;
        }
    }

    /* renamed from: e.a.e.b.c.f$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/c/f$b.class */
    public static final class C12905b extends m implements l<Uri, Uri> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12905b() {
            super(1);
            C12903f.this = r4;
        }

        /* renamed from: d */
        public Object m22441d(Object obj) {
            Uri uri = (Uri) obj;
            s1.z.c.l.e(uri, "uri");
            Uri mo14179g = C12903f.this.f37494k.mo14179g();
            if (s1.z.c.l.a(C12903f.this.f37494k.mo14181e(), mo14179g)) {
                mo14179g = uri;
            }
            return mo14179g;
        }
    }

    /* renamed from: e.a.e.b.c.f$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/c/f$c.class */
    public static final class C12906c extends m implements l<Uri, Uri> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12906c() {
            super(1);
            C12903f.this = r4;
        }

        /* renamed from: d */
        public Object m22440d(Object obj) {
            Uri uri = (Uri) obj;
            s1.z.c.l.e(uri, "uri");
            if (!C12903f.this.f37497n.mo31089d0()) {
                C12903f.this.f37497n.mo31206G1(uri.toString());
            }
            Uri mo14182d = C12903f.this.f37494k.mo14182d();
            if (!s1.z.c.l.a(C12903f.this.f37494k.mo14181e(), mo14182d)) {
                uri = mo14182d;
            }
            return uri;
        }
    }

    /* renamed from: e.a.e.b.c.f$d */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/c/f$d.class */
    public static final class C12907d extends m implements l<Uri, Uri> {

        /* renamed from: b */
        public static final C12907d f37506b = new C12907d();

        public C12907d() {
            super(1);
        }

        /* renamed from: d */
        public Object m22439d(Object obj) {
            Uri uri = (Uri) obj;
            s1.z.c.l.e(uri, "uri");
            return uri;
        }
    }

    @e(c = "com.truecaller.ui.settings.sound.SoundSettingsPresenter$requestToShowSoundPicker$1", f = "SoundSettingsPresenter.kt", l = {249, 252, 258}, m = "invokeSuspend")
    /* renamed from: e.a.e.b.c.f$e */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/c/f$e.class */
    public static final class C12908e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f37507e;

        /* renamed from: g */
        public final /* synthetic */ C19063n1.AbstractC19064a f37509g;

        /* renamed from: h */
        public final /* synthetic */ l f37510h;

        /* renamed from: i */
        public final /* synthetic */ int f37511i;

        /* renamed from: j */
        public final /* synthetic */ int f37512j;

        @e(c = "com.truecaller.ui.settings.sound.SoundSettingsPresenter$requestToShowSoundPicker$1$2", f = "SoundSettingsPresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.e.b.c.f$e$a */
        /* loaded from: classes15-dex2jar.jar:e/a/e/b/c/f$e$a.class */
        public static final class C12909a extends i implements p<i0, d<? super s>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12909a(d dVar) {
                super(2, dVar);
                C12908e.this = r5;
            }

            /* renamed from: i */
            public final d<s> m22435i(Object obj, d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                return new C12909a(dVar);
            }

            /* renamed from: k */
            public final Object m22434k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                s1.z.c.l.e(dVar, "completion");
                C12908e c12908e = C12908e.this;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                AbstractC12902e abstractC12902e = (AbstractC12902e) C12903f.this.f57683a;
                if (abstractC12902e != null) {
                    abstractC12902e.mo22466Ap();
                } else {
                    sVar = null;
                }
                return sVar;
            }

            /* renamed from: s */
            public final Object m22433s(Object obj) {
                s sVar;
                C25225a.m3932a3(obj);
                AbstractC12902e abstractC12902e = (AbstractC12902e) C12903f.this.f57683a;
                if (abstractC12902e != null) {
                    abstractC12902e.mo22466Ap();
                    sVar = s.a;
                } else {
                    sVar = null;
                }
                return sVar;
            }
        }

        @e(c = "com.truecaller.ui.settings.sound.SoundSettingsPresenter$requestToShowSoundPicker$1$1$1", f = "SoundSettingsPresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.e.b.c.f$e$b */
        /* loaded from: classes15-dex2jar.jar:e/a/e/b/c/f$e$b.class */
        public static final class C12910b extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public final /* synthetic */ c0 f37514e;

            /* renamed from: f */
            public final /* synthetic */ C12908e f37515f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12910b(c0 c0Var, d dVar, C12908e c12908e) {
                super(2, dVar);
                this.f37514e = c0Var;
                this.f37515f = c12908e;
            }

            /* renamed from: i */
            public final d<s> m22432i(Object obj, d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                return new C12910b(this.f37514e, dVar, this.f37515f);
            }

            /* renamed from: k */
            public final Object m22431k(Object obj, Object obj2) {
                s sVar = s.a;
                d dVar = (d) obj2;
                s1.z.c.l.e(dVar, "completion");
                c0 c0Var = this.f37514e;
                C12908e c12908e = this.f37515f;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                AbstractC12902e abstractC12902e = (AbstractC12902e) C12903f.this.f57683a;
                if (abstractC12902e != null) {
                    abstractC12902e.mo22460Xn((Intent) c0Var.a, c12908e.f37512j);
                } else {
                    sVar = null;
                }
                return sVar;
            }

            /* renamed from: s */
            public final Object m22430s(Object obj) {
                s sVar;
                C25225a.m3932a3(obj);
                C12908e c12908e = this.f37515f;
                AbstractC12902e abstractC12902e = (AbstractC12902e) C12903f.this.f57683a;
                if (abstractC12902e != null) {
                    abstractC12902e.mo22460Xn((Intent) this.f37514e.a, c12908e.f37512j);
                    sVar = s.a;
                } else {
                    sVar = null;
                }
                return sVar;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12908e(C19063n1.AbstractC19064a abstractC19064a, l lVar, int i, int i2, d dVar) {
            super(2, dVar);
            C12903f.this = r5;
            this.f37509g = abstractC19064a;
            this.f37510h = lVar;
            this.f37511i = i;
            this.f37512j = i2;
        }

        /* renamed from: i */
        public final d<s> m22438i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C12908e(this.f37509g, this.f37510h, this.f37511i, this.f37512j, dVar);
        }

        /* renamed from: k */
        public final Object m22437k(Object obj, Object obj2) {
            return m22438i(obj, (d) obj2).m22436s(s.a);
        }

        /* renamed from: s */
        public final Object m22436s(Object obj) {
            a aVar = a.a;
            int i = this.f37507e;
            try {
            } catch (Exception e) {
                e.getMessage();
                f fVar = C12903f.this.f37488e;
                C12909a c12909a = new C12909a(null);
                this.f37507e = 3;
                if (s1.a.a.a.v0.f.d.a4(fVar, c12909a, this) == aVar) {
                    return aVar;
                }
            }
            if (i == 0) {
                C25225a.m3932a3(obj);
                C12900c c12900c = C12903f.this.f37492i;
                C19063n1.AbstractC19064a abstractC19064a = this.f37509g;
                this.f37507e = 1;
                Object m14155a = C19063n1.f53240a.m14155a(c12900c.f37486a, abstractC19064a, this);
                obj = m14155a;
                if (m14155a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i == 2) {
                    C25225a.m3932a3(obj);
                    s sVar = (s) obj;
                    return s.a;
                } else if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                    return s.a;
                }
            } else {
                C25225a.m3932a3(obj);
            }
            Uri uri = (Uri) obj;
            if (uri != null) {
                Uri uri2 = (Uri) this.f37510h.d(uri);
                c0 c0Var = new c0();
                c0Var.a = C12903f.this.f37492i.m22468a(uri2, this.f37509g, this.f37511i);
                f fVar2 = C12903f.this.f37488e;
                C12910b c12910b = new C12910b(c0Var, null, this);
                this.f37507e = 2;
                Object a4 = s1.a.a.a.v0.f.d.a4(fVar2, c12910b, this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
                s sVar2 = (s) obj;
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C12903f(@Named("IO") f fVar, @Named("UI") f fVar2, AbstractC12919g abstractC12919g, AbstractC19230g abstractC19230g, AbstractC19219a0 abstractC19219a0, C12900c c12900c, AbstractC19223c0 abstractC19223c0, AbstractC19056l1 abstractC19056l1, AbstractC19462a abstractC19462a, AbstractC14913g abstractC14913g, AbstractC6392i0 abstractC6392i0, AbstractC14920n abstractC14920n, AbstractC21631b abstractC21631b, AbstractC8541a abstractC8541a, AbstractC12597c abstractC12597c, C20592g c20592g) {
        super(fVar);
        s1.z.c.l.e(fVar, "asyncContext");
        s1.z.c.l.e(fVar2, "uiContext");
        s1.z.c.l.e(abstractC12919g, "settingsUIPref");
        s1.z.c.l.e(abstractC19230g, "deviceInfoUtil");
        s1.z.c.l.e(abstractC19219a0, "permissionUtil");
        s1.z.c.l.e(c12900c, "soundSettingsHelper");
        s1.z.c.l.e(abstractC19223c0, "resourceProvider");
        s1.z.c.l.e(abstractC19056l1, "ringtoneNotificationSettings");
        s1.z.c.l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        s1.z.c.l.e(abstractC14913g, "messagingNotificationSettings");
        s1.z.c.l.e(abstractC6392i0, "messagingSettings");
        s1.z.c.l.e(abstractC14920n, "systemNotificationManager");
        s1.z.c.l.e(abstractC21631b, "flashManager");
        s1.z.c.l.e(abstractC8541a, "coreSettings");
        s1.z.c.l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        s1.z.c.l.e(c20592g, "featuresRegistry");
        this.f37487d = fVar;
        this.f37488e = fVar2;
        this.f37489f = abstractC12919g;
        this.f37490g = abstractC19230g;
        this.f37491h = abstractC19219a0;
        this.f37492i = c12900c;
        this.f37493j = abstractC19223c0;
        this.f37494k = abstractC19056l1;
        this.f37495l = abstractC19462a;
        this.f37496m = abstractC14913g;
        this.f37497n = abstractC6392i0;
        this.f37498o = abstractC14920n;
        this.f37499p = abstractC21631b;
        this.f37500q = abstractC8541a;
        this.f37501r = abstractC12597c;
        this.f37502s = c20592g;
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12901d
    /* renamed from: A2 */
    public void mo22451A2() {
        AbstractC12902e abstractC12902e;
        if (this.f37490g.mo13784m() || (abstractC12902e = (AbstractC12902e) this.f57683a) == null) {
            return;
        }
        abstractC12902e.mo22452xc();
    }

    /* renamed from: Ij */
    public final String m22450Ij(Uri uri) {
        if (uri != null) {
            if (s1.z.c.l.a(uri, this.f37494k.mo14181e())) {
                C19063n1.AbstractC19064a.C19066b c19066b = C19063n1.AbstractC19064a.C19066b.f53247f;
                return "Truecaller Message";
            } else if (s1.z.c.l.a(uri, this.f37494k.mo14183c())) {
                return "Truecaller Flash";
            } else {
                C12900c c12900c = this.f37492i;
                Objects.requireNonNull(c12900c);
                s1.z.c.l.e(uri, "ringtoneUri");
                Ringtone ringtone = RingtoneManager.getRingtone(c12900c.f37486a, uri);
                String title = ringtone != null ? ringtone.getTitle(c12900c.f37486a) : null;
                if (title != null) {
                    return title;
                }
            }
        }
        String mo13768b = this.f37493j.mo13768b(C2752R.string.RingtoneSilent, new Object[0]);
        s1.z.c.l.d(mo13768b, "resourceProvider.getStri…(R.string.RingtoneSilent)");
        return mo13768b;
    }

    /* renamed from: Jj */
    public final void m22449Jj(C19063n1.AbstractC19064a abstractC19064a, int i, int i2, int i3, l<? super Uri, ? extends Uri> lVar) {
        AbstractC12902e abstractC12902e;
        if (this.f37491h.mo13825h("android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE")) {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C12908e(abstractC19064a, lVar, i3, i2, null), 3, (Object) null);
        } else if (!this.f37491h.mo13825h("android.permission.READ_EXTERNAL_STORAGE")) {
            AbstractC12902e abstractC12902e2 = (AbstractC12902e) this.f57683a;
            if (abstractC12902e2 == null) {
                return;
            }
            abstractC12902e2.mo22462Su("android.permission.READ_EXTERNAL_STORAGE", i);
        } else if (this.f37491h.mo13825h("android.permission.WRITE_EXTERNAL_STORAGE") || (abstractC12902e = (AbstractC12902e) this.f57683a) == null) {
        } else {
            abstractC12902e.mo22462Su("android.permission.WRITE_EXTERNAL_STORAGE", i);
        }
    }

    /* renamed from: Kj */
    public final void m22448Kj() {
        boolean mo13784m = this.f37490g.mo13784m();
        AbstractC12902e abstractC12902e = (AbstractC12902e) this.f57683a;
        if (abstractC12902e != null) {
            abstractC12902e.mo22464Rv(!mo13784m);
        }
        AbstractC12902e abstractC12902e2 = (AbstractC12902e) this.f57683a;
        if (abstractC12902e2 != null) {
            abstractC12902e2.mo22454ly(mo13784m);
        }
        try {
            Uri actualDefaultRingtoneUri = RingtoneManager.getActualDefaultRingtoneUri(this.f37492i.f37486a, 1);
            AbstractC12902e abstractC12902e3 = (AbstractC12902e) this.f57683a;
            if (abstractC12902e3 != null) {
                abstractC12902e3.mo22457gs(m22450Ij(actualDefaultRingtoneUri));
            }
        } catch (SecurityException e) {
            AbstractC12902e abstractC12902e4 = (AbstractC12902e) this.f57683a;
            if (abstractC12902e4 != null) {
                abstractC12902e4.mo22455ho(false);
            }
            C10480a.m26061I1(e);
        }
        try {
            Uri mo19443h = this.f37496m.mo19443h();
            AbstractC12902e abstractC12902e5 = (AbstractC12902e) this.f57683a;
            if (abstractC12902e5 != null) {
                abstractC12902e5.mo22461Ub(m22450Ij(mo19443h));
            }
        } catch (SecurityException e2) {
            AbstractC12902e abstractC12902e6 = (AbstractC12902e) this.f57683a;
            if (abstractC12902e6 != null) {
                abstractC12902e6.mo22463Ss(false);
            }
            C10480a.m26061I1(e2);
        }
        try {
            Uri mo19444g = this.f37496m.mo19444g();
            AbstractC12902e abstractC12902e7 = (AbstractC12902e) this.f57683a;
            if (abstractC12902e7 != null) {
                abstractC12902e7.mo22459Yo(m22450Ij(mo19444g));
            }
        } catch (SecurityException e3) {
            AbstractC12902e abstractC12902e8 = (AbstractC12902e) this.f57683a;
            if (abstractC12902e8 != null) {
                abstractC12902e8.mo22458ee(false);
            }
            C10480a.m26061I1(e3);
        }
        AbstractC12902e abstractC12902e9 = (AbstractC12902e) this.f57683a;
        if (abstractC12902e9 != null) {
            abstractC12902e9.mo22465K7(this.f37496m.mo19445f());
        }
        if (this.f37489f.mo22420a()) {
            if (this.f37501r.mo22840d(AbstractC12603e.C12604a.f36737c) && this.f37500q.getBoolean("featureFlash", false) && !this.f37502s.m10982W().isEnabled()) {
                AbstractC12902e abstractC12902e10 = (AbstractC12902e) this.f57683a;
                if (abstractC12902e10 != null) {
                    abstractC12902e10.mo22456hl(true);
                }
                try {
                    Uri mo9314d = this.f37499p.mo9314d();
                    AbstractC12902e abstractC12902e11 = (AbstractC12902e) this.f57683a;
                    if (abstractC12902e11 == null) {
                        return;
                    }
                    abstractC12902e11.mo22453o7(m22450Ij(mo9314d));
                    return;
                } catch (SecurityException e4) {
                    this.f37499p.mo9315c(null);
                    try {
                        AbstractC12902e abstractC12902e12 = (AbstractC12902e) this.f57683a;
                        if (abstractC12902e12 != null) {
                            abstractC12902e12.mo22453o7(m22450Ij(this.f37494k.mo14183c()));
                        }
                    } catch (SecurityException e5) {
                        AbstractC12902e abstractC12902e13 = (AbstractC12902e) this.f57683a;
                        if (abstractC12902e13 != null) {
                            abstractC12902e13.mo22456hl(false);
                        }
                        AssertionUtil.reportThrowableButNeverCrash(e5);
                    }
                    C10480a.m26061I1(e4);
                    return;
                }
            }
        }
        AbstractC12902e abstractC12902e14 = (AbstractC12902e) this.f57683a;
        if (abstractC12902e14 != null) {
            abstractC12902e14.mo22456hl(false);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.e.b.c.e] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC12902e abstractC12902e) {
        AbstractC12902e abstractC12902e2 = abstractC12902e;
        s1.z.c.l.e(abstractC12902e2, "presenterView");
        this.f57683a = abstractC12902e2;
        try {
            Uri mo19446e = this.f37496m.mo19446e();
            if (!s1.z.c.l.a(mo19446e, this.f37496m.mo19443h())) {
                this.f37497n.mo31079e4(mo19446e != null ? mo19446e.toString() : null);
            }
        } catch (SecurityException e) {
            AbstractC12902e abstractC12902e3 = (AbstractC12902e) this.f57683a;
            if (abstractC12902e3 != null) {
                abstractC12902e3.mo22463Ss(false);
            }
            C10480a.m26061I1(e);
        }
        try {
            Uri mo19449b = this.f37496m.mo19449b();
            if (!(!s1.z.c.l.a(mo19449b, this.f37496m.mo19444g()))) {
                return;
            }
            AbstractC6392i0 abstractC6392i0 = this.f37497n;
            String str = null;
            if (mo19449b != null) {
                str = mo19449b.toString();
            }
            abstractC6392i0.mo31206G1(str);
        } catch (SecurityException e2) {
            AbstractC12902e abstractC12902e4 = (AbstractC12902e) this.f57683a;
            if (abstractC12902e4 != null) {
                abstractC12902e4.mo22458ee(false);
            }
            C10480a.m26061I1(e2);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12901d
    /* renamed from: Z9 */
    public void mo22447Z9() {
        m22449Jj(C19063n1.AbstractC19064a.C19066b.f53247f, 6, 2, C2752R.string.SettingsMessagesRingtoneTitle, new C12906c());
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12901d
    /* renamed from: cc */
    public void mo22446cc() {
        m22449Jj(C19063n1.AbstractC19064a.C19066b.f53247f, 9, 3, C2752R.string.SettingsMessagesRingtoneTitle, new C12905b());
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12901d
    /* renamed from: f8 */
    public void mo22445f8(boolean z) {
        this.f37497n.mo31222D0(z);
        this.f37496m.mo19447d();
        this.f37496m.mo19450a();
        this.f37498o.mo19415k(false);
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12901d
    /* renamed from: j5 */
    public void mo22444j5() {
        m22449Jj(C19063n1.AbstractC19064a.C19067c.f53248f, 5, 1, C2752R.string.SettingsRingtoneTitle, C12907d.f37506b);
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12901d
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 != -1) {
            return;
        }
        String str = null;
        Uri uri = intent != null ? (Uri) intent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI") : null;
        if (i == 1) {
            Uri actualDefaultRingtoneUri = RingtoneManager.getActualDefaultRingtoneUri(this.f37492i.f37486a, 1);
            if (uri != null) {
                RingtoneManager.setActualDefaultRingtoneUri(this.f37492i.f37486a, 1, uri);
                AbstractC12902e abstractC12902e = (AbstractC12902e) this.f57683a;
                if (abstractC12902e != null) {
                    abstractC12902e.mo22457gs(m22450Ij(uri));
                }
            } else if (actualDefaultRingtoneUri != null) {
                RingtoneManager.setActualDefaultRingtoneUri(this.f37492i.f37486a, 1, null);
                AbstractC12902e abstractC12902e2 = (AbstractC12902e) this.f57683a;
                if (abstractC12902e2 != null) {
                    abstractC12902e2.mo22457gs(m22450Ij(null));
                }
            }
            n.B0(new SoundSettingsEvent(this.f37492i.m22467b(uri), SoundSettingsEvent.Type.CALL), this.f37495l);
        } else if (i == 2) {
            AbstractC6392i0 abstractC6392i0 = this.f37497n;
            String str2 = null;
            if (uri != null) {
                str2 = uri.toString();
            }
            abstractC6392i0.mo31206G1(str2);
            this.f37496m.mo19447d();
            this.f37498o.mo19415k(false);
            m22448Kj();
            n.B0(new SoundSettingsEvent(this.f37492i.m22467b(uri), SoundSettingsEvent.Type.SMS), this.f37495l);
        } else if (i == 3) {
            AbstractC6392i0 abstractC6392i02 = this.f37497n;
            if (uri != null) {
                str = uri.toString();
            }
            abstractC6392i02.mo31079e4(str);
            this.f37496m.mo19450a();
            this.f37498o.mo19415k(false);
            m22448Kj();
            n.B0(new SoundSettingsEvent(this.f37492i.m22467b(uri), SoundSettingsEvent.Type.IM), this.f37495l);
        } else if (i != 4) {
        } else {
            if (uri != null) {
                this.f37499p.mo9315c(uri.toString());
                AbstractC12902e abstractC12902e3 = (AbstractC12902e) this.f57683a;
                if (abstractC12902e3 != null) {
                    abstractC12902e3.mo22453o7(m22450Ij(uri));
                }
            } else {
                Uri mo14183c = this.f37494k.mo14183c();
                this.f37499p.mo9315c(mo14183c.toString());
                AbstractC12902e abstractC12902e4 = (AbstractC12902e) this.f57683a;
                if (abstractC12902e4 != null) {
                    abstractC12902e4.mo22453o7(m22450Ij(mo14183c));
                }
            }
            n.B0(new SoundSettingsEvent(this.f37492i.m22467b(uri), SoundSettingsEvent.Type.FLASH), this.f37495l);
        }
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12901d
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        s1.z.c.l.e(strArr, "permissions");
        s1.z.c.l.e(iArr, "grantResults");
        if ((iArr.length == 0 ? -1 : iArr[0]) != 0) {
            return;
        }
        if (i == 5) {
            m22449Jj(C19063n1.AbstractC19064a.C19067c.f53248f, 5, 1, C2752R.string.SettingsRingtoneTitle, C12907d.f37506b);
        } else if (i == 6) {
            m22449Jj(C19063n1.AbstractC19064a.C19066b.f53247f, 6, 2, C2752R.string.SettingsMessagesRingtoneTitle, new C12906c());
        } else if (i == 7) {
            m22449Jj(C19063n1.AbstractC19064a.C19065a.f53246f, 7, 4, C2752R.string.SettingsFlashRingtoneTitle, new C12904a());
        } else if (i != 9) {
        } else {
            m22449Jj(C19063n1.AbstractC19064a.C19066b.f53247f, 9, 3, C2752R.string.SettingsMessagesRingtoneTitle, new C12905b());
        }
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12901d
    public void onResume() {
        m22448Kj();
    }

    @Override // p193e.p194a.p682e.p684b.p687c.AbstractC12901d
    /* renamed from: q6 */
    public void mo22443q6() {
        m22449Jj(C19063n1.AbstractC19064a.C19065a.f53246f, 7, 4, C2752R.string.SettingsFlashRingtoneTitle, new C12904a());
    }
}
