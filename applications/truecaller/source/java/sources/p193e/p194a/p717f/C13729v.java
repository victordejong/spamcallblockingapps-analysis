package p193e.p194a.p717f;

import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import p193e.p194a.p717f.p734z.AbstractC13809c0;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.f.v */
/* loaded from: classes10-dex2jar.jar:e/a/f/v.class */
public final class C13729v implements AbstractC13809c0 {

    /* renamed from: a */
    public final Provider<C20592g> f39770a;

    /* renamed from: b */
    public final Provider<AbstractC11476s1> f39771b;

    @e(c = "com.truecaller.incallui.InCallUIVoipHelperImpl", f = "InCallUIVoipHelperImpl.kt", l = {51}, m = "showSwitchToVoice")
    /* renamed from: e.a.f.v$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/v$a.class */
    public static final class C13730a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39772d;

        /* renamed from: e */
        public int f39773e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13730a(d dVar) {
            super(dVar);
            C13729v.this = r4;
        }

        /* renamed from: s */
        public final Object m21243s(Object obj) {
            this.f39772d = obj;
            this.f39773e |= Integer.MIN_VALUE;
            return C13729v.this.m21244a(null, null, false, this);
        }
    }

    @Inject
    public C13729v(Provider<C20592g> provider, Provider<AbstractC11476s1> provider2) {
        l.e(provider, "featuresRegistry");
        l.e(provider2, "voipUtil");
        this.f39770a = provider;
        this.f39771b = provider2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x014d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m21244a(p193e.p194a.p717f.p731w.AbstractC13738f r7, com.truecaller.incallui.service.CallState r8, boolean r9, s1.w.d<? super java.lang.Boolean> r10) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.C13729v.m21244a(e.a.f.w.f, com.truecaller.incallui.service.CallState, boolean, s1.w.d):java.lang.Object");
    }
}
