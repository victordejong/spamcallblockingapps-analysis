package p193e.p194a.p703e3;

import androidx.fragment.app.FragmentManager;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.data.entity.Number;
import java.util.Objects;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p703e3.p704e.C13352a;
import p193e.p194a.p703e3.p704e.C13353b;
import p193e.p194a.p703e3.p706g.C13355a;
import p193e.p194a.p703e3.p708i.AbstractC13401b;
import p193e.p194a.p703e3.p709j.AbstractC13409b;
import p193e.p194a.p703e3.p709j.AbstractC13415f;
import p193e.p194a.p703e3.p709j.C13410c;
import p193e.p194a.p703e3.p709j.C13413d;
import p193e.p194a.p703e3.p710k.AbstractC13433i;
import p193e.p194a.p703e3.p710k.AbstractC13461p;
import q3.a.h1;
import q3.a.j0;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.e3.b */
/* loaded from: classes6-dex2jar.jar:e/a/e3/b.class */
public final class C13349b implements AbstractC13348a {

    /* renamed from: a */
    public final AbstractC13409b f38758a;

    /* renamed from: b */
    public final a<AbstractC13415f> f38759b;

    /* renamed from: c */
    public final a<AbstractC13433i> f38760c;

    /* renamed from: d */
    public final a<AbstractC19854f<AbstractC13401b>> f38761d;

    /* renamed from: e */
    public final AbstractC13461p f38762e;

    @Inject
    public C13349b(AbstractC13409b abstractC13409b, a<AbstractC13415f> aVar, a<AbstractC13433i> aVar2, a<AbstractC19854f<AbstractC13401b>> aVar3, AbstractC13461p abstractC13461p) {
        l.e(abstractC13409b, "callAlertNotificationHandler");
        l.e(aVar, "callAlertNotificationUI");
        l.e(aVar2, "callAlertSimSupport");
        l.e(aVar3, "callAlertNetwork");
        l.e(abstractC13461p, "callSilenceHelper");
        this.f38758a = abstractC13409b;
        this.f38759b = aVar;
        this.f38760c = aVar2;
        this.f38761d = aVar3;
        this.f38762e = abstractC13461p;
    }

    @Override // p193e.p194a.p703e3.AbstractC13348a
    /* renamed from: a */
    public void mo21892a(String str) {
        l.e(str, "number");
        ((AbstractC13415f) this.f38759b.get()).mo21847a(str);
    }

    @Override // p193e.p194a.p703e3.AbstractC13348a
    /* renamed from: b */
    public boolean mo21891b(int i) {
        return ((AbstractC13433i) this.f38760c.get()).mo21832b(i);
    }

    @Override // p193e.p194a.p703e3.AbstractC13348a
    /* renamed from: c */
    public boolean mo21890c(int i) {
        return ((AbstractC13433i) this.f38760c.get()).mo21831c(i);
    }

    @Override // p193e.p194a.p703e3.AbstractC13348a
    /* renamed from: d */
    public Object mo21889d(String str, d<? super Boolean> dVar) {
        return this.f38762e.mo21791d(str, dVar);
    }

    @Override // p193e.p194a.p703e3.AbstractC13348a
    /* renamed from: e */
    public AbstractC19891x<C13353b> mo21888e(String str, Number number) {
        l.e(str, "callState");
        l.e(number, "number");
        return ((AbstractC13401b) ((AbstractC19854f) this.f38761d.get()).mo11854a()).mo21866e(str, number);
    }

    @Override // p193e.p194a.p703e3.AbstractC13348a
    /* renamed from: f */
    public void mo21887f(FragmentManager fragmentManager) {
        l.e(fragmentManager, "fragmentManager");
        Objects.requireNonNull(C13355a.f38791g);
        l.e(fragmentManager, "fragmentManager");
        new C13355a().show(fragmentManager, C13355a.class.getSimpleName());
    }

    @Override // p193e.p194a.p703e3.AbstractC13348a
    /* renamed from: g */
    public void mo21886g(C13352a c13352a, boolean z) {
        String str;
        String str2;
        Long l;
        l.e(c13352a, "callAlertNotification");
        C13410c c13410c = (C13410c) this.f38758a;
        Objects.requireNonNull(c13410c);
        l.e(c13352a, RemoteMessageConst.NOTIFICATION);
        String str3 = c13352a.f38764b;
        if (str3 == null || (str = c13352a.f38765c) == null || (str2 = c13352a.f38766d) == null || (l = c13352a.f38769g) == null) {
            return;
        }
        long longValue = l.longValue();
        long j = 1000;
        String str4 = c13352a.f38770h;
        String str5 = c13352a.f38772j;
        String str6 = c13352a.f38771i;
        Long l2 = c13352a.f38773k;
        Long l3 = c13352a.f38774l;
        String str7 = c13352a.f38775m;
        Boolean bool = c13352a.f38776n;
        boolean booleanValue = bool != null ? bool.booleanValue() : false;
        String str8 = "Handling call alert notification: " + c13352a;
        s1.a.a.a.v0.f.d.w2(h1.a, c13410c.f38907f, (j0) null, new C13413d(c13410c, str5, str6, str3, str7, l2, l3, booleanValue, str, str2, c13352a, str4, longValue * j, z, null), 2, (Object) null);
    }
}
