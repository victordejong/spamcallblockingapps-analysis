package p193e.p194a.p947k.p948a.p954e;

import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k.a.e.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/e/a.class */
public final class C15657a {

    /* renamed from: a */
    public final String f44205a;

    /* renamed from: b */
    public final String f44206b;

    /* renamed from: c */
    public final String f44207c;

    /* renamed from: d */
    public final AvatarXConfig f44208d;

    public C15657a(String str, String str2, String str3, AvatarXConfig avatarXConfig) {
        l.e(str, "id");
        l.e(str2, "phoneNumber");
        l.e(avatarXConfig, "avatarConfig");
        this.f44205a = str;
        this.f44206b = str2;
        this.f44207c = str3;
        this.f44208d = avatarXConfig;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C15657a)) {
                return false;
            }
            C15657a c15657a = (C15657a) obj;
            return l.a(this.f44205a, c15657a.f44205a) && l.a(this.f44206b, c15657a.f44206b) && l.a(this.f44207c, c15657a.f44207c) && l.a(this.f44208d, c15657a.f44208d);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f44205a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f44206b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f44207c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        AvatarXConfig avatarXConfig = this.f44208d;
        if (avatarXConfig != null) {
            i = avatarXConfig.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("HiddenContactItem(id=");
        m8728C.append(this.f44205a);
        m8728C.append(", phoneNumber=");
        m8728C.append(this.f44206b);
        m8728C.append(", name=");
        m8728C.append(this.f44207c);
        m8728C.append(", avatarConfig=");
        m8728C.append(this.f44208d);
        m8728C.append(")");
        return m8728C.toString();
    }
}
