package p193e.p194a.p619d.p637c0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.ToneGenerator;
import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import com.truecaller.voip.ConnectionState;
import com.truecaller.voip.VoipState;
import com.truecaller.voip.util.VoipTone;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p663x.C12221p;
import p193e.p194a.p682e.C12864a2;
import q3.a.b3.c;
import q3.a.h1;
import q3.a.i0;
import q3.a.j;
import q3.a.j0;
import q3.a.w2.v;
import q3.a.w2.x;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.h;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.c0.p */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/p.class */
public final class C11441p implements AbstractC11438o {

    /* renamed from: a */
    public final Vibrator f33604a;

    /* renamed from: b */
    public final AudioManager f33605b;

    /* renamed from: c */
    public volatile VoipTone f33606c;

    /* renamed from: d */
    public final g f33607d = C25225a.m3978P1(C11453f.f33636b);

    /* renamed from: e */
    public final c f33608e = q3.a.b3.g.a(false, 1);

    /* renamed from: f */
    public final f f33609f;

    /* renamed from: g */
    public final Context f33610g;

    @e(c = "com.truecaller.voip.util.HapticFeedbackUtilImpl$applyToneSetting$2", f = "HapticFeedbackUtil.kt", l = {98}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.p$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p$a.class */
    public static final class C11442a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f33611e;

        /* renamed from: g */
        public final /* synthetic */ C12221p f33613g;

        /* renamed from: h */
        public final /* synthetic */ C12221p f33614h;

        /* renamed from: i */
        public final /* synthetic */ ConnectionState f33615i;

        /* renamed from: j */
        public final /* synthetic */ VoipState f33616j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11442a(C12221p c12221p, C12221p c12221p2, ConnectionState connectionState, VoipState voipState, d dVar) {
            super(2, dVar);
            C11441p.this = r5;
            this.f33613g = c12221p;
            this.f33614h = c12221p2;
            this.f33615i = connectionState;
            this.f33616j = voipState;
        }

        /* renamed from: i */
        public final d<s> m24678i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11442a(this.f33613g, this.f33614h, this.f33615i, this.f33616j, dVar);
        }

        /* renamed from: k */
        public final Object m24677k(Object obj, Object obj2) {
            return m24678i(obj, (d) obj2).m24676s(s.a);
        }

