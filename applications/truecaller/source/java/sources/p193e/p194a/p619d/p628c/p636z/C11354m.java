package p193e.p194a.p619d.p628c.p636z;

import com.truecaller.voip.VoipCallOptions;
import com.truecaller.voip.util.VoipAnalyticsContext;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p619d.p627b0.AbstractC11162b;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import p193e.p194a.p619d.p637c0.AbstractC11462q0;
import p193e.p194a.p619d.p637c0.p641y1.AbstractC11558b;
import q3.a.p1;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.d.c.z.m */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/z/m.class */
public final class C11354m extends AbstractC20574a<AbstractC11357o> implements AbstractC11356n {

    /* renamed from: d */
    public p1 f33383d;

    /* renamed from: e */
    public final f f33384e;

    /* renamed from: f */
    public final AbstractC11462q0 f33385f;

    /* renamed from: g */
    public final AbstractC11558b f33386g;

    /* renamed from: h */
    public final AbstractC11421j1 f33387h;

    /* renamed from: i */
    public final AbstractC11705f f33388i;

    @e(c = "com.truecaller.voip.ui.calldetails.VoipGroupCallDetailsPresenter", f = "VoipGroupCallDetailsPresenter.kt", l = {69}, m = "getSearchedPeerItem")
    /* renamed from: e.a.d.c.z.m$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/z/m$a.class */
    public static final class C11355a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f33389d;

        /* renamed from: e */
        public int f33390e;

        /* renamed from: g */
        public Object f33392g;

        /* renamed from: h */
        public Object f33393h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11355a(d dVar) {
            super(dVar);
            C11354m.this = r4;
        }

        /* renamed from: s */
        public final Object m24783s(Object obj) {
            this.f33389d = obj;
            this.f33390e |= Integer.MIN_VALUE;
            return C11354m.this.m24785Ij(null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C11354m(@Named("UI") f fVar, AbstractC11462q0 abstractC11462q0, AbstractC11558b abstractC11558b, AbstractC11421j1 abstractC11421j1, AbstractC11705f abstractC11705f) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC11462q0, "groupCallDetailsRepository");
        l.e(abstractC11558b, "voipAvailabilityUtil");
        l.e(abstractC11421j1, "voipSupport");
        l.e(abstractC11705f, "voip");
        this.f33384e = fVar;
        this.f33385f = abstractC11462q0;
        this.f33386g = abstractC11558b;
        this.f33387h = abstractC11421j1;
        this.f33388i = abstractC11705f;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ec  */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m24785Ij(p193e.p194a.p619d.p627b0.AbstractC11162b.C11164b r8, s1.w.d<? super p193e.p194a.p619d.p628c.p636z.AbstractC11358p.C11360b> r9) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p628c.p636z.C11354m.m24785Ij(e.a.d.b0.b$b, s1.w.d):java.lang.Object");
    }

    /* renamed from: Jj */
    public void m24784Jj(AbstractC11162b.C11164b c11164b) {
        l.e(c11164b, "searchedPeer");
        this.f33388i.mo24182k(c11164b.f33007c, VoipAnalyticsContext.CONTEXT_VOIP_GROUP_CALL_HISTORY.getValue(), new VoipCallOptions(0L, 0L, 3));
    }
}
