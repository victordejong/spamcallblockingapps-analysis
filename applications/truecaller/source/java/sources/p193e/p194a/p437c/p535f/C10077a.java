package p193e.p194a.p437c.p535f;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.InsightsDomain;
import java.util.Map;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.f.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/f/a.class */
public final class C10077a {

    /* renamed from: b */
    public static final Map<String, k<String, String>> f29973b = i.W(new k[]{new k("autdbt", new k("Auto Debit", (Object) null)), new k("netb", new k("Net Banking", (Object) null)), new k("withdraw", new k("ATM Withdrawal", (Object) null)), new k("imps", new k("IMPS", "transfer")), new k("neft", new k("NEFT", "transfer")), new k(AnalyticsConstants.UPI, new k("UPI", "transfer")), new k("rtgs", new k("RTGS", "transfer")), new k("bill", new k("Bill", AnalyticsConstants.PAYMENT))});

    /* renamed from: c */
    public static final Map<String, String> f29974c = i.W(new k[]{new k("expense", "Paid"), new k("transfer", "Transferred"), new k("income", "Received")});

    /* renamed from: d */
    public static final Map<String, String> f29975d = i.W(new k[]{new k("acc", "Account"), new k(AnalyticsConstants.CARD, "Card"), new k("creditcard", "Credit Card"), new k("debitcard", "Debit Card"), new k("cheque", "Cheque"), new k(AnalyticsConstants.WALLET, "Wallet"), new k("uan", "Account"), new k("loan", "Loan Account"), new k("policy", "Policy"), new k("consumer", "Consumer"), new k("mobile", "Mobile")});

    /* renamed from: a */
    public final AbstractC9686e f29976a;

    public C10077a(AbstractC9686e abstractC9686e) {
        l.e(abstractC9686e, "environmentHelper");
        this.f29976a = abstractC9686e;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:212:0x07ed  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x08ea  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x08ef  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x08fe  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0904  */
    /* JADX WARN: Type inference failed for: r0v437, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p194a.p437c.p580r.AbstractC10518b.C10519a m26707a(com.truecaller.insights.models.InsightsDomain.C4057a r20, java.util.List<? extends com.truecaller.insights.binders.utils.BankUiProperties> r21) {
        /*
            Method dump skipped, instructions count: 2451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p535f.C10077a.m26707a(com.truecaller.insights.models.InsightsDomain$a, java.util.List):e.a.c.r.b$a");
    }

    /* renamed from: b */
    public final String m26706b(InsightsDomain.C4057a c4057a) {
        String str;
        String m35259f = c4057a.m35259f();
        if (m35259f.hashCode() == -1309357992 && m35259f.equals("expense")) {
            String m35257h = c4057a.m35257h();
            str = (m35257h.hashCode() == -940242166 && m35257h.equals("withdraw")) ? "ATM withdrawal" : "Paid";
        } else {
            str = f29974c.get(c4057a.m35259f());
            if (str == null) {
                str = "";
            }
        }
        return str;
    }

    /* renamed from: c */
    public final String m26705c(InsightsDomain.C4057a c4057a) {
        if (!l.a(c4057a.m35259f(), "transfer") || !l.a(c4057a.m35257h(), "bill")) {
            return null;
        }
        return "Bill Payment";
    }

    /* renamed from: d */
    public final String m26704d(InsightsDomain.C4057a c4057a) {
        if (!l.a(c4057a.m35256i(), "credit") || !l.a(c4057a.m35263b(), AnalyticsConstants.WALLET) || !l.a(c4057a.m35259f(), "income") || !(!l.a(c4057a.m35257h(), "refund"))) {
            return null;
        }
        return "Credited to wallet";
    }
}
