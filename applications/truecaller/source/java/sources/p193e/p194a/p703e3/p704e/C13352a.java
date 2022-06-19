package p193e.p194a.p703e3.p704e;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.e3.e.a */
/* loaded from: classes6-dex2jar.jar:e/a/e3/e/a.class */
public final class C13352a {

    /* renamed from: a */
    public final long f38763a;

    /* renamed from: b */
    public final String f38764b;

    /* renamed from: c */
    public final String f38765c;

    /* renamed from: d */
    public final String f38766d;

    /* renamed from: e */
    public final String f38767e;

    /* renamed from: f */
    public final String f38768f;

    /* renamed from: g */
    public final Long f38769g;

    /* renamed from: h */
    public final String f38770h;

    /* renamed from: i */
    public final String f38771i;

    /* renamed from: j */
    public final String f38772j;

    /* renamed from: k */
    public final Long f38773k;

    /* renamed from: l */
    public final Long f38774l;

    /* renamed from: m */
    public final String f38775m;

    /* renamed from: n */
    public final Boolean f38776n;

    public C13352a(long j, String str, String str2, String str3, String str4, String str5, Long l, String str6, String str7, String str8, Long l2, Long l3, String str9, Boolean bool) {
        this.f38763a = j;
        this.f38764b = str;
        this.f38765c = str2;
        this.f38766d = str3;
        this.f38767e = str4;
        this.f38768f = str5;
        this.f38769g = l;
        this.f38770h = str6;
        this.f38771i = str7;
        this.f38772j = str8;
        this.f38773k = l2;
        this.f38774l = l3;
        this.f38775m = str9;
        this.f38776n = bool;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13352a)) {
                return false;
            }
            C13352a c13352a = (C13352a) obj;
            return this.f38763a == c13352a.f38763a && l.a(this.f38764b, c13352a.f38764b) && l.a(this.f38765c, c13352a.f38765c) && l.a(this.f38766d, c13352a.f38766d) && l.a(this.f38767e, c13352a.f38767e) && l.a(this.f38768f, c13352a.f38768f) && l.a(this.f38769g, c13352a.f38769g) && l.a(this.f38770h, c13352a.f38770h) && l.a(this.f38771i, c13352a.f38771i) && l.a(this.f38772j, c13352a.f38772j) && l.a(this.f38773k, c13352a.f38773k) && l.a(this.f38774l, c13352a.f38774l) && l.a(this.f38775m, c13352a.f38775m) && l.a(this.f38776n, c13352a.f38776n);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f38763a);
        String str = this.f38764b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f38765c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f38766d;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f38767e;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f38768f;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        Long l = this.f38769g;
        int hashCode6 = l != null ? l.hashCode() : 0;
        String str6 = this.f38770h;
        int hashCode7 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.f38771i;
        int hashCode8 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.f38772j;
        int hashCode9 = str8 != null ? str8.hashCode() : 0;
        Long l2 = this.f38773k;
        int hashCode10 = l2 != null ? l2.hashCode() : 0;
        Long l3 = this.f38774l;
        int hashCode11 = l3 != null ? l3.hashCode() : 0;
        String str9 = this.f38775m;
        int hashCode12 = str9 != null ? str9.hashCode() : 0;
        Boolean bool = this.f38776n;
        if (bool != null) {
            i = bool.hashCode();
        }
        return (((((((((((((((((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallAlertNotification(notificationId=");
        m8728C.append(this.f38763a);
        m8728C.append(", number=");
        m8728C.append(this.f38764b);
        m8728C.append(", firstName=");
        m8728C.append(this.f38765c);
        m8728C.append(", lastName=");
        m8728C.append(this.f38766d);
        m8728C.append(", callContextId=");
        m8728C.append(this.f38767e);
        m8728C.append(", callContextMessage=");
        m8728C.append(this.f38768f);
        m8728C.append(", timestamp=");
        m8728C.append(this.f38769g);
        m8728C.append(", badgeList=");
        m8728C.append(this.f38770h);
        m8728C.append(", videoCallerId=");
        m8728C.append(this.f38771i);
        m8728C.append(", videoCallerUrl=");
        m8728C.append(this.f38772j);
        m8728C.append(", videoSizeBytes=");
        m8728C.append(this.f38773k);
        m8728C.append(", videoDurationMillis=");
        m8728C.append(this.f38774l);
        m8728C.append(", videoCallerIdCallId=");
        m8728C.append(this.f38775m);
        m8728C.append(", videoMirrorPlayback=");
        m8728C.append(this.f38776n);
        m8728C.append(")");
        return m8728C.toString();
    }
}
