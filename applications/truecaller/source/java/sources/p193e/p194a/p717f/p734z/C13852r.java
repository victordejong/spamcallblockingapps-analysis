package p193e.p194a.p717f.p734z;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.incallui.utils.WatchDogConfig;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19243l;
import p193e.p194a.p1129p5.p1135v0.AbstractC19335b;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p430q.AbstractC8584h0;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p717f.AbstractC13719m;
import p193e.p194a.p717f.p733y.AbstractC13762c;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.f.z.r */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/r.class */
public final class C13852r implements AbstractC13851q, i0 {

    /* renamed from: a */
    public final f f40184a;

    /* renamed from: b */
    public final AtomicBoolean f40185b = new AtomicBoolean(false);

    /* renamed from: c */
    public volatile WatchDogConfig f40186c = new WatchDogConfig(false, 0, 0, false, 15, null);

    /* renamed from: d */
    public final f f40187d;

    /* renamed from: e */
    public final a<C20592g> f40188e;

    /* renamed from: f */
    public final a<AbstractC19335b> f40189f;

    /* renamed from: g */
    public final AbstractC19243l f40190g;

    /* renamed from: h */
    public final a<AbstractC13719m> f40191h;

    /* renamed from: i */
    public final a<AbstractC13762c> f40192i;

    /* renamed from: j */
    public final a<AbstractC13864y> f40193j;

    /* renamed from: k */
    public final AbstractC19222c f40194k;

    /* renamed from: l */
    public final a<AbstractC8584h0> f40195l;

    /* renamed from: m */
    public final a<AbstractC19462a> f40196m;

    /* renamed from: n */
    public final a<AbstractC13497p> f40197n;

    @e(c = "com.truecaller.incallui.utils.InCallUIFeatureWatchDogImpl$init$1", f = "InCallUIFeatureWatchDog.kt", l = {68}, m = "invokeSuspend")
    /* renamed from: e.a.f.z.r$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/z/r$a.class */
    public static final class C13853a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f40198e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13853a(d dVar) {
            super(2, dVar);
            C13852r.this = r5;
        }

        /* renamed from: i */
        public final d<s> m20998i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13853a(dVar);
        }

        /* renamed from: k */
        public final Object m20997k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C13853a(dVar).m20996s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:44:0x01b2, code lost:
            if (r11 != r0) goto L45;
         */
        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Removed duplicated region for block: B:48:0x01bf  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00f6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m20996s(java.lang.Object r11) {
            /*
                Method dump skipped, instructions count: 459
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p734z.C13852r.C13853a.m20996s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C13852r(@Named("IO") f fVar, @Named("features_registry") a<C20592g> aVar, a<AbstractC19335b> aVar2, AbstractC19243l abstractC19243l, a<AbstractC13719m> aVar3, a<AbstractC13762c> aVar4, a<AbstractC13864y> aVar5, AbstractC19222c abstractC19222c, a<AbstractC8584h0> aVar6, a<AbstractC19462a> aVar7, a<AbstractC13497p> aVar8) {
        l.e(fVar, "ioContext");
        l.e(aVar, "featuresRegistry");
        l.e(aVar2, "telephonyUtil");
        l.e(abstractC19243l, "gsonUtil");
        l.e(aVar3, "inCallUIConfig");
        l.e(aVar4, "callManager");
        l.e(aVar5, "settings");
        l.e(abstractC19222c, "clock");
        l.e(aVar6, "specialNumberResolver");
        l.e(aVar7, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(aVar8, "multiSimManager");
        this.f40187d = fVar;
        this.f40188e = aVar;
        this.f40189f = aVar2;
        this.f40190g = abstractC19243l;
        this.f40191h = aVar3;
        this.f40192i = aVar4;
        this.f40193j = aVar5;
        this.f40194k = abstractC19222c;
        this.f40195l = aVar6;
        this.f40196m = aVar7;
        this.f40197n = aVar8;
        this.f40184a = fVar.plus(s1.a.a.a.v0.f.d.j((p1) null, 1, (Object) null));
    }

    /* renamed from: a */
    public final void m21000a() {
        ((AbstractC13864y) this.f40193j.get()).remove("watchDogInCallUIDisabledTimestamp");
    }

    /* renamed from: b */
    public final void m20999b() {
        ((AbstractC13864y) this.f40193j.get()).remove("watchDogInCallUIFailureCount");
    }

    public f getCoroutineContext() {
        return this.f40184a;
    }

    @Override // p193e.p194a.p717f.p734z.AbstractC13851q
    public void init() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C13853a(null), 3, (Object) null);
    }
}
