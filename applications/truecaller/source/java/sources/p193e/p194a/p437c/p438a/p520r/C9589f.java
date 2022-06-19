package p193e.p194a.p437c.p438a.p520r;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.smartcards.SmartCardCategory;
import java.util.List;
import p193e.p194a.p437c.p580r.p592m.AbstractC10651b;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.a.r.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/r/f.class */
public final class C9589f {

    /* renamed from: a */
    public static final List<AbstractC10651b> f29005a = i.T(new AbstractC10651b[]{AbstractC10651b.C10676w.f31766b, AbstractC10651b.C10657d.f31747b, AbstractC10651b.C10665l.f31755b, AbstractC10651b.C10677x.f31767b, AbstractC10651b.C10662i.f31752b, AbstractC10651b.C10675v.f31765b, AbstractC10651b.C10658e.f31748b, AbstractC10651b.C10661h.f31751b, AbstractC10651b.C10652a.f31742b, AbstractC10651b.C10660g.f31750b, AbstractC10651b.C10664k.f31754b, AbstractC10651b.C10671r.f31761b, AbstractC10651b.C10654b.f31744b, AbstractC10651b.C10659f.f31749b, AbstractC10651b.C10668o.f31758b, AbstractC10651b.C10656c.f31746b, AbstractC10651b.C10679z.f31768b, AbstractC10651b.C10655b0.f31745b, AbstractC10651b.C10673t.f31763b, AbstractC10651b.C10666m.f31756b, AbstractC10651b.C10653a0.f31743b, AbstractC10651b.C10670q.f31760b, AbstractC10651b.C10663j.f31753b, AbstractC10651b.C10669p.f31759b, AbstractC10651b.C10672s.f31762b, AbstractC10651b.C10674u.f31764b});

    /* renamed from: a */
    public static final int m27407a(SmartCardCategory smartCardCategory) {
        int i;
        l.e(smartCardCategory, "$this$resolveUpdatesIcon");
        switch (smartCardCategory.ordinal()) {
            case 0:
                i = C4078R.C4079drawable.ic_category_transactions;
                break;
            case 1:
                i = C4078R.C4079drawable.ic_category_loan;
                break;
            case 2:
                i = C4078R.C4079drawable.ic_category_travel;
                break;
            case 3:
                i = C4078R.C4079drawable.ic_category_flight;
                break;
            case 4:
                i = C4078R.C4079drawable.ic_category_bus;
                break;
            case 5:
                i = C4078R.C4079drawable.ic_category_train;
                break;
            case 6:
                i = C4078R.C4079drawable.ic_category_event;
                break;
            case 7:
                i = C4078R.C4079drawable.ic_category_bill;
                break;
            case 8:
                i = C4078R.C4079drawable.ic_category_recharge;
                break;
            case 9:
                i = C4078R.C4079drawable.ic_category_appointment;
                break;
            case 10:
                i = C4078R.C4079drawable.ic_category_delivery;
                break;
            case 11:
                i = C4078R.C4079drawable.ic_category_prescription;
                break;
            case 12:
                i = C4078R.C4079drawable.ic_category_school;
                break;
            case 13:
                i = C4078R.C4079drawable.ic_category_tax;
                break;
            case 14:
                i = C4078R.C4079drawable.ic_category_vaccine;
                break;
            case 15:
                i = C4078R.C4079drawable.ic_category_weather_alert;
                break;
            case 16:
                i = C4078R.C4079drawable.ic_category_balance;
                break;
            case 17:
                i = C4078R.C4079drawable.ic_category_investments;
                break;
            case 18:
                i = C4078R.C4079drawable.ic_category_data_usage;
                break;
            case 19:
                i = C4078R.C4079drawable.ic_category_security_alert;
                break;
            case 20:
                i = C4078R.C4079drawable.ic_category_missed_call;
                break;
            case 21:
                i = C4078R.C4079drawable.ic_category_voice_mail;
                break;
            case 22:
                i = C4078R.C4079drawable.ic_category_betting;
                break;
            case 23:
                i = C4078R.C4079drawable.ic_category_promotion;
                break;
            case 24:
                i = C4078R.C4079drawable.ic_category_otp;
                break;
            default:
                throw new s1.i();
        }
        return i;
    }

