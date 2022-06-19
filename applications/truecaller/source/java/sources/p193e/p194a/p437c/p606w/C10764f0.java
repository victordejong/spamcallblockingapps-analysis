package p193e.p194a.p437c.p606w;

import javax.inject.Inject;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p526c.p528d.AbstractC9893j0;
import p193e.p194a.p437c.p548h.AbstractC10255e;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import s1.z.c.l;
/* renamed from: e.a.c.w.f0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/f0.class */
public final class C10764f0 implements AbstractC10762e0 {

    /* renamed from: a */
    public final AbstractC9893j0 f31957a;

    /* renamed from: b */
    public final AbstractC10821g f31958b;

    /* renamed from: c */
    public final AbstractC10255e f31959c;

    /* renamed from: d */
    public final AbstractC9686e f31960d;

    /* renamed from: e.a.c.w.f0$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/f0$a.class */
    public static final class C10765a extends Exception {

        /* renamed from: a */
        public static final C10765a f31961a = new C10765a();
    }

    @Inject
    public C10764f0(AbstractC9893j0 abstractC9893j0, AbstractC10821g abstractC10821g, AbstractC10255e abstractC10255e, AbstractC9686e abstractC9686e) {
        l.e(abstractC9893j0, "smsBackupDao");
        l.e(abstractC10821g, "smsFeatureFilter");
        l.e(abstractC10255e, "insightsFilterFetcher");
        l.e(abstractC9686e, "environmentHelper");
        this.f31957a = abstractC9893j0;
        this.f31958b = abstractC10821g;
        this.f31959c = abstractC10255e;
        this.f31960d = abstractC9686e;
    }
}
