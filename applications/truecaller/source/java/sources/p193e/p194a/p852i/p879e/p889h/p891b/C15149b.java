package p193e.p194a.p852i.p879e.p889h.p891b;

import android.net.Uri;
import com.facebook.ads.AdSDKNotificationListener;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.i.e.h.b.b */
/* loaded from: classes3-dex2jar.jar:e/a/i/e/h/b/b.class */
public final class C15149b {

    /* renamed from: A */
    public final String f43154A;

    /* renamed from: B */
    public final String f43155B;

    /* renamed from: C */
    public final boolean f43156C;

    /* renamed from: D */
    public final Integer f43157D;

    /* renamed from: E */
    public final Integer f43158E;

    /* renamed from: a */
    public long f43159a;

    /* renamed from: b */
    public final String f43160b;

    /* renamed from: c */
    public final String f43161c;

    /* renamed from: d */
    public Uri f43162d;

    /* renamed from: e */
    public Uri f43163e;

    /* renamed from: f */
    public Uri f43164f;

    /* renamed from: g */
    public final String f43165g;

    /* renamed from: h */
    public final String f43166h;

    /* renamed from: i */
    public final String f43167i;

    /* renamed from: j */
    public final String f43168j;

    /* renamed from: k */
    public final String f43169k;

    /* renamed from: l */
    public final String f43170l;

    /* renamed from: m */
    public final String f43171m;

    /* renamed from: n */
    public final String f43172n;

    /* renamed from: o */
    public final Integer f43173o;

    /* renamed from: p */
    public final Integer f43174p;

    /* renamed from: q */
    public final List<String> f43175q;

    /* renamed from: r */
    public final List<String> f43176r;

    /* renamed from: s */
    public final List<String> f43177s;

    /* renamed from: t */
    public final List<String> f43178t;

    /* renamed from: u */
    public final List<String> f43179u;

    /* renamed from: v */
    public final int f43180v;

    /* renamed from: w */
    public final long f43181w;

    /* renamed from: x */
    public final String f43182x;

    /* renamed from: y */
    public final String f43183y;

    /* renamed from: z */
    public final String f43184z;

