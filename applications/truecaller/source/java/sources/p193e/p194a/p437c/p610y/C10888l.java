package p193e.p194a.p437c.p610y;

import com.truecaller.insights.smartcards.SmartCardCategory;
import com.truecaller.insights.smartcards.SmartCardStatus;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p580r.p589j.C10583b0;
import s1.z.c.l;
/* renamed from: e.a.c.y.l */
/* loaded from: classes10-dex2jar.jar:e/a/c/y/l.class */
public final class C10888l {

    /* renamed from: a */
    public final SmartCardCategory f32320a;

    /* renamed from: b */
    public final SmartCardStatus f32321b;

    /* renamed from: c */
    public final String f32322c;

    /* renamed from: d */
    public final String f32323d;

    /* renamed from: e */
    public final int f32324e;

    /* renamed from: f */
    public final C10583b0 f32325f;

    /* renamed from: g */
    public final String f32326g;

    /* renamed from: h */
    public final String f32327h;

    /* renamed from: i */
    public final Integer f32328i;

    /* renamed from: j */
    public final List<AbstractC10876i> f32329j;

    /* renamed from: k */
    public final List<C10885j> f32330k;

    /* renamed from: l */
    public final AbstractC10876i f32331l;

    /* renamed from: m */
    public final boolean f32332m;

    /* renamed from: n */
    public final String f32333n;

    /* JADX WARN: Multi-variable type inference failed */
    public C10888l(SmartCardCategory smartCardCategory, SmartCardStatus smartCardStatus, String str, String str2, int i, C10583b0 c10583b0, String str3, String str4, Integer num, List<? extends AbstractC10876i> list, List<C10885j> list2, AbstractC10876i abstractC10876i, boolean z, String str5) {
        l.e(smartCardCategory, "category");
        l.e(list, "smartCardActions");
        l.e(list2, "smartCardInfoList");
        l.e(str5, "analyticsCategory");
        this.f32320a = smartCardCategory;
        this.f32321b = smartCardStatus;
        this.f32322c = str;
        this.f32323d = str2;
        this.f32324e = i;
        this.f32325f = c10583b0;
        this.f32326g = str3;
        this.f32327h = str4;
        this.f32328i = num;
        this.f32329j = list;
        this.f32330k = list2;
        this.f32331l = abstractC10876i;
        this.f32332m = z;
        this.f32333n = str5;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C10888l(com.truecaller.insights.smartcards.SmartCardCategory r17, com.truecaller.insights.smartcards.SmartCardStatus r18, java.lang.String r19, java.lang.String r20, int r21, p193e.p194a.p437c.p580r.p589j.C10583b0 r22, java.lang.String r23, java.lang.String r24, java.lang.Integer r25, java.util.List r26, java.util.List r27, p193e.p194a.p437c.p610y.AbstractC10876i r28, boolean r29, java.lang.String r30, int r31) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p610y.C10888l.<init>(com.truecaller.insights.smartcards.SmartCardCategory, com.truecaller.insights.smartcards.SmartCardStatus, java.lang.String, java.lang.String, int, e.a.c.r.j.b0, java.lang.String, java.lang.String, java.lang.Integer, java.util.List, java.util.List, e.a.c.y.i, boolean, java.lang.String, int):void");
    }