    /* renamed from: b */
    public static final String m27406b(AbstractC10651b abstractC10651b, Context context) {
        String str;
        l.e(abstractC10651b, "$this$resolveUpdatesLabel");
        l.e(context, AnalyticsConstants.CONTEXT);
        if (abstractC10651b instanceof AbstractC10651b.C10676w) {
            str = context.getString(C4078R.string.up_transaction);
            l.d(str, "context.getString(R.string.up_transaction)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10665l) {
            str = context.getString(C4078R.string.up_loan);
            l.d(str, "context.getString(R.string.up_loan)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10677x) {
            str = context.getString(C4078R.string.up_travel);
            l.d(str, "context.getString(R.string.up_travel)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10662i) {
            str = context.getString(C4078R.string.up_flight);
            l.d(str, "context.getString(R.string.up_flight)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10675v) {
            str = context.getString(C4078R.string.up_train);
            l.d(str, "context.getString(R.string.up_train)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10658e) {
            str = context.getString(C4078R.string.up_bus);
            l.d(str, "context.getString(R.string.up_bus)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10661h) {
            str = context.getString(C4078R.string.up_event);
            l.d(str, "context.getString(R.string.up_event)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10657d) {
            str = context.getString(C4078R.string.up_bill);
            l.d(str, "context.getString(R.string.up_bill)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10671r) {
            str = context.getString(C4078R.string.up_recharge);
            l.d(str, "context.getString(R.string.up_recharge)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10652a) {
            str = context.getString(C4078R.string.up_appointment);
            l.d(str, "context.getString(R.string.up_appointment)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10660g) {
            str = context.getString(C4078R.string.up_delivery);
            l.d(str, "context.getString(R.string.up_delivery)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10669p) {
            str = context.getString(C4078R.string.up_prescription);
            l.d(str, "context.getString(R.string.up_prescription)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10672s) {
            str = context.getString(C4078R.string.up_school);
            l.d(str, "context.getString(R.string.up_school)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10674u) {
            str = context.getString(C4078R.string.up_tax);
            l.d(str, "context.getString(R.string.up_tax)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10679z) {
            str = context.getString(C4078R.string.up_vaccine);
            l.d(str, "context.getString(R.string.up_vaccine)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10655b0) {
            str = context.getString(C4078R.string.up_weather_alert);
            l.d(str, "context.getString(R.string.up_weather_alert)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10654b) {
            str = context.getString(C4078R.string.up_balance);
            l.d(str, "context.getString(R.string.up_balance)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10664k) {
            str = context.getString(C4078R.string.up_investments);
            l.d(str, "context.getString(R.string.up_investments)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10659f) {
            str = context.getString(C4078R.string.up_data_usage);
            l.d(str, "context.getString(R.string.up_data_usage)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10673t) {
            str = context.getString(C4078R.string.up_security_alert);
            l.d(str, "context.getString(R.string.up_security_alert)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10666m) {
            str = context.getString(C4078R.string.up_missed_call);
            l.d(str, "context.getString(R.string.up_missed_call)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10653a0) {
            str = context.getString(C4078R.string.up_voice_mail);
            l.d(str, "context.getString(R.string.up_voice_mail)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10656c) {
            str = context.getString(C4078R.string.up_betting);
            l.d(str, "context.getString(R.string.up_betting)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10670q) {
            str = context.getString(C4078R.string.up_promotion);
            l.d(str, "context.getString(R.string.up_promotion)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10663j) {
            str = context.getString(C4078R.string.up_fraud);
            l.d(str, "context.getString(R.string.up_fraud)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10668o) {
            str = context.getString(C4078R.string.up_otp);
            l.d(str, "context.getString(R.string.up_otp)");
        } else if (abstractC10651b instanceof AbstractC10651b.C10678y) {
            str = abstractC10651b.f31741a;
        } else if (!(abstractC10651b instanceof AbstractC10651b.C10667n)) {
            throw new s1.i();
        } else {
            str = "";
        }
        return str;
    }

    /* renamed from: c */
    public static final String m27405c(SmartCardCategory smartCardCategory, Context context) {
        String str;
        l.e(smartCardCategory, "$this$resolveUpdatesLabel");
        l.e(context, AnalyticsConstants.CONTEXT);
        switch (smartCardCategory.ordinal()) {
            case 0:
                str = context.getString(C4078R.string.up_transaction);
                l.d(str, "context.getString(R.string.up_transaction)");
                break;
            case 1:
                str = context.getString(C4078R.string.up_loan);
                l.d(str, "context.getString(R.string.up_loan)");
                break;
            case 2:
                str = context.getString(C4078R.string.up_travel);
                l.d(str, "context.getString(R.string.up_travel)");
                break;
            case 3:
                str = context.getString(C4078R.string.up_flight);
                l.d(str, "context.getString(R.string.up_flight)");
                break;
            case 4:
                str = context.getString(C4078R.string.up_bus);
                l.d(str, "context.getString(R.string.up_bus)");
                break;
            case 5:
                str = context.getString(C4078R.string.up_train);
                l.d(str, "context.getString(R.string.up_train)");
                break;
            case 6:
                str = context.getString(C4078R.string.up_event);
                l.d(str, "context.getString(R.string.up_event)");
                break;
            case 7:
                str = context.getString(C4078R.string.up_bill);
                l.d(str, "context.getString(R.string.up_bill)");
                break;
            case 8:
                str = context.getString(C4078R.string.up_recharge);
                l.d(str, "context.getString(R.string.up_recharge)");
                break;
            case 9:
                str = context.getString(C4078R.string.up_appointment);
                l.d(str, "context.getString(R.string.up_appointment)");
                break;
            case 10:
                str = context.getString(C4078R.string.up_delivery);
                l.d(str, "context.getString(R.string.up_delivery)");
                break;
            case 11:
                str = context.getString(C4078R.string.up_prescription);
                l.d(str, "context.getString(R.string.up_prescription)");
                break;
            case 12:
                str = context.getString(C4078R.string.up_school);
                l.d(str, "context.getString(R.string.up_school)");
                break;
            case 13:
                str = context.getString(C4078R.string.up_tax);
                l.d(str, "context.getString(R.string.up_tax)");
                break;
            case 14:
                str = context.getString(C4078R.string.up_vaccine);
                l.d(str, "context.getString(R.string.up_vaccine)");
                break;
            case 15:
                str = context.getString(C4078R.string.up_weather_alert);
                l.d(str, "context.getString(R.string.up_weather_alert)");
                break;
            case 16:
                str = context.getString(C4078R.string.up_balance);
                l.d(str, "context.getString(R.string.up_balance)");
                break;
            case 17:
                str = context.getString(C4078R.string.up_investments);
                l.d(str, "context.getString(R.string.up_investments)");
                break;
            case 18:
                str = context.getString(C4078R.string.up_data_usage);
                l.d(str, "context.getString(R.string.up_data_usage)");
                break;
            case 19:
                str = context.getString(C4078R.string.up_security_alert);
                l.d(str, "context.getString(R.string.up_security_alert)");
                break;
            case 20:
                str = context.getString(C4078R.string.up_missed_call);
                l.d(str, "context.getString(R.string.up_missed_call)");
                break;
            case 21:
                str = context.getString(C4078R.string.up_voice_mail);
                l.d(str, "context.getString(R.string.up_voice_mail)");
                break;
            case 22:
                str = context.getString(C4078R.string.up_betting);
                l.d(str, "context.getString(R.string.up_betting)");
                break;
            case 23:
                str = context.getString(C4078R.string.up_promotion);
                l.d(str, "context.getString(R.string.up_promotion)");
                break;
            case 24:
                str = context.getString(C4078R.string.up_otp);
                l.d(str, "context.getString(R.string.up_otp)");
                break;
            default:
                throw new s1.i();
        }
        return str;
    }
}
