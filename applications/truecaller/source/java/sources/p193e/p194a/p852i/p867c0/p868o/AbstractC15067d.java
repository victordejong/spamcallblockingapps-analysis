package p193e.p194a.p852i.p867c0.p868o;

import android.view.View;
import android.view.ViewGroup;
import com.truecaller.ads.leadgen.dto.LeadgenInput;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.i.c0.o.d */
/* loaded from: classes3-dex2jar.jar:e/a/i/c0/o/d.class */
public abstract class AbstractC15067d {

    /* renamed from: a */
    public final g f43013a;

    /* renamed from: b */
    public final LeadgenInput f43014b;

    /* renamed from: c */
    public final String f43015c;

    /* renamed from: d */
    public final AbstractC15068e f43016d;

    public AbstractC15067d(LeadgenInput leadgenInput, String str, AbstractC15068e abstractC15068e, ViewGroup viewGroup) {
        l.e(leadgenInput, "input");
        l.e(abstractC15068e, "callback");
        l.e(viewGroup, "container");
        this.f43014b = leadgenInput;
        this.f43015c = str;
        this.f43016d = abstractC15068e;
        this.f43013a = C25225a.m3978P1(new a(this, viewGroup));
    }

    /* renamed from: a */
    public abstract int m19187a();

    /* renamed from: b */
    public abstract void m19186b(View view);

    /* renamed from: c */
    public abstract void m19185c(String str);
}
