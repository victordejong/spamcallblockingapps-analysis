package p193e.p194a.p682e.p683a;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.razorpay.AnalyticsConstants;
import com.truecaller.contextcall.utils.ContextCallPromoType;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.promotion.PremiumHomeTabPromo;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.e.a.s3 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/s3.class */
public final class C12814s3 implements AbstractC12809r3 {

    /* renamed from: a */
    public final AbstractC19215b f37283a;

    /* renamed from: e.a.e.a.s3$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/s3$a.class */
    public static final class DialogInterface$OnClickListenerC12815a implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ List f37285b;

        public DialogInterface$OnClickListenerC12815a(List list) {
            C12814s3.this = r4;
            this.f37285b = list;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (i != 0) {
                C12814s3.this.f37283a.mo13852a1((String) this.f37285b.get(i - 1));
            } else {
                C12814s3.this.f37283a.mo13852a1(null);
            }
            dialogInterface.dismiss();
        }
    }

    @Inject
    public C12814s3(AbstractC19215b abstractC19215b) {
        l.e(abstractC19215b, "qaSettings");
        this.f37283a = abstractC19215b;
    }

    /* renamed from: a */
    public final Map<String, AbstractC6798d1> m22650a() {
        int i = 16;
        List T = i.T(new AbstractC6798d1[]{AbstractC6798d1.C6825u.f22372b, AbstractC6798d1.C6828x.f22375b, AbstractC6798d1.C6814j.f22361b, new AbstractC6798d1.C6810f0(999), AbstractC6798d1.C6809f.f22356b, AbstractC6798d1.C6830z.f22377b, AbstractC6798d1.C6821q.f22368b, AbstractC6798d1.C6813i.f22360b, AbstractC6798d1.C6824t.f22371b, AbstractC6798d1.C6827w.f22374b, AbstractC6798d1.C6817m.f22364b, AbstractC6798d1.C6818n.f22365b, AbstractC6798d1.C6811g.f22358b, AbstractC6798d1.C6826v.f22373b, AbstractC6798d1.C6829y.f22376b, AbstractC6798d1.C6808e0.f22355b, AbstractC6798d1.C6804c0.f22351b, AbstractC6798d1.C6812h.f22359b, AbstractC6798d1.C6799a.f22346b, AbstractC6798d1.C6806d0.f22353b, AbstractC6798d1.C6805d.f22352b, AbstractC6798d1.C6819o.f22366b, AbstractC6798d1.C6801b.f22348b, AbstractC6798d1.C6803c.f22350b});
        int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(T, 10));
        if (m3942Y1 >= 16) {
            i = m3942Y1;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(i);
        for (Object obj : T) {
            linkedHashMap.put(((AbstractC6798d1) obj).f22345a, obj);
        }
        return i.o0(linkedHashMap, i.W(new k[]{new k("ContextCall (NEW_USER)", new AbstractC6798d1.C6807e(ContextCallPromoType.NEW_USER)), new k("ContextCall (REMINDER)", new AbstractC6798d1.C6807e(ContextCallPromoType.REMINDER)), new k("Premium (CAMPAIGN)", new AbstractC6798d1.C6822r(new PremiumHomeTabPromo.C4352a(PremiumHomeTabPromo.Type.CAMPAIGN, null, null))), new k("Premium (GENERIC)", new AbstractC6798d1.C6822r(new PremiumHomeTabPromo.C4352a(PremiumHomeTabPromo.Type.GENERIC, null, null))), new k("PremiumBlocking (SPAM_TAB_PROMO)", new AbstractC6798d1.C6823s(PremiumLaunchContext.SPAM_TAB_PROMO)), new k("PremiumBlocking (CALL_TAB_PROMO)", new AbstractC6798d1.C6823s(PremiumLaunchContext.CALL_TAB_PROMO))}));
    }

    /* renamed from: b */
    public AbstractC6798d1 m22649b() {
        String mo13834x2 = this.f37283a.mo13834x2();
        if (mo13834x2 != null) {
            return (AbstractC6798d1) ((LinkedHashMap) m22650a()).get(mo13834x2);
        }
        return null;
    }

    /* renamed from: c */
    public final void m22648c(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        List E0 = i.E0(((LinkedHashMap) m22650a()).keySet());
        AlertDialog.Builder title = new AlertDialog.Builder(context).setTitle("Force inbox promo");
        Object[] array = E0.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        title.setSingleChoiceItems((CharSequence[]) i.t0(new String[]{"None"}, array), i.J(E0, this.f37283a.mo13834x2()) + 1, new DialogInterface$OnClickListenerC12815a(E0)).show();
    }
}
