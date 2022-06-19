package p193e.p194a.p437c.p580r;

import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.binders.utils.TravelUiProperties;
import com.truecaller.insights.models.InsightsDomain;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p589j.AbstractC10567a;
import p193e.p194a.p437c.p580r.p589j.C10612m;
import s1.u.s;
import s1.z.c.f;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.r.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/b.class */
public abstract class AbstractC10518b {

    /* renamed from: e.a.c.r.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/b$a.class */
    public static final class C10519a extends AbstractC10518b {

        /* renamed from: a */
        public final String f31292a;

        /* renamed from: b */
        public final String f31293b;

        /* renamed from: c */
        public final int f31294c;

        /* renamed from: d */
        public final String f31295d;

        /* renamed from: e */
        public final String f31296e;

        /* renamed from: f */
        public final String f31297f;

        /* renamed from: g */
        public final String f31298g;

        /* renamed from: h */
        public final String f31299h;

        /* renamed from: i */
        public final String f31300i;

        /* renamed from: j */
        public final int f31301j;

        /* renamed from: k */
        public final String f31302k;

        /* renamed from: l */
        public final String f31303l;

        /* renamed from: m */
        public final String f31304m;

        /* renamed from: n */
        public final long f31305n;

        /* renamed from: o */
        public final boolean f31306o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10519a(String str, String str2, int i, String str3, String str4, String str5, String str6, String str7, String str8, int i2, String str9, String str10, String str11, long j, boolean z) {
            super(null);
            l.e(str, "senderId");
            l.e(str2, "uiTrxDetail");
            l.e(str3, "accNum");
            l.e(str4, "uiDate");
            l.e(str5, "uiTime");
            l.e(str6, "uiDay");
            l.e(str7, "trxCurrency");
            l.e(str8, "trxAmt");
            l.e(str9, "uiAccType");
            l.e(str10, "uiAccDetail");
            l.e(str11, "consolidatedTrxDetail");
            this.f31292a = str;
            this.f31293b = str2;
            this.f31294c = i;
            this.f31295d = str3;
            this.f31296e = str4;
            this.f31297f = str5;
            this.f31298g = str6;
            this.f31299h = str7;
            this.f31300i = str8;
            this.f31301j = i2;
            this.f31302k = str9;
            this.f31303l = str10;
            this.f31304m = str11;
            this.f31305n = j;
            this.f31306o = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10519a)) {
                    return false;
                }
                C10519a c10519a = (C10519a) obj;
                return l.a(this.f31292a, c10519a.f31292a) && l.a(this.f31293b, c10519a.f31293b) && this.f31294c == c10519a.f31294c && l.a(this.f31295d, c10519a.f31295d) && l.a(this.f31296e, c10519a.f31296e) && l.a(this.f31297f, c10519a.f31297f) && l.a(this.f31298g, c10519a.f31298g) && l.a(this.f31299h, c10519a.f31299h) && l.a(this.f31300i, c10519a.f31300i) && this.f31301j == c10519a.f31301j && l.a(this.f31302k, c10519a.f31302k) && l.a(this.f31303l, c10519a.f31303l) && l.a(this.f31304m, c10519a.f31304m) && this.f31305n == c10519a.f31305n && this.f31306o == c10519a.f31306o;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f31292a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f31293b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            int i2 = this.f31294c;
            String str3 = this.f31295d;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f31296e;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f31297f;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.f31298g;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            String str7 = this.f31299h;
            int hashCode7 = str7 != null ? str7.hashCode() : 0;
            String str8 = this.f31300i;
            int hashCode8 = str8 != null ? str8.hashCode() : 0;
            int i3 = this.f31301j;
            String str9 = this.f31302k;
            int hashCode9 = str9 != null ? str9.hashCode() : 0;
            String str10 = this.f31303l;
            int hashCode10 = str10 != null ? str10.hashCode() : 0;
            String str11 = this.f31304m;
            if (str11 != null) {
                i = str11.hashCode();
            }
            int m34274a = C4876d.m34274a(this.f31305n);
            boolean z = this.f31306o;
            int i4 = z ? 1 : 0;
            if (z) {
                i4 = 1;
            }
            return (((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + i3) * 31) + hashCode9) * 31) + hashCode10) * 31) + i) * 31) + m34274a) * 31) + i4;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("BankUiModel(senderId=");
            m8728C.append(this.f31292a);
            m8728C.append(", uiTrxDetail=");
            m8728C.append(this.f31293b);
            m8728C.append(", iconTrxType=");
            m8728C.append(this.f31294c);
            m8728C.append(", accNum=");
            m8728C.append(this.f31295d);
            m8728C.append(", uiDate=");
            m8728C.append(this.f31296e);
            m8728C.append(", uiTime=");
            m8728C.append(this.f31297f);
            m8728C.append(", uiDay=");
            m8728C.append(this.f31298g);
            m8728C.append(", trxCurrency=");
            m8728C.append(this.f31299h);
            m8728C.append(", trxAmt=");
            m8728C.append(this.f31300i);
            m8728C.append(", trxAmtColor=");
            m8728C.append(this.f31301j);
            m8728C.append(", uiAccType=");
            m8728C.append(this.f31302k);
            m8728C.append(", uiAccDetail=");
            m8728C.append(this.f31303l);
            m8728C.append(", consolidatedTrxDetail=");
            m8728C.append(this.f31304m);
            m8728C.append(", messageId=");
            m8728C.append(this.f31305n);
            m8728C.append(", isSenderVerifiedForSmartFeatures=");
            return C22128a.m8590o(m8728C, this.f31306o, ")");
        }
    }

    /* renamed from: e.a.c.r.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/b$b.class */
    public static final class C10520b extends AbstractC10518b {

        /* renamed from: a */
        public final String f31307a;

        /* renamed from: b */
        public final String f31308b;

        /* renamed from: c */
        public final int f31309c;

        /* renamed from: d */
        public final String f31310d;

        /* renamed from: e */
        public final String f31311e;

        /* renamed from: f */
        public final String f31312f;

        /* renamed from: g */
        public final String f31313g;

        /* renamed from: h */
        public final String f31314h;

        /* renamed from: i */
        public final String f31315i;

        /* renamed from: j */
        public final String f31316j;

        /* renamed from: k */
        public final String f31317k;

        /* renamed from: l */
        public final long f31318l;

        /* renamed from: m */
        public final boolean f31319m;

        /* renamed from: n */
        public final List<C10527c> f31320n;

        /* renamed from: o */
        public final String f31321o;

        /* renamed from: p */
        public final b f31322p;

        /* renamed from: q */
        public final String f31323q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C10520b(String str, String str2, int i, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, long j, boolean z, List<? extends C10527c> list, String str11, b bVar, String str12) {
            super(null);
            l.e(str, "senderId");
            l.e(str2, "uiDueDate");
            l.e(str3, "dueAmt");
            l.e(str4, "date");
            l.e(str5, "dueInsNumber");
            l.e(str6, "uiDueInsType");
            l.e(str7, "uiDueType");
            l.e(str8, "uiTrxDetail");
            l.e(str9, "trxCurrency");
            l.e(str10, "uiDueAmount");
            l.e(list, "uiTags");
            l.e(str11, "type");
            l.e(bVar, "billDateTime");
            l.e(str12, "pastUiDueDate");
            this.f31307a = str;
            this.f31308b = str2;
            this.f31309c = i;
            this.f31310d = str3;
            this.f31311e = str4;
            this.f31312f = str5;
            this.f31313g = str6;
            this.f31314h = str7;
            this.f31315i = str8;
            this.f31316j = str9;
            this.f31317k = str10;
            this.f31318l = j;
            this.f31319m = z;
            this.f31320n = list;
            this.f31321o = str11;
            this.f31322p = bVar;
            this.f31323q = str12;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10520b)) {
                    return false;
                }
                C10520b c10520b = (C10520b) obj;
                return l.a(this.f31307a, c10520b.f31307a) && l.a(this.f31308b, c10520b.f31308b) && this.f31309c == c10520b.f31309c && l.a(this.f31310d, c10520b.f31310d) && l.a(this.f31311e, c10520b.f31311e) && l.a(this.f31312f, c10520b.f31312f) && l.a(this.f31313g, c10520b.f31313g) && l.a(this.f31314h, c10520b.f31314h) && l.a(this.f31315i, c10520b.f31315i) && l.a(this.f31316j, c10520b.f31316j) && l.a(this.f31317k, c10520b.f31317k) && this.f31318l == c10520b.f31318l && this.f31319m == c10520b.f31319m && l.a(this.f31320n, c10520b.f31320n) && l.a(this.f31321o, c10520b.f31321o) && l.a(this.f31322p, c10520b.f31322p) && l.a(this.f31323q, c10520b.f31323q);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f31307a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f31308b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            int i2 = this.f31309c;
            String str3 = this.f31310d;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f31311e;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f31312f;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.f31313g;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            String str7 = this.f31314h;
            int hashCode7 = str7 != null ? str7.hashCode() : 0;
            String str8 = this.f31315i;
            int hashCode8 = str8 != null ? str8.hashCode() : 0;
            String str9 = this.f31316j;
            int hashCode9 = str9 != null ? str9.hashCode() : 0;
            String str10 = this.f31317k;
            int hashCode10 = str10 != null ? str10.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f31318l);
            boolean z = this.f31319m;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            List<C10527c> list = this.f31320n;
            int hashCode11 = list != null ? list.hashCode() : 0;
            String str11 = this.f31321o;
            int hashCode12 = str11 != null ? str11.hashCode() : 0;
            b bVar = this.f31322p;
            int hashCode13 = bVar != null ? bVar.hashCode() : 0;
            String str12 = this.f31323q;
            if (str12 != null) {
                i = str12.hashCode();
            }
            return (((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + m34274a) * 31) + i3) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("BillUiModel(senderId=");
            m8728C.append(this.f31307a);
            m8728C.append(", uiDueDate=");
            m8728C.append(this.f31308b);
            m8728C.append(", uiDueDateColor=");
            m8728C.append(this.f31309c);
            m8728C.append(", dueAmt=");
            m8728C.append(this.f31310d);
            m8728C.append(", date=");
            m8728C.append(this.f31311e);
            m8728C.append(", dueInsNumber=");
            m8728C.append(this.f31312f);
            m8728C.append(", uiDueInsType=");
            m8728C.append(this.f31313g);
            m8728C.append(", uiDueType=");
            m8728C.append(this.f31314h);
            m8728C.append(", uiTrxDetail=");
            m8728C.append(this.f31315i);
            m8728C.append(", trxCurrency=");
            m8728C.append(this.f31316j);
            m8728C.append(", uiDueAmount=");
            m8728C.append(this.f31317k);
            m8728C.append(", messageId=");
            m8728C.append(this.f31318l);
            m8728C.append(", isSenderVerifiedForSmartFeatures=");
            m8728C.append(this.f31319m);
            m8728C.append(", uiTags=");
            m8728C.append(this.f31320n);
            m8728C.append(", type=");
            m8728C.append(this.f31321o);
            m8728C.append(", billDateTime=");
            m8728C.append(this.f31322p);
            m8728C.append(", pastUiDueDate=");
            return C22128a.m8618h(m8728C, this.f31323q, ")");
        }
    }

    /* renamed from: e.a.c.r.b$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/b$c.class */
    public static final class C10521c extends AbstractC10518b {

        /* renamed from: a */
        public final String f31324a;

        /* renamed from: b */
        public final String f31325b;

        /* renamed from: c */
        public final String f31326c;

        /* renamed from: d */
        public final String f31327d;

        /* renamed from: e */
        public final String f31328e;

        /* renamed from: f */
        public final long f31329f;

        /* renamed from: g */
        public final String f31330g;

        /* renamed from: h */
        public final C10612m f31331h;

        /* renamed from: i */
        public final boolean f31332i;

        /* renamed from: j */
        public final AbstractC10567a f31333j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10521c(String str, String str2, String str3, String str4, String str5, long j, String str6, C10612m c10612m, boolean z, AbstractC10567a abstractC10567a) {
            super(null);
            l.e(str6, "senderId");
            this.f31324a = str;
            this.f31325b = str2;
            this.f31326c = str3;
            this.f31327d = str4;
            this.f31328e = str5;
            this.f31329f = j;
            this.f31330g = str6;
            this.f31331h = c10612m;
            this.f31332i = z;
            this.f31333j = abstractC10567a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10521c)) {
                    return false;
                }
                C10521c c10521c = (C10521c) obj;
                return l.a(this.f31324a, c10521c.f31324a) && l.a(this.f31325b, c10521c.f31325b) && l.a(this.f31326c, c10521c.f31326c) && l.a(this.f31327d, c10521c.f31327d) && l.a(this.f31328e, c10521c.f31328e) && this.f31329f == c10521c.f31329f && l.a(this.f31330g, c10521c.f31330g) && l.a(this.f31331h, c10521c.f31331h) && this.f31332i == c10521c.f31332i && l.a(this.f31333j, c10521c.f31333j);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f31324a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f31325b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f31326c;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f31327d;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f31328e;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f31329f);
            String str6 = this.f31330g;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            C10612m c10612m = this.f31331h;
            int hashCode7 = c10612m != null ? c10612m.hashCode() : 0;
            boolean z = this.f31332i;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            AbstractC10567a abstractC10567a = this.f31333j;
            if (abstractC10567a != null) {
                i = abstractC10567a.hashCode();
            }
            return (((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + m34274a) * 31) + hashCode6) * 31) + hashCode7) * 31) + i2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("DeliveryUiModel(orderStatus=");
            m8728C.append(this.f31324a);
            m8728C.append(", itemName=");
            m8728C.append(this.f31325b);
            m8728C.append(", uiDate=");
            m8728C.append(this.f31326c);
            m8728C.append(", uiTitle=");
            m8728C.append(this.f31327d);
            m8728C.append(", uiSubTitle=");
            m8728C.append(this.f31328e);
            m8728C.append(", messageId=");
            m8728C.append(this.f31329f);
            m8728C.append(", senderId=");
            m8728C.append(this.f31330g);
            m8728C.append(", icon=");
            m8728C.append(this.f31331h);
            m8728C.append(", isSenderVerifiedForSmartFeatures=");
            m8728C.append(this.f31332i);
            m8728C.append(", primaryAction=");
            m8728C.append(this.f31333j);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.c.r.b$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/b$d.class */
    public static final class C10522d extends AbstractC10518b {

        /* renamed from: a */
        public final long f31334a;

        /* renamed from: b */
        public final String f31335b;

        /* renamed from: c */
        public final String f31336c;

        /* renamed from: d */
        public final String f31337d;

        /* renamed from: e */
        public final String f31338e;

        /* renamed from: f */
        public final String f31339f;

        /* renamed from: g */
        public final String f31340g;

        /* renamed from: h */
        public final String f31341h;

        /* renamed from: i */
        public final String f31342i;

        /* renamed from: j */
        public final String f31343j;

        /* renamed from: k */
        public final C10612m f31344k;

        /* renamed from: l */
        public final Integer f31345l;

        /* renamed from: m */
        public final Integer f31346m;

        /* renamed from: n */
        public final boolean f31347n;

        /* renamed from: o */
        public final AbstractC10567a f31348o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10522d(long j, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, C10612m c10612m, Integer num, Integer num2, boolean z, AbstractC10567a abstractC10567a) {
            super(null);
            C22128a.m8699J0(str, "senderId", str2, "eventType", str3, "eventStatus", str5, "title");
            this.f31334a = j;
            this.f31335b = str;
            this.f31336c = str2;
            this.f31337d = str3;
            this.f31338e = str4;
            this.f31339f = str5;
            this.f31340g = str6;
            this.f31341h = str7;
            this.f31342i = str8;
            this.f31343j = str9;
            this.f31344k = c10612m;
            this.f31345l = num;
            this.f31346m = num2;
            this.f31347n = z;
            this.f31348o = abstractC10567a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10522d)) {
                    return false;
                }
                C10522d c10522d = (C10522d) obj;
                return this.f31334a == c10522d.f31334a && l.a(this.f31335b, c10522d.f31335b) && l.a(this.f31336c, c10522d.f31336c) && l.a(this.f31337d, c10522d.f31337d) && l.a(this.f31338e, c10522d.f31338e) && l.a(this.f31339f, c10522d.f31339f) && l.a(this.f31340g, c10522d.f31340g) && l.a(this.f31341h, c10522d.f31341h) && l.a(this.f31342i, c10522d.f31342i) && l.a(this.f31343j, c10522d.f31343j) && l.a(this.f31344k, c10522d.f31344k) && l.a(this.f31345l, c10522d.f31345l) && l.a(this.f31346m, c10522d.f31346m) && this.f31347n == c10522d.f31347n && l.a(this.f31348o, c10522d.f31348o);
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f31334a);
            String str = this.f31335b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f31336c;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f31337d;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f31338e;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f31339f;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.f31340g;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            String str7 = this.f31341h;
            int hashCode7 = str7 != null ? str7.hashCode() : 0;
            String str8 = this.f31342i;
            int hashCode8 = str8 != null ? str8.hashCode() : 0;
            String str9 = this.f31343j;
            int hashCode9 = str9 != null ? str9.hashCode() : 0;
            C10612m c10612m = this.f31344k;
            int hashCode10 = c10612m != null ? c10612m.hashCode() : 0;
            Integer num = this.f31345l;
            int hashCode11 = num != null ? num.hashCode() : 0;
            Integer num2 = this.f31346m;
            int hashCode12 = num2 != null ? num2.hashCode() : 0;
            boolean z = this.f31347n;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            AbstractC10567a abstractC10567a = this.f31348o;
            if (abstractC10567a != null) {
                i = abstractC10567a.hashCode();
            }
            return (((((((((((((((((((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + i2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("EventUiModel(messageId=");
            m8728C.append(this.f31334a);
            m8728C.append(", senderId=");
            m8728C.append(this.f31335b);
            m8728C.append(", eventType=");
            m8728C.append(this.f31336c);
            m8728C.append(", eventStatus=");
            m8728C.append(this.f31337d);
            m8728C.append(", name=");
            m8728C.append(this.f31338e);
            m8728C.append(", title=");
            m8728C.append(this.f31339f);
            m8728C.append(", subtitle=");
            m8728C.append(this.f31340g);
            m8728C.append(", bookingId=");
            m8728C.append(this.f31341h);
            m8728C.append(", location=");
            m8728C.append(this.f31342i);
            m8728C.append(", secretCode=");
            m8728C.append(this.f31343j);
            m8728C.append(", primaryIcon=");
            m8728C.append(this.f31344k);
            m8728C.append(", smallTickMark=");
            m8728C.append(this.f31345l);
            m8728C.append(", bigTickMark=");
            m8728C.append(this.f31346m);
            m8728C.append(", isSenderVerifiedForSmartFeatures=");
            m8728C.append(this.f31347n);
            m8728C.append(", primaryAction=");
            m8728C.append(this.f31348o);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.c.r.b$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/b$e.class */
    public static final class C10523e extends AbstractC10518b {

        /* renamed from: a */
        public final String f31349a;

        /* renamed from: b */
        public final long f31350b;

        /* renamed from: c */
        public final String f31351c;

        /* renamed from: d */
        public final String f31352d;

        /* renamed from: e */
        public final b f31353e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10523e(String str, long j, String str2, String str3, b bVar) {
            super(null);
            l.e(str, AnalyticsConstants.OTP);
            l.e(str2, "type");
            l.e(str3, "senderId");
            l.e(bVar, "time");
            this.f31349a = str;
            this.f31350b = j;
            this.f31351c = str2;
            this.f31352d = str3;
            this.f31353e = bVar;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10523e)) {
                    return false;
                }
                C10523e c10523e = (C10523e) obj;
                return l.a(this.f31349a, c10523e.f31349a) && this.f31350b == c10523e.f31350b && l.a(this.f31351c, c10523e.f31351c) && l.a(this.f31352d, c10523e.f31352d) && l.a(this.f31353e, c10523e.f31353e);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f31349a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f31350b);
            String str2 = this.f31351c;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f31352d;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            b bVar = this.f31353e;
            if (bVar != null) {
                i = bVar.hashCode();
            }
            return (((((((hashCode * 31) + m34274a) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("OtpUiModel(otp=");
            m8728C.append(this.f31349a);
            m8728C.append(", messageId=");
            m8728C.append(this.f31350b);
            m8728C.append(", type=");
            m8728C.append(this.f31351c);
            m8728C.append(", senderId=");
            m8728C.append(this.f31352d);
            m8728C.append(", time=");
            m8728C.append(this.f31353e);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.c.r.b$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/b$f.class */
    public static final class C10524f extends AbstractC10518b {

        /* renamed from: a */
        public final String f31354a;

        /* renamed from: b */
        public final String f31355b;

        /* renamed from: c */
        public final String f31356c;

        /* renamed from: d */
        public final String f31357d;

        /* renamed from: e */
        public final String f31358e;

        /* renamed from: f */
        public final String f31359f;

        /* renamed from: g */
        public final String f31360g;

        /* renamed from: h */
        public final String f31361h;

        /* renamed from: i */
        public final String f31362i;

        /* renamed from: j */
        public final String f31363j;

        /* renamed from: k */
        public final String f31364k;

        /* renamed from: l */
        public final String f31365l;

        /* renamed from: m */
        public final String f31366m;

        /* renamed from: n */
        public final String f31367n;

        /* renamed from: o */
        public final String f31368o;

        /* renamed from: p */
        public final String f31369p;

        /* renamed from: q */
        public final List<C10527c> f31370q;

        /* renamed from: r */
        public final long f31371r;

        /* renamed from: s */
        public final String f31372s;

        /* renamed from: t */
        public final String f31373t;

        /* renamed from: u */
        public final boolean f31374u;

        /* renamed from: v */
        public final int f31375v;

        /* renamed from: w */
        public final Integer f31376w;

        /* renamed from: x */
        public final b f31377x;

        /* renamed from: y */
        public final InsightsDomain.C4062f f31378y;

        /* renamed from: e.a.c.r.b$f$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/r/b$f$a.class */
        public static final class C10525a {

            /* renamed from: A */
            public InsightsDomain.C4062f f31379A;

            /* renamed from: a */
            public String f31380a;

            /* renamed from: b */
            public String f31381b;

            /* renamed from: c */
            public String f31382c;

            /* renamed from: d */
            public String f31383d;

            /* renamed from: e */
            public String f31384e;

            /* renamed from: f */
            public String f31385f;

            /* renamed from: g */
            public String f31386g;

            /* renamed from: h */
            public String f31387h;

            /* renamed from: i */
            public String f31388i;

            /* renamed from: j */
            public String f31389j;

            /* renamed from: k */
            public String f31390k;

            /* renamed from: l */
            public String f31391l;

            /* renamed from: m */
            public String f31392m;

            /* renamed from: n */
            public String f31393n;

            /* renamed from: o */
            public String f31394o;

            /* renamed from: p */
            public String f31395p;

            /* renamed from: q */
            public long f31396q;

            /* renamed from: r */
            public String f31397r;

            /* renamed from: s */
            public List<? extends C10527c> f31398s;

            /* renamed from: t */
            public int f31399t;

            /* renamed from: u */
            public String f31400u;

            /* renamed from: v */
            public int f31401v;

            /* renamed from: w */
            public boolean f31402w;

            /* renamed from: x */
            public final List<TravelUiProperties> f31403x;

            /* renamed from: y */
            public boolean f31404y;

            /* renamed from: z */
            public b f31405z;

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r21v1 */
            /* JADX WARN: Type inference failed for: r21v2 */
            /* JADX WARN: Type inference failed for: r21v3 */
            public C10525a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, long j, String str17, List list, int i, String str18, int i2, boolean z, List list2, boolean z2, b bVar, InsightsDomain.C4062f c4062f, int i3) {
                b bVar2;
                String str19 = (i3 & 1) != 0 ? "" : null;
                String str20 = (i3 & 2) != 0 ? "" : null;
                String str21 = (i3 & 4) != 0 ? "" : null;
                String str22 = (i3 & 8) != 0 ? "" : null;
                String str23 = (i3 & 16) != 0 ? "" : null;
                String str24 = (i3 & 32) != 0 ? "" : null;
                String str25 = (i3 & 64) != 0 ? "" : null;
                String str26 = (i3 & 128) != 0 ? "" : null;
                String str27 = (i3 & 256) != 0 ? "" : null;
                String str28 = (i3 & 512) != 0 ? "" : null;
                String str29 = (i3 & 1024) != 0 ? "" : null;
                String str30 = (i3 & 2048) != 0 ? "" : null;
                String str31 = (i3 & 4096) != 0 ? "" : null;
                String str32 = (i3 & 8192) != 0 ? "" : null;
                String str33 = (i3 & 16384) != 0 ? "" : null;
                String str34 = (i3 & 32768) != 0 ? "" : null;
                ?? r21 = (i3 & 65536) != 0 ? -1 : j;
                String str35 = (i3 & 131072) != 0 ? "" : null;
                List<? extends C10527c> list3 = (i3 & 262144) != 0 ? s.a : null;
                i = (i3 & 524288) != 0 ? 0 : i;
                String str36 = (i3 & 1048576) != 0 ? "" : null;
                i2 = (i3 & 2097152) != 0 ? 0 : i2;
                z = (i3 & 4194304) != 0 ? false : z;
                z2 = (i3 & 16777216) != 0 ? false : z2;
                if ((i3 & 33554432) != 0) {
                    bVar2 = new b().P();
                    l.d(bVar2, "DateTime.now().withTimeAtStartOfDay()");
                } else {
                    bVar2 = null;
                }
                l.e(str19, "title");
                l.e(str22, "date");
                l.e(str23, "time");
                l.e(str24, "uiDate");
                l.e(str33, "category");
                l.e(str35, "senderId");
                l.e(list3, "uiTags");
                l.e(str36, UpdateKey.STATUS);
                l.e(list2, AnalyticsConstants.PROPERTIES);
                l.e(bVar2, "travelDateTime");
                l.e(c4062f, "domain");
                this.f31380a = str19;
                this.f31381b = str20;
                this.f31382c = str21;
                this.f31383d = str22;
                this.f31384e = str23;
                this.f31385f = str24;
                this.f31386g = str25;
                this.f31387h = str26;
                this.f31388i = str27;
                this.f31389j = str28;
                this.f31390k = str29;
                this.f31391l = str30;
                this.f31392m = str31;
                this.f31393n = str32;
                this.f31394o = str33;
                this.f31395p = str34;
                this.f31396q = r21;
                this.f31397r = str35;
                this.f31398s = list3;
                this.f31399t = i;
                this.f31400u = str36;
                this.f31401v = i2;
                this.f31402w = z;
                this.f31403x = list2;
                this.f31404y = z2;
                this.f31405z = bVar2;
                this.f31379A = c4062f;
            }

            /* renamed from: a */
            public final C10525a m25829a(String str) {
                l.e(str, "value");
                this.f31400u = str;
                return this;
            }

            /* renamed from: b */
            public final C10525a m25828b(String str) {
                l.e(str, "value");
                this.f31380a = str;
                return this;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    if (!(obj instanceof C10525a)) {
                        return false;
                    }
                    C10525a c10525a = (C10525a) obj;
                    return l.a(this.f31380a, c10525a.f31380a) && l.a(this.f31381b, c10525a.f31381b) && l.a(this.f31382c, c10525a.f31382c) && l.a(this.f31383d, c10525a.f31383d) && l.a(this.f31384e, c10525a.f31384e) && l.a(this.f31385f, c10525a.f31385f) && l.a(this.f31386g, c10525a.f31386g) && l.a(this.f31387h, c10525a.f31387h) && l.a(this.f31388i, c10525a.f31388i) && l.a(this.f31389j, c10525a.f31389j) && l.a(this.f31390k, c10525a.f31390k) && l.a(this.f31391l, c10525a.f31391l) && l.a(this.f31392m, c10525a.f31392m) && l.a(this.f31393n, c10525a.f31393n) && l.a(this.f31394o, c10525a.f31394o) && l.a(this.f31395p, c10525a.f31395p) && this.f31396q == c10525a.f31396q && l.a(this.f31397r, c10525a.f31397r) && l.a(this.f31398s, c10525a.f31398s) && this.f31399t == c10525a.f31399t && l.a(this.f31400u, c10525a.f31400u) && this.f31401v == c10525a.f31401v && this.f31402w == c10525a.f31402w && l.a(this.f31403x, c10525a.f31403x) && this.f31404y == c10525a.f31404y && l.a(this.f31405z, c10525a.f31405z) && l.a(this.f31379A, c10525a.f31379A);
                }
                return true;
            }

            public int hashCode() {
                String str = this.f31380a;
                int i = 0;
                int hashCode = str != null ? str.hashCode() : 0;
                String str2 = this.f31381b;
                int hashCode2 = str2 != null ? str2.hashCode() : 0;
                String str3 = this.f31382c;
                int hashCode3 = str3 != null ? str3.hashCode() : 0;
                String str4 = this.f31383d;
                int hashCode4 = str4 != null ? str4.hashCode() : 0;
                String str5 = this.f31384e;
                int hashCode5 = str5 != null ? str5.hashCode() : 0;
                String str6 = this.f31385f;
                int hashCode6 = str6 != null ? str6.hashCode() : 0;
                String str7 = this.f31386g;
                int hashCode7 = str7 != null ? str7.hashCode() : 0;
                String str8 = this.f31387h;
                int hashCode8 = str8 != null ? str8.hashCode() : 0;
                String str9 = this.f31388i;
                int hashCode9 = str9 != null ? str9.hashCode() : 0;
                String str10 = this.f31389j;
                int hashCode10 = str10 != null ? str10.hashCode() : 0;
                String str11 = this.f31390k;
                int hashCode11 = str11 != null ? str11.hashCode() : 0;
                String str12 = this.f31391l;
                int hashCode12 = str12 != null ? str12.hashCode() : 0;
                String str13 = this.f31392m;
                int hashCode13 = str13 != null ? str13.hashCode() : 0;
                String str14 = this.f31393n;
                int hashCode14 = str14 != null ? str14.hashCode() : 0;
                String str15 = this.f31394o;
                int hashCode15 = str15 != null ? str15.hashCode() : 0;
                String str16 = this.f31395p;
                int hashCode16 = str16 != null ? str16.hashCode() : 0;
                int m34274a = C4876d.m34274a(this.f31396q);
                String str17 = this.f31397r;
                int hashCode17 = str17 != null ? str17.hashCode() : 0;
                List<? extends C10527c> list = this.f31398s;
                int hashCode18 = list != null ? list.hashCode() : 0;
                int i2 = this.f31399t;
                String str18 = this.f31400u;
                int hashCode19 = str18 != null ? str18.hashCode() : 0;
                int i3 = this.f31401v;
                boolean z = this.f31402w;
                int i4 = 1;
                int i5 = z ? 1 : 0;
                if (z) {
                    i5 = 1;
                }
                List<TravelUiProperties> list2 = this.f31403x;
                int hashCode20 = list2 != null ? list2.hashCode() : 0;
                boolean z2 = this.f31404y;
                if (!z2) {
                    i4 = z2 ? 1 : 0;
                }
                b bVar = this.f31405z;
                int hashCode21 = bVar != null ? bVar.hashCode() : 0;
                InsightsDomain.C4062f c4062f = this.f31379A;
                if (c4062f != null) {
                    i = c4062f.hashCode();
                }
                return (((((((((((((((((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + hashCode16) * 31) + m34274a) * 31) + hashCode17) * 31) + hashCode18) * 31) + i2) * 31) + hashCode19) * 31) + i3) * 31) + i5) * 31) + hashCode20) * 31) + i4) * 31) + hashCode21) * 31) + i;
            }

            public String toString() {
                StringBuilder m8728C = C22128a.m8728C("Builder(title=");
                m8728C.append(this.f31380a);
                m8728C.append(", fromLocation=");
                m8728C.append(this.f31381b);
                m8728C.append(", toLocation=");
                m8728C.append(this.f31382c);
                m8728C.append(", date=");
                m8728C.append(this.f31383d);
                m8728C.append(", time=");
                m8728C.append(this.f31384e);
                m8728C.append(", uiDate=");
                m8728C.append(this.f31385f);
                m8728C.append(", travelTypeTitle=");
                m8728C.append(this.f31386g);
                m8728C.append(", travelTypeValue=");
                m8728C.append(this.f31387h);
                m8728C.append(", pnrTitle=");
                m8728C.append(this.f31388i);
                m8728C.append(", pnrValue=");
                m8728C.append(this.f31389j);
                m8728C.append(", seatTitle=");
                m8728C.append(this.f31390k);
                m8728C.append(", seatValue=");
                m8728C.append(this.f31391l);
                m8728C.append(", moreInfoTitle=");
                m8728C.append(this.f31392m);
                m8728C.append(", moreInfoValue=");
                m8728C.append(this.f31393n);
                m8728C.append(", category=");
                m8728C.append(this.f31394o);
                m8728C.append(", alertType=");
                m8728C.append(this.f31395p);
                m8728C.append(", messageId=");
                m8728C.append(this.f31396q);
                m8728C.append(", senderId=");
                m8728C.append(this.f31397r);
                m8728C.append(", uiTags=");
                m8728C.append(this.f31398s);
                m8728C.append(", icon=");
                m8728C.append(this.f31399t);
                m8728C.append(", status=");
                m8728C.append(this.f31400u);
                m8728C.append(", statusColor=");
                m8728C.append(this.f31401v);
                m8728C.append(", isSenderVerifiedForSmartFeatures=");
                m8728C.append(this.f31402w);
                m8728C.append(", properties=");
                m8728C.append(this.f31403x);
                m8728C.append(", isTimeFiltered=");
                m8728C.append(this.f31404y);
                m8728C.append(", travelDateTime=");
                m8728C.append(this.f31405z);
                m8728C.append(", domain=");
                m8728C.append(this.f31379A);
                m8728C.append(")");
                return m8728C.toString();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C10524f(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, List<? extends C10527c> list, long j, String str17, String str18, boolean z, int i, Integer num, b bVar, InsightsDomain.C4062f c4062f) {
            super(null);
            l.e(str, "title");
            l.e(str4, "date");
            l.e(str5, "time");
            l.e(str6, "uiDate");
            l.e(str15, "category");
            l.e(list, "uiTags");
            l.e(str17, "senderId");
            l.e(bVar, "travelDateTime");
            l.e(c4062f, "domain");
            this.f31354a = str;
            this.f31355b = str2;
            this.f31356c = str3;
            this.f31357d = str4;
            this.f31358e = str5;
            this.f31359f = str6;
            this.f31360g = str7;
            this.f31361h = str8;
            this.f31362i = str9;
            this.f31363j = str10;
            this.f31364k = str11;
            this.f31365l = str12;
            this.f31366m = str13;
            this.f31367n = str14;
            this.f31368o = str15;
            this.f31369p = str16;
            this.f31370q = list;
            this.f31371r = j;
            this.f31372s = str17;
            this.f31373t = str18;
            this.f31374u = z;
            this.f31375v = i;
            this.f31376w = num;
            this.f31377x = bVar;
            this.f31378y = c4062f;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10524f)) {
                    return false;
                }
                C10524f c10524f = (C10524f) obj;
                return l.a(this.f31354a, c10524f.f31354a) && l.a(this.f31355b, c10524f.f31355b) && l.a(this.f31356c, c10524f.f31356c) && l.a(this.f31357d, c10524f.f31357d) && l.a(this.f31358e, c10524f.f31358e) && l.a(this.f31359f, c10524f.f31359f) && l.a(this.f31360g, c10524f.f31360g) && l.a(this.f31361h, c10524f.f31361h) && l.a(this.f31362i, c10524f.f31362i) && l.a(this.f31363j, c10524f.f31363j) && l.a(this.f31364k, c10524f.f31364k) && l.a(this.f31365l, c10524f.f31365l) && l.a(this.f31366m, c10524f.f31366m) && l.a(this.f31367n, c10524f.f31367n) && l.a(this.f31368o, c10524f.f31368o) && l.a(this.f31369p, c10524f.f31369p) && l.a(this.f31370q, c10524f.f31370q) && this.f31371r == c10524f.f31371r && l.a(this.f31372s, c10524f.f31372s) && l.a(this.f31373t, c10524f.f31373t) && this.f31374u == c10524f.f31374u && this.f31375v == c10524f.f31375v && l.a(this.f31376w, c10524f.f31376w) && l.a(this.f31377x, c10524f.f31377x) && l.a(this.f31378y, c10524f.f31378y);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f31354a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f31355b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f31356c;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f31357d;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f31358e;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.f31359f;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            String str7 = this.f31360g;
            int hashCode7 = str7 != null ? str7.hashCode() : 0;
            String str8 = this.f31361h;
            int hashCode8 = str8 != null ? str8.hashCode() : 0;
            String str9 = this.f31362i;
            int hashCode9 = str9 != null ? str9.hashCode() : 0;
            String str10 = this.f31363j;
            int hashCode10 = str10 != null ? str10.hashCode() : 0;
            String str11 = this.f31364k;
            int hashCode11 = str11 != null ? str11.hashCode() : 0;
            String str12 = this.f31365l;
            int hashCode12 = str12 != null ? str12.hashCode() : 0;
            String str13 = this.f31366m;
            int hashCode13 = str13 != null ? str13.hashCode() : 0;
            String str14 = this.f31367n;
            int hashCode14 = str14 != null ? str14.hashCode() : 0;
            String str15 = this.f31368o;
            int hashCode15 = str15 != null ? str15.hashCode() : 0;
            String str16 = this.f31369p;
            int hashCode16 = str16 != null ? str16.hashCode() : 0;
            List<C10527c> list = this.f31370q;
            int hashCode17 = list != null ? list.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f31371r);
            String str17 = this.f31372s;
            int hashCode18 = str17 != null ? str17.hashCode() : 0;
            String str18 = this.f31373t;
            int hashCode19 = str18 != null ? str18.hashCode() : 0;
            boolean z = this.f31374u;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            int i3 = this.f31375v;
            Integer num = this.f31376w;
            int hashCode20 = num != null ? num.hashCode() : 0;
            b bVar = this.f31377x;
            int hashCode21 = bVar != null ? bVar.hashCode() : 0;
            InsightsDomain.C4062f c4062f = this.f31378y;
            if (c4062f != null) {
                i = c4062f.hashCode();
            }
            return (((((((((((((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + hashCode16) * 31) + hashCode17) * 31) + m34274a) * 31) + hashCode18) * 31) + hashCode19) * 31) + i2) * 31) + i3) * 31) + hashCode20) * 31) + hashCode21) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("TravelUiModel(title=");
            m8728C.append(this.f31354a);
            m8728C.append(", fromLocation=");
            m8728C.append(this.f31355b);
            m8728C.append(", toLocation=");
            m8728C.append(this.f31356c);
            m8728C.append(", date=");
            m8728C.append(this.f31357d);
            m8728C.append(", time=");
            m8728C.append(this.f31358e);
            m8728C.append(", uiDate=");
            m8728C.append(this.f31359f);
            m8728C.append(", travelTypeTitle=");
            m8728C.append(this.f31360g);
            m8728C.append(", travelTypeValue=");
            m8728C.append(this.f31361h);
            m8728C.append(", pnrTitle=");
            m8728C.append(this.f31362i);
            m8728C.append(", pnrValue=");
            m8728C.append(this.f31363j);
            m8728C.append(", seatTitle=");
            m8728C.append(this.f31364k);
            m8728C.append(", seatValue=");
            m8728C.append(this.f31365l);
            m8728C.append(", moreInfoTitle=");
            m8728C.append(this.f31366m);
            m8728C.append(", moreInfoValue=");
            m8728C.append(this.f31367n);
            m8728C.append(", category=");
            m8728C.append(this.f31368o);
            m8728C.append(", alertType=");
            m8728C.append(this.f31369p);
            m8728C.append(", uiTags=");
            m8728C.append(this.f31370q);
            m8728C.append(", messageId=");
            m8728C.append(this.f31371r);
            m8728C.append(", senderId=");
            m8728C.append(this.f31372s);
            m8728C.append(", status=");
            m8728C.append(this.f31373t);
            m8728C.append(", isSenderVerifiedForSmartFeatures=");
            m8728C.append(this.f31374u);
            m8728C.append(", icon=");
            m8728C.append(this.f31375v);
            m8728C.append(", statusColor=");
            m8728C.append(this.f31376w);
            m8728C.append(", travelDateTime=");
            m8728C.append(this.f31377x);
            m8728C.append(", domain=");
            m8728C.append(this.f31378y);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.c.r.b$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/b$g.class */
    public static final class C10526g extends AbstractC10518b {

        /* renamed from: a */
        public final long f31406a;

        /* renamed from: b */
        public final String f31407b;

        /* renamed from: c */
        public final String f31408c;

        /* renamed from: d */
        public final boolean f31409d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10526g(long j, String str, String str2, boolean z) {
            super(null);
            l.e(str, "senderId");
            l.e(str2, "updateCategory");
            this.f31406a = j;
            this.f31407b = str;
            this.f31408c = str2;
            this.f31409d = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C10526g)) {
                    return false;
                }
                C10526g c10526g = (C10526g) obj;
                return this.f31406a == c10526g.f31406a && l.a(this.f31407b, c10526g.f31407b) && l.a(this.f31408c, c10526g.f31408c) && this.f31409d == c10526g.f31409d;
            }
            return true;
        }

        public int hashCode() {
            int m34274a = C4876d.m34274a(this.f31406a);
            String str = this.f31407b;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f31408c;
            if (str2 != null) {
                i = str2.hashCode();
            }
            boolean z = this.f31409d;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            return (((((m34274a * 31) + hashCode) * 31) + i) * 31) + i2;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("UpdateUiModel(messageId=");
            m8728C.append(this.f31406a);
            m8728C.append(", senderId=");
            m8728C.append(this.f31407b);
            m8728C.append(", updateCategory=");
            m8728C.append(this.f31408c);
            m8728C.append(", isSenderVerifiedForSmartFeatures=");
            return C22128a.m8590o(m8728C, this.f31409d, ")");
        }
    }

    public AbstractC10518b() {
    }

    public AbstractC10518b(f fVar) {
    }
}
