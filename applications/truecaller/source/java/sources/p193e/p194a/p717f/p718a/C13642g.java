package p193e.p194a.p717f.p718a;

import com.truecaller.blocking.FilterMatch;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.SpamCategoryModel;
import com.truecaller.incallui.utils.BlockAction;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p426p.C8551c;
import s1.z.c.l;
/* renamed from: e.a.f.a.g */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/g.class */
public final class C13642g {

    /* renamed from: a */
    public final String f39511a;

    /* renamed from: b */
    public final String f39512b;

    /* renamed from: c */
    public final String f39513c;

    /* renamed from: d */
    public final int f39514d;

    /* renamed from: e */
    public final String f39515e;

    /* renamed from: f */
    public final String f39516f;

    /* renamed from: g */
    public final String f39517g;

    /* renamed from: h */
    public final String f39518h;

    /* renamed from: i */
    public final String f39519i;

    /* renamed from: j */
    public final C8551c f39520j;

    /* renamed from: k */
    public final boolean f39521k;

    /* renamed from: l */
    public final int f39522l;

    /* renamed from: m */
    public final SpamCategoryModel f39523m;

    /* renamed from: n */
    public final BlockAction f39524n;

    /* renamed from: o */
    public final boolean f39525o;

    /* renamed from: p */
    public final boolean f39526p;

    /* renamed from: q */
    public final boolean f39527q;

    /* renamed from: r */
    public final boolean f39528r;

    /* renamed from: s */
    public final boolean f39529s;

    /* renamed from: t */
    public final boolean f39530t;

    /* renamed from: u */
    public final boolean f39531u;

    /* renamed from: v */
    public final String f39532v;

    /* renamed from: w */
    public final Contact f39533w;

    /* renamed from: x */
    public final FilterMatch f39534x;

    /* renamed from: y */
    public final boolean f39535y;