    public C15149b(String str, String str2, Uri uri, Uri uri2, Uri uri3, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Integer num, Integer num2, List<String> list, List<String> list2, List<String> list3, List<String> list4, List<String> list5, int i, long j, String str11, String str12, String str13, String str14, String str15, boolean z, Integer num3, Integer num4) {
        l.e(str, "adType");
        l.e(list, "click");
        l.e(list2, AdSDKNotificationListener.IMPRESSION_EVENT);
        l.e(list3, "viewImpression");
        l.e(list4, "videoImpression");
        l.e(list5, "thankYouPixels");
        this.f43160b = str;
        this.f43161c = str2;
        this.f43162d = uri;
        this.f43163e = uri2;
        this.f43164f = uri3;
        this.f43165g = str3;
        this.f43166h = str4;
        this.f43167i = str5;
        this.f43168j = str6;
        this.f43169k = str7;
        this.f43170l = str8;
        this.f43171m = str9;
        this.f43172n = str10;
        this.f43173o = num;
        this.f43174p = num2;
        this.f43175q = list;
        this.f43176r = list2;
        this.f43177s = list3;
        this.f43178t = list4;
        this.f43179u = list5;
        this.f43180v = i;
        this.f43181w = j;
        this.f43182x = str11;
        this.f43183y = str12;
        this.f43184z = str13;
        this.f43154A = str14;
        this.f43155B = str15;
        this.f43156C = z;
        this.f43157D = num3;
        this.f43158E = num4;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15149b)) {
                return false;
            }
            C15149b c15149b = (C15149b) obj;
            return l.a(this.f43160b, c15149b.f43160b) && l.a(this.f43161c, c15149b.f43161c) && l.a(this.f43162d, c15149b.f43162d) && l.a(this.f43163e, c15149b.f43163e) && l.a(this.f43164f, c15149b.f43164f) && l.a(this.f43165g, c15149b.f43165g) && l.a(this.f43166h, c15149b.f43166h) && l.a(this.f43167i, c15149b.f43167i) && l.a(this.f43168j, c15149b.f43168j) && l.a(this.f43169k, c15149b.f43169k) && l.a(this.f43170l, c15149b.f43170l) && l.a(this.f43171m, c15149b.f43171m) && l.a(this.f43172n, c15149b.f43172n) && l.a(this.f43173o, c15149b.f43173o) && l.a(this.f43174p, c15149b.f43174p) && l.a(this.f43175q, c15149b.f43175q) && l.a(this.f43176r, c15149b.f43176r) && l.a(this.f43177s, c15149b.f43177s) && l.a(this.f43178t, c15149b.f43178t) && l.a(this.f43179u, c15149b.f43179u) && this.f43180v == c15149b.f43180v && this.f43181w == c15149b.f43181w && l.a(this.f43182x, c15149b.f43182x) && l.a(this.f43183y, c15149b.f43183y) && l.a(this.f43184z, c15149b.f43184z) && l.a(this.f43154A, c15149b.f43154A) && l.a(this.f43155B, c15149b.f43155B) && this.f43156C == c15149b.f43156C && l.a(this.f43157D, c15149b.f43157D) && l.a(this.f43158E, c15149b.f43158E);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f43160b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f43161c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Uri uri = this.f43162d;
        int hashCode3 = uri != null ? uri.hashCode() : 0;
        Uri uri2 = this.f43163e;
        int hashCode4 = uri2 != null ? uri2.hashCode() : 0;
        Uri uri3 = this.f43164f;
        int hashCode5 = uri3 != null ? uri3.hashCode() : 0;
        String str3 = this.f43165g;
        int hashCode6 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f43166h;
        int hashCode7 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f43167i;
        int hashCode8 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.f43168j;
        int hashCode9 = str6 != null ? str6.hashCode() : 0;
        String str7 = this.f43169k;
        int hashCode10 = str7 != null ? str7.hashCode() : 0;
        String str8 = this.f43170l;
        int hashCode11 = str8 != null ? str8.hashCode() : 0;
        String str9 = this.f43171m;
        int hashCode12 = str9 != null ? str9.hashCode() : 0;
        String str10 = this.f43172n;
        int hashCode13 = str10 != null ? str10.hashCode() : 0;
        Integer num = this.f43173o;
        int hashCode14 = num != null ? num.hashCode() : 0;
        Integer num2 = this.f43174p;
        int hashCode15 = num2 != null ? num2.hashCode() : 0;
        List<String> list = this.f43175q;
        int hashCode16 = list != null ? list.hashCode() : 0;
        List<String> list2 = this.f43176r;
        int hashCode17 = list2 != null ? list2.hashCode() : 0;
        List<String> list3 = this.f43177s;
        int hashCode18 = list3 != null ? list3.hashCode() : 0;
        List<String> list4 = this.f43178t;
        int hashCode19 = list4 != null ? list4.hashCode() : 0;
        List<String> list5 = this.f43179u;
        int hashCode20 = list5 != null ? list5.hashCode() : 0;
        int i2 = this.f43180v;
        int m34274a = C4876d.m34274a(this.f43181w);
        String str11 = this.f43182x;
        int hashCode21 = str11 != null ? str11.hashCode() : 0;
        String str12 = this.f43183y;
        int hashCode22 = str12 != null ? str12.hashCode() : 0;
        String str13 = this.f43184z;
        int hashCode23 = str13 != null ? str13.hashCode() : 0;
        String str14 = this.f43154A;
        int hashCode24 = str14 != null ? str14.hashCode() : 0;
        String str15 = this.f43155B;
        int hashCode25 = str15 != null ? str15.hashCode() : 0;
        boolean z = this.f43156C;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        Integer num3 = this.f43157D;
        int hashCode26 = num3 != null ? num3.hashCode() : 0;
        Integer num4 = this.f43158E;
        if (num4 != null) {
            i = num4.hashCode();
        }
        return (((((((((((((((((((((((((((((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + hashCode16) * 31) + hashCode17) * 31) + hashCode18) * 31) + hashCode19) * 31) + hashCode20) * 31) + i2) * 31) + m34274a) * 31) + hashCode21) * 31) + hashCode22) * 31) + hashCode23) * 31) + hashCode24) * 31) + hashCode25) * 31) + i3) * 31) + hashCode26) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OfflineAdsEntity(adType=");
        m8728C.append(this.f43160b);
        m8728C.append(", htmlContent=");
        m8728C.append(this.f43161c);
        m8728C.append(", videoUri=");
        m8728C.append(this.f43162d);
        m8728C.append(", logoUri=");
        m8728C.append(this.f43163e);
        m8728C.append(", imageUri=");
        m8728C.append(this.f43164f);
        m8728C.append(", title=");
        m8728C.append(this.f43165g);
        m8728C.append(", body=");
        m8728C.append(this.f43166h);
        m8728C.append(", landingUrl=");
        m8728C.append(this.f43167i);
        m8728C.append(", externalLandingUrl=");
        m8728C.append(this.f43168j);
        m8728C.append(", cta=");
        m8728C.append(this.f43169k);
        m8728C.append(", ecpm=");
        m8728C.append(this.f43170l);
        m8728C.append(", rawEcpm=");
        m8728C.append(this.f43171m);
        m8728C.append(", advertiserName=");
        m8728C.append(this.f43172n);
        m8728C.append(", height=");
        m8728C.append(this.f43173o);
        m8728C.append(", width=");
        m8728C.append(this.f43174p);
        m8728C.append(", click=");
        m8728C.append(this.f43175q);
        m8728C.append(", impression=");
        m8728C.append(this.f43176r);
        m8728C.append(", viewImpression=");
        m8728C.append(this.f43177s);
        m8728C.append(", videoImpression=");
        m8728C.append(this.f43178t);
        m8728C.append(", thankYouPixels=");
        m8728C.append(this.f43179u);
        m8728C.append(", ttl=");
        m8728C.append(this.f43180v);
        m8728C.append(", expireAt=");
        m8728C.append(this.f43181w);
        m8728C.append(", partner=");
        m8728C.append(this.f43182x);
        m8728C.append(", campaignType=");
        m8728C.append(this.f43183y);
        m8728C.append(", publisher=");
        m8728C.append(this.f43184z);
        m8728C.append(", partnerLogo=");
        m8728C.append(this.f43154A);
        m8728C.append(", partnerPrivacy=");
        m8728C.append(this.f43155B);
        m8728C.append(", isUiConfigAvailable=");
        m8728C.append(this.f43156C);
        m8728C.append(", impressionPerUser=");
        m8728C.append(this.f43157D);
        m8728C.append(", clickPerUser=");
        return C22128a.m8689L2(m8728C, this.f43158E, ")");
    }
}
