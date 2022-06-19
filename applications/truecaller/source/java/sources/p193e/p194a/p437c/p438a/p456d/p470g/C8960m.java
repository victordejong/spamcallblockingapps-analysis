package p193e.p194a.p437c.p438a.p456d.p470g;

import com.google.android.material.appbar.AppBarLayout;
import p193e.p194a.p437c.p438a.p446c.p447a.AbstractC8774b;
import p193e.p194a.p437c.p438a.p456d.AbstractC8881b;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.d.g.m */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/m.class */
public final class C8960m extends m implements l<Boolean, s> {

    /* renamed from: b */
    public final /* synthetic */ C8956l f27254b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8960m(C8956l c8956l) {
        super(1);
        this.f27254b = c8956l;
    }

    /* renamed from: d */
    public Object m27916d(Object obj) {
        AppBarLayout mo28080d8;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        n3.r.a.l activity = this.f27254b.getActivity();
        if (!(activity instanceof AbstractC8881b)) {
            activity = null;
        }
        AbstractC8881b abstractC8881b = activity;
        if (abstractC8881b != null) {
            if (booleanValue) {
                abstractC8881b.mo27984Q3();
            } else {
                C8956l c8956l = this.f27254b;
                s1.a.l[] lVarArr = C8956l.f27246f;
                n3.r.a.l activity2 = c8956l.getActivity();
                if (!(activity2 instanceof AbstractC8774b)) {
                    activity2 = null;
                }
                AbstractC8774b abstractC8774b = activity2;
                if (abstractC8774b != null && (mo28080d8 = abstractC8774b.mo28080d8()) != null) {
                    mo28080d8.d(true, true, true);
                }
                abstractC8881b.mo27983g1();
            }
        }
        return s.a;
    }
}
