package p193e.p194a.p437c.p598v.p603h;

import android.app.PendingIntent;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p589j.C10612m;
import p193e.p194a.p437c.p580r.p590k.C10647e;
import s1.z.c.l;
/* renamed from: e.a.c.v.h.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/v/h/g.class */
public final class C10741g {

    /* renamed from: a */
    public final String f31906a;

    /* renamed from: b */
    public final AbstractC10738e f31907b;

    /* renamed from: c */
    public final String f31908c;

    /* renamed from: d */
    public final String f31909d;

    /* renamed from: e */
    public final String f31910e;

    /* renamed from: f */
    public final String f31911f;

    /* renamed from: g */
    public final String f31912g;

    /* renamed from: h */
    public final Integer f31913h = null;

    /* renamed from: i */
    public final String f31914i;

    /* renamed from: j */
    public final Integer f31915j;

    /* renamed from: k */
    public final String f31916k;

    /* renamed from: l */
    public final C10612m f31917l;

    /* renamed from: m */
    public final C10647e f31918m;

    /* renamed from: n */
    public final C10647e f31919n;

    /* renamed from: o */
    public final C10647e f31920o;

    /* renamed from: p */
    public final PendingIntent f31921p;

    /* renamed from: q */
    public final int f31922q;

    public C10741g(String str, AbstractC10738e abstractC10738e, String str2, String str3, String str4, String str5, String str6, Integer num, String str7, Integer num2, String str8, C10612m c10612m, C10647e c10647e, C10647e c10647e2, C10647e c10647e3, PendingIntent pendingIntent, int i) {
        l.e(str, "refId");
        l.e(abstractC10738e, "category");
        l.e(str3, "time");
        l.e(str4, "contentTitle");
        l.e(str5, "contentText");
        l.e(str6, "dueAmount");
        l.e(str7, "dueDateText");
        l.e(c10612m, "primaryIcon");
        this.f31906a = str;
        this.f31907b = abstractC10738e;
        this.f31908c = str2;
        this.f31909d = str3;
        this.f31910e = str4;
        this.f31911f = str5;
        this.f31912g = str6;
        this.f31914i = str7;
        this.f31915j = num2;
        this.f31916k = str8;
        this.f31917l = c10612m;
        this.f31918m = c10647e;
        this.f31919n = c10647e2;
        this.f31920o = c10647e3;
        this.f31921p = pendingIntent;
        this.f31922q = i;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10741g)) {
                return false;
            }
            C10741g c10741g = (C10741g) obj;
            return l.a(this.f31906a, c10741g.f31906a) && l.a(this.f31907b, c10741g.f31907b) && l.a(this.f31908c, c10741g.f31908c) && l.a(this.f31909d, c10741g.f31909d) && l.a(this.f31910e, c10741g.f31910e) && l.a(this.f31911f, c10741g.f31911f) && l.a(this.f31912g, c10741g.f31912g) && l.a(this.f31913h, c10741g.f31913h) && l.a(this.f31914i, c10741g.f31914i) && l.a(this.f31915j, c10741g.f31915j) && l.a(this.f31916k, c10741g.f31916k) && l.a(this.f31917l, c10741g.f31917l) && l.a(this.f31918m, c10741g.f31918m) && l.a(this.f31919n, c10741g.f31919n) && l.a(this.f31920o, c10741g.f31920o) && l.a(this.f31921p, c10741g.f31921p) && this.f31922q == c10741g.f31922q;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31906a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        AbstractC10738e abstractC10738e = this.f31907b;
        int hashCode2 = abstractC10738e != null ? abstractC10738e.hashCode() : 0;
        String str2 = this.f31908c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f31909d;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f31910e;
        int hashCode5 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f31911f;
        int hashCode6 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f31912g;
        int hashCode7 = str6 != null ? str6.hashCode() : 0;
        Integer num = this.f31913h;
        int hashCode8 = num != null ? num.hashCode() : 0;
        String str7 = this.f31914i;
        int hashCode9 = str7 != null ? str7.hashCode() : 0;
        Integer num2 = this.f31915j;
        int hashCode10 = num2 != null ? num2.hashCode() : 0;
        String str8 = this.f31916k;
        int hashCode11 = str8 != null ? str8.hashCode() : 0;
        C10612m c10612m = this.f31917l;
        int hashCode12 = c10612m != null ? c10612m.hashCode() : 0;
        C10647e c10647e = this.f31918m;
        int hashCode13 = c10647e != null ? c10647e.hashCode() : 0;
        C10647e c10647e2 = this.f31919n;
        int hashCode14 = c10647e2 != null ? c10647e2.hashCode() : 0;
        C10647e c10647e3 = this.f31920o;
        int hashCode15 = c10647e3 != null ? c10647e3.hashCode() : 0;
        PendingIntent pendingIntent = this.f31921p;
        if (pendingIntent != null) {
            i = pendingIntent.hashCode();
        }
        return (((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + i) * 31) + this.f31922q;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ReminderNotificationAttributes(refId=");
        m8728C.append(this.f31906a);
        m8728C.append(", category=");
        m8728C.append(this.f31907b);
        m8728C.append(", senderText=");
        m8728C.append(this.f31908c);
        m8728C.append(", time=");
        m8728C.append(this.f31909d);
        m8728C.append(", contentTitle=");
        m8728C.append(this.f31910e);
        m8728C.append(", contentText=");
        m8728C.append(this.f31911f);
        m8728C.append(", dueAmount=");
        m8728C.append(this.f31912g);
        m8728C.append(", amountColor=");
        m8728C.append(this.f31913h);
        m8728C.append(", dueDateText=");
        m8728C.append(this.f31914i);
        m8728C.append(", dueDateColor=");
        m8728C.append(this.f31915j);
        m8728C.append(", iconLink=");
        m8728C.append(this.f31916k);
        m8728C.append(", primaryIcon=");
        m8728C.append(this.f31917l);
        m8728C.append(", primaryAction=");
        m8728C.append(this.f31918m);
        m8728C.append(", secondaryAction=");
        m8728C.append(this.f31919n);
        m8728C.append(", cardClickAction=");
        m8728C.append(this.f31920o);
        m8728C.append(", dismissAction=");
        m8728C.append(this.f31921p);
        m8728C.append(", notificationId=");
        return C22128a.m8697J2(m8728C, this.f31922q, ")");
    }
}
