package p193e.p194a.p673d0;

import com.razorpay.AnalyticsConstants;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import java.util.Random;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1114o5.C19103t;
/* renamed from: e.a.d0.v */
/* loaded from: classes6-dex2jar.jar:e/a/d0/v.class */
public class C12560v {

    /* renamed from: a */
    public final Number f36669a;

    /* renamed from: b */
    public final int f36670b;

    /* renamed from: d */
    public final long f36672d;

    /* renamed from: e */
    public final boolean f36673e;

    /* renamed from: f */
    public final boolean f36674f;

    /* renamed from: g */
    public final String f36675g;

    /* renamed from: h */
    public final int f36676h;

    /* renamed from: i */
    public int f36677i;

    /* renamed from: j */
    public boolean f36678j;

    /* renamed from: k */
    public boolean f36679k;

    /* renamed from: l */
    public Contact f36680l;

    /* renamed from: m */
    public final FilterMatch f36681m;

    /* renamed from: n */
    public boolean f36682n;

    /* renamed from: o */
    public boolean f36683o;

    /* renamed from: q */
    public long f36685q;

    /* renamed from: p */
    public String f36684p = null;

    /* renamed from: c */
    public final long f36671c = new Random().nextLong();

    public C12560v(int i, int i2, Number number, int i3, boolean z, long j, Contact contact, String str, FilterMatch filterMatch) {
        this.f36669a = number;
        this.f36670b = i3;
        this.f36674f = z;
        this.f36680l = contact;
        this.f36672d = j;
        this.f36673e = i != 0;
        this.f36675g = str;
        this.f36676h = i2;
        this.f36677i = i;
        this.f36681m = filterMatch;
    }

    /* renamed from: a */
    public int m22873a() {
        if (m22872b()) {
            return 7;
        }
        if (!this.f36673e) {
            return 1;
        }
        return (this.f36677i != 3 || this.f36678j) ? 2 : 6;
    }

    /* renamed from: b */
    public boolean m22872b() {
        int i = this.f36676h;
        boolean z = true;
        if (i != 1) {
            z = i == 3;
        }
        return z;
    }

    /* renamed from: c */
    public boolean m22871c() {
        Contact contact = this.f36680l;
        FilterMatch filterMatch = this.f36681m;
        return !filterMatch.m35811c() && !filterMatch.m35813a() && !filterMatch.m35812b() && contact != null && contact.m35499r0() && contact.m35574A0();
    }

    /* renamed from: d */
    public boolean m22870d() {
        return C19103t.m14103j(this.f36680l, this.f36681m);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallState{simSlotIndex=");
        m8728C.append(this.f36670b);
        m8728C.append(", sessionId=");
        m8728C.append(this.f36671c);
        m8728C.append(", startTime=");
        m8728C.append(this.f36672d);
        m8728C.append(", isIncoming=");
        m8728C.append(this.f36673e);
        m8728C.append(", isFromTrueCaller=");
        m8728C.append(this.f36674f);
        m8728C.append(", callId='");
        C22128a.m8678P0(m8728C, this.f36675g, '\'', ", action=");
        m8728C.append(this.f36676h);
        m8728C.append(", state=");
        m8728C.append(this.f36677i);
        m8728C.append(", wasConnected=");
        m8728C.append(this.f36678j);
        m8728C.append(", wasSearchSuccessful=");
        m8728C.append(this.f36683o);
        m8728C.append(", isSearching=");
        m8728C.append(this.f36679k);
        m8728C.append(", contact=");
        m8728C.append(this.f36680l == null ? AnalyticsConstants.NULL : "<non-null contact>");
        m8728C.append(", filter action=");
        m8728C.append(this.f36681m.f10453b);
        m8728C.append(", wasSearchPerformed=");
        m8728C.append(this.f36682n);
        m8728C.append(", noSearchReason='");
        return C22128a.m8626f(m8728C, this.f36684p, '\'', '}');
    }
}
