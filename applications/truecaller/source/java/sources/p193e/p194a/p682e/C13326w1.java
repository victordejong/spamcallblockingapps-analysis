package p193e.p194a.p682e;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.p1024o2.C17013c;
import p193e.p194a.p1011l.p1025p2.C17029a0;
import p193e.p194a.p1011l.p1025p2.C17099i;
import p193e.p194a.p1193r5.AbstractC19954i0;
import p193e.p194a.p937j4.p939b.p940a.C15569f;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.e.w1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/w1.class */
public final class C13326w1 {

    /* renamed from: a */
    public final AbstractC19954i0 f38727a;

    /* renamed from: b */
    public final C15569f f38728b;

    /* renamed from: c */
    public final C17029a0 f38729c;

    /* renamed from: d */
    public final C17099i f38730d;

    /* renamed from: e */
    public final C17013c f38731e;

    /* renamed from: f */
    public final f f38732f;

    /* renamed from: g */
    public final f f38733g;

    /* renamed from: e.a.e.w1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/w1$a.class */
    public interface AbstractC13327a {
        /* renamed from: J3 */
        void mo21925J3(int i, int i2);
    }

    @Inject
    public C13326w1(AbstractC19954i0 abstractC19954i0, C15569f c15569f, C17029a0 c17029a0, C17099i c17099i, C17013c c17013c, @Named("IO") f fVar, @Named("UI") f fVar2) {
        l.e(abstractC19954i0, "whoViewedMeManager");
        l.e(c15569f, "notificationDao");
        l.e(c17029a0, "premiumBlockingFeaturesLostNotifier");
        l.e(c17099i, "friendUpgradedNotifier");
        l.e(c17013c, "consumablePurchaseLostNotifier");
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        this.f38727a = abstractC19954i0;
        this.f38728b = c15569f;
        this.f38729c = c17029a0;
        this.f38730d = c17099i;
        this.f38731e = c17013c;
        this.f38732f = fVar;
        this.f38733g = fVar2;
    }
}
