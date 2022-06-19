package p193e.p194a.p437c.p580r.p589j;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.models.smartcards.InfocardUiType;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.k;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.c.r.j.n */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/n.class */
public final class C10613n {

    /* renamed from: a */
    public final C10612m f31639a;

    /* renamed from: b */
    public final String f31640b;

    /* renamed from: c */
    public final String f31641c;

    /* renamed from: d */
    public final String f31642d;

    /* renamed from: e */
    public final Integer f31643e;

    /* renamed from: f */
    public final k<String, String> f31644f;

    /* renamed from: g */
    public final k<String, String> f31645g;

    /* renamed from: h */
    public final k<String, String> f31646h;

    /* renamed from: i */
    public final k<String, String> f31647i;

    /* renamed from: j */
    public final List<C10583b0> f31648j;

    /* renamed from: k */
    public final Integer f31649k;

    /* renamed from: l */
    public final InfocardUiType f31650l;

    public C10613n(C10612m c10612m, String str, String str2, String str3, Integer num, k kVar, k kVar2, k kVar3, k kVar4, List list, Integer num2, InfocardUiType infocardUiType, int i) {
        str3 = (i & 8) != 0 ? "" : str3;
        num = (i & 16) != 0 ? null : num;
        kVar = (i & 32) != 0 ? null : kVar;
        kVar2 = (i & 64) != 0 ? null : kVar2;
        kVar3 = (i & 128) != 0 ? null : kVar3;
        kVar4 = (i & 256) != 0 ? null : kVar4;
        list = (i & 512) != 0 ? s.a : list;
        infocardUiType = (i & 2048) != 0 ? InfocardUiType.DEFAULT_UI : infocardUiType;
        l.e(c10612m, "primaryIcon");
        l.e(str, "contentTitle");
        l.e(str2, "contentText");
        l.e(str3, AnalyticsConstants.AMOUNT);
        l.e(list, "contentTextColor");
        l.e(infocardUiType, "uiType");
        this.f31639a = c10612m;
        this.f31640b = str;
        this.f31641c = str2;
        this.f31642d = str3;
        this.f31643e = num;
        this.f31644f = kVar;
        this.f31645g = kVar2;
        this.f31646h = kVar3;
        this.f31647i = kVar4;
        this.f31648j = list;
        this.f31649k = null;
        this.f31650l = infocardUiType;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10613n)) {
                return false;
            }
            C10613n c10613n = (C10613n) obj;
            return l.a(this.f31639a, c10613n.f31639a) && l.a(this.f31640b, c10613n.f31640b) && l.a(this.f31641c, c10613n.f31641c) && l.a(this.f31642d, c10613n.f31642d) && l.a(this.f31643e, c10613n.f31643e) && l.a(this.f31644f, c10613n.f31644f) && l.a(this.f31645g, c10613n.f31645g) && l.a(this.f31646h, c10613n.f31646h) && l.a(this.f31647i, c10613n.f31647i) && l.a(this.f31648j, c10613n.f31648j) && l.a(this.f31649k, c10613n.f31649k) && l.a(this.f31650l, c10613n.f31650l);
        }
        return true;
    }

    public int hashCode() {
        C10612m c10612m = this.f31639a;
        int i = 0;
        int hashCode = c10612m != null ? c10612m.hashCode() : 0;
        String str = this.f31640b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f31641c;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f31642d;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        Integer num = this.f31643e;
        int hashCode5 = num != null ? num.hashCode() : 0;
        k<String, String> kVar = this.f31644f;
        int hashCode6 = kVar != null ? kVar.hashCode() : 0;
        k<String, String> kVar2 = this.f31645g;
        int hashCode7 = kVar2 != null ? kVar2.hashCode() : 0;
        k<String, String> kVar3 = this.f31646h;
        int hashCode8 = kVar3 != null ? kVar3.hashCode() : 0;
        k<String, String> kVar4 = this.f31647i;
        int hashCode9 = kVar4 != null ? kVar4.hashCode() : 0;
        List<C10583b0> list = this.f31648j;
        int hashCode10 = list != null ? list.hashCode() : 0;
        Integer num2 = this.f31649k;
        int hashCode11 = num2 != null ? num2.hashCode() : 0;
        InfocardUiType infocardUiType = this.f31650l;
        if (infocardUiType != null) {
            i = infocardUiType.hashCode();
        }
        return (((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InfoCard(primaryIcon=");
        m8728C.append(this.f31639a);
        m8728C.append(", contentTitle=");
        m8728C.append(this.f31640b);
        m8728C.append(", contentText=");
        m8728C.append(this.f31641c);
        m8728C.append(", amount=");
        m8728C.append(this.f31642d);
        m8728C.append(", amountColor=");
        m8728C.append(this.f31643e);
        m8728C.append(", infoLeft=");
        m8728C.append(this.f31644f);
        m8728C.append(", infoRight=");
        m8728C.append(this.f31645g);
        m8728C.append(", moreInfoLeft=");
        m8728C.append(this.f31646h);
        m8728C.append(", moreInfoRight=");
        m8728C.append(this.f31647i);
        m8728C.append(", contentTextColor=");
        m8728C.append(this.f31648j);
        m8728C.append(", feedbackBarColor=");
        m8728C.append(this.f31649k);
        m8728C.append(", uiType=");
        m8728C.append(this.f31650l);
        m8728C.append(")");
        return m8728C.toString();
    }
}
