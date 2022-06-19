package p193e.p194a.p437c.p548h.p551m;

import android.graphics.drawable.Drawable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.h.m.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/h/m/a.class */
public final class C10264a {

    /* renamed from: a */
    public final long f30415a;

    /* renamed from: b */
    public final String f30416b;

    /* renamed from: c */
    public final String f30417c;

    /* renamed from: d */
    public final long f30418d;

    /* renamed from: e */
    public final String f30419e;

    /* renamed from: f */
    public final boolean f30420f;

    /* renamed from: g */
    public final Drawable f30421g;

    /* renamed from: h */
    public final AbstractC10267d f30422h;

    /* renamed from: i */
    public final String f30423i;

    /* renamed from: j */
    public final int f30424j;

    /* renamed from: k */
    public final String f30425k;

    /* renamed from: l */
    public final b f30426l;

    /* renamed from: m */
    public final boolean f30427m;

    public C10264a(long j, String str, String str2, long j2, String str3, boolean z, Drawable drawable, AbstractC10267d abstractC10267d, String str4, int i, String str5, b bVar, boolean z2) {
        l.e(str, "participantName");
        l.e(str5, "normalizedAddress");
        l.e(bVar, "messageDateTime");
        this.f30415a = j;
        this.f30416b = str;
        this.f30417c = str2;
        this.f30418d = j2;
        this.f30419e = str3;
        this.f30420f = z;
        this.f30421g = drawable;
        this.f30422h = abstractC10267d;
        this.f30423i = str4;
        this.f30424j = i;
        this.f30425k = str5;
        this.f30426l = bVar;
        this.f30427m = z2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10264a)) {
                return false;
            }
            C10264a c10264a = (C10264a) obj;
            return this.f30415a == c10264a.f30415a && l.a(this.f30416b, c10264a.f30416b) && l.a(this.f30417c, c10264a.f30417c) && this.f30418d == c10264a.f30418d && l.a(this.f30419e, c10264a.f30419e) && this.f30420f == c10264a.f30420f && l.a(this.f30421g, c10264a.f30421g) && l.a(this.f30422h, c10264a.f30422h) && l.a(this.f30423i, c10264a.f30423i) && this.f30424j == c10264a.f30424j && l.a(this.f30425k, c10264a.f30425k) && l.a(this.f30426l, c10264a.f30426l) && this.f30427m == c10264a.f30427m;
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f30415a);
        String str = this.f30416b;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f30417c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        int m34274a2 = C4876d.m34274a(this.f30418d);
        String str3 = this.f30419e;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        boolean z = this.f30420f;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        Drawable drawable = this.f30421g;
        int hashCode4 = drawable != null ? drawable.hashCode() : 0;
        AbstractC10267d abstractC10267d = this.f30422h;
        int hashCode5 = abstractC10267d != null ? abstractC10267d.hashCode() : 0;
        String str4 = this.f30423i;
        int hashCode6 = str4 != null ? str4.hashCode() : 0;
        int i4 = this.f30424j;
        String str5 = this.f30425k;
        int hashCode7 = str5 != null ? str5.hashCode() : 0;
        b bVar = this.f30426l;
        if (bVar != null) {
            i = bVar.hashCode();
        }
        boolean z2 = this.f30427m;
        if (!z2) {
            i2 = z2 ? 1 : 0;
        }
        return (((((((((((((((((((((((m34274a * 31) + hashCode) * 31) + hashCode2) * 31) + m34274a2) * 31) + hashCode3) * 31) + i3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i4) * 31) + hashCode7) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ImportantMessageDomainModel(messageID=");
        m8728C.append(this.f30415a);
        m8728C.append(", participantName=");
        m8728C.append(this.f30416b);
        m8728C.append(", participantIconUrl=");
        m8728C.append(this.f30417c);
        m8728C.append(", conversationId=");
        m8728C.append(this.f30418d);
        m8728C.append(", snippetText=");
        m8728C.append(this.f30419e);
        m8728C.append(", isRichTextSnippet=");
        m8728C.append(this.f30420f);
        m8728C.append(", snippetDrawable=");
        m8728C.append(this.f30421g);
        m8728C.append(", messageType=");
        m8728C.append(this.f30422h);
        m8728C.append(", letter=");
        m8728C.append(this.f30423i);
        m8728C.append(", badge=");
        m8728C.append(this.f30424j);
        m8728C.append(", normalizedAddress=");
        m8728C.append(this.f30425k);
        m8728C.append(", messageDateTime=");
        m8728C.append(this.f30426l);
        m8728C.append(", isReceived=");
        return C22128a.m8590o(m8728C, this.f30427m, ")");
    }
}
