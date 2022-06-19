package p193e.p194a.p717f.p733y;

import android.telecom.Call;
import com.truecaller.incallui.utils.BlockAction;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.f.y.t */
/* loaded from: classes10-dex2jar.jar:e/a/f/y/t.class */
public final class C13790t extends m implements l<BlockAction, s> {

    /* renamed from: b */
    public final /* synthetic */ C13778o f40002b;

    /* renamed from: c */
    public final /* synthetic */ boolean f40003c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13790t(C13778o c13778o, boolean z) {
        super(1);
        this.f40002b = c13778o;
        this.f40003c = z;
    }

    /* renamed from: d */
    public Object m21078d(Object obj) {
        Call mo21153r;
        Call mo21153r2;
        Call mo21153r3;
        BlockAction blockAction = (BlockAction) obj;
        boolean m21112Tj = this.f40002b.m21112Tj(blockAction);
        C13778o c13778o = this.f40002b;
        boolean z = this.f40003c;
        AbstractC13773k abstractC13773k = (AbstractC13773k) c13778o.f57683a;
        if (abstractC13773k != null && (mo21153r3 = abstractC13773k.mo21153r()) != null) {
            if (!m21112Tj || mo21153r3.getState() != 2) {
                c13778o.f39961p.mo21219K(mo21153r3, blockAction, z);
            } else {
                c13778o.f39961p.mo21228B(mo21153r3);
                C17891a1.C17902k.m15633Y0(c13778o.f39961p, false, 1, null);
            }
        }
        C13778o c13778o2 = this.f40002b;
        AbstractC13773k abstractC13773k2 = (AbstractC13773k) c13778o2.f57683a;
        if (abstractC13773k2 != null && (mo21153r2 = abstractC13773k2.mo21153r()) != null && (!c13778o2.m21112Tj(blockAction) || mo21153r2.getState() != 2)) {
            C19291g.m13599P0(c13778o2.f39950e, c13778o2.f39961p.mo21199h(), new C13785p(c13778o2, null));
        }
        C13778o c13778o3 = this.f40002b;
        AbstractC13773k abstractC13773k3 = (AbstractC13773k) c13778o3.f57683a;
        if (abstractC13773k3 != null && (mo21153r = abstractC13773k3.mo21153r()) != null && (!m21112Tj || mo21153r.getState() != 2)) {
            c13778o3.m21123Lj();
        }
        return s.a;
    }
}
