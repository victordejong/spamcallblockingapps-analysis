package p193e.p194a.p717f.p734z;

import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.SpamCategoryModel;
import com.truecaller.incallui.utils.BlockAction;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p426p.C8551c;
import s1.z.c.l;
/* renamed from: e.a.f.z.l */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/l.class */
public final class C13828l {

    /* renamed from: a */
    public final String f40101a;

    /* renamed from: b */
    public final String f40102b;

    /* renamed from: c */
    public final String f40103c;

    /* renamed from: d */
    public final int f40104d;

    /* renamed from: e */
    public final String f40105e;

    /* renamed from: f */
    public final String f40106f;

    /* renamed from: g */
    public final String f40107g;

    /* renamed from: h */
    public final String f40108h;

    /* renamed from: i */
    public final String f40109i;

    /* renamed from: j */
    public final C8551c f40110j;

    /* renamed from: k */
    public final boolean f40111k;

    /* renamed from: l */
    public final int f40112l;

    /* renamed from: m */
    public final SpamCategoryModel f40113m;

    /* renamed from: n */
    public final BlockAction f40114n;

    /* renamed from: o */
    public final boolean f40115o;

    /* renamed from: p */
    public final boolean f40116p;

    /* renamed from: q */
    public final boolean f40117q;

    /* renamed from: r */
    public final boolean f40118r;

    /* renamed from: s */
    public final boolean f40119s;

    /* renamed from: t */
    public final boolean f40120t;

    /* renamed from: u */
    public final boolean f40121u;

    /* renamed from: v */
    public final String f40122v = null;

    /* renamed from: w */
    public final Contact f40123w;

    /* renamed from: x */
    public final FilterMatch f40124x;

    /* renamed from: y */
    public final boolean f40125y;

