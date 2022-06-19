package p193e.p194a.p765f5.p768g;

import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import com.truecaller.swish.C4591R;
import com.truecaller.swish.deeplink.data.SwishResultDto;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.swish.deeplink.SwishResultPresenter$maybeSendPaymentSuccessFlash$1", f = "SwishResultPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.f5.g.g */
/* loaded from: classes14-dex2jar.jar:e/a/f5/g/g.class */
public final class C14060g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C14061h f40648e;

    /* renamed from: f */
    public final /* synthetic */ SwishResultDto f40649f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14060g(C14061h c14061h, SwishResultDto swishResultDto, d dVar) {
        super(2, dVar);
        this.f40648e = c14061h;
        this.f40649f = swishResultDto;
    }

    /* renamed from: i */
    public final d<s> m20809i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14060g(this.f40648e, this.f40649f, dVar);
    }

    /* renamed from: k */
    public final Object m20808k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14060g(this.f40648e, this.f40649f, dVar).m20807s(s.a);
    }

    /* renamed from: s */
    public final Object m20807s(Object obj) {
        String payee;
        Double amount;
        s sVar = s.a;
        C25225a.m3932a3(obj);
        if (!this.f40648e.f40657k.getBoolean("flash_disabled") && this.f40648e.f40653g.mo20818c() && (payee = this.f40649f.getPayee()) != null && (amount = this.f40649f.getAmount()) != null) {
            double doubleValue = amount.doubleValue();
            try {
                Contact m17364h = this.f40648e.f40656j.m17364h(this.f40648e.m20806Ij(this.f40649f));
                if (m17364h != null && m17364h.m35572B0()) {
                    long parseLong = Long.parseLong(payee);
                    String format = this.f40648e.f40650d.format(doubleValue);
                    C14061h c14061h = this.f40648e;
                    AbstractC21631b abstractC21631b = c14061h.f40655i;
                    String[] mo13761i = c14061h.f40654h.mo13761i(C4591R.array.swish_flash_buttons);
                    l.d(mo13761i, "resourceProvider.getStri…rray.swish_flash_buttons)");
                    List<String> m3897h3 = C25225a.m3897h3(mo13761i);
                    String mo13768b = this.f40648e.f40654h.mo13768b(C4591R.string.swish_flash_message, format);
                    l.d(mo13768b, "resourceProvider.getStri…message, formattedAmount)");
                    abstractC21631b.mo9298t(parseLong, m3897h3, mo13768b);
                }
                return sVar;
            } catch (NumberFormatException e) {
                AssertionUtil.report("Cannot parse Swish payment result number");
            }
        }
        return sVar;
    }
}
