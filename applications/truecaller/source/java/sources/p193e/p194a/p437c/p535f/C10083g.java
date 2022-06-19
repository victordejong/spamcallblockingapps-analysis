package p193e.p194a.p437c.p535f;

import com.truecaller.insights.C4030R;
import com.truecaller.insights.models.InsightsDomain;
import com.truecaller.insights.utils.DateFormat;
import java.util.Locale;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p535f.p537k.AbstractC10098f;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.AbstractC10518b;
import s1.f0.r;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.i;
import w3.b.a.h;
import w3.b.a.i0.a;
import w3.b.a.p;
/* renamed from: e.a.c.f.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/f/g.class */
public final class C10083g {

    /* renamed from: a */
    public final AbstractC9691j f29989a;

    @Inject
    public C10083g(AbstractC9691j abstractC9691j) {
        l.e(abstractC9691j, "insightsStatusProvider");
        this.f29989a = abstractC9691j;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public final AbstractC10098f m26696a(InsightsDomain.C4062f c4062f, String str) {
        AbstractC10098f.C10104f c10104f;
        switch (str.hashCode()) {
            case -1271823248:
                if (str.equals("flight")) {
                    c10104f = AbstractC10098f.C10102d.f30020d;
                    break;
                }
                c10104f = AbstractC10098f.C10099a.f30017d;
                break;
            case 97920:
                if (str.equals("bus")) {
                    c10104f = AbstractC10098f.C10100b.f30018d;
                    break;
                }
                c10104f = AbstractC10098f.C10099a.f30017d;
                break;
            case 92899676:
                if (str.equals("alert")) {
                    c10104f = m26696a(c4062f, c4062f.m35225k());
                    break;
                }
                c10104f = AbstractC10098f.C10099a.f30017d;
                break;
            case 110621192:
                if (str.equals("train")) {
                    c10104f = AbstractC10098f.C10104f.f30022d;
                    break;
                }
                c10104f = AbstractC10098f.C10099a.f30017d;
                break;
            default:
                c10104f = AbstractC10098f.C10099a.f30017d;
                break;
        }
        return c10104f;
    }

    /* renamed from: b */
    public final void m26695b(InsightsDomain.C4062f c4062f, AbstractC10518b.C10524f.C10525a c10525a) {
        b m35233c = c4062f.m35233c();
        if (m35233c != null) {
            w3.b.a.i0.b a = a.a(DateFormat.hh_mm_aa.getPattern());
            StringBuilder sb = new StringBuilder();
            sb.append(m35233c.q());
            int q = m35233c.q();
            if (q >= 20) {
                q %= 10;
            }
            sb.append(q != 1 ? q != 2 ? q != 3 ? "th" : "rd" : "nd" : "st");
            sb.append(' ');
            b.a A = m35233c.A();
            l.d(A, "dateTime.monthOfYear()");
            sb.append(A.b());
            String sb2 = sb.toString();
            l.e(sb2, "value");
            c10525a.f31383d = sb2;
            String f = a.f(m35233c);
            boolean z = !r.n(f, "12:00 AM", true);
            c10525a.f31404y = !z;
            if (!z) {
                f = null;
            }
            if (f == null) {
                return;
            }
            l.e(f, "value");
            c10525a.f31384e = f;
        }
    }

    /* renamed from: c */
    public final void m26694c(InsightsDomain.C4062f c4062f, AbstractC10518b.C10524f.C10525a c10525a, String str) {
        String str2 = str;
        if (r.p(str)) {
            str2 = c4062f.m35226j();
        }
        switch (str2.hashCode()) {
            case -1271823248:
                if (!str2.equals("flight")) {
                    return;
                }
                c10525a.f31399t = C4030R.C4031drawable.ic_tcx_travel_flight;
                return;
            case 97920:
                if (!str2.equals("bus")) {
                    return;
                }
                c10525a.f31399t = C4030R.C4031drawable.ic_tcx_travel_bus;
                return;
            case 92899676:
                if (!str2.equals("alert")) {
                    return;
                }
                if (r.p(c4062f.m35225k())) {
                    c10525a.f31399t = C4030R.C4031drawable.ic_tcx_travel_alert;
                    return;
                } else {
                    m26694c(c4062f, c10525a, c4062f.m35225k());
                    return;
                }
            case 110621192:
                if (!str2.equals("train")) {
                    return;
                }
                c10525a.f31399t = C4030R.C4031drawable.ic_tcx_travel_train;
                return;
            default:
                return;
        }
    }

    /* renamed from: d */
    public final void m26693d(InsightsDomain.C4062f c4062f, AbstractC10518b.C10524f.C10525a c10525a, String str) {
        String str2 = str;
        if (r.p(str)) {
            String m35226j = c4062f.m35226j();
            Locale locale = Locale.ROOT;
            l.d(locale, "Locale.ROOT");
            Objects.requireNonNull(m35226j, "null cannot be cast to non-null type java.lang.String");
            str2 = m35226j.toLowerCase(locale);
            l.d(str2, "(this as java.lang.String).toLowerCase(locale)");
        }
        String str3 = null;
        switch (str2.hashCode()) {
            case -1271823248:
                if (!str2.equals("flight")) {
                    return;
                }
                String m35224l = c4062f.m35224l();
                String str4 = null;
                if (!r.p(m35224l)) {
                    str4 = m35224l;
                }
                if (str4 == null) {
                    return;
                }
                c10525a.f31386g = "Flight";
                c10525a.f31387h = str4;
                return;
            case 97920:
                if (!str2.equals("bus")) {
                    return;
                }
                String m35224l2 = c4062f.m35224l();
                if (r.p(m35224l2)) {
                    m35224l2 = null;
                }
                if (m35224l2 == null) {
                    return;
                }
                c10525a.f31386g = "Bus";
                c10525a.f31387h = C10480a.m25917o3(m35224l2, null, 1);
                return;
            case 92899676:
                if (!str2.equals("alert")) {
                    return;
                }
                String m35235a = c4062f.m35235a();
                int hashCode = m35235a.hashCode();
                if (hashCode == -1367724422) {
                    if (!m35235a.equals("cancel")) {
                        return;
                    }
                    c10525a.m25829a("Cancelled");
                    c10525a.f31401v = C4030R.attr.tcx_alertBackgroundRed;
                    String m35225k = c4062f.m35225k();
                    String str5 = null;
                    if (!r.p(m35225k)) {
                        str5 = m35225k;
                    }
                    if (str5 == null) {
                        return;
                    }
                    m26693d(c4062f, c10525a, str5);
                    return;
                } else if (hashCode != 95467907) {
                    if (hashCode != 505069002 || !m35235a.equals("reschedule")) {
                        return;
                    }
                    c10525a.m25829a("Rescheduled");
                    c10525a.f31401v = C4030R.attr.tcx_alertBackgroundOrange;
                    String m35225k2 = c4062f.m35225k();
                    if (!r.p(m35225k2)) {
                        str3 = m35225k2;
                    }
                    if (str3 == null) {
                        return;
                    }
                    m26693d(c4062f, c10525a, str3);
                    return;
                } else if (!m35235a.equals("delay")) {
                    return;
                } else {
                    c10525a.m25829a("Delayed");
                    c10525a.f31401v = C4030R.attr.tcx_alertBackgroundOrange;
                    String m35225k3 = c4062f.m35225k();
                    String str6 = null;
                    if (!r.p(m35225k3)) {
                        str6 = m35225k3;
                    }
                    if (str6 == null) {
                        return;
                    }
                    m26693d(c4062f, c10525a, str6);
                    return;
                }
            case 110621192:
                if (!str2.equals("train")) {
                    return;
                }
                String m35223m = c4062f.m35223m();
                String str7 = null;
                if (!r.p(m35223m)) {
                    str7 = m35223m;
                }
                if (str7 == null) {
                    return;
                }
                c10525a.f31386g = "Train No";
                c10525a.f31387h = str7;
                return;
            default:
                return;
        }
    }

    /* renamed from: e */
    public final void m26692e(InsightsDomain.C4062f c4062f, AbstractC10518b.C10524f.C10525a c10525a) {
        b m35233c = c4062f.m35233c();
        if (m35233c != null) {
            p L = m35233c.L();
            p h = p.h();
            l.d(h, "LocalDate.now()");
            h r = h.r(h, L);
            l.d(r, "Days.daysBetween(currentDate, date)");
            int i = ((i) r).a;
            String str = i <= -1 ? "Travelled" : i == 0 ? "Today" : i == 1 ? "Tomorrow" : c10525a.f31383d;
            l.e(str, "value");
            c10525a.f31385f = str;
        }
    }
}
