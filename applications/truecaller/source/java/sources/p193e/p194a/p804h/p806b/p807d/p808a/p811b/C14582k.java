package p193e.p194a.p804h.p806b.p807d.p808a.p811b;

import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.h.b.d.a.b.k */
/* loaded from: classes3-dex2jar.jar:e/a/h/b/d/a/b/k.class */
public final class C14582k {

    /* renamed from: a */
    public final C14585p f41905a;

    /* renamed from: b */
    public final C14580a f41906b;

    /* renamed from: c */
    public final AvatarXConfig f41907c;

    public C14582k(C14585p c14585p, C14580a c14580a, AvatarXConfig avatarXConfig) {
        l.e(c14585p, "itemData");
        l.e(c14580a, "subtitle");
        l.e(avatarXConfig, "avatar");
        this.f41905a = c14585p;
        this.f41906b = c14580a;
        this.f41907c = avatarXConfig;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C14582k)) {
                return false;
            }
            C14582k c14582k = (C14582k) obj;
            return l.a(this.f41905a, c14582k.f41905a) && l.a(this.f41906b, c14582k.f41906b) && l.a(this.f41907c, c14582k.f41907c);
        }
        return true;
    }

    public int hashCode() {
        C14585p c14585p = this.f41905a;
        int i = 0;
        int hashCode = c14585p != null ? c14585p.hashCode() : 0;
        C14580a c14580a = this.f41906b;
        int hashCode2 = c14580a != null ? c14580a.hashCode() : 0;
        AvatarXConfig avatarXConfig = this.f41907c;
        if (avatarXConfig != null) {
            i = avatarXConfig.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CompletedCallLogItem(itemData=");
        m8728C.append(this.f41905a);
        m8728C.append(", subtitle=");
        m8728C.append(this.f41906b);
        m8728C.append(", avatar=");
        m8728C.append(this.f41907c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
