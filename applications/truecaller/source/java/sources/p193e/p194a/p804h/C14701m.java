package p193e.p194a.p804h;

import com.truecaller.C2752R;
import java.util.Map;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p682e.C13338z0;
import s1.f0.w;
import s1.k;
/* renamed from: e.a.h.m */
/* loaded from: classes2-dex2jar.jar:e/a/h/m.class */
public final class C14701m extends C14665e0 implements C13338z0.AbstractC13340b {

    /* renamed from: b */
    public final Map<Character, Integer> f42202b = C25225a.m3938Z1(new k((char) 9733, Integer.valueOf((int) C2752R.C2753drawable.ic_star_white_24dp)));

    /* renamed from: c */
    public Integer f42203c;

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13340b
    /* renamed from: A */
    public int mo19752A() {
        return 0;
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13340b
    /* renamed from: H */
    public int mo19751H() {
        Integer num = this.f42203c;
        return num != null ? num.intValue() : 2131231397;
    }

    @Override // p193e.p194a.p804h.C14665e0, p193e.p194a.p682e.C13338z0.AbstractC13339a
    /* renamed from: n */
    public void mo9973n(String str) {
        Integer num = this.f42202b.get(str != null ? w.l0(str) : null);
        if (num == null) {
            this.f42203c = null;
            this.f42157a = str;
            return;
        }
        this.f42203c = Integer.valueOf(num.intValue());
        String str2 = null;
        if (str != null) {
            str2 = w.i0(str, 1);
        }
        this.f42157a = str2;
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13340b
    /* renamed from: v */
    public int mo19750v() {
        return 0;
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13340b
    /* renamed from: x */
    public int mo19749x() {
        return 0;
    }
}
