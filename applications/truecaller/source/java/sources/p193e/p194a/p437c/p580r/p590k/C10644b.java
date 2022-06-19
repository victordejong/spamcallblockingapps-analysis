package p193e.p194a.p437c.p580r.p590k;

import com.truecaller.insights.core.smartnotifications.smsparser.models.NotificationBanner;
import com.truecaller.insights.models.smartnotifications.SmartNotificationMetadata;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p589j.C10583b0;
import p193e.p194a.p437c.p580r.p589j.C10587c0;
import p193e.p194a.p437c.p580r.p589j.C10612m;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.c.r.k.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/k/b.class */
public final class C10644b {

    /* renamed from: a */
    public final String f31705a;

    /* renamed from: b */
    public final String f31706b;

    /* renamed from: c */
    public final CharSequence f31707c;

    /* renamed from: d */
    public final CharSequence f31708d;

    /* renamed from: e */
    public final C10612m f31709e;

    /* renamed from: f */
    public final String f31710f;

    /* renamed from: g */
    public final Integer f31711g;

    /* renamed from: h */
    public final C10587c0 f31712h;

    /* renamed from: i */
    public final String f31713i;

    /* renamed from: j */
    public final SmartNotificationMetadata f31714j;

    /* renamed from: k */
    public final List<C10583b0> f31715k;

    /* renamed from: l */
    public final NotificationBanner f31716l;

    /* renamed from: m */
    public final String f31717m;

    public C10644b(String str, String str2, CharSequence charSequence, CharSequence charSequence2, C10612m c10612m, String str3, Integer num, C10587c0 c10587c0, String str4, SmartNotificationMetadata smartNotificationMetadata, List list, NotificationBanner notificationBanner, String str5, int i) {
        c10587c0 = (i & 128) != 0 ? null : c10587c0;
        list = (i & 1024) != 0 ? s.a : list;
        str5 = (i & 4096) != 0 ? "" : str5;
        l.e(str, "contentTitle");
        l.e(str2, "contentText");
        l.e(charSequence, "decorationContentTitle");
        l.e(charSequence2, "decorationContentText");
        l.e(c10612m, "primaryIcon");
        l.e(str3, "infoRightTitle");
        l.e(str4, "senderText");
        l.e(smartNotificationMetadata, "meta");
        l.e(list, "contentTitleColor");
        l.e(str5, "statusTitle");
        this.f31705a = str;
        this.f31706b = str2;
        this.f31707c = charSequence;
        this.f31708d = charSequence2;
        this.f31709e = c10612m;
        this.f31710f = str3;
        this.f31711g = num;
        this.f31712h = c10587c0;
        this.f31713i = str4;
        this.f31714j = smartNotificationMetadata;
        this.f31715k = list;
        this.f31716l = notificationBanner;
        this.f31717m = str5;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10644b)) {
                return false;
            }
            C10644b c10644b = (C10644b) obj;
            return l.a(this.f31705a, c10644b.f31705a) && l.a(this.f31706b, c10644b.f31706b) && l.a(this.f31707c, c10644b.f31707c) && l.a(this.f31708d, c10644b.f31708d) && l.a(this.f31709e, c10644b.f31709e) && l.a(this.f31710f, c10644b.f31710f) && l.a(this.f31711g, c10644b.f31711g) && l.a(this.f31712h, c10644b.f31712h) && l.a(this.f31713i, c10644b.f31713i) && l.a(this.f31714j, c10644b.f31714j) && l.a(this.f31715k, c10644b.f31715k) && l.a(this.f31716l, c10644b.f31716l) && l.a(this.f31717m, c10644b.f31717m);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31705a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f31706b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        CharSequence charSequence = this.f31707c;
        int hashCode3 = charSequence != null ? charSequence.hashCode() : 0;
        CharSequence charSequence2 = this.f31708d;
        int hashCode4 = charSequence2 != null ? charSequence2.hashCode() : 0;
        C10612m c10612m = this.f31709e;
        int hashCode5 = c10612m != null ? c10612m.hashCode() : 0;
        String str3 = this.f31710f;
        int hashCode6 = str3 != null ? str3.hashCode() : 0;
        Integer num = this.f31711g;
        int hashCode7 = num != null ? num.hashCode() : 0;
        C10587c0 c10587c0 = this.f31712h;
        int hashCode8 = c10587c0 != null ? c10587c0.hashCode() : 0;
        String str4 = this.f31713i;
        int hashCode9 = str4 != null ? str4.hashCode() : 0;
        SmartNotificationMetadata smartNotificationMetadata = this.f31714j;
        int hashCode10 = smartNotificationMetadata != null ? smartNotificationMetadata.hashCode() : 0;
        List<C10583b0> list = this.f31715k;
        int hashCode11 = list != null ? list.hashCode() : 0;
        NotificationBanner notificationBanner = this.f31716l;
        int hashCode12 = notificationBanner != null ? notificationBanner.hashCode() : 0;
        String str5 = this.f31717m;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return (((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CustomSmartNotification(contentTitle=");
        m8728C.append(this.f31705a);
        m8728C.append(", contentText=");
        m8728C.append(this.f31706b);
        m8728C.append(", decorationContentTitle=");
        m8728C.append(this.f31707c);
        m8728C.append(", decorationContentText=");
        m8728C.append(this.f31708d);
        m8728C.append(", primaryIcon=");
        m8728C.append(this.f31709e);
        m8728C.append(", infoRightTitle=");
        m8728C.append(this.f31710f);
        m8728C.append(", infoRightTitleColor=");
        m8728C.append(this.f31711g);
        m8728C.append(", infoRightText=");
        m8728C.append(this.f31712h);
        m8728C.append(", senderText=");
        m8728C.append(this.f31713i);
        m8728C.append(", meta=");
        m8728C.append(this.f31714j);
        m8728C.append(", contentTitleColor=");
        m8728C.append(this.f31715k);
        m8728C.append(", notificationBanner=");
        m8728C.append(this.f31716l);
        m8728C.append(", statusTitle=");
        return C22128a.m8618h(m8728C, this.f31717m, ")");
    }
}
