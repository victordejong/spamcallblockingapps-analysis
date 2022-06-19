package p193e.p194a.p703e3.p709j;

import android.telephony.TelephonyManager;
import com.truecaller.blocking.FilterAction;
import com.truecaller.blocking.FilterMatch;
import java.util.Locale;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p703e3.p710k.AbstractC13428d;
import q3.a.i0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.call_alert.receive_notification.CallAlertNotificationUIImpl$isCallerBlocked$2", f = "CallAlertNotificationUI.kt", l = {172}, m = "invokeSuspend")
/* renamed from: e.a.e3.j.h */
/* loaded from: classes6-dex2jar.jar:e/a/e3/j/h.class */
public final class C13423h extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public int f38977e;

    /* renamed from: f */
    public final /* synthetic */ C13416g f38978f;

    /* renamed from: g */
    public final /* synthetic */ String f38979g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13423h(C13416g c13416g, String str, d dVar) {
        super(2, dVar);
        this.f38978f = c13416g;
        this.f38979g = str;
    }

    /* renamed from: i */
    public final d<s> m21836i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13423h(this.f38978f, this.f38979g, dVar);
    }

    /* renamed from: k */
    public final Object m21835k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13423h(this.f38978f, this.f38979g, dVar).m21834s(s.a);
    }

    /* renamed from: s */
    public final Object m21834s(Object obj) {
        String str;
        String str2;
        a aVar = a.a;
        int i = this.f38977e;
        boolean z = true;
        if (i == 0) {
            C25225a.m3932a3(obj);
            TelephonyManager m13541j0 = C19291g.m13541j0(this.f38978f.f38944f);
            String networkCountryIso = m13541j0.getNetworkCountryIso();
            String str3 = null;
            if (networkCountryIso != null) {
                Locale locale = Locale.ENGLISH;
                l.d(locale, "Locale.ENGLISH");
                str = networkCountryIso.toUpperCase(locale);
                l.d(str, "(this as java.lang.String).toUpperCase(locale)");
            } else {
                str = null;
            }
            String simCountryIso = m13541j0.getSimCountryIso();
            if (simCountryIso != null) {
                Locale locale2 = Locale.ENGLISH;
                l.d(locale2, "Locale.ENGLISH");
                str2 = simCountryIso.toUpperCase(locale2);
                l.d(str2, "(this as java.lang.String).toUpperCase(locale)");
            } else {
                str2 = null;
            }
            AbstractC13428d abstractC13428d = this.f38978f.f38948j;
            String str4 = this.f38979g;
            String str5 = str2;
            if (str != null) {
                if (Boolean.valueOf(!r.p(str)).booleanValue()) {
                    str3 = str;
                }
                str5 = str2;
                if (str3 != null) {
                    str5 = str3;
                }
            }
            this.f38977e = 1;
            Object mo19742a = abstractC13428d.mo19742a(str4, str5, true, this);
            obj = mo19742a;
            if (mo19742a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (((FilterMatch) obj).f10453b != FilterAction.FILTER_BLACKLISTED) {
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
