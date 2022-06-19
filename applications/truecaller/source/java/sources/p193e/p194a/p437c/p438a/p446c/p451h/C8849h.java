package p193e.p194a.p437c.p438a.p446c.p451h;

import androidx.activity.result.ActivityResultRegistry;
import com.razorpay.AnalyticsConstants;
import p1727n3.p1728a.p1730e.AbstractC25373a;
import p193e.p194a.p437c.p524b.AbstractC9689h;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.c.a.c.h.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/h.class */
public final class C8849h {

    /* renamed from: a */
    public final l<Boolean, s> f26961a;

    /* renamed from: e.a.c.a.c.h.h$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/h$a.class */
    public static final class C8850a<O> implements AbstractC25373a<Boolean> {
        public C8850a() {
            C8849h.this = r4;
        }

        @Override // p1727n3.p1728a.p1730e.AbstractC25373a
        /* renamed from: a */
        public void mo3695a(Boolean bool) {
            Boolean bool2 = bool;
            l<Boolean, s> lVar = C8849h.this.f26961a;
            s1.z.c.l.d(bool2, AnalyticsConstants.SUCCESS);
            lVar.d(bool2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C8849h(ActivityResultRegistry activityResultRegistry, AbstractC9689h abstractC9689h, l<? super Boolean, s> lVar) {
        s1.z.c.l.e(activityResultRegistry, "registry");
        s1.z.c.l.e(abstractC9689h, "permissionHelper");
        s1.z.c.l.e(lVar, "result");
        this.f26961a = lVar;
        try {
            activityResultRegistry.m43171c(C8849h.class.getSimpleName(), new C8848g(abstractC9689h), new C8850a()).mo3694a(s.a, null);
        } catch (SecurityException e) {
            C10263b.f30414d.m26508b(e, null);
        }
    }
}