        /* renamed from: s */
        public final Object m24676s(Object obj) {
            VoipTone voipTone;
            a aVar = a.a;
            int i = this.f33611e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                if (this.f33613g.f35689c) {
                    voipTone = VoipTone.NO_TONE;
                } else if (this.f33614h.f35689c) {
                    voipTone = VoipTone.WAITING;
                } else {
                    int ordinal = this.f33615i.ordinal();
                    if (ordinal == 0) {
                        C11441p c11441p = C11441p.this;
                        VoipState voipState = this.f33616j;
                        C12221p c12221p = this.f33614h;
                        Objects.requireNonNull(c11441p);
                        switch (voipState.ordinal()) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                                voipTone = VoipTone.WAITING;
                                break;
                            case 4:
                                voipTone = VoipTone.RINGING;
                                break;
                            case 5:
                            case 7:
                            case 8:
                            case 11:
                            case 12:
                                voipTone = VoipTone.BUSY;
                                break;
                            case 6:
                            case 10:
                                voipTone = VoipTone.NO_TONE;
                                break;
                            case 9:
                                if (!c12221p.f35688b) {
                                    voipTone = VoipTone.NO_TONE;
                                    break;
                                } else {
                                    voipTone = VoipTone.ACK;
                                    break;
                                }
                            default:
                                throw new s1.i();
                        }
                    } else if (ordinal == 1) {
                        voipTone = VoipTone.WAITING;
                    } else if (ordinal != 2) {
                        throw new s1.i();
                    } else {
                        voipTone = VoipTone.BUSY;
                    }
                }
                C11441p c11441p2 = C11441p.this;
                this.f33611e = 1;
                if (c11441p2.mo24685c(voipTone, this) == aVar) {
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

    @e(c = "com.truecaller.voip.util.HapticFeedbackUtilImpl$exit$1", f = "HapticFeedbackUtil.kt", l = {182}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.p$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p$b.class */
    public static final class C11443b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f33617e;

        /* renamed from: e.a.d.c0.p$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p$b$a.class */
        public static final class C11444a extends m implements s1.z.b.l<ToneGenerator, s> {

            /* renamed from: b */
            public static final C11444a f33619b = new C11444a();

            public C11444a() {
                super(1);
            }

            /* renamed from: d */
            public Object m24672d(Object obj) {
                ToneGenerator toneGenerator = (ToneGenerator) obj;
                l.e(toneGenerator, "$receiver");
                toneGenerator.stopTone();
                toneGenerator.release();
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11443b(d dVar) {
            super(2, dVar);
            C11441p.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24675i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11443b(dVar);
        }

        /* renamed from: k */
        public final Object m24674k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11443b(dVar).m24673s(s.a);
        }

        /* renamed from: s */
        public final Object m24673s(Object obj) {
            a aVar = a.a;
            int i = this.f33617e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C11441p.this.mo24687a();
                C11441p c11441p = C11441p.this;
                C11444a c11444a = C11444a.f33619b;
                this.f33617e = 1;
                if (c11441p.m24680h(c11444a, this) == aVar) {
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

    @e(c = "com.truecaller.voip.util.HapticFeedbackUtilImpl$playTone$2", f = "HapticFeedbackUtil.kt", l = {235, 110, 113}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.p$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p$c.class */
    public static final class C11445c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f33620e;

        /* renamed from: f */
        public int f33621f;

        /* renamed from: h */
        public final /* synthetic */ VoipTone f33623h;

        /* renamed from: e.a.d.c0.p$c$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p$c$a.class */
        public static final class C11446a extends m implements s1.z.b.l<ToneGenerator, s> {

            /* renamed from: b */
            public static final C11446a f33624b = new C11446a();

            public C11446a() {
                super(1);
            }

            /* renamed from: d */
            public Object m24668d(Object obj) {
                ToneGenerator toneGenerator = (ToneGenerator) obj;
                l.e(toneGenerator, "$receiver");
                toneGenerator.stopTone();
                return s.a;
            }
        }

        /* renamed from: e.a.d.c0.p$c$b */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p$c$b.class */
        public static final class C11447b extends m implements s1.z.b.l<ToneGenerator, s> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11447b() {
                super(1);
                C11445c.this = r4;
            }

            /* renamed from: d */
            public Object m24667d(Object obj) {
                ToneGenerator toneGenerator = (ToneGenerator) obj;
                l.e(toneGenerator, "$receiver");
                toneGenerator.startTone(C11445c.this.f33623h.getToneGeneratorType());
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11445c(VoipTone voipTone, d dVar) {
            super(2, dVar);
            C11441p.this = r5;
            this.f33623h = voipTone;
        }

        /* renamed from: i */
        public final d<s> m24671i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11445c(this.f33623h, dVar);
        }

        /* renamed from: k */
        public final Object m24670k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11445c(this.f33623h, dVar).m24669s(s.a);
        }

        /* renamed from: s */
        public final Object m24669s(Object obj) {
            c cVar;
            c cVar2;
            c cVar3;
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f33621f;
            try {
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    c cVar4 = C11441p.this.f33608e;
                    this.f33620e = cVar4;
                    this.f33621f = 1;
                    cVar = cVar4;
                    if (cVar4.b((Object) null, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    if (i != 2 && i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c cVar5 = (c) this.f33620e;
                    cVar3 = cVar5;
                    try {
                        C25225a.m3932a3(obj);
                        cVar = cVar5;
                        cVar3 = cVar;
                        C11441p.this.f33606c = this.f33623h;
                        cVar.c((Object) null);
                        return sVar;
                    } catch (Throwable th) {
                        cVar2 = cVar3;
                        th = th;
                        cVar2.c((Object) null);
                        throw th;
                    }
                } else {
                    C25225a.m3932a3(obj);
                    cVar = (c) this.f33620e;
                }
                if (C11441p.this.f33606c == this.f33623h) {
                    VoipTone voipTone = C11441p.this.f33606c;
                    if (C12864a2.m22540r(voipTone != null ? Boolean.valueOf(voipTone.getPlaysInLoop()) : null)) {
                        cVar.c((Object) null);
                        return sVar;
                    }
                }
                if (this.f33623h == VoipTone.NO_TONE) {
                    C11441p c11441p = C11441p.this;
                    C11446a c11446a = C11446a.f33624b;
                    this.f33620e = cVar;
                    this.f33621f = 2;
                    if (c11441p.m24680h(c11446a, this) == aVar) {
                        return aVar;
                    }
                } else {
                    String str = "Playing tone: " + this.f33623h;
                    C11441p c11441p2 = C11441p.this;
                    C11447b c11447b = new C11447b();
                    this.f33620e = cVar;
                    this.f33621f = 3;
                    if (c11441p2.m24680h(c11447b, this) == aVar) {
                        return aVar;
                    }
                }
                cVar3 = cVar;
                C11441p.this.f33606c = this.f33623h;
                cVar.c((Object) null);
                return sVar;
            } catch (Throwable th2) {
                th = th2;
                cVar2 = cVar;
                cVar2.c((Object) null);
                throw th;
            }
        }
    }

    @e(c = "com.truecaller.voip.util.HapticFeedbackUtilImpl$powerOrVolumeButtonPresses$1", f = "HapticFeedbackUtil.kt", l = {207}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.p$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p$d.class */
    public static final class C11448d extends i implements p<x<? super s>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f33626e;

        /* renamed from: f */
        public int f33627f;

        /* renamed from: e.a.d.c0.p$d$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p$d$a.class */
        public static final class C11449a extends m implements s1.z.b.a<s> {

            /* renamed from: c */
            public final /* synthetic */ C11450b f33630c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11449a(C11450b c11450b) {
                super(0);
                C11448d.this = r4;
                this.f33630c = c11450b;
            }

            public Object invoke() {
                C11441p.this.f33610g.unregisterReceiver(this.f33630c);
                return s.a;
            }
        }

        /* renamed from: e.a.d.c0.p$d$b */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p$d$b.class */
        public static final class C11450b extends BroadcastReceiver {

            /* renamed from: a */
            public final /* synthetic */ x f33631a;

            public C11450b(x<? super s> xVar) {
                this.f33631a = xVar;
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                C19291g.m13534l1(this.f33631a, s.a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11448d(d dVar) {
            super(2, dVar);
            C11441p.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24666i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11448d c11448d = new C11448d(dVar);
            c11448d.f33626e = obj;
            return c11448d;
        }

        /* renamed from: k */
        public final Object m24665k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11448d c11448d = new C11448d(dVar);
            c11448d.f33626e = obj;
            return c11448d.m24664s(s.a);
        }

        /* renamed from: s */
        public final Object m24664s(Object obj) {
            a aVar = a.a;
            int i = this.f33627f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                x xVar = (x) this.f33626e;
                C11450b c11450b = new C11450b(xVar);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
                C11441p.this.f33610g.registerReceiver(c11450b, intentFilter);
                C11449a c11449a = new C11449a(c11450b);
                this.f33627f = 1;
                if (v.a(xVar, c11449a, this) == aVar) {
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

    @e(c = "com.truecaller.voip.util.HapticFeedbackUtilImpl$runSafeOnToneGenerator$2", f = "HapticFeedbackUtil.kt", l = {217}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.p$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p$e.class */
    public static final class C11451e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f33632e;

        /* renamed from: g */
        public final /* synthetic */ s1.z.b.l f33634g;

        /* renamed from: e.a.d.c0.p$e$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p$e$a.class */
        public static final class C11452a extends m implements s1.z.b.a<s> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11452a() {
                super(0);
                C11451e.this = r4;
            }

            public Object invoke() {
                ToneGenerator toneGenerator = (ToneGenerator) C11441p.this.f33607d.getValue();
                return toneGenerator != null ? (s) C11451e.this.f33634g.d(toneGenerator) : null;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11451e(s1.z.b.l lVar, d dVar) {
            super(2, dVar);
            C11441p.this = r5;
            this.f33634g = lVar;
        }

        /* renamed from: i */
        public final d<s> m24663i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11451e(this.f33634g, dVar);
        }

        /* renamed from: k */
        public final Object m24662k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11451e(this.f33634g, dVar).m24661s(s.a);
        }

        /* renamed from: s */
        public final Object m24661s(Object obj) {
            a aVar = a.a;
            int i = this.f33632e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C11452a c11452a = new C11452a();
                this.f33632e = 1;
                Object a = j.a(h.a, c11452a, this);
                obj = a;
                if (a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* renamed from: e.a.d.c0.p$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/p$f.class */
    public static final class C11453f extends m implements s1.z.b.a<ToneGenerator> {

        /* renamed from: b */
        public static final C11453f f33636b = new C11453f();

        public C11453f() {
            super(0);
        }

        public Object invoke() {
            ToneGenerator toneGenerator;
            try {
                toneGenerator = new ToneGenerator(0, 100);
            } catch (RuntimeException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                toneGenerator = null;
            }
            return toneGenerator;
        }
    }

    @Inject
    public C11441p(@Named("IO") f fVar, Context context) {
        l.e(fVar, "asyncContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f33609f = fVar;
        this.f33610g = context;
        this.f33604a = (Vibrator) C22128a.m8734A1(context, "$this$vibrator", "vibrator", "null cannot be cast to non-null type android.os.Vibrator");
        this.f33605b = C19291g.m13630F(context);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11438o
    /* renamed from: a */
    public void mo24687a() {
        if (!this.f33604a.hasVibrator()) {
            return;
        }
        this.f33604a.cancel();
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11438o
    /* renamed from: b */
    public void mo24686b() {
        if (this.f33604a.hasVibrator() && this.f33605b.getRingerMode() != 0) {
            long[] jArr = {1000, 1000};
            if (Build.VERSION.SDK_INT >= 26) {
                this.f33604a.vibrate(VibrationEffect.createWaveform(jArr, 0), m24681g());
            } else {
                this.f33604a.vibrate(jArr, 0, m24681g());
            }
        }
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11438o
    /* renamed from: c */
    public Object mo24685c(VoipTone voipTone, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f33609f, new C11445c(voipTone, null), dVar);
        return a4 == a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11438o
    /* renamed from: d */
    public void mo24684d() {
        if (this.f33604a.hasVibrator() && this.f33605b.getRingerMode() != 0) {
            if (Build.VERSION.SDK_INT >= 26) {
                this.f33604a.vibrate(VibrationEffect.createOneShot(400L, -1));
            } else {
                this.f33604a.vibrate(400L);
            }
        }
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11438o
    /* renamed from: e */
    public Object mo24683e(VoipState voipState, ConnectionState connectionState, C12221p c12221p, C12221p c12221p2, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f33609f, new C11442a(c12221p, c12221p2, connectionState, voipState, null), dVar);
        return a4 == a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11438o
    /* renamed from: f */
    public q3.a.x2.f<s> mo24682f() {
        return s1.a.a.a.v0.f.d.P(new C11448d(null));
    }

    /* renamed from: g */
    public final AudioAttributes m24681g() {
        return new AudioAttributes.Builder().setContentType(4).setUsage(6).build();
    }

    /* renamed from: h */
    public final /* synthetic */ Object m24680h(s1.z.b.l<? super ToneGenerator, s> lVar, d<? super s> dVar) {
        return j.c(2000L, new C11451e(lVar, null), dVar);
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11438o
    /* renamed from: t */
    public void mo24679t() {
        s1.a.a.a.v0.f.d.w2(h1.a, (f) null, (j0) null, new C11443b(null), 3, (Object) null);
    }
}
