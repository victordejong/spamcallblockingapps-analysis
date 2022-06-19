package p193e.p194a.p437c.p580r.p589j;

import com.truecaller.insights.C4030R;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.c.r.j.m */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/m.class */
public final class C10612m extends AbstractC10591e0 {

    /* renamed from: a */
    public final int f31636a;

    /* renamed from: b */
    public final int f31637b;

    /* renamed from: c */
    public final int f31638c;

    public C10612m(int i, int i2, int i3) {
        super(null);
        this.f31636a = i;
        this.f31637b = i2;
        this.f31638c = i3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10612m(int i, int i2, int i3, int i4) {
        super(null);
        i2 = (i4 & 2) != 0 ? C4030R.attr.tcx_avatarTextBlue : i2;
        i3 = (i4 & 4) != 0 ? C4030R.attr.tcx_avatarBackgroundBlue : i3;
        this.f31636a = i;
        this.f31637b = i2;
        this.f31638c = i3;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10612m)) {
                return false;
            }
            C10612m c10612m = (C10612m) obj;
            return this.f31636a == c10612m.f31636a && this.f31637b == c10612m.f31637b && this.f31638c == c10612m.f31638c;
        }
        return true;
    }

    public int hashCode() {
        return (((this.f31636a * 31) + this.f31637b) * 31) + this.f31638c;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("IconPropertyMapping(icon=");
        m8728C.append(this.f31636a);
        m8728C.append(", iconTint=");
        m8728C.append(this.f31637b);
        m8728C.append(", bgTint=");
        return C22128a.m8697J2(m8728C, this.f31638c, ")");
    }
}
