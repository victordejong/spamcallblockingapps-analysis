package p193e.p194a.p437c.p579q;

import com.truecaller.insights.insightsui.LoadDirection;
import com.truecaller.insights.insightsui.TransactionType;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.c.q.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/q/f.class */
public final class C10509f {

    /* renamed from: a */
    public final boolean f31241a;

    /* renamed from: b */
    public final long f31242b;

    /* renamed from: c */
    public long f31243c;

    /* renamed from: d */
    public final LoadDirection f31244d;

    /* renamed from: e */
    public final C10512i f31245e;

    /* renamed from: f */
    public final TransactionType f31246f;

    /* renamed from: g */
    public final List<String> f31247g;

    /* renamed from: h */
    public final String f31248h;

    public C10509f(boolean z, long j, long j2, LoadDirection loadDirection, C10512i c10512i, TransactionType transactionType, List<String> list, String str) {
        l.e(loadDirection, "loadDirection");
        l.e(c10512i, "boundary");
        l.e(transactionType, "transactionType");
        l.e(list, "senders");
        this.f31241a = z;
        this.f31242b = j;
        this.f31243c = j2;
        this.f31244d = loadDirection;
        this.f31245e = c10512i;
        this.f31246f = transactionType;
        this.f31247g = list;
        this.f31248h = str;
    }

    public /* synthetic */ C10509f(boolean z, long j, long j2, LoadDirection loadDirection, C10512i c10512i, TransactionType transactionType, List list, String str, int i) {
        this(z, j, j2, loadDirection, c10512i, (i & 32) != 0 ? TransactionType.ALL : null, (i & 64) != 0 ? s.a : null, null);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10509f)) {
                return false;
            }
            C10509f c10509f = (C10509f) obj;
            return this.f31241a == c10509f.f31241a && this.f31242b == c10509f.f31242b && this.f31243c == c10509f.f31243c && l.a(this.f31244d, c10509f.f31244d) && l.a(this.f31245e, c10509f.f31245e) && l.a(this.f31246f, c10509f.f31246f) && l.a(this.f31247g, c10509f.f31247g) && l.a(this.f31248h, c10509f.f31248h);
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.f31241a;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        int m34274a = C4876d.m34274a(this.f31242b);
        int m34274a2 = C4876d.m34274a(this.f31243c);
        LoadDirection loadDirection = this.f31244d;
        int i = 0;
        int hashCode = loadDirection != null ? loadDirection.hashCode() : 0;
        C10512i c10512i = this.f31245e;
        int hashCode2 = c10512i != null ? c10512i.hashCode() : 0;
        TransactionType transactionType = this.f31246f;
        int hashCode3 = transactionType != null ? transactionType.hashCode() : 0;
        List<String> list = this.f31247g;
        int hashCode4 = list != null ? list.hashCode() : 0;
        String str = this.f31248h;
        if (str != null) {
            i = str.hashCode();
        }
        return ((((((((((((((z2 ? 1 : 0) * 31) + m34274a) * 31) + m34274a2) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("LoadConfig(isInitialLoad=");
        m8728C.append(this.f31241a);
        m8728C.append(", startTs=");
        m8728C.append(this.f31242b);
        m8728C.append(", endTs=");
        m8728C.append(this.f31243c);
        m8728C.append(", loadDirection=");
        m8728C.append(this.f31244d);
        m8728C.append(", boundary=");
        m8728C.append(this.f31245e);
        m8728C.append(", transactionType=");
        m8728C.append(this.f31246f);
        m8728C.append(", senders=");
        m8728C.append(this.f31247g);
        m8728C.append(", searchQuery=");
        return C22128a.m8618h(m8728C, this.f31248h, ")");
    }
}
