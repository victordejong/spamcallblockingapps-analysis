package p193e.p194a.p437c.p580r.p590k;

import android.app.PendingIntent;
import android.net.Uri;
import com.truecaller.insights.models.smartnotifications.SmartNotificationMetadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.r.k.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/k/f.class */
public final class C10648f {

    /* renamed from: a */
    public final String f31727a;

    /* renamed from: b */
    public final String f31728b;

    /* renamed from: c */
    public final String f31729c;

    /* renamed from: d */
    public final String f31730d;

    /* renamed from: e */
    public final Uri f31731e;

    /* renamed from: f */
    public final int f31732f;

    /* renamed from: g */
    public final PendingIntent f31733g;

    /* renamed from: h */
    public final PendingIntent f31734h;

    /* renamed from: i */
    public final C10647e f31735i;

    /* renamed from: j */
    public final C10647e f31736j;

    /* renamed from: k */
    public final SmartNotificationMetadata f31737k;

    public C10648f(String str, String str2, String str3, String str4, Uri uri, int i, PendingIntent pendingIntent, PendingIntent pendingIntent2, C10647e c10647e, C10647e c10647e2, SmartNotificationMetadata smartNotificationMetadata) {
        l.e(str, "messageText");
        l.e(str2, "normalizedMessage");
        l.e(str3, "updateCategoryName");
        l.e(str4, "senderName");
        l.e(pendingIntent, "clickPendingIntent");
        l.e(pendingIntent2, "dismissPendingIntent");
        l.e(smartNotificationMetadata, "smartNotificationMetadata");
        this.f31727a = str;
        this.f31728b = str2;
        this.f31729c = str3;
        this.f31730d = str4;
        this.f31731e = uri;
        this.f31732f = i;
        this.f31733g = pendingIntent;
        this.f31734h = pendingIntent2;
        this.f31735i = c10647e;
        this.f31736j = c10647e2;
        this.f31737k = smartNotificationMetadata;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10648f)) {
                return false;
            }
            C10648f c10648f = (C10648f) obj;
            return l.a(this.f31727a, c10648f.f31727a) && l.a(this.f31728b, c10648f.f31728b) && l.a(this.f31729c, c10648f.f31729c) && l.a(this.f31730d, c10648f.f31730d) && l.a(this.f31731e, c10648f.f31731e) && this.f31732f == c10648f.f31732f && l.a(this.f31733g, c10648f.f31733g) && l.a(this.f31734h, c10648f.f31734h) && l.a(this.f31735i, c10648f.f31735i) && l.a(this.f31736j, c10648f.f31736j) && l.a(this.f31737k, c10648f.f31737k);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f31727a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f31728b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f31729c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f31730d;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        Uri uri = this.f31731e;
        int hashCode5 = uri != null ? uri.hashCode() : 0;
        int i2 = this.f31732f;
        PendingIntent pendingIntent = this.f31733g;
        int hashCode6 = pendingIntent != null ? pendingIntent.hashCode() : 0;
        PendingIntent pendingIntent2 = this.f31734h;
        int hashCode7 = pendingIntent2 != null ? pendingIntent2.hashCode() : 0;
        C10647e c10647e = this.f31735i;
        int hashCode8 = c10647e != null ? c10647e.hashCode() : 0;
        C10647e c10647e2 = this.f31736j;
        int hashCode9 = c10647e2 != null ? c10647e2.hashCode() : 0;
        SmartNotificationMetadata smartNotificationMetadata = this.f31737k;
        if (smartNotificationMetadata != null) {
            i = smartNotificationMetadata.hashCode();
        }
        return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i2) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UpdateNotification(messageText=");
        m8728C.append(this.f31727a);
        m8728C.append(", normalizedMessage=");
        m8728C.append(this.f31728b);
        m8728C.append(", updateCategoryName=");
        m8728C.append(this.f31729c);
        m8728C.append(", senderName=");
        m8728C.append(this.f31730d);
        m8728C.append(", senderIconUri=");
        m8728C.append(this.f31731e);
        m8728C.append(", primaryIcon=");
        m8728C.append(this.f31732f);
        m8728C.append(", clickPendingIntent=");
        m8728C.append(this.f31733g);
        m8728C.append(", dismissPendingIntent=");
        m8728C.append(this.f31734h);
        m8728C.append(", primaryAction=");
        m8728C.append(this.f31735i);
        m8728C.append(", secondaryAction=");
        m8728C.append(this.f31736j);
        m8728C.append(", smartNotificationMetadata=");
        m8728C.append(this.f31737k);
        m8728C.append(")");
        return m8728C.toString();
    }
}
