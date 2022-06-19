package p193e.p194a.p437c.p598v.p599f.p601b;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import javax.inject.Inject;
import p193e.p194a.p437c.p570j.AbstractC10439b;
import p193e.p194a.p437c.p570j.AbstractC10442e;
import p193e.p194a.p437c.p570j.AbstractC10443f;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p598v.p604i.C10748g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.v.f.b.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/v/f/b/a.class */
public final class C10720a implements AbstractC10722b {

    /* renamed from: a */
    public final AbstractC10439b f31874a;

    /* renamed from: b */
    public final AbstractC10442e<AbstractC10443f.C10444a> f31875b;

    /* renamed from: e.a.c.v.f.b.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/v/f/b/a$a.class */
    public static final class C10721a extends m implements l<String, s> {

        /* renamed from: b */
        public final /* synthetic */ Context f31876b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10721a(Context context) {
            super(1);
            this.f31876b = context;
        }

        /* renamed from: d */
        public Object m25682d(Object obj) {
            String str = (String) obj;
            s1.z.c.l.e(str, "it");
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setFlags(268435456);
            this.f31876b.startActivity(intent);
            return s.a;
        }
    }

    @Inject
    public C10720a(AbstractC10439b abstractC10439b, AbstractC10442e<AbstractC10443f.C10444a> abstractC10442e) {
        s1.z.c.l.e(abstractC10439b, "deeplinkEnricher");
        s1.z.c.l.e(abstractC10442e, "deepLinkFactory");
        this.f31874a = abstractC10439b;
        this.f31875b = abstractC10442e;
    }

    @Override // p193e.p194a.p437c.p598v.p599f.p601b.AbstractC10722b
    /* renamed from: a */
    public Object mo25681a(Context context, C10748g c10748g, d<? super s> dVar) {
        float f;
        s sVar = s.a;
        Double billAmount = c10748g.f31935a.getBillAmount();
        AbstractC10442e<AbstractC10443f.C10444a> abstractC10442e = this.f31875b;
        String vendorName = c10748g.f31935a.getVendorName();
        String m25925n0 = C10480a.m25925n0(c10748g);
        if (billAmount == null && s1.z.c.l.a(m25925n0, "PrepaidExpiry")) {
            f = 0.0f;
        } else if (billAmount == null) {
            throw new IllegalStateException("Due amount cannot be null");
        } else {
            f = (float) billAmount.doubleValue();
        }
        AbstractC10443f abstractC10443f = (AbstractC10443f.C10444a) abstractC10442e.mo26130c(vendorName, f, c10748g.f31935a.getAccountNumber(), C10480a.m25925n0(c10748g));
        if (abstractC10443f == null) {
            return abstractC10443f == a.a ? abstractC10443f : sVar;
        }
        this.f31874a.mo26135a(abstractC10443f, new C10721a(context));
        return sVar;
    }
}
