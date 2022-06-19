package p193e.p194a.p437c.p438a.p493l;

import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.p168ui.models.AccountType;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a.l.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/l/a.class */
public final class C9234a {

    /* renamed from: a */
    public final Uri f28027a;

    /* renamed from: b */
    public final String f28028b;

    /* renamed from: c */
    public final List<String> f28029c;

    /* renamed from: d */
    public final AccountType f28030d;

    /* renamed from: e */
    public boolean f28031e;

    /* renamed from: f */
    public String f28032f;

    /* renamed from: g */
    public boolean f28033g;

    public C9234a(Uri uri, String str, List<String> list, AccountType accountType, boolean z, String str2, boolean z2) {
        l.e(str, AnalyticsConstants.NAME);
        l.e(list, "address");
        l.e(accountType, "type");
        this.f28027a = uri;
        this.f28028b = str;
        this.f28029c = list;
        this.f28030d = accountType;
        this.f28031e = z;
        this.f28032f = str2;
        this.f28033g = z2;
    }

    /* renamed from: a */
    public static C9234a m27783a(C9234a c9234a, Uri uri, String str, List list, AccountType accountType, boolean z, String str2, boolean z2, int i) {
        if ((i & 1) != 0) {
            uri = c9234a.f28027a;
        }
        String str3 = null;
        String str4 = (i & 2) != 0 ? c9234a.f28028b : null;
        if ((i & 4) != 0) {
            list = c9234a.f28029c;
        }
        AccountType accountType2 = (i & 8) != 0 ? c9234a.f28030d : null;
        if ((i & 16) != 0) {
            z = c9234a.f28031e;
        }
        if ((i & 32) != 0) {
            str3 = c9234a.f28032f;
        }
        if ((i & 64) != 0) {
            z2 = c9234a.f28033g;
        }
        Objects.requireNonNull(c9234a);
        l.e(str4, AnalyticsConstants.NAME);
        l.e(list, "address");
        l.e(accountType2, "type");
        return new C9234a(uri, str4, list, accountType2, z, str3, z2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!l.a(C9234a.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.insights.ui.models.AccountUiModel");
        C9234a c9234a = (C9234a) obj;
        return !(l.a(this.f28027a, c9234a.f28027a) ^ true) && !(l.a(this.f28028b, c9234a.f28028b) ^ true) && !(l.a(this.f28029c, c9234a.f28029c) ^ true) && this.f28030d == c9234a.f28030d && !(l.a(this.f28032f, c9234a.f28032f) ^ true);
    }

    public int hashCode() {
        Uri uri = this.f28027a;
        int i = 0;
        int hashCode = uri != null ? uri.hashCode() : 0;
        String str = this.f28028b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        List<String> list = this.f28029c;
        int hashCode3 = list != null ? list.hashCode() : 0;
        AccountType accountType = this.f28030d;
        int hashCode4 = accountType != null ? accountType.hashCode() : 0;
        boolean z = this.f28031e;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        String str2 = this.f28032f;
        if (str2 != null) {
            i = str2.hashCode();
        }
        boolean z2 = this.f28033g;
        if (!z2) {
            i2 = z2 ? 1 : 0;
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i3) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AccountUiModel(uri=");
        m8728C.append(this.f28027a);
        m8728C.append(", name=");
        m8728C.append(this.f28028b);
        m8728C.append(", address=");
        m8728C.append(this.f28029c);
        m8728C.append(", type=");
        m8728C.append(this.f28030d);
        m8728C.append(", selected=");
        m8728C.append(this.f28031e);
        m8728C.append(", groupKey=");
        m8728C.append(this.f28032f);
        m8728C.append(", isSenderVerifiedForSmartSmsFeatures=");
        return C22128a.m8590o(m8728C, this.f28033g, ")");
    }
}
