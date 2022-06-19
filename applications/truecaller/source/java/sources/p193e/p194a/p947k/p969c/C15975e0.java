package p193e.p194a.p947k.p969c;

import com.truecaller.data.entity.Number;
import com.truecaller.videocallerid.data.OutgoingVideoDetails;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p947k.AbstractC16116j;
import p193e.p194a.p947k.p973n.p977g.AbstractC16223e;
import p193e.p194a.p947k.p973n.p977g.C16228j;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.k.c.e0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/e0.class */
public final class C15975e0 implements AbstractC15966d0 {

    /* renamed from: a */
    public final AbstractC16067r0 f45035a;

    /* renamed from: b */
    public final AbstractC16223e f45036b;

    /* renamed from: c */
    public final AbstractC16116j f45037c;

    /* renamed from: d */
    public final f f45038d;

    @e(c = "com.truecaller.videocallerid.utils.OutgoingVideoProviderImpl", f = "OutgoingVideoProvider.kt", l = {94, 95}, m = "addVideoCallerId")
    /* renamed from: e.a.k.c.e0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/e0$a.class */
    public static final class C15976a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45039d;

        /* renamed from: e */
        public int f45040e;

        /* renamed from: g */
        public Object f45042g;

        /* renamed from: h */
        public Object f45043h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15976a(d dVar) {
            super(dVar);
            C15975e0.this = r4;
        }

        /* renamed from: s */
        public final Object m18054s(Object obj) {
            this.f45039d = obj;
            this.f45040e |= Integer.MIN_VALUE;
            return C15975e0.this.mo18061b(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.OutgoingVideoProviderImpl", f = "OutgoingVideoProvider.kt", l = {112, 116}, m = "canSendVideoIdToNumber")
    /* renamed from: e.a.k.c.e0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/e0$b.class */
    public static final class C15977b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45044d;

        /* renamed from: e */
        public int f45045e;

        /* renamed from: g */
        public Object f45047g;

        /* renamed from: h */
        public Object f45048h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15977b(d dVar) {
            super(dVar);
            C15975e0.this = r4;
        }

        /* renamed from: s */
        public final Object m18053s(Object obj) {
            this.f45044d = obj;
            this.f45045e |= Integer.MIN_VALUE;
            return C15975e0.this.mo18055o(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.OutgoingVideoProviderImpl", f = "OutgoingVideoProvider.kt", l = {75}, m = "getLastOutgoingVideo")
    /* renamed from: e.a.k.c.e0$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/e0$c.class */
    public static final class C15978c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45049d;

        /* renamed from: e */
        public int f45050e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15978c(d dVar) {
            super(dVar);
            C15975e0.this = r4;
        }

        /* renamed from: s */
        public final Object m18052s(Object obj) {
            this.f45049d = obj;
            this.f45050e |= Integer.MIN_VALUE;
            return C15975e0.this.mo18056h(false, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.OutgoingVideoProviderImpl", f = "OutgoingVideoProvider.kt", l = {99, 100}, m = "getOutgoingVideoForNumber")
    /* renamed from: e.a.k.c.e0$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/e0$d.class */
    public static final class C15979d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45052d;

        /* renamed from: e */
        public int f45053e;

        /* renamed from: g */
        public Object f45055g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15979d(d dVar) {
            super(dVar);
            C15975e0.this = r4;
        }

        /* renamed from: s */
        public final Object m18051s(Object obj) {
            this.f45052d = obj;
            this.f45053e |= Integer.MIN_VALUE;
            return C15975e0.this.m18059d(null, this);
        }
    }

    @Inject
    public C15975e0(AbstractC16067r0 abstractC16067r0, AbstractC16223e abstractC16223e, AbstractC16116j abstractC16116j, @Named("IO") f fVar) {
        l.e(abstractC16067r0, "videoCallerIdAvailability");
        l.e(abstractC16223e, "outgoingVideoRepository");
        l.e(abstractC16116j, "videoCallerIdSupport");
        l.e(fVar, "asyncContext");
        this.f45035a = abstractC16067r0;
        this.f45036b = abstractC16223e;
        this.f45037c = abstractC16116j;
        this.f45038d = fVar;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15966d0
    /* renamed from: a */
    public Object mo18062a(Number number, d<? super OutgoingVideoDetails> dVar) {
        String m35479e = number.m35479e();
        if (m35479e != null) {
            return m18059d(m35479e, dVar);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00f8  */
    @Override // p193e.p194a.p947k.p969c.AbstractC15966d0
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo18061b(com.truecaller.videocallerid.data.OutgoingVideoDetails r8, s1.w.d<? super s1.s> r9) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C15975e0.mo18061b(com.truecaller.videocallerid.data.OutgoingVideoDetails, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15966d0
    /* renamed from: c */
    public Object mo18060c(d<? super OutgoingVideoDetails> dVar) {
        return mo18056h(false, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ae A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x010f  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m18059d(java.lang.String r8, s1.w.d<? super com.truecaller.videocallerid.data.OutgoingVideoDetails> r9) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C15975e0.m18059d(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* renamed from: e */
    public final boolean m18058e(boolean z) {
        return this.f45035a.isAvailable() && (z || this.f45035a.isEnabled());
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15966d0
    /* renamed from: g */
    public Object mo18057g(d<? super Boolean> dVar) {
        return ((C16228j) this.f45036b).m17701d(dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d7  */
    @Override // p193e.p194a.p947k.p969c.AbstractC15966d0
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo18056h(boolean r6, s1.w.d<? super com.truecaller.videocallerid.data.OutgoingVideoDetails> r7) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C15975e0.mo18056h(boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e3  */
    @Override // p193e.p194a.p947k.p969c.AbstractC15966d0
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo18055o(java.lang.String r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C15975e0.mo18055o(java.lang.String, s1.w.d):java.lang.Object");
    }
}
