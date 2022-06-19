package p193e.p194a.p437c.p438a.p480j.p483c.p484k;

import android.widget.CheckedTextView;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p419m.p420a.C8505a;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.j.c.k.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/c/k/f.class */
public final class C9158f extends m implements l<C8505a, s> {

    /* renamed from: b */
    public final /* synthetic */ C9159g f27881b;

    /* renamed from: c */
    public final /* synthetic */ C8243a f27882c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9158f(C9159g c9159g, C8243a c8243a) {
        super(1);
        this.f27881b = c9159g;
        this.f27882c = c8243a;
    }

    /* renamed from: d */
    public Object m27844d(Object obj) {
        C8505a c8505a = (C8505a) obj;
        s1.z.c.l.e(c8505a, "profile");
        this.f27882c.m28738pk(false);
        C8243a.m28739ok(this.f27882c, this.f27881b.m27842P4(c8505a), false, 2, null);
        CheckedTextView checkedTextView = this.f27881b.f27884c.f27509d;
        s1.z.c.l.d(checkedTextView, "binding.senderLabel");
        checkedTextView.setText(c8505a.f26291b);
        return s.a;
    }
}
