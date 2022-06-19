package p193e.p194a.p717f.p734z.p736n0;

import com.truecaller.incallui.utils.audio.AudioRoute;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1131r0.C19263a;
import s1.z.c.l;
/* renamed from: e.a.f.z.n0.a */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/n0/a.class */
public final class C13843a {

    /* renamed from: a */
    public final AudioRoute f40169a;

    /* renamed from: b */
    public final List<C19263a> f40170b;

    /* renamed from: c */
    public final C19263a f40171c;

    /* renamed from: d */
    public final boolean f40172d;

    public C13843a(AudioRoute audioRoute, List<C19263a> list, C19263a c19263a, boolean z) {
        l.e(audioRoute, "route");
        l.e(list, "connectedHeadsets");
        this.f40169a = audioRoute;
        this.f40170b = list;
        this.f40171c = c19263a;
        this.f40172d = z;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C13843a)) {
                return false;
            }
            C13843a c13843a = (C13843a) obj;
            return l.a(this.f40169a, c13843a.f40169a) && l.a(this.f40170b, c13843a.f40170b) && l.a(this.f40171c, c13843a.f40171c) && this.f40172d == c13843a.f40172d;
        }
        return true;
    }

    public int hashCode() {
        AudioRoute audioRoute = this.f40169a;
        int i = 0;
        int hashCode = audioRoute != null ? audioRoute.hashCode() : 0;
        List<C19263a> list = this.f40170b;
        int hashCode2 = list != null ? list.hashCode() : 0;
        C19263a c19263a = this.f40171c;
        if (c19263a != null) {
            i = c19263a.hashCode();
        }
        boolean z = this.f40172d;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AudioState(route=");
        m8728C.append(this.f40169a);
        m8728C.append(", connectedHeadsets=");
        m8728C.append(this.f40170b);
        m8728C.append(", activeHeadset=");
        m8728C.append(this.f40171c);
        m8728C.append(", muted=");
        return C22128a.m8590o(m8728C, this.f40172d, ")");
    }
}
