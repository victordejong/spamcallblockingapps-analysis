package p193e.p194a.p682e;

import java.lang.ref.WeakReference;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.ui.TruecallerInitNotificationHelper$fetchNotificationCount$1", f = "TruecallerInitNotificationHelper.kt", l = {34, 46, 50}, m = "invokeSuspend")
/* renamed from: e.a.e.x1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/x1.class */
public final class C13330x1 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f38739e;

    /* renamed from: f */
    public int f38740f;

    /* renamed from: g */
    public final /* synthetic */ C13326w1 f38741g;

    /* renamed from: h */
    public final /* synthetic */ WeakReference f38742h;

    @e(c = "com.truecaller.ui.TruecallerInitNotificationHelper$fetchNotificationCount$1$newNotificationsCount$1", f = "TruecallerInitNotificationHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.e.x1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/x1$a.class */
    public static final class C13331a extends i implements p<i0, d<? super Integer>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13331a(d dVar) {
            super(2, dVar);
            C13330x1.this = r5;
        }

        /* renamed from: i */
        public final d<s> m21913i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13331a(dVar);
        }

        /* renamed from: k */
        public final Object m21912k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C13330x1 c13330x1 = C13330x1.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return new Integer(c13330x1.f38741g.f38728b.m18668l());
        }

        /* renamed from: s */
        public final Object m21911s(Object obj) {
            C25225a.m3932a3(obj);
            return new Integer(C13330x1.this.f38741g.f38728b.m18668l());
        }
    }

    @e(c = "com.truecaller.ui.TruecallerInitNotificationHelper$fetchNotificationCount$1$notificationShown$1", f = "TruecallerInitNotificationHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.e.x1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/x1$b.class */
    public static final class C13332b extends i implements p<i0, d<? super Boolean>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13332b(d dVar) {
            super(2, dVar);
            C13330x1.this = r5;
        }

        /* renamed from: i */
        public final d<s> m21910i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13332b(dVar);
        }

        /* renamed from: k */
        public final Object m21909k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C13330x1 c13330x1 = C13330x1.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return Boolean.valueOf(c13330x1.f38741g.f38730d.m16535b(false));
        }

        /* renamed from: s */
        public final Object m21908s(Object obj) {
            C25225a.m3932a3(obj);
            return Boolean.valueOf(C13330x1.this.f38741g.f38730d.m16535b(false));
        }
    }

    @e(c = "com.truecaller.ui.TruecallerInitNotificationHelper$fetchNotificationCount$1$whoViewedMeBadgeCount$1", f = "TruecallerInitNotificationHelper.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.e.x1$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/x1$c.class */
    public static final class C13333c extends i implements p<i0, d<? super Integer>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13333c(d dVar) {
            super(2, dVar);
            C13330x1.this = r5;
        }

        /* renamed from: i */
        public final d<s> m21907i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13333c(dVar);
        }

        /* renamed from: k */
        public final Object m21906k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C13330x1 c13330x1 = C13330x1.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return new Integer(c13330x1.f38741g.f38727a.mo11761b() ? c13330x1.f38741g.f38727a.mo11754i() : 0);
        }

        /* renamed from: s */
        public final Object m21905s(Object obj) {
            C25225a.m3932a3(obj);
            return new Integer(C13330x1.this.f38741g.f38727a.mo11761b() ? C13330x1.this.f38741g.f38727a.mo11754i() : 0);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13330x1(C13326w1 c13326w1, WeakReference weakReference, d dVar) {
        super(2, dVar);
        this.f38741g = c13326w1;
        this.f38742h = weakReference;
    }

    /* renamed from: i */
    public final d<s> m21916i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13330x1(this.f38741g, this.f38742h, dVar);
    }

    /* renamed from: k */
    public final Object m21915k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13330x1(this.f38741g, this.f38742h, dVar).m21914s(s.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0301  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21914s(java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 782
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.C13330x1.m21914s(java.lang.Object):java.lang.Object");
    }
}
