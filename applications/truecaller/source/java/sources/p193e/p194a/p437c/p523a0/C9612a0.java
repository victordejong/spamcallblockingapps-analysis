package p193e.p194a.p437c.p523a0;

import com.truecaller.insights.source.SmartSMSFeatureStatus;
import com.truecaller.insights.source.SourceType;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p437c.p526c.p528d.AbstractC9845f0;
import p193e.p194a.p437c.p580r.p588i.C10566a;
import s1.s;
import s1.u.i;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.a0.a0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/a0/a0.class */
public final class C9612a0 implements AbstractC9678z {

    /* renamed from: a */
    public final AbstractC9845f0 f29050a;

    @e(c = "com.truecaller.insights.source.SenderInfoDataSourceImpl", f = "SenderInfoDataSource.kt", l = {138}, m = "getSenderInfoModelsForSender")
    /* renamed from: e.a.c.a0.a0$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/a0$a.class */
    public static final class C9613a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29051d;

        /* renamed from: e */
        public int f29052e;

        /* renamed from: g */
        public Object f29054g;

        /* renamed from: h */
        public Object f29055h;

        /* renamed from: i */
        public Object f29056i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9613a(d dVar) {
            super(dVar);
            C9612a0.this = r4;
        }

        /* renamed from: s */
        public final Object m27386s(Object obj) {
            this.f29051d = obj;
            this.f29052e |= Integer.MIN_VALUE;
            return C9612a0.this.m27390a(null, null, null, this);
        }
    }

    @Inject
    public C9612a0(AbstractC9845f0 abstractC9845f0) {
        l.e(abstractC9845f0, "senderInfoDao");
        this.f29050a = abstractC9845f0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0177 A[LOOP:1: B:34:0x016e->B:36:0x0177, LOOP_END] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m27390a(java.lang.String r12, com.truecaller.insights.source.SourceType r13, java.lang.String r14, s1.w.d<? super java.util.List<p193e.p194a.p437c.p523a0.C9615b0>> r15) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9612a0.m27390a(java.lang.String, com.truecaller.insights.source.SourceType, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* renamed from: b */
    public Object m27389b(C9615b0 c9615b0, d<? super s> dVar) {
        AbstractC9845f0 abstractC9845f0 = this.f29050a;
        l.e(c9615b0, "$this$toSenderInfoEntity");
        String str = c9615b0.f29059a;
        Locale locale = Locale.getDefault();
        l.d(locale, "Locale.getDefault()");
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String upperCase = str.toUpperCase(locale);
        l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
        Object mo27079b = abstractC9845f0.mo27079b(new C10566a(0L, upperCase, c9615b0.f29060b, c9615b0.f29061c, c9615b0.f29062d, c9615b0.f29063e, c9615b0.f29064f, c9615b0.f29065g), dVar);
        return mo27079b == a.a ? mo27079b : s.a;
    }

    /* renamed from: c */
    public Object m27388c(String str, SmartSMSFeatureStatus smartSMSFeatureStatus, List<String> list, SourceType sourceType, String str2, d<? super s> dVar) {
        AbstractC9845f0 abstractC9845f0 = this.f29050a;
        Locale locale = Locale.getDefault();
        l.d(locale, "Locale.getDefault()");
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String upperCase = str.toUpperCase(locale);
        l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
        abstractC9845f0.mo27073h(upperCase, smartSMSFeatureStatus, i.O(list, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62), sourceType, str2);
        return s.a;
    }

    /* renamed from: d */
    public Object m27387d(String str, SmartSMSFeatureStatus smartSMSFeatureStatus, SourceType sourceType, String str2, d<? super s> dVar) {
        AbstractC9845f0 abstractC9845f0 = this.f29050a;
        Locale locale = Locale.getDefault();
        l.d(locale, "Locale.getDefault()");
        Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
        String upperCase = str.toUpperCase(locale);
        l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
        abstractC9845f0.mo27076e(upperCase, smartSMSFeatureStatus, sourceType, str2);
        return s.a;
    }
}
