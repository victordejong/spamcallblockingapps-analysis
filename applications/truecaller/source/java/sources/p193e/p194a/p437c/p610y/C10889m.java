package p193e.p194a.p437c.p610y;

import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p589j.C10582b;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.y.m */
/* loaded from: classes10-dex2jar.jar:e/a/c/y/m.class */
public final class C10889m {

    /* renamed from: a */
    public final long f32334a;

    /* renamed from: b */
    public final long f32335b;

    /* renamed from: c */
    public final String f32336c;

    /* renamed from: d */
    public final C10888l f32337d;

    /* renamed from: e */
    public final b f32338e;

    /* renamed from: f */
    public final b f32339f;

    /* renamed from: g */
    public final String f32340g;

    /* renamed from: h */
    public final String f32341h;

    /* renamed from: i */
    public final String f32342i;

    /* renamed from: j */
    public final C10582b f32343j;

    public C10889m(long j, long j2, String str, C10888l c10888l, b bVar, b bVar2, String str2, String str3, String str4, C10582b c10582b) {
        l.e(str, "pdoCategory");
        l.e(c10888l, "smartCardUiModel");
        l.e(bVar, "orderDateTime");
        l.e(bVar2, "msgDateTime");
        l.e(str2, AnalyticsConstants.SENDER);
        l.e(str3, "message");
        l.e(str4, "uiDate");
        this.f32334a = j;
        this.f32335b = j2;
        this.f32336c = str;
        this.f32337d = c10888l;
        this.f32338e = bVar;
        this.f32339f = bVar2;
        this.f32340g = str2;
        this.f32341h = str3;
        this.f32342i = str4;
        this.f32343j = c10582b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10889m)) {
                return false;
            }
            C10889m c10889m = (C10889m) obj;
            return this.f32334a == c10889m.f32334a && this.f32335b == c10889m.f32335b && l.a(this.f32336c, c10889m.f32336c) && l.a(this.f32337d, c10889m.f32337d) && l.a(this.f32338e, c10889m.f32338e) && l.a(this.f32339f, c10889m.f32339f) && l.a(this.f32340g, c10889m.f32340g) && l.a(this.f32341h, c10889m.f32341h) && l.a(this.f32342i, c10889m.f32342i) && l.a(this.f32343j, c10889m.f32343j);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f32334a);
        int m34274a2 = C4876d.m34274a(this.f32335b);
        String str = this.f32336c;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        C10888l c10888l = this.f32337d;
        int hashCode2 = c10888l != null ? c10888l.hashCode() : 0;
        b bVar = this.f32338e;
        int hashCode3 = bVar != null ? bVar.hashCode() : 0;
        b bVar2 = this.f32339f;
        int hashCode4 = bVar2 != null ? bVar2.hashCode() : 0;
        String str2 = this.f32340g;
        int hashCode5 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f32341h;
        int hashCode6 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f32342i;
        int hashCode7 = str4 != null ? str4.hashCode() : 0;
        C10582b c10582b = this.f32343j;
        if (c10582b != null) {
            i = c10582b.hashCode();
        }
        return (((((((((((((((((m34274a * 31) + m34274a2) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SmartFeedUiModel(messageId=");
        m8728C.append(this.f32334a);
        m8728C.append(", conversationId=");
        m8728C.append(this.f32335b);
        m8728C.append(", pdoCategory=");
        m8728C.append(this.f32336c);
        m8728C.append(", smartCardUiModel=");
        m8728C.append(this.f32337d);
        m8728C.append(", orderDateTime=");
        m8728C.append(this.f32338e);
        m8728C.append(", msgDateTime=");
        m8728C.append(this.f32339f);
        m8728C.append(", sender=");
        m8728C.append(this.f32340g);
        m8728C.append(", message=");
        m8728C.append(this.f32341h);
        m8728C.append(", uiDate=");
        m8728C.append(this.f32342i);
        m8728C.append(", actionState=");
        m8728C.append(this.f32343j);
        m8728C.append(")");
        return m8728C.toString();
    }
}