    public C13828l(String str, String str2, String str3, int i, String str4, String str5, String str6, String str7, String str8, C8551c c8551c, boolean z, int i2, SpamCategoryModel spamCategoryModel, BlockAction blockAction, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, String str9, Contact contact, FilterMatch filterMatch, boolean z9) {
        l.e(str, "profileName");
        l.e(str4, "normalizedNumber");
        l.e(str5, "phoneNumberForDisplay");
        l.e(filterMatch, "filterMatch");
        this.f40101a = str;
        this.f40102b = str2;
        this.f40103c = str3;
        this.f40104d = i;
        this.f40105e = str4;
        this.f40106f = str5;
        this.f40107g = str6;
        this.f40108h = str7;
        this.f40109i = str8;
        this.f40110j = c8551c;
        this.f40111k = z;
        this.f40112l = i2;
        this.f40113m = spamCategoryModel;
        this.f40114n = blockAction;
        this.f40115o = z2;
        this.f40116p = z3;
        this.f40117q = z4;
        this.f40118r = z5;
        this.f40119s = z6;
        this.f40120t = z7;
        this.f40121u = z8;
        this.f40123w = contact;
        this.f40124x = filterMatch;
        this.f40125y = z9;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13828l)) {
                return false;
            }
            C13828l c13828l = (C13828l) obj;
            return l.a(this.f40101a, c13828l.f40101a) && l.a(this.f40102b, c13828l.f40102b) && l.a(this.f40103c, c13828l.f40103c) && this.f40104d == c13828l.f40104d && l.a(this.f40105e, c13828l.f40105e) && l.a(this.f40106f, c13828l.f40106f) && l.a(this.f40107g, c13828l.f40107g) && l.a(this.f40108h, c13828l.f40108h) && l.a(this.f40109i, c13828l.f40109i) && l.a(this.f40110j, c13828l.f40110j) && this.f40111k == c13828l.f40111k && this.f40112l == c13828l.f40112l && l.a(this.f40113m, c13828l.f40113m) && l.a(this.f40114n, c13828l.f40114n) && this.f40115o == c13828l.f40115o && this.f40116p == c13828l.f40116p && this.f40117q == c13828l.f40117q && this.f40118r == c13828l.f40118r && this.f40119s == c13828l.f40119s && this.f40120t == c13828l.f40120t && this.f40121u == c13828l.f40121u && l.a(this.f40122v, c13828l.f40122v) && l.a(this.f40123w, c13828l.f40123w) && l.a(this.f40124x, c13828l.f40124x) && this.f40125y == c13828l.f40125y;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f40101a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f40102b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f40103c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        int i2 = this.f40104d;
        String str4 = this.f40105e;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f40106f;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f40107g;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.f40108h;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.f40109i;
        int hashCode8 = str8 != null ? str8.hashCode() : 0;
        C8551c c8551c = this.f40110j;
        int hashCode9 = c8551c != null ? c8551c.hashCode() : 0;
        boolean z = this.f40111k;
        int i3 = 1;
        int i4 = z ? 1 : 0;
        if (z) {
            i4 = 1;
        }
        int i5 = this.f40112l;
        SpamCategoryModel spamCategoryModel = this.f40113m;
        int hashCode10 = spamCategoryModel != null ? spamCategoryModel.hashCode() : 0;
        BlockAction blockAction = this.f40114n;
        int hashCode11 = blockAction != null ? blockAction.hashCode() : 0;
        boolean z2 = this.f40115o;
        int i6 = z2 ? 1 : 0;
        if (z2) {
            i6 = 1;
        }
        boolean z3 = this.f40116p;
        int i7 = z3 ? 1 : 0;
        if (z3) {
            i7 = 1;
        }
        boolean z4 = this.f40117q;
        int i8 = z4 ? 1 : 0;
        if (z4) {
            i8 = 1;
        }
        boolean z5 = this.f40118r;
        int i9 = z5 ? 1 : 0;
        if (z5) {
            i9 = 1;
        }
        boolean z6 = this.f40119s;
        int i10 = z6 ? 1 : 0;
        if (z6) {
            i10 = 1;
        }
        boolean z7 = this.f40120t;
        int i11 = z7 ? 1 : 0;
        if (z7) {
            i11 = 1;
        }
        boolean z8 = this.f40121u;
        int i12 = z8 ? 1 : 0;
        if (z8) {
            i12 = 1;
        }
        String str9 = this.f40122v;
        int hashCode12 = str9 != null ? str9.hashCode() : 0;
        Contact contact = this.f40123w;
        int hashCode13 = contact != null ? contact.hashCode() : 0;
        FilterMatch filterMatch = this.f40124x;
        if (filterMatch != null) {
            i = filterMatch.hashCode();
        }
        boolean z9 = this.f40125y;
        if (!z9) {
            i3 = z9 ? 1 : 0;
        }
        return (((((((((((((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i4) * 31) + i5) * 31) + hashCode10) * 31) + hashCode11) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + i9) * 31) + i10) * 31) + i11) * 31) + i12) * 31) + hashCode12) * 31) + hashCode13) * 31) + i) * 31) + i3;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InCallUICallerInfoResult(profileName=");
        m8728C.append(this.f40101a);
        m8728C.append(", altName=");
        m8728C.append(this.f40102b);
        m8728C.append(", profilePictureUrl=");
        m8728C.append(this.f40103c);
        m8728C.append(", premiumLevel=");
        m8728C.append(this.f40104d);
        m8728C.append(", normalizedNumber=");
        m8728C.append(this.f40105e);
        m8728C.append(", phoneNumberForDisplay=");
        m8728C.append(this.f40106f);
        m8728C.append(", displayableAddress=");
        m8728C.append(this.f40107g);
        m8728C.append(", jobDetails=");
        m8728C.append(this.f40108h);
        m8728C.append(", carrier=");
        m8728C.append(this.f40109i);
        m8728C.append(", tag=");
        m8728C.append(this.f40110j);
        m8728C.append(", isSpam=");
        m8728C.append(this.f40111k);
        m8728C.append(", spamScore=");
        m8728C.append(this.f40112l);
        m8728C.append(", spamCategoryModel=");
        m8728C.append(this.f40113m);
        m8728C.append(", blockAction=");
        m8728C.append(this.f40114n);
        m8728C.append(", isUnknown=");
        m8728C.append(this.f40115o);
        m8728C.append(", isPhonebookContact=");
        m8728C.append(this.f40116p);
        m8728C.append(", hasVerifiedBadge=");
        m8728C.append(this.f40117q);
        m8728C.append(", isPriorityCall=");
        m8728C.append(this.f40118r);
        m8728C.append(", isBusiness=");
        m8728C.append(this.f40119s);
        m8728C.append(", isVerifiedBusiness=");
        m8728C.append(this.f40120t);
        m8728C.append(", isCredPrivilege=");
        m8728C.append(this.f40121u);
        m8728C.append(", backgroundColor=");
        m8728C.append(this.f40122v);
        m8728C.append(", contact=");
        m8728C.append(this.f40123w);
        m8728C.append(", filterMatch=");
        m8728C.append(this.f40124x);
        m8728C.append(", showTruecallerBadge=");
        return C22128a.m8590o(m8728C, this.f40125y, ")");
    }
}
