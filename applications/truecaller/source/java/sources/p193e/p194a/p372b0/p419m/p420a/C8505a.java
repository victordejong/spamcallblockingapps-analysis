package p193e.p194a.p372b0.p419m.p420a;

import android.net.Uri;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.b0.m.a.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/m/a/a.class */
public final class C8505a {

    /* renamed from: d */
    public static final C8506a f26289d = new C8506a(null);

    /* renamed from: a */
    public final String f26290a;

    /* renamed from: b */
    public final String f26291b;

    /* renamed from: c */
    public final Uri f26292c;

    /* renamed from: e.a.b0.m.a.a$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/m/a/a$a.class */
    public static final class C8506a {
        public C8506a(f fVar) {
        }
    }

    public C8505a(String str, String str2, Uri uri) {
        l.e(str, "identifier");
        l.e(str2, AnalyticsConstants.NAME);
        l.e(uri, RemoteMessageConst.Notification.ICON);
        this.f26290a = str;
        this.f26291b = str2;
        this.f26292c = uri;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8505a)) {
                return false;
            }
            C8505a c8505a = (C8505a) obj;
            return l.a(this.f26290a, c8505a.f26290a) && l.a(this.f26291b, c8505a.f26291b) && l.a(this.f26292c, c8505a.f26292c);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f26290a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f26291b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Uri uri = this.f26292c;
        if (uri != null) {
            i = uri.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AddressProfile(identifier=");
        m8728C.append(this.f26290a);
        m8728C.append(", name=");
        m8728C.append(this.f26291b);
        m8728C.append(", icon=");
        m8728C.append(this.f26292c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