    public C13642g(String str, String str2, String str3, int i, String str4, String str5, String str6, String str7, String str8, C8551c c8551c, boolean z, int i2, SpamCategoryModel spamCategoryModel, BlockAction blockAction, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, String str9, Contact contact, FilterMatch filterMatch, boolean z9) {
        l.e(str, "profileName");
        l.e(str4, "normalizedNumber");
        l.e(str5, "phoneNumberForDisplay");
        l.e(filterMatch, "filterMatch");
        this.f39511a = str;
        this.f39512b = str2;
        this.f39513c = str3;
        this.f39514d = i;
        this.f39515e = str4;
        this.f39516f = str5;
        this.f39517g = str6;
        this.f39518h = str7;
        this.f39519i = str8;
        this.f39520j = c8551c;
        this.f39521k = z;
        this.f39522l = i2;
        this.f39523m = spamCategoryModel;
        this.f39524n = blockAction;
        this.f39525o = z2;
        this.f39526p = z3;
        this.f39527q = z4;
        this.f39528r = z5;
        this.f39529s = z6;
        this.f39530t = z7;
        this.f39531u = z8;
        this.f39532v = str9;
        this.f39533w = contact;
        this.f39534x = filterMatch;
        this.f39535y = z9;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13642g)) {
                return false;
            }
            C13642g c13642g = (C13642g) obj;
            return l.a(this.f39511a, c13642g.f39511a) && l.a(this.f39512b, c13642g.f39512b) && l.a(this.f39513c, c13642g.f39513c) && this.f39514d == c13642g.f39514d && l.a(this.f39515e, c13642g.f39515e) && l.a(this.f39516f, c13642g.f39516f) && l.a(this.f39517g, c13642g.f39517g) && l.a(this.f39518h, c13642g.f39518h) && l.a(this.f39519i, c13642g.f39519i) && l.a(this.f39520j, c13642g.f39520j) && this.f39521k == c13642g.f39521k && this.f39522l == c13642g.f39522l && l.a(this.f39523m, c13642g.f39523m) && l.a(this.f39524n, c13642g.f39524n) && this.f39525o == c13642g.f39525o && this.f39526p == c13642g.f39526p && this.f39527q == c13642g.f39527q && this.f39528r == c13642g.f39528r && this.f39529s == c13642g.f39529s && this.f39530t == c13642g.f39530t && this.f39531u == c13642g.f39531u && l.a(this.f39532v, c13642g.f39532v) && l.a(this.f39533w, c13642g.f39533w) && l.a(this.f39534x, c13642g.f39534x) && this.f39535y == c13642g.f39535y;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f39511a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f39512b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f39513c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        int i2 = this.f39514d;
        String str4 = this.f39515e;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f39516f;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f39517g;
        int hashCode6 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.f39518h;
        int hashCode7 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.f39519i;
        int hashCode8 = str8 != null ? str8.hashCode() : 0;
        C8551c c8551c = this.f39520j;
        int hashCode9 = c8551c != null ? c8551c.hashCode() : 0;
        boolean z = this.f39521k;
        int i3 = 1;
        int i4 = z ? 1 : 0;
        if (z) {
            i4 = 1;
        }
        int i5 = this.f39522l;
        SpamCategoryModel spamCategoryModel = this.f39523m;
        int hashCode10 = spamCategoryModel != null ? spamCategoryModel.hashCode() : 0;
        BlockAction blockAction = this.f39524n;
        int hashCode11 = blockAction != null ? blockAction.hashCode() : 0;
        boolean z2 = this.f39525o;
        int i6 = z2 ? 1 : 0;
        if (z2) {
            i6 = 1;
        }
        boolean z3 = this.f39526p;
        int i7 = z3 ? 1 : 0;
        if (z3) {
            i7 = 1;
        }
        boolean z4 = this.f39527q;
        int i8 = z4 ? 1 : 0;
        if (z4) {
            i8 = 1;
        }
        boolean z5 = this.f39528r;
        int i9 = z5 ? 1 : 0;
        if (z5) {
            i9 = 1;
        }
        boolean z6 = this.f39529s;
        int i10 = z6 ? 1 : 0;
        if (z6) {
            i10 = 1;
        }
        boolean z7 = this.f39530t;
        int i11 = z7 ? 1 : 0;
        if (z7) {
            i11 = 1;
        }
        boolean z8 = this.f39531u;
        int i12 = z8 ? 1 : 0;
        if (z8) {
            i12 = 1;
        }
        String str9 = this.f39532v;
        int hashCode12 = str9 != null ? str9.hashCode() : 0;
        Contact contact = this.f39533w;
        int hashCode13 = contact != null ? contact.hashCode() : 0;
        FilterMatch filterMatch = this.f39534x;
        if (filterMatch != null) {
            i = filterMatch.hashCode();
        }
        boolean z9 = this.f39535y;
        if (!z9) {
            i3 = z9 ? 1 : 0;
        }
        return (((((((((((((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i4) * 31) + i5) * 31) + hashCode10) * 31) + hashCode11) * 31) + i6) * 31) + i7) * 31) + i8) * 31) + i9) * 31) + i10) * 31) + i11) * 31) + i12) * 31) + hashCode12) * 31) + hashCode13) * 31) + i) * 31) + i3;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallerInfo(profileName=");
        m8728C.append(this.f39511a);
        m8728C.append(", altName=");
        m8728C.append(this.f39512b);
        m8728C.append(", profilePictureUrl=");
        m8728C.append(this.f39513c);
        m8728C.append(", premiumLevel=");
        m8728C.append(this.f39514d);
        m8728C.append(", normalizedNumber=");
        m8728C.append(this.f39515e);
        m8728C.append(", phoneNumberForDisplay=");
        m8728C.append(this.f39516f);
        m8728C.append(", displayableAddress=");
        m8728C.append(this.f39517g);
        m8728C.append(", jobDetails=");
        m8728C.append(this.f39518h);
        m8728C.append(", carrier=");
        m8728C.append(this.f39519i);
        m8728C.append(", tag=");
        m8728C.append(this.f39520j);
        m8728C.append(", isSpam=");
        m8728C.append(this.f39521k);
        m8728C.append(", spamScore=");
        m8728C.append(this.f39522l);
        m8728C.append(", spamCategoryModel=");
        m8728C.append(this.f39523m);
        m8728C.append(", blockAction=");
        m8728C.append(this.f39524n);
        m8728C.append(", isUnknown=");
        m8728C.append(this.f39525o);
        m8728C.append(", isPhonebookContact=");
        m8728C.append(this.f39526p);
        m8728C.append(", hasVerifiedBadge=");
        m8728C.append(this.f39527q);
        m8728C.append(", isPriorityCall=");
        m8728C.append(this.f39528r);
        m8728C.append(", isBusiness=");
        m8728C.append(this.f39529s);
        m8728C.append(", isVerifiedBusiness=");
        m8728C.append(this.f39530t);
        m8728C.append(", isCredPrivilege=");
        m8728C.append(this.f39531u);
        m8728C.append(", backgroundColor=");
        m8728C.append(this.f39532v);
        m8728C.append(", contact=");
        m8728C.append(this.f39533w);
        m8728C.append(", filterMatch=");
        m8728C.append(this.f39534x);
        m8728C.append(", showTruecallerBadge=");
        return C22128a.m8590o(m8728C, this.f39535y, ")");
    }
}