    /* renamed from: a */
    public static C10888l m25529a(C10888l c10888l, SmartCardCategory smartCardCategory, SmartCardStatus smartCardStatus, String str, String str2, int i, C10583b0 c10583b0, String str3, String str4, Integer num, List list, List list2, AbstractC10876i abstractC10876i, boolean z, String str5, int i2) {
        String str6 = null;
        SmartCardCategory smartCardCategory2 = (i2 & 1) != 0 ? c10888l.f32320a : null;
        if ((i2 & 2) != 0) {
            smartCardStatus = c10888l.f32321b;
        }
        String str7 = (i2 & 4) != 0 ? c10888l.f32322c : null;
        String str8 = (i2 & 8) != 0 ? c10888l.f32323d : null;
        if ((i2 & 16) != 0) {
            i = c10888l.f32324e;
        }
        C10583b0 c10583b02 = (i2 & 32) != 0 ? c10888l.f32325f : null;
        String str9 = (i2 & 64) != 0 ? c10888l.f32326g : null;
        String str10 = (i2 & 128) != 0 ? c10888l.f32327h : null;
        Integer num2 = (i2 & 256) != 0 ? c10888l.f32328i : null;
        if ((i2 & 512) != 0) {
            list = c10888l.f32329j;
        }
        List<C10885j> list3 = (i2 & 1024) != 0 ? c10888l.f32330k : null;
        AbstractC10876i abstractC10876i2 = (i2 & 2048) != 0 ? c10888l.f32331l : null;
        if ((i2 & 4096) != 0) {
            z = c10888l.f32332m;
        }
        if ((i2 & 8192) != 0) {
            str6 = c10888l.f32333n;
        }
        Objects.requireNonNull(c10888l);
        l.e(smartCardCategory2, "category");
        l.e(list, "smartCardActions");
        l.e(list3, "smartCardInfoList");
        l.e(str6, "analyticsCategory");
        return new C10888l(smartCardCategory2, smartCardStatus, str7, str8, i, c10583b02, str9, str10, num2, list, list3, abstractC10876i2, z, str6);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10888l)) {
                return false;
            }
            C10888l c10888l = (C10888l) obj;
            return l.a(this.f32320a, c10888l.f32320a) && l.a(this.f32321b, c10888l.f32321b) && l.a(this.f32322c, c10888l.f32322c) && l.a(this.f32323d, c10888l.f32323d) && this.f32324e == c10888l.f32324e && l.a(this.f32325f, c10888l.f32325f) && l.a(this.f32326g, c10888l.f32326g) && l.a(this.f32327h, c10888l.f32327h) && l.a(this.f32328i, c10888l.f32328i) && l.a(this.f32329j, c10888l.f32329j) && l.a(this.f32330k, c10888l.f32330k) && l.a(this.f32331l, c10888l.f32331l) && this.f32332m == c10888l.f32332m && l.a(this.f32333n, c10888l.f32333n);
        }
        return true;
    }

    public int hashCode() {
        SmartCardCategory smartCardCategory = this.f32320a;
        int i = 0;
        int hashCode = smartCardCategory != null ? smartCardCategory.hashCode() : 0;
        SmartCardStatus smartCardStatus = this.f32321b;
        int hashCode2 = smartCardStatus != null ? smartCardStatus.hashCode() : 0;
        String str = this.f32322c;
        int hashCode3 = str != null ? str.hashCode() : 0;
        String str2 = this.f32323d;
        int hashCode4 = str2 != null ? str2.hashCode() : 0;
        int i2 = this.f32324e;
        C10583b0 c10583b0 = this.f32325f;
        int hashCode5 = c10583b0 != null ? c10583b0.hashCode() : 0;
        String str3 = this.f32326g;
        int hashCode6 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f32327h;
        int hashCode7 = str4 != null ? str4.hashCode() : 0;
        Integer num = this.f32328i;
        int hashCode8 = num != null ? num.hashCode() : 0;
        List<AbstractC10876i> list = this.f32329j;
        int hashCode9 = list != null ? list.hashCode() : 0;
        List<C10885j> list2 = this.f32330k;
        int hashCode10 = list2 != null ? list2.hashCode() : 0;
        AbstractC10876i abstractC10876i = this.f32331l;
        int hashCode11 = abstractC10876i != null ? abstractC10876i.hashCode() : 0;
        boolean z = this.f32332m;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        String str5 = this.f32333n;
        if (str5 != null) {
            i = str5.hashCode();
        }
        return (((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + i3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SmartCardUiModel(category=");
        m8728C.append(this.f32320a);
        m8728C.append(", status=");
        m8728C.append(this.f32321b);
        m8728C.append(", title=");
        m8728C.append(this.f32322c);
        m8728C.append(", message=");
        m8728C.append(this.f32323d);
        m8728C.append(", messageMaxLines=");
        m8728C.append(this.f32324e);
        m8728C.append(", titleHighlight=");
        m8728C.append(this.f32325f);
        m8728C.append(", subtitle=");
        m8728C.append(this.f32326g);
        m8728C.append(", rightTitle=");
        m8728C.append(this.f32327h);
        m8728C.append(", rightTitleColor=");
        m8728C.append(this.f32328i);
        m8728C.append(", smartCardActions=");
        m8728C.append(this.f32329j);
        m8728C.append(", smartCardInfoList=");
        m8728C.append(this.f32330k);
        m8728C.append(", deleteAction=");
        m8728C.append(this.f32331l);
        m8728C.append(", isIM=");
        m8728C.append(this.f32332m);
        m8728C.append(", analyticsCategory=");
        return C22128a.m8618h(m8728C, this.f32333n, ")");
    }
}
