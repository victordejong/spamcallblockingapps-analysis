package p131c.p161d.p170b.p173b.p174h.p175f;

import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import java.util.List;
import p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l;
/* renamed from: c.d.b.b.h.f.g */
/* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/g.class */
public final class C2525g extends AbstractC2535l {

    /* renamed from: a */
    public final long f9551a;

    /* renamed from: b */
    public final long f9552b;

    /* renamed from: c */
    public final ClientInfo f9553c;

    /* renamed from: d */
    public final Integer f9554d;

    /* renamed from: e */
    public final String f9555e;

    /* renamed from: f */
    public final List<AbstractC2533k> f9556f;

    /* renamed from: g */
    public final QosTier f9557g;

    /* renamed from: c.d.b.b.h.f.g$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/h/f/g$b.class */
    public static final class C2527b extends AbstractC2535l.AbstractC2536a {

        /* renamed from: a */
        public Long f9558a;

        /* renamed from: b */
        public Long f9559b;

        /* renamed from: c */
        public ClientInfo f9560c;

        /* renamed from: d */
        public Integer f9561d;

        /* renamed from: e */
        public String f9562e;

        /* renamed from: f */
        public List<AbstractC2533k> f9563f;

        /* renamed from: g */
        public QosTier f9564g;

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l.AbstractC2536a
        /* renamed from: a */
        public AbstractC2535l.AbstractC2536a mo29573a(long j) {
            this.f9558a = Long.valueOf(j);
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l.AbstractC2536a
        /* renamed from: a */
        public AbstractC2535l.AbstractC2536a mo29572a(ClientInfo clientInfo) {
            this.f9560c = clientInfo;
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l.AbstractC2536a
        /* renamed from: a */
        public AbstractC2535l.AbstractC2536a mo29571a(QosTier qosTier) {
            this.f9564g = qosTier;
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l.AbstractC2536a
        /* renamed from: a */
        public AbstractC2535l.AbstractC2536a mo29570a(Integer num) {
            this.f9561d = num;
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l.AbstractC2536a
        /* renamed from: a */
        public AbstractC2535l.AbstractC2536a mo29569a(String str) {
            this.f9562e = str;
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l.AbstractC2536a
        /* renamed from: a */
        public AbstractC2535l.AbstractC2536a mo29568a(List<AbstractC2533k> list) {
            this.f9563f = list;
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l.AbstractC2536a
        /* renamed from: a */
        public AbstractC2535l mo29575a() {
            String str = "";
            if (this.f9558a == null) {
                str = " requestTimeMs";
            }
            String str2 = str;
            if (this.f9559b == null) {
                str2 = str + " requestUptimeMs";
            }
            if (str2.isEmpty()) {
                return new C2525g(this.f9558a.longValue(), this.f9559b.longValue(), this.f9560c, this.f9561d, this.f9562e, this.f9563f, this.f9564g);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l.AbstractC2536a
        /* renamed from: b */
        public AbstractC2535l.AbstractC2536a mo29567b(long j) {
            this.f9559b = Long.valueOf(j);
            return this;
        }
    }

    public C2525g(long j, long j2, ClientInfo clientInfo, Integer num, String str, List<AbstractC2533k> list, QosTier qosTier) {
        this.f9551a = j;
        this.f9552b = j2;
        this.f9553c = clientInfo;
        this.f9554d = num;
        this.f9555e = str;
        this.f9556f = list;
        this.f9557g = qosTier;
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l
    /* renamed from: a */
    public ClientInfo mo29583a() {
        return this.f9553c;
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l
    /* renamed from: b */
    public List<AbstractC2533k> mo29582b() {
        return this.f9556f;
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l
    /* renamed from: c */
    public Integer mo29581c() {
        return this.f9554d;
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l
    /* renamed from: d */
    public String mo29580d() {
        return this.f9555e;
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l
    /* renamed from: e */
    public QosTier mo29579e() {
        return this.f9557g;
    }

    public boolean equals(Object obj) {
        ClientInfo clientInfo;
        Integer num;
        String str;
        List<AbstractC2533k> list;
        QosTier qosTier;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2535l)) {
            return false;
        }
        AbstractC2535l lVar = (AbstractC2535l) obj;
        if (this.f9551a != lVar.mo29578f() || this.f9552b != lVar.mo29577g() || ((clientInfo = this.f9553c) != null ? !clientInfo.equals(lVar.mo29583a()) : lVar.mo29583a() != null) || ((num = this.f9554d) != null ? !num.equals(lVar.mo29581c()) : lVar.mo29581c() != null) || ((str = this.f9555e) != null ? !str.equals(lVar.mo29580d()) : lVar.mo29580d() != null) || ((list = this.f9556f) != null ? !list.equals(lVar.mo29582b()) : lVar.mo29582b() != null) || ((qosTier = this.f9557g) != null ? !qosTier.equals(lVar.mo29579e()) : lVar.mo29579e() != null)) {
            z = false;
        }
        return z;
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l
    /* renamed from: f */
    public long mo29578f() {
        return this.f9551a;
    }

    @Override // p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2535l
    /* renamed from: g */
    public long mo29577g() {
        return this.f9552b;
    }

    public int hashCode() {
        long j = this.f9551a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f9552b;
        int i2 = (int) (j2 ^ (j2 >>> 32));
        ClientInfo clientInfo = this.f9553c;
        int i3 = 0;
        int hashCode = clientInfo == null ? 0 : clientInfo.hashCode();
        Integer num = this.f9554d;
        int hashCode2 = num == null ? 0 : num.hashCode();
        String str = this.f9555e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        List<AbstractC2533k> list = this.f9556f;
        int hashCode4 = list == null ? 0 : list.hashCode();
        QosTier qosTier = this.f9557g;
        if (qosTier != null) {
            i3 = qosTier.hashCode();
        }
        return ((((((((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ hashCode) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i3;
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f9551a + ", requestUptimeMs=" + this.f9552b + ", clientInfo=" + this.f9553c + ", logSource=" + this.f9554d + ", logSourceName=" + this.f9555e + ", logEvents=" + this.f9556f + ", qosTier=" + this.f9557g + "}";
    }
}
