package p193e.p194a.p437c.p438a.p507p.p511d.p512q;

import android.widget.TextView;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p419m.p420a.C8505a;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.p.d.q.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/q/i.class */
public final class C9500i extends m implements l<C8505a, s> {

    /* renamed from: b */
    public final /* synthetic */ C9501j f28808b;

    /* renamed from: c */
    public final /* synthetic */ C8243a f28809c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9500i(C9501j c9501j, C8243a c8243a) {
        super(1);
        this.f28808b = c9501j;
        this.f28809c = c8243a;
    }

    /* renamed from: d */
    public Object m27502d(Object obj) {
        C8505a c8505a = (C8505a) obj;
        s1.z.c.l.e(c8505a, "profile");
        this.f28809c.m28738pk(false);
        C8243a.m28739ok(this.f28809c, this.f28808b.m27512O4(c8505a), false, 2, null);
        TextView textView = this.f28808b.f28813g.f27732i;
        s1.z.c.l.d(textView, "binding.senderNameTv");
        textView.setText(c8505a.f26291b);
        return s.a;
    }
}
