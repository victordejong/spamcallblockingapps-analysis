package p193e.p194a.p739f0.p744h.p745a;

import com.truecaller.social_media.presentation.entities.SocialMediaItemId;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.f0.h.a.a */
/* loaded from: classes13-dex2jar.jar:e/a/f0/h/a/a.class */
public final class C13887a {

    /* renamed from: a */
    public final SocialMediaItemId f40265a;

    /* renamed from: b */
    public final int f40266b;

    /* renamed from: c */
    public final int f40267c;

    /* renamed from: d */
    public final String f40268d;

    /* renamed from: e */
    public final String f40269e;

    /* renamed from: f */
    public final String f40270f;

    public C13887a(SocialMediaItemId socialMediaItemId, int i, int i2, String str, String str2, String str3) {
        l.e(socialMediaItemId, "id");
        l.e(str, "browserLink");
        l.e(str2, "nativeLink");
        this.f40265a = socialMediaItemId;
        this.f40266b = i;
        this.f40267c = i2;
        this.f40268d = str;
        this.f40269e = str2;
        this.f40270f = str3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13887a)) {
                return false;
            }
            C13887a c13887a = (C13887a) obj;
            return l.a(this.f40265a, c13887a.f40265a) && this.f40266b == c13887a.f40266b && this.f40267c == c13887a.f40267c && l.a(this.f40268d, c13887a.f40268d) && l.a(this.f40269e, c13887a.f40269e) && l.a(this.f40270f, c13887a.f40270f);
        }
        return true;
    }

    public int hashCode() {
        SocialMediaItemId socialMediaItemId = this.f40265a;
        int i = 0;
        int hashCode = socialMediaItemId != null ? socialMediaItemId.hashCode() : 0;
        int i2 = this.f40266b;
        int i3 = this.f40267c;
        String str = this.f40268d;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f40269e;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f40270f;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((((((hashCode * 31) + i2) * 31) + i3) * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SocialMediaItem(id=");
        m8728C.append(this.f40265a);
        m8728C.append(", title=");
        m8728C.append(this.f40266b);
        m8728C.append(", icon=");
        m8728C.append(this.f40267c);
        m8728C.append(", browserLink=");
        m8728C.append(this.f40268d);
        m8728C.append(", nativeLink=");
        m8728C.append(this.f40269e);
        m8728C.append(", source=");
        return C22128a.m8618h(m8728C, this.f40270f, ")");
    }
}
